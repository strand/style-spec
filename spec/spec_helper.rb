class FormattingSpec
  def self.detect_trailing_whitespace
    /\s$/
  end

  def self.has_trailing_whitespace?(array)
    ! has_no_trailing_whitespace?(array)
  end

  def self.has_no_trailing_whitespace?(array)
    array.select { |line| line =~ detect_trailing_whitespace }.length == 0
  end
end