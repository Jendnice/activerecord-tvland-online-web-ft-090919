class Show < ActiveRecord::Base
  
  has_many :characters
  has_many :actors, through: :characters 
  
  def actors_list 
    actors = []
    self.collect do |show_characters|
      show_characters.name 
    end
  end 
  
end