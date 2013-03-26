require 'spec_helper'

describe BlogsController do

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'follow'" do
    it "returns http success" do
      get 'follow'
      response.should be_success
    end
  end

end
