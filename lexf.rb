class LEXF
  #Rosalind exercise: Enumerating k-mers Lexicographically

  def run(data)

    raw_array = data.split(/\n/)

    letters = raw_array[0].split(/ /)

    letters = letters + letters + letters

    letters = letters.permutation.to_a

    output = []

    for i in 0..letters.length
      unless letters[i].nil?
        output << letters[i].join("")[0..3]
        #output.add(letters[i].join(" ")[0] + letters[i].join(" ")[1])
      end
    end

    output = output.uniq

    output.each do |i|
      puts i
    end

  end

end