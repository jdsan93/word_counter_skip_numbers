str = ["word yes ", " yes 1 no"]
#counts the amount of words in an array or string, doesn't count numbers in the string.
#str is a string or an array of strings, or an array of arrays of strings (so on) as well.
def count_word(str)
  if str.class == Array
    hash = {}
    str.each do |sub|
      sub_hash = count_word(sub)
      sub_hash.keys.each do |key|
        unless hash[key].nil?
          hash[key] += 1
        else
          hash[key] = 1
        end
      end
    end
    return hash
  else
    if str.class == String
      subs = str.split
      sub_hash = {}
      subs.each do |sub|
        if sub_hash[sub].nil?
          sub_hash[sub] = 1 unless sub.match(/\d+/)
        else
          sub_hash[sub] +=1 unless sub.match(/\d+/)
        end
      end
      return sub_hash
    end
  end
end

puts count_word(str) = ["test 1 one"]
