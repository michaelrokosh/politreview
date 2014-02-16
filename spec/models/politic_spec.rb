require 'spec_helper'

describe Politic do 
	it "must be Bob" do
		p = Politic.new
		p.name.should == "Bob"
	end
end