class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def recieved_one?(item_name) #should be string
        #search against the string to get our freebie id
        #search freebies to see if this dev.id == dev_id in the
        # searched freebie
        # returns true if the dev has, else false

        this_item = Freebie.find_by(item_name: item_name)
        #this gets me the freebie item - now check to see if the dev id is this dev
        if this_item.dev_id == self.id
            puts "Heck yes!"
            true
        else
            puts "Nope!"
            false
        end
    end

    def give_away(dev_id, freebie_item_name)
        if self.recieved_one?(freebie_item_name) 
            Freebie.find_by(item_name: freebie_item_name).update(dev_id: dev_id)
            pp "other updated"
        else 
            puts "nope"
        end
    end
end
