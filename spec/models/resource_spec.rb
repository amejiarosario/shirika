require 'spec_helper'

describe Resource do
  it { should validate_presence_of :title }

  context '.uri' do
    before :each do

    end
    
    it 'only has a link' do
    end
  end
end
