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

   def second_supply_for_fourth_of_july(holiday_hash)
    holiday_hash.each do |seasons, holidays|
      holidays.each do |days, characteristics|
        if days == :fourth_of_july
          return characteristics[1]
        end
      end
    end
 end


# holiday_hash is identical to the one above
# add the second argument, which is a supply, to BOTH the
# Christmas AND the New Year's arrays

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    holiday.each do |day, things|
      if day == :christmas || day == :new_years
        things << supply
      end
    end
  end
end

# again, holiday_hash is the same as the ones above
# add the second argument to the memorial day array

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    holiday.each do |day, things|
      if day == :memorial_day
        things << supply
      end
    end
  end

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
# binding.pry 
  holiday_hash[season][holiday_name] = supply_array
end
# add_new_holiday_with_supplies(holiday_supplies, :fall, "CODEDAY", ["computer", "mouse", "coffee"])

def all_winter_holiday_supplies(holiday_hash)
   holiday_hash.each do |season, holiday|
    if season == :winter
      return holiday.values.flatten
    end
  end

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, hash|
   
    puts season.to_s.capitalize + ":"
      hash.each do |holiday, supply|
        :new_years.to_s.split("_").collect {|word| word.capitalize}.join(" ")
         binding.pry
      end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end

