class LEXF
  #Rosalind exercise: Enumerating k-mers Lexicographically

  def run(data)

    raw_array = data.split(/\n/)

    letters = raw_array[0].split(/ /)

    length = Integer(raw_array[1]) #get the word length from the split text file

    #iterate through and add a copy of each character so that they can be applied to each word x amount of times
    #where x is the length earlier specified
    temp_letters = []

    for i in 0..letters.length
      for j in 0...length
        temp_letters << letters[i]
      end
    end

    letters = temp_letters

    #get all possible permutations of length x of the array, that contains x copies of all the letters available
    letters = letters.permutation(length).to_a

    output = []

    for i in 0..letters.length
      unless letters[i].nil? or letters[i].join("").length < length #weed out words that are too small
        output << letters[i].join("")[0...length]
      end
    end

    output = output.uniq #remove any duplicates since permutation doesn't

    output.each do |i| #print everything out
      puts i
    end

  end

end