class REVC

  require "./dna.rb"

  # @param [String] data
  def run(data)
    #exercise_one = ExerciseOne.new
    #a_count = exercise_one.count_char(data, "A")
    #g_count = exercise_one.count_char(data, "G")
    #c_count = exercise_one.count_char(data, "C")
    #t_count = exercise_one.count_char(data, "T")
    #
    #out = ""
    #puts t_count.to_s
    #puts g_count.to_s
    #puts c_count.to_s
    #puts a_count.to_s
    #
    #for i in 1..t_count
    #  out = out + "A"
    #end
    #
    #for i in 1..g_count
    #  out = out + "C"
    #end
    #
    #for i in 1..c_count
    #  out = out + "G"
    #end
    #
    #for i in 1..a_count
    #  out = out + "T"
    #end

    #brief is a little misleading, let's try it again


    data_size = data.length
    out = ""

    char_array = data.to_s.split(//)

    while data_size > -1
      if char_array[data_size].eql?("A")
        out = out + "T"
      elsif char_array[data_size].eql?("G")
        out = out + "C"
      elsif char_array[data_size].eql?("T")
        out = out + "A"
      elsif char_array[data_size].eql?("C")
        out = out + "G"
      end
      data_size = data_size - 1
    end
    out
  end

end