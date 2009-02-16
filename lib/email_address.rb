class EmailAddress < String

  def initialize(value)
    super(value || '')
  end

  def normalize
    downcase
  end

  def valid?
    normalize =~ /^[^@]+@[^@]+\.[^@\.]+$/ && true
  end

  def format
    normalize
  end

end
