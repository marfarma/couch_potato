require File.dirname(__FILE__) + '/spec_helper'

describe CouchPotatoe::Persistence::InlineCollection do
  it "should build elements with the item class" do
    collection = CouchPotatoe::Persistence::InlineCollection.new Comment
    collection.build :title => 'mytitle'
    collection[0].class.should == Comment
  end
  
  it "should build elements with the given attributes" do
    collection = CouchPotatoe::Persistence::InlineCollection.new Comment
    collection.build :title => 'mytitle'
    collection[0].title.should == 'mytitle'
  end
end