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
  holiday_hash.each do |season, holidays| #season - individual seasons, #holidays - key/value pairs
    if season == :winter
      holidays.each do |holiday, supplies| #holiday - individual holidays, # supplies - array of supplies
        supplies << supply
      end
    end
  end
  holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holidays|
    if season == :spring
      holidays.each do |holiday, supplies|
      supplies << supply
      end
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
  all_supplies = []
  holiday_hash.collect do |season, holidays|
    holidays.collect do |holiday, supply|
      all_supplies << supply
    end
  end
  all_supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.collect do |season, holidays| #season = individual seasons, holidays = hash of one season's holidays
    capitalized_words = []
    holiday_array = []
    puts season.to_s.capitalize! + ":"
    holidays.collect do |holiday, supplies| #holiday = individual holidays, supplies = array of supplies
      if holiday.to_s.include?("_")
        holiday.to_s.split("_").each {|word| holiday_array << word}  #turn holiday from symbol to string, split the two words into separate strings, put into array
        holiday_array.each do |each_word| 
        # holiday_array.collect do |festivity, supply| 
          capitalized_words << each_word.capitalize!
        end
        puts "  " + capitalized_words.join(" ") + ": " + supplies.join(", ") 
      else 
        puts "  " + holiday.to_s.capitalize! + ": " + supplies.join(", ")
      end
    end
  end
end
#use a loop
#list out supplies for each holiday for each season
#hash keys = symbols, so convert to string w/ .to_s 
#Capitalize
  #use .capitalize!
  #capitalize both words
    #make symbol into an string
    #.split into an array
    #iterate over that array to .capitalize! each word
    #.join array back into string
    
def all_holidays_with_bbq(holiday_hash)
  bbq_holiday = []
  holiday_hash.collect do |season, holidays|
    holidays.collect do |holiday, supplies|
      if supplies.include?("BBQ")
        bbq_holiday << holiday
      end
    end
  end
  bbq_holiday
end







