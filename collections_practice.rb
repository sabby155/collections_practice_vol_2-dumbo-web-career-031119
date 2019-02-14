# your code goes here

def begins_with_r (tools)
  tools.any? do |str|
  if str.split('').shift() != 'r'
  return false
  end
  end  
  true
end  

#another way to achieve the above: 
# def begins_with_r(arr)
#     arr.all? do |string| 
#     string[0] == "r"
#   end
# end


def contain_a (el)
  el.select do |element|
    element.include?("a")
  end  
end   


def first_wa (el)
  hold = []
  el.map do |str|
  hold.push(str.to_s)
end
  hold.find do |str|
     str.split('').shift(2) == ['w','a']
  end
end  

# another way to do the above: 
# def first_wa(arr)
#     arr.detect do |string|
#     string[0,2] == "wa"
#   end
# end


def remove_non_strings (array) 
  array.delete_if do |str|
    str.to_s != str
  end 
end  

# another way to remove non-strings: 
# def remove_non_strings(arr)
#     arr.delete_if do |string| 
#     string.is_a?(String) == false
#   end
# end

def count_elements (array)
    array.uniq.each {|i| count = 0
        array.each {|i2| if i2 == i then count += 1 end}
        i[:count] = count}
end   



def merge_data(keys, data)
  merged = []
  keys.each {|i| data.first.map {|k,v| if i.values[0] == k then merged << i.merge(v) end}}
  merged
end


def find_cool (hash)
  hash.select do |i|
    i.any? {|k,v| v == "cool"}
  end
end 

# def find_cool(cool)
#     cool.select {|i| i.any? {|k,v| v == "cool"}} 
# end



def organize_schools(schools)
    locations_hash = {}
    schools.collect {|k,v| locations_hash[v[:location]] = []}
    locations_hash.each {|k,v| schools.each {|k1,v1| if k == v1[:location] then v << k1  end}}
end
