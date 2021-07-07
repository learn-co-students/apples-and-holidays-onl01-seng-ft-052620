require 'pry'
holiday_supplies = {
     :winter => {
       :christmas => ["Lights", "Wreath"],
       :new_years => ["Party Hats"]
     },
     :summer => {
     :fourth_of_july => ["Fireworks", "BBQ"]
     },
     :fall => {
       :thanksgiving => ["Turkey"]
     },
     :spring => {
       :memorial_day => ["BBQ"]
     }
   }
def second_supply_for_fourth_of_july(holiday_supplies)
   holiday_supplies[:summer][:fourth_of_july][1]
end
second_supply_for_fourth_of_july(holiday_supplies)


def add_supply_to_winter_holidays(holidays_supplies, supply)
  holiday_supplies[:winter].each do |holiday, decorations|
  decorations.push(supply)
  end
end



def add_supply_to_memorial_day(holiday_supplies, supply)
  holiday_supplies[:spring][:memorial_day].push(supply)
end

def add_new_holiday_with_supplies(holiday_supplies, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash 
  holiday_supplies[season][holiday_name] = supply_array
  holiday_supplies
end
 
def all_winter_holiday_supplies(holiday_supplies)
  holiday_supplies[:winter].values.flatten
end
 all_winter_holiday_supplies(holiday_supplies)


def all_supplies_in_holidays(holiday_supplies)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
 holiday_supplies.each do | season, holiday|
    puts "#{season.capitalize}:"
    holiday.each do |holiday, item|
      puts "  #{holiday.to_s.split("_").map {|i| i.capitalize}.join(" ")}: #{item.join(", ")}"
    end
 end
end
all_supplies_in_holidays(holiday_supplies)



def all_holidays_with_bbq(holiday_supplies)
 holiday_supplies.map do |season, holiday|
   holiday.map do |holiday, item|
     holiday if item.include?("BBQ")
   end
 end.flatten.compact
end
 
all_holidays_with_bbq(holiday_supplies)








