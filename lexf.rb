class LEXF
  #Rosalind exercise: Enumerating k-mers Lexicographically

  require 'set'
  def run(data)

    raw_array = data.split(/\n/)

    letters = raw_array[0].split(/ /)

    letters = letters + letters

    letters = letters.permutation.to_a

    output = Set.new()

    for i in 0..letters.length
      unless letters[i].nil?
        output.add(letters[i].join(" ")[0] + letters[i].join(" ")[1])
      end
    end

    output.each do |i|
      puts i
    end

  end

end