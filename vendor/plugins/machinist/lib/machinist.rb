require 'active_support'
require 'active_record'
require 'sham'
require 'machinist/active_record'
 
module Machinist

  # A Lathe is used to execute the blueprint and construct an object.
  #
  # The blueprint is instance_eval'd against the Lathe.
  class Lathe
    def self.run(object, attributes = {})
      blueprint = object.class.blueprint
      raise "No blueprint for class #{object.class}" if blueprint.nil?
      returning self.new(object, attributes) do |lathe|
        lathe.instance_eval(&blueprint)
      end
    end
    
    def initialize(object, attributes = {})
      @object = object
      @assigned_attributes = {}
      attributes.each do |key, value|
        @object.send("#{key}=", value)
        @assigned_attributes[key.to_sym] = value
      end
    end

    # Undef a couple of methods that are common ActiveRecord attributes.
    # (Both of these are deprecated in Ruby 1.8 anyway.)
    undef_method :id
    undef_method :type
    
    def object
      yield @object if block_given?
      @object
    end
    
    attr_reader :assigned_attributes
    
    def method_missing(symbol, *args, &block)
      if @assigned_attributes.has_key?(symbol)
        @object.send(symbol)
      elsif @object.class.reflect_on_association(symbol) && !@object.send(symbol).nil?
        @object.send(symbol)
      else
        @object.send("#{symbol}=", generate_attribute(symbol, args, &block))
      end
    end
    
    def generate_attribute(attribute, args)
      value = if block_given?
        yield
      elsif args.empty?
        klass = @object.class.reflect_on_association(attribute).class_name.constantize
        klass.make(args.first || {})
      else
        args.first
      end
      @assigned_attributes[attribute] = value
    end
    
  end
end
