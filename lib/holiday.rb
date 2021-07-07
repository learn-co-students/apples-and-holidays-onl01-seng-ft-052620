# frozen_string_literal: true

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
  holiday_hash.each do |season, holiday|
    next unless season == :summer

    holiday.each do |_key, value|
      return value[1]
    end
  end
  end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, holiday|
    next unless season == :winter

    holiday.each do |_key, value|
      value << supply
    end
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, holiday|
    next unless season == :spring

    holiday.each do |_key, value|
      return value << supply
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash.each do |season, holiday|
    next unless season == :winter
    return holiday.values.flatten
  end
end

def all_supplies_in_holidays(holiday_hash)
  # holiday_hash.each do |season, holiday|
    # holiday.each do |key_to_be_changed, _value|
    # binding.pry
    #  key = key_to_be_changed.to_s.split("_").map!(&:capitalize).join(' ')
    #  key
    # end
  
    holiday_hash.each do |season, holiday|
      puts "#{season.capitalize}:"
      holiday.each do |key, value|      
        puts "  #{key.to_s.split("_").map(&:capitalize).join(' ')}: #{value.join(", ")}"
      end  
    end
  #end
end 
# iterate through holiday_hash and print items such that your readout resembles:
# Winter:
#   Christmas: Lights, Wreath
#   New Years: Party Hats
# Summer:
#   Fourth Of July: Fireworks, BBQ
# etc.

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holidays_with_bbq = [] 
  holiday_hash.each do |season, holiday|
    holiday.each do |key, value| 
     holidays_with_bbq << key if value.include?("BBQ")
    end    
  end
  holidays_with_bbq
end
