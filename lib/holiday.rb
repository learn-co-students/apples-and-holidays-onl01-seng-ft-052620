require 'pry'

#Question 1
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

#Question 2
def add_supply_to_winter_holidays(holiday_hash, supply)
  # iterates through winter holidays adds a supply to each one 
holiday_supplies[:winter][:christmas] << "Balloons"
holiday_supplies[:winter][:new_years] << "Balloons"
end

#Question 3
def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :spring
      holiday.each do |attribute, data|
      data << supply
    end
  end
end
end

#Question 4
def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
end

#Question 5
def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_supplies.each do |season, holidays|
    if season == :winter 
        return holidays.values.flatten
      end
    end
end

#Question 6
def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.to_s.capitalize}:" #caps the seasons
    holiday.each do |name, supplies| #iterates over each holiday
      capitalized_name = name.to_s.split('_').each do |word|
        word.capitalize!
      end
      capitalized_name = capitalized_name.join(' ')
      puts "  #{capitalized_name}: #{supplies.join(", ")}"
    end
  end
end


# Question 7
def all_holidays_with_bbq(holiday_hash)
    new_array = [] # return an array of holiday names (as symbols) where supply lists
    holiday_hash.keys.each do |season| # iterate over the keys(seasons) in your holiday_hash.
      holiday_hash[season].each do |key, value| #iterate over inner hash where season is the key.            
        new_array << key if value.include? 'BBQ' #include the string "BBQ"
      end
    end
    new_array
  end







