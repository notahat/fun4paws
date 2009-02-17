class PhoneNumber < String
  
  def initialize(value)
    super(value || '')
  end
  
  def normalize
    result = tr(' ()-.', '').gsub(/\A\+/, '')
    result = "03#{result}" if result =~ /^\d{8}$/
    result.gsub(/\A0/, '61')
  end
  
  def valid_australian_mobile?
    normalize =~ /\A614\d{8}\Z/ && true
  end
  
  def valid_australian_landline?
    normalize =~ /\A61[^4]\d{8}\Z/ && true
  end
  
  def valid?
    valid_australian_mobile? || valid_australian_landline?
  end

  def format
    number = normalize
    if valid_australian_mobile?
      "0#{number[2..4]} #{number[5..7]} #{number[8..10]}"
    elsif valid_australian_landline?
      "(0#{number[2..2]}) #{number[3..6]} #{number[7..10]}"
    else
      self
    end
  end
  
end
