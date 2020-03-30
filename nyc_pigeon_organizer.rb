require 'pry'
def nyc_pigeon_organizer(data)
  new_hash={}
data.each_pair do |attribute,attribute_value|
    attribute_value.each_pair do |next_key,next_value|
      next_value.each do |name| 
        if !new_hash[name]
          new_hash[name]={}
        end 
        if !new_hash[name][attribute]
          new_hash[name][attribute]=[]
        end 
        new_hash[name][attribute] << "#{next_key}" 
      end 
    end 
  end 
  new_hash
end 

# newarray << data[:color]

# (1..6).group_by { |i| i%3 }

# newhash.push data.find{|key| key[0]}

# data.map{|key,value|[value}
# data.select |hash| hash.find{|key, value| value == hash[key]} 

  # next_value.each do |last_key| 
  #       new_hash[last_key]  