require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
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
        holiday_hash[:winter].each do |holiday, decorations|
            decorations << "Balloons"             
     end 
end

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
     holiday_hash[:spring][:memorial_day] << supply
#   {
#     :winter => {
#       :christmas => ["Lights", "Wreath", "Balloons"],
#       :new_years => ["Party Hats", "Balloons"]
#     },
#     :summer => {
#       :fourth_of_july => ["Fireworks", "BBQ"]
#     },
#     :fall => {
#       :thanksgiving => ["Turkey"],
        # :columbus_day => ["Flags", "Italian Food", "Parade Floats"]
#     },
#     :spring => {
#       :memorial_day => ["BBQ", "Grill", "Table Cloth"]
#     }
#   }    
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
       holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
        holiday_hash[:winter].values.flatten
    end   

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
    holiday_hash.each do |season, data|
        puts "#{season.to_s.capitalize!}:"
        data.each do |holiday, supply|
          array = holiday.to_s.split("_")
            new_holiday = []            
            array.each do |i|
              new_holiday << i.capitalize!
            end 
            holiday = new_holiday.join(" ")

            supply = supply.join(", ")
            puts "  #{holiday}: #{supply}"
       end
    end        
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"   
    empty_array = []
      holiday_hash.each do |season, data|
          data.each do |holiday, supply|
            supply.each do |stuff|
          if stuff == "BBQ"
           empty_array.push(holiday)
           end 
         end
      end 
   end
   empty_array
end






