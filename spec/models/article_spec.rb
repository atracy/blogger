require 'spec_helper'

describe Article do 
	def valid_attributes
		{ title: "Great Working Title",
		  body: "Great Working Body"}
	describe "#title" do
		it "should be set correctly to the title" do
				expect {subject.title = "New Title"}.to_not raise_error
		end
	end

	describe "#body" do
		it "sets without error" do
				expect { subject.body = "New Body" }.to_not raise_error
		end
		#go to rails guides to figure this out
		#add validates to articles.rb
		context "when saving" do
			context "empty string" do
				it "raises an error" do
					invalid_attributes = valid_attributes.dup
					invalid_attributes[:title] = ""
					subject.body = ""
					expect {subject.save!}.to raise_error
				end
			end
		end
	end
end
