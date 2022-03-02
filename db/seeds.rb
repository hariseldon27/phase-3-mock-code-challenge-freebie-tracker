puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here
Freebie.create(item_name: "a big watch", value: "10", dev_id: rand(1..4), company_id: rand(1..4))
Freebie.create(item_name: "a small ball", value: rand(5..15), dev_id: rand(1..4), company_id: rand(1..4))
Freebie.create(item_name: "television", value: rand(5..15), dev_id: rand(1..4), company_id: rand(1..4))
Freebie.create(item_name: "a bag", value: rand(5..15), dev_id: rand(1..4), company_id: rand(1..4))
Freebie.create(item_name: "pieces of blank paper", value: rand(5..15), dev_id: rand(1..4), company_id: rand(1..4))
Freebie.create(item_name: "a collection of pens", value: rand(5..15), dev_id: rand(1..4), company_id: rand(1..4))
Freebie.create(item_name: "mousepad", value: rand(5..15), dev_id: rand(1..4), company_id: rand(1..4))
Freebie.create(item_name: "chips", value: rand(5..15), dev_id: rand(1..4), company_id: rand(1..4))
Freebie.create(item_name: "two hamburgers", value: rand(5..15), dev_id: rand(1..4), company_id: rand(1..4))
Freebie.create(item_name: "a phone", value: rand(5..15), dev_id: rand(1..4), company_id: rand(1..4))


puts "Seeding done!"
