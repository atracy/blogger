require 'spec_helper'

describe "Create a new article" do 
	context "when I am on the index page" do
		context "click on the new article" do
			it "takes me to a magical place where I can make articles" do
				visit "/articles"
				sleep 4
				click_link "Create An Article"
				sleep 3
			end
		end
	end
end