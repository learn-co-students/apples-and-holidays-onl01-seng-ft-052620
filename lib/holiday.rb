require 'pry'

  def second_supply_for_fourth_of_july(holiday_hash)
    # given that holiday_hash looks like this:
    # {
      # :winter => {
      #   :christmas => ["Lights", "Wreath"],
      #   :new_years => ["Party Hats"]
   #   },
    #   :summer => {
    #     :fourth_of_july => ["Fireworks", "BBQ"]
    #   },
    #   :fall => {
    #     :thanksgiving => ["Turkey"]
    #   },
    #   :spring => {
    #     :memorial_day => ["BBQ"]
    #   }
    # }
   
  holiday_hash[:summer][:fourth_of_july][1]
  # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays


  holiday_supplies[:winter][:christmas] << "Balloons"
  holiday_supplies[:winter][:new_years] << "Balloons"
    
end



def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :spring
      holiday.each do |attribute, data|
        holiday_hash[:spring][:memorial_day] = supply
      end
    end
  end
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
   
  holiday_hash[season][holiday_name] = supply_array
  
  holiday_hash

end 
# describe "#add_new_holiday_with_supplies" do
#     it "modifies the original hash by adding supplies of a new holiday to a season" do
#       expect(holiday_supplies[:fall].keys).not_to include(:columbus_day)

#       columbus_day_supplies = ["Flags", "Parade Floats", "Italian Food"]

#       add_new_holiday_with_supplies(holiday_supplies, :fall, :columbus_day, columbus_day_supplies)

#       expect(holiday_supplies[:fall].keys).to include(:columbus_day)
#       expect(holiday_supplies[:fall][:columbus_day]).to match_array(columbus_day_supplies)

#       expect(holiday_supplies[:winter].keys).not_to include(:valentines_day)

#       valentines_day_supplies = ["Cupid Cut-Out", "Candy Hearts"]
#       add_new_holiday_with_supplies(holiday_supplies, :winter, :valentines_day, valentines_day_supplies)

#       expect(holiday_supplies[:winter].keys).to include(:valentines_day)
#       expect(holiday_supplies[:winter][:valentines_day]).to match_array(valentines_day_supplies)
#     end
#   end
  # code here
  # remember to return the updated hash
            # holiday_hash.each do |season, holiday|
            #   if season == :spring
            #     holiday.each do |attribute, data|
            #       holiday_hash[:fall][:columbus_day] = supply_array
            #     end
            #   else season == :winter
            #     holiday.each do |attribute, data|
            #       holiday_hash[:winter][:valentines_day] = supply_array
            #     end
              
            #   end
            # end
            


def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].map {|holiday, suply| suply }.join
    
end

def all_supplies_in_holidays(holiday_hash)
  
  holiday_hash.each do |season, event|
    puts season.to_s.capitalize + ":"
    event.each do |event, items|
      event = event.to_s.split("_").each do |word| word.capitalize!
        
      end
      puts "  " + event.join(" ") + ": " + items.join(", ")
    
    end
  end
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

end

def all_holidays_with_bbq(holiday_hash)
  bob = []
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, array|
      bob << holiday  if array.include?("BBQ")
    end
  end
  bob
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
# Question 7
  # Write a method to collect all holidays with BBQ
  # describe "#all_holidays_with_bbq" do
  #   it "should return :fourth_of_july and :memorial_day" do
  #     expect(all_holidays_with_bbq(holiday_supplies)).to eq([:fourth_of_july, :memorial_day])
   
end







