require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)

   {
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
    holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas].push("#{supply}")
  holiday_hash[:winter][:new_years].push("#{supply}")
<<<<<<< HEAD
=======

>>>>>>> c362f4fc223e862c4c51e4998423479b1b7fd4ed
end





def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day].push("#{supply}")

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
holiday_hash[season][holiday_name] = supply_array

end

def all_winter_holiday_supplies(holiday_hash)
<<<<<<< HEAD
  holiday_hash[:winter].map do |key, value|
    value
  end.flatten
end

=======
  # return an array of all of the supplies that are used in the winter season

    holiday_hash[:winter][:christmas]
      holiday_hash[:winter][:new_years]

end

def all_supplies_in_holidays(holiday_hash)
  new = []
new.push(holiday_hash[:winter][:christmas])
new.push(holiday_hash[:winter][:new_years])
   puts new

     end

  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
>>>>>>> c362f4fc223e862c4c51e4998423479b1b7fd4ed

def all_supplies_in_holidays(holiday_hash)
holiday_hash.each do |season, holiday|
  puts "#{season.to_s.capitalize}:"

  holiday.each do  |event, supplies|
    puts "  #{event.to_s.split("_").map{|x| x.capitalize}.join(" ") }: #{supplies.join(", ")}"

end
<<<<<<< HEAD
end
end





def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
holiday_hash.map do |season, holidays|
  holidays.map do |event, supplies|
    if supplies.include?("BBQ")
      event
end
end
end.flatten.compact
end
=======
>>>>>>> c362f4fc223e862c4c51e4998423479b1b7fd4ed
