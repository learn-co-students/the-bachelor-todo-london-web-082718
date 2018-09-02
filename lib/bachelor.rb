
require "pry"

def get_first_name_of_season_winner(data, season)
  data.each do |season_num, contestant_hash|
    if season_num == season
    contestant_hash.each do |contestant_key, contestant_value|
    if contestant_key["status"] == "Winner"
      return contestant_key["name"].split(" ").first 
        end 
      end
    end
  end
end
    
def get_contestant_name(data, occupation)
  data.each do |season, contestant_hash|
    contestant_hash.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
   count = 0
     data.each do |season, contestant_hash|
      contestant_hash.each do |contestant|
        contestant.each do |contestant_key, contestant_value|
        if contestant_value == hometown
          count += 1
      end
    end
  end
  end
return count
end

def get_occupation(data, hometown)
   data.each do |season, contestant_hash|
     contestant_hash.each do |contestant|
       contestant.each do |contestant_key, contestant_value|
      if contestant_value == hometown 
         return contestant["occupation"]
       end
     end
   end
 end
 end
 
 

def get_average_age_for_season(data, season)
  age = 0
  count = 0
  
  data.each do |season, contestant_hash|
     contestant_hash.each do |contestant|
       contestant.each do |contestant_key, contestant_value|
      if contestant_key == "age"
        count += 1
        age += (contestant_value.to_f).round
       
  end
    end
  end
  ave = (age.round/count).round
       return ave
end

end
        
        
# end
# end
