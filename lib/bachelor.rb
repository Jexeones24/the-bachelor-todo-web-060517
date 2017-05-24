require 'pry'
def get_first_name_of_season_winner(data, season)
  season_data = data["#{season}"]
  winner = season_data.select { |contestant| contestant["status"] == "Winner"}.first
    winner["name"].partition(" ").first
end


=begin
def get_contestant_name(data, occupation)
  data.each do |season, array|
    array.each do |hash|
      person = hash.select { |k, v|
        hash["occupation"].to_s == "#{occupation}"}
          hash["name"].to_s
  #        binding.pry
    end
  end
end
=end

def get_contestant_name(data, occupation)
  data.each do |season, season_data|
  person = season_data.select { |k, v|
    v.to_s == "#{occupation}"}.first
    person["name"]
      binding.pry
    end
  end
end


#two arguments––the data hash and a string of a hometown. This method should return a counter of the number of contestants who are from that hometown.
#doesn't count anything
def count_contestants_by_hometown(data, hometown)
  data.each do |season, array|
    array.each_with_object(Hash.new(0)) { |a, h|
      h[a["#{hometown}"]] += 1}.map {|hometown, count| count}
  end
end


def get_occupation(data, hometown)

end

def get_average_age_for_season(data, season)

end
