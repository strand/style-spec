require "spec_helper"
require "pry"

describe "Whitespace linting" do
  context FormattingSpec.detect_trailing_whitespace do
    it { should match("foo ") }
    it { should_not match("bar") }  
  end

  context "detects trailing whitespace" do
    it "finds trailing whitespace in dirty example" do
      dirty = File.readlines "spec/examples/trailing_whitespace.txt"
      expect(FormattingSpec.has_trailing_whitespace? dirty).to be_true
    end

    it "does not find trailing whitespace in clean example" do
      pending
    end
  end
end