class ExerciseFive
#Rosalind exercise: Counting Point Mutations

# @param [String] data
  def run(data)
    data_array = data.split("\n")

    first_set = data_array[0].split(//)
    second_set = data_array[1].split(//)

    hamming_distance = 0
    i = 0

    first_set.each { |x|
      if not x.eql?(second_set[i])

        puts x + " " + second_set[i]

        hamming_distance = hamming_distance + 1

      end
      i = i+1
    }
    puts hamming_distance

  end
end