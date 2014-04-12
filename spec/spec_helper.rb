class FormattingSpec
  def self.detect_trailing_whitespace
    /\s$/
  end

  def self.has_trailing_whitespace?(array)
    array.any? { |line| line =~ detect_trailing_whitespace }
  end

  def self.has_no_trailing_whitespace?(array)
    ! has_trailing_whitespace?(array)
  end
end