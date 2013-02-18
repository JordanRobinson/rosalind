class CONS
#Rosalind exercise: Consensus and Profile

  #not yet finished




# @param [String] data
  def run(data)

    #strip headings
    raw_array = data.split(/>Rosalind_[0-9].*?\n/)

    processed_array = []

    for i in 0..raw_array[0].length
      for j in 0..raw_array.length
        puts raw_array[j][i]
      end
      puts "\n"
    end




    for i in 0..raw_array.length
      processed_string = ""

      for j in 0..raw_array[i].length
        processed_string = processed_string + raw_array[i][j]
      end

    end



    #iterate through taking first char, then second, etc to build new string
    #build string each time into new array

    #cycle through new array and count each type








  end








end