require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
 holiday_hash[:summer][:fourth_of_july][1]

end


def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_supplies[:winter][:christmas] << "Balloons"
  holiday_supplies[:winter][:new_years] << "Balloons"
end

def add_supply_to_memorial_day(holiday_hash, supply)
a = holiday_supplies[:spring][:memorial_day] << supply


end

def add_new_holiday_with_supplies(holiday_hash, season,holiday,supplies)
a =holiday_hash[season][holiday] = supplies
    

end 

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season

  array = holiday_hash[:winter].map do |holiday, items|
    items
  end
  array.flatten
end

def all_supplies_in_holidays(holiday_hash) holiday_hash.each do |season, holiday|
    puts season.to_s.capitalize! << ":"
    holiday.each do |holiday, supplies|
      supplies = supplies.join(", ")
      holiday = holiday.to_s.split("_").map {|w| w.capitalize}.join(" ")<< ":"
      puts "  " + holiday + " " + supplies
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  holiday_hash.map do |season, holidays|
    holidays.map do |holiday, items|
      if items.include?("BBQ")
        holiday
      end
    end
  end.flatten.compact
end







