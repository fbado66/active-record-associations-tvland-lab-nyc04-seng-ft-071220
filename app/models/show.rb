class Show < ActiveRecord::Base

    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        # binding.pry
        # Actor.all.map {|actor| "#{actor.first_name} #{actor.last_name}" }

        # alternative 
        Actor.all.map(&:full_name)
    end 



  
end