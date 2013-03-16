require 'spec_helper'

describe "fojc" do
  
  describe "Home page" do

  before {visit root_path}
  
  it "should have the content 'Faith of Jesus Christ'" do
      page.should have_content('Faith of Jesus Christ')
      #page.should have_content('耶穌基督的信實')
    end
  end
  
end
