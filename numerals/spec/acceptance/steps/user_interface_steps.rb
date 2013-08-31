require "spec_helper"

module UserInterfaceSteps
	step "I am on the main page" do
		visit "/"
	end

	step "I enter :number into my field" do |number|
		@number = number
    fill_in("number", :with => number)
	end

	step "I enter something else than a number into my field" do
		fill_in("number", :with => "number")
	end

	step "I press submit" do
		click_button("Submit")
	end

	step "I do not see any errors just the content of the main page" do
		find(".result").should have_content("")
	end

	step "I see it as a name in the result" do
		find(".result").text =~ /\w+/
	end

	step "I see the original number as well" do
		find(".original-number").text == @number
	end
end

RSpec.configure { |c| c.include UserInterfaceSteps }