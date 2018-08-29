def get_first_name_of_season_winner(data, season)
  data[season].each do | person |
    if person["status"].downcase == "winner"
      return person["name"].split.first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do | season, person |
    person.each do | person_hash |
      if person_hash["occupation"] == occupation
      return person_hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do | season, person |
    person.each do | person_hash |
      if person_hash["hometown"] == hometown
        counter += 1
      end
    end
  end
 p counter
end

def get_occupation(data, hometown)
  data.each do | season, person |
    person.each do | person_hash |
      if person_hash["hometown"] == hometown
      return person_hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  ages = 0
   counter = 0
    data[season].each do | person_hash |
      ages += (person_hash["age"]).to_i
       counter += 1
     end
    (ages / counter.to_f).round(0)
  end
