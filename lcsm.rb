class LCSM
#Rosalind exercise: Finding a Shared Motif

  def run(data)

    #strip headings
    raw_array = data.split(/>Rosalind_[0-9].*?\n/)

    all_substrings = []

    first_string = raw_array[1]

    first_string.delete!("\n")

    (0...first_string.length).map { #grab all the substrings of the first available string
        |i| (i...first_string.length).each {
          |j| if first_string[i..j].length > 1
                all_substrings << first_string[i..j]
              end
      }
    }

    longest_substring = ""

    for j in 2..raw_array.length #for the rest of the strings
      unless raw_array[j].nil?

        raw_array[j].delete!("\n") #strip the newlines

        for i in 0..all_substrings.length #then for every substring of the first string
          unless all_substrings[i].nil?

            if raw_array[j].include?(all_substrings[i]) and all_substrings[i].length > longest_substring.length
              longest_substring = all_substrings[i] #check if there's a new common longest substring
            end

            unless raw_array[j].include?(all_substrings[i]) #remove strings that are not common

              if (all_substrings.length % 1000) == 0 #rudimentary countdown
                puts all_substrings.length
              end

              all_substrings.delete_at(i) #the string doesn't match, so remove it

              if all_substrings[i].eql?(longest_substring) #if it was the longest substring, we can't use it any more
                longest_substring = ""
                i = 0 #and we need to reset checking all the whole strings
              end
            end

          end
        end


      end
    end
    puts longest_substring

  end
end