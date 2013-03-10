require 'spec_helper'

describe "fojc" do
  
  describe "Home page" do

    it "should have the content 'Faith of Jesus Christ'" do
      visit root_path
      page.should have_content('Faith of Jesus Christ')
      #page.should have_content('耶穌基督的信實')
    end
  end
  
end
