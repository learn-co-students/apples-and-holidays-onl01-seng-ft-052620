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
  # return the second element in the 4th of July array

  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, name_of_holiday_hash|
    if season == :winter
      name_of_holiday_hash.each do |holiday, supplies_array|
        supplies_array << "Balloons"
      end
    end
  end

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season] = {holiday_name => supply_array}
  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].collect do |holiday, supplies_array|
    supplies_array
  end.flatten
  
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holiday_name_hash|
    
    puts "#{season.capitalize}:"
    holiday_name_hash.each do |holiday, supplies|
      cap_holiday = holiday.to_s.split("_")
      cap_holiday = cap_holiday.collect{|word| word.to_s.capitalize}.join(" ")
      
      
      cap_supplies = supplies.collect do |supply| 
        if supply == "BBQ"
          supply
        elsif supply.include?(" ")
          supply.split(" ").collect{|word| word.to_s.capitalize}.join(" ")
        else 
          supply.to_s.capitalize
        end
      end.join(", ")
      puts "  #{cap_holiday}: #{cap_supplies}"
    end
  end



end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  has_bbq = []
  holiday_hash.each{|season, holiday_name_hash|
    holiday_name_hash.each{|holiday, supplies|
      if supplies.include?("BBQ")
        has_bbq << holiday
      end
    }
    

  }
  has_bbq

end







