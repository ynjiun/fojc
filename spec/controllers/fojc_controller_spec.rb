require 'spec_helper'

describe FojcController do

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'chinese'" do
    it "returns http success" do
      get 'chinese'
      response.should be_success
    end
  end

  describe "GET 'schinese'" do
    it "returns http success" do
      get 'schinese'
      response.should be_success
    end
  end

  describe "GET 'english'" do
    it "returns http success" do
      get 'english'
      response.should be_success
    end
  end

  describe "GET 'help'" do
    it "returns http success" do
      get 'help'
      response.should be_success
    end
  end

  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_success
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end
  end

end
