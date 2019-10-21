class Show < ActiveRecord::Base
  
  has_many :characters
  has_many :actors, through: :characters 
  
  def actors_list 
    actors = []
    self.collect do |show_characters|
     actors << self.actors
      end 
       actors.collect do |show|
        "#{show.first_name} #{show.last_name}"
      end 
  end 
  
end