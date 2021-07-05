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
  
  holiday_supplies[:summer][:fourth_of_july][1]
  
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  
  holiday_supplies.collect do |season, holiday|
     if season == :winter
       holiday.collect do |holiday_name, supplies_array|
         if holiday_name == :christmas || :new_years
           supplies_array << supply
           
    end
   end
  end
 end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_supplies.collect do |season, holiday|
     if season == :spring
       holiday.collect do |holiday_name, supplies_array|
         if holiday_name == :memorial_day
           supplies_array << supply
        end
      end
    end
  end  
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
 
 holiday_hash[season][holiday_name]=supply_array
  
    
  end
      
       
    

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
   
    holiday_hash.collect do |season, holiday_hassh|
      if season == :winter
        holiday_hassh.collect do |holiday, supply|
        supply
        
        
    end
  end
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

holiday_hash.collect do |season, holiday|
    
 puts season.to_s.capitalize! + ":"
 holiday.collect do |celebration, supplies|
    holiday_name = celebration.to_s.split("_").map do |word|
       word.capitalize
    end.join(" ")
    
   puts "  #{holiday_name}: #{supplies.join(", ")}"
   
  end 
end  
end


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"


holiday_hash.map do |season, holiday|
    holiday.map do |holiday, supply|
      holiday if supply.include?("BBQ")
    end 
  end.flatten.compact

end







