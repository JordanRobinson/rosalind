class LCSM
#Rosalind exercise: Finding a Shared Motif


  def run(data)

    #strip headings
    raw_array = data.split(/>Rosalind_[0-9].*?\n/)

    #there are much better ways of doing this
    #but for now let's just brute force it, till we have a better understanding of the problem

    longest_substrings = []

    for j in 0..raw_array.length
      unless raw_array[j].nil? or raw_array[j + 1].nil?
        longest_substrings <<  get_common_substring(raw_array[j], raw_array[j + 1])
      end
    end

    while longest_substrings.length > 1
      master_container = longest_substrings
      longest_substrings = []

      for j in 0..longest_substrings.length
        longest_substrings <<  get_common_substring(master_container[j], master_container[j + 1])
      end

    end

    puts longest_substrings

  end

  #@param [String] first_string
  #@param [String] second_string
  def get_common_substring(first_string, second_string)

    unless second_string.nil?
      first_string.delete!("\n")
      second_string.delete!("\n")
      all_substrings = []

      (0...first_string.length).map {
          |i| (i...first_string.length).each {
            |j| if first_string[i..j].length > 1
                  all_substrings << first_string[i..j]
                end
        }
      }

      puts "---"

      longest_substring = ""

      #assuming both strings have the same length
      for i in 0..all_substrings.length
        unless all_substrings[i].nil?
          if second_string.include?(all_substrings[i]) and all_substrings[i].length > longest_substring.length
            longest_substring = all_substrings[i]
          end
        end
      end

      puts longest_substring
      longest_substring
    end
  end

end