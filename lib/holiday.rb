require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
 decoration = holiday_hash[:summer][:fourth_of_july][1]
 decoration
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |holiday, supplies|
        supplies << "Balloons"
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :spring
      holiday.each do |holiday, supplies|
          supplies << supply
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
holiday_hash[season]={holiday_name => supply_array}
holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
winter_supplies=[]
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |holiday, supplies|
        winter_supplies << supplies
      end
    end
  end
  winter_supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.capitalize}:"
    holiday.each do |name, supply|
puts"  #{name.to_s.split('_').map {|w| w.capitalize }.join(' ') }: #{supply.join(", ")}"
    end
  end
end

  #     if name == :new_years || name == :memorial_day || name == :fourth_of_july 
  #         exception = name.to_s.split
  #           exception.each do |capped|
  #             capped_string = capped.capitalize
  #             capped_holiday = capped_string.join(", ")
  #         puts "#{capped_holiday}: #{supplies}"
  #           end
  #       else 
  #         day = name.capitalize
  #         supplies = supply.join(", ")
  #         puts "#{day}: #{supplies}"
  #     end
  # end


  def all_holidays_with_bbq(holiday_hash)
  bbq_holidays = []
  holiday_hash.each do |season, holiday|
    holiday.each do |season, supply|
      supply.each do |supply|
        if supply == "BBQ"
          bbq_holidays << holiday.keys
        end
      end
    end
  end        
bbq_holidays.flatten.compact
end