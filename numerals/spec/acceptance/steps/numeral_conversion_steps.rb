require "spec_helper"

module NumeralConversionSteps
  step "I have a converter" do
    @converter = NumeralConverter.new
  end

  step "I convert :number with my converter" do |number|
    @word = @converter.convert(number.to_i)
  end

  step "I should get :expectation" do |expectation|
    @word.should eql(expectation)
  end
end

RSpec.configure { |c| c.include NumeralConversionSteps }