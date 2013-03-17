class FojcController < ApplicationController
  def home
  end

  def chinese
    @contents = Content.all
    @verse = Verse.find_by_id(next_id)
  end

  def schinese
    @contents = Content.all
    @verse = Verse.find_by_id(next_id)
  end

  def english
    @contents = Content.all
    @verse = Verse.find_by_id(next_id)
  end

  def help
  end

  def about
  end

  def contact
  end
  
  private
    
    def next_id
      n = Verse.all.count
      if n == 0
        n = 1
      end
      return Time.now.to_i%n + 1
    end
  
end
