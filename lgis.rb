class LGIS
  #Rosalind exercise: Longest Increasing Subsequence

  def run(data)
    #puts data

    raw_array = data.split("\n")

    main_int = Integer(raw_array[0])

    sequence = raw_array[1].split(" ")

    for i in 0...sequence.length
        sequence[i] = Integer(sequence[i])
    end

    ret_subseq = []

    #increasing
    for i in 0...sequence.length
      current = sequence[i]
      longest_subseq = []
      longest_subseq << current
      for j in 0...sequence.length
          if sequence[j] > current
            longest_subseq << sequence[j]
            current = sequence[j]
          end
      end
      if longest_subseq.length > ret_subseq.length
        puts ret_subseq.join(" ")
        ret_subseq = longest_subseq
      end
    end

    puts ret_subseq.join(" ")

  end

end