require_relative '../lib/wordcount.rb'

describe "#remove_commas" do
  it "removes all commas from text" do
    remove_commas("hello, kitty").should == "hello kitty"
  end
end

describe "#make_array" do
  it "replace all spaces with commas and create an array" do
    make_array("rocks giraffes").should == ["rocks", "giraffes"]
  end
end

describe "#count_words" do
  it "counts all items in the array" do
    count_words(["rocks", "giraffes"]).should == 2
  end
end