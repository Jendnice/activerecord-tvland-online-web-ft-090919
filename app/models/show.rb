class Show < ActiveRecord::Base
  
  has_many :characters
  has_many :actors, through: :characters 
  
  def actors_list 
    actors = []
    self.collect do |show_characters|
      self.actors.collect do |show|
        show.first_name, 
    end
  end 
  
end