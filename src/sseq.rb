class SSEQ
  #Rosalind exercise: Finding a spliced motif

  #@param [String] data
  def run(data)

    data.gsub!(/\s+/, "") #remove all whitespace
    data.gsub!(/[0-9]./, "")
    raw_array = data.split(/>Rosalind_/)

    main_string = raw_array[1]
    ret = []

    j = 0
    for i in 0..main_string.length
      unless main_string[i].nil? or raw_array[2][j].nil?
        if main_string[i].eql?(raw_array[2][j])
          ret << (i + 1)
          j += 1
        end
      end
    end

    ret.join(' ')


  end
end