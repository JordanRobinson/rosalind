class LEXF
  #Rosalind exercise: Enumerating k-mers Lexicographically

  def run(data)

    raw_array = data.split(/\n/)

    letters = raw_array[0].split(/ /)

    length = Integer(raw_array[1])

    temp_letters = []

    for i in 0..letters.length
      for j in 0...length
        temp_letters << letters[i]
      end
    end

    letters = temp_letters

    letters = letters.permutation(length).to_a

    output = []

    for i in 0..letters.length
      unless letters[i].nil? or letters[i].join("").length < length
        output << letters[i].join("")[0...length]
      end
    end

    output = output.uniq

    output.each do |i|
      puts i
    end

  end

end