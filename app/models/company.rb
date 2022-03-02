class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies

    def give_freebie dev_id, item_name, value
        Freebie.create(item_name: item_name, value: value, dev_id: dev_id, company_id: self.id)
    end

    def self.oldest_company
        self.group(:founding_year).first
    end
    
end
