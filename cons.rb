class CONS
#Rosalind exercise: Consensus and Profile

# @param [String] data
  def run(data)

    #strip headings
    raw_array = data.split(/>Rosalind_[0-9].*?\n/)

    results_array = []

    (0...raw_array[1].length).each {
      results_array << ""
    }

    for i in 0...raw_array.length #make a big easily countable array of strings
      for j in 0...raw_array[i].length

        case raw_array[i][j]
          when 'A'
            results_array[j] += 'A'
          when 'G'
            results_array[j] += 'G'
          when 'C'
            results_array[j] += 'C'
          when 'T'
            results_array[j] += 'T'
          when nil
            #do nothing
          when '\n'
          when '\r'
          else
            puts raw_array[i][j]
        end
      end
    end

    a_string_ret = ""
    c_string_ret = ""
    g_string_ret = ""
    t_string_ret = ""

    ret_string = ""

    for i in 0...results_array.length - 1

      a_count = results_array[i].count('A') #count each possibility
      c_count = results_array[i].count('C')
      g_count = results_array[i].count('G')
      t_count = results_array[i].count('T')

      unless a_count == 0 and c_count == 0 and g_count == 0 and t_count == 0

        counts = [a_count, c_count, g_count, t_count]

        case counts.rindex(counts.max) #construct the big string
          when 0
            ret_string += "A"
          when 1
            ret_string += "C"
          when 2
            ret_string += "G"
          when 3
            ret_string += "T"
          else
            #do nothing
        end

        a_string_ret += a_count.to_s + " " #and then construct the matrix
        c_string_ret += c_count.to_s + " "
        g_string_ret += g_count.to_s + " "
        t_string_ret += t_count.to_s + " "

      end
    end

    puts ret_string
    puts "A: " + a_string_ret.chop() #finally, print it out so it's as it should look
    puts "C: " + c_string_ret.chop()
    puts "G: " + g_string_ret.chop()
    puts "T: " + t_string_ret.chop()
  end

end