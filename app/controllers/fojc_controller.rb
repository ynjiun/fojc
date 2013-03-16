class FojcController < ApplicationController
  def home
  end

  def chinese
    @contents = Content.all
  end

  def schinese
    @contents = Content.all
  end

  def english
    @contents = Content.all
  end

  def help
  end

  def about
  end

  def contact
  end
end
