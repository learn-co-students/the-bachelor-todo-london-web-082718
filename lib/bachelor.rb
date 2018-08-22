require 'pry'

def get_first_name_of_season_winner(data, season)
  data.each do |a_season, info|
    if a_season == season 
      info.each do |stats|
        if stats["status"] == "Winner"
      the_winner = []
      the_winner = stats["name"].split(" ")
       return the_winner[0]
    end
    end
    end
  end
end

def get_contestant_name(data, occupation)
  data.select do |a_season, info|
      info.each do |stats|
         if stats["occupation"] == occupation
      return stats["name"]
    end
  end
  end
end

def count_contestants_by_hometown(data, hometown)
  home_list = []
    data.each do |a_season, info|
      info.each do |stats|
         if stats["hometown"] == hometown
          #binding.pry
          home_list << stats["name"]
    end
  end
  end
  home_list.length
end

def get_occupation(data, hometown)

  data.each do |a_season, info|
      info.find do |stats|
         if stats["hometown"] == hometown
      return stats["occupation"]
    end
  end
  end
end

def get_average_age_for_season(data, season)
age_counter = 0
counter = 0
  data.each do |a_season, info|
    if a_season == season
      info.each do |contestant|
        age_counter += contestant["age"].to_f
        counter +=1
      end
    end
  end
  return (age_counter/counter).round
end


