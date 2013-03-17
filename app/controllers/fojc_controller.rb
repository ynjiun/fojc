class FojcController < ApplicationController
  def home
  end

  def chinese
    @contents = Content.all
    @verse = Verse.find_by_id(2)
  end

  def schinese
    @contents = Content.all
    @verse = Verse.find_by_id(2)
  end

  def english
    @contents = Content.all
    @verse = Verse.find_by_id(2)
  end

  def help
  end

  def about
  end

  def contact
  end
end
