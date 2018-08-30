require "pry"

def get_first_name_of_season_winner(data, season)
  data.each do |season_info, all_contestant_info|
    puts season_info
    if season_info == season
    all_contestant_info.each do |contestant|
      if contestant["status"] == "Winner"
          p contestant[]
      end
    end 
  end 
  end 
end

# data is the hash
# each season is  a key
# the value to each season is an array of hashes



def get_contestant_name(data, occupation)
data.each do |season, season_array|
  season_array.each do |into_array|
    if into_array["occupation"] == occupation
      job_p = []
      job_p = into_array["name"]
      return job_p    #WHY???
      end 
    end 
  end 
end

# WHY MUST I RETURN THE job_p LIKE THIS? DOESN'T RE-ASSIGNING job_p IMPLICITLY RETURN IT??


def count_contestants_by_hometown(data, hometown)
  counter = 0      # COUNTER VALUE HAS TO BE HERE
  data.each do |season, season_array|
    season_array.each do |into_array|
      if into_array["hometown"] == hometown
        counter += 1
       # binding.pry
      end 
    end 
  end
  counter
end


# def get_occupation(data, hometown)
#   data.collect do |season, season_array|
#     season_array.find  {|contestant| contestant[:hometown] == hometown}
#     end
#   end 
# end



#     season_array.each do |into_array|
#   into_array.find {|key, value|  == "b"}
#       end
#     end 
#   end 
# end




# def get_occupation(data, hometown)
#   data.each do |season, season_array|
#     season_array.
#     binding.pry
    
#     into_array.find {["hometown"] == hometown
      
#       (1..100).detect {|i| i % 5 == 0 and i % 7 == 0 }
    
#     p "hello"
#     end 
#   end 
#   # return occupation of first oerson from that hometown
# end

def get_average_age_for_season(data, season)
  ages_added = 0
  average_age = 0
  data.each do |seasons, info|
    if seasons == season
      info.each do |contestant|
         ages_added += contestant[:age].to_i
       end
     end
   end 
    num_of_cont = data[season].length 
    
    average_age = (ages_added/num_of_cont).round
end 
