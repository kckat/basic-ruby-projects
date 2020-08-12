dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(words, dictionary)
 substring = Hash.new
 words = words.downcase.split(" ")
 words.each do |word|
   if dictionary.include? word
     if substring.has_key? word
       substring[word] = substring[word] + 1
     else
       substring[word] = 1
     end
   end
 end
 if substring.empty?
   puts "No matching words found in dictionary"
 else
   return substring
 end
end


puts "Check for words in dictionary"
puts "enter word or phrase:"
user_input = gets.chomp
substrings(user_input, dictionary)
