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
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash.each do |key, value|
    if key == season
      holiday_hash[key] = {"#{holiday_name}": supply_array}
    end
  end
  holiday_hash
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
  holiday_hash.each do |key, value|

    #Season: todo PUTS THIS
    puts season = key.to_s.capitalize << ":"
    value.each do |holiday, supply|

      # Convert the holiday name to a string for comparison
      if holiday.to_s.include?('_')
         new_holiday_name = holiday.to_s.gsub("_", " ")
         final_array = []
         array_name = new_holiday_name.split(" ")
         array_name.each do |value|
           final_array << value.capitalize
         end
         updated_capitalized_string = final_array.join(" ")
         holidayname = "  " << updated_capitalized_string << ": "
         puts holidayname << supply.join(', ')

      else
        holidayname = "  " << holiday.to_s.capitalize << ": "
        puts holidayname << supply.join(', ')
      end
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  final_array = []
  holiday_hash.each do |key, value|
    value.each do |holiday, supplies|
        if supplies.include?("BBQ")
          final_array << holiday
        end
    end
  end
  final_array
end
