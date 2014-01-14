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

    for i in 0...raw_array.length
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
          else
            puts raw_array[i][j]
        end
      end
    end

    puts results_array.join(" ")

    a_string_ret = ""
    c_string_ret = ""
    g_string_ret = ""
    t_string_ret = ""

    ret_string = ""

    for i in 0...results_array.length - 1

      a_count = results_array[i].count('A')
      c_count = results_array[i].count('C')
      g_count = results_array[i].count('G')
      t_count = results_array[i].count('T')

      if a_count > c_count and a_count > g_count and a_count > t_count
        ret_string += "A"
      elsif c_count > a_count and c_count > g_count and c_count > t_count
        ret_string += "C"
      elsif g_count > a_count and g_count > c_count and g_count > t_count
        ret_string += "G"
      elsif t_count > a_count and t_count > g_count and t_count > c_count
        ret_string += "T"
      end

    a_string_ret += a_count.to_s + " "
    c_string_ret += c_count.to_s + " "
    g_string_ret += g_count.to_s + " "
    t_string_ret += t_count.to_s + " "
    end

    puts ret_string
    puts "A: " + a_string_ret
    puts "C: " + c_string_ret
    puts "G: " + g_string_ret
    puts "T: " + t_string_ret
  end

end