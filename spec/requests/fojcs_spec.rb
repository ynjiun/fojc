require 'spec_helper'

describe "Fojcs" do
  
  describe "Home page" do

    it "should have the content 'Faith of Jesus Christ'" do
      visit ('/fojc/home')
      page.should have_content('Faith of Jesus Christ')
    end
  end
  
end
