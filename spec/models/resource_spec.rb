require 'spec_helper'

describe Resource do
  it { should validate_presence_of :title }

  it 'validates has no link or file' do
    resource = FactoryGirl.build :resource, link: ''
    resource.should_not be_valid
    resource.errors.full_messages.join(' ').should =~ /link/
  end

  context '.uri' do
    it "should be equal to link when file is not present" do
      link = '/test'
      resource = FactoryGirl.build :resource, link: link
      resource.should be_valid
      resource.uri.should == link
    end

    it "should be equal to file path when is no link is present" do
      url = '/usr/doc/test.txt'
      file = double('Paperclip')
      file.stub(:url).and_return(url)
      file.stub(:blank?).and_return(false)
      resource = FactoryGirl.build :resource, link: '', file: file
      resource.should be_valid
      resource.uri.should == file
    end

  end
end
