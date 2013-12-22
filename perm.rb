class PERM
  #Rosalind exercise: Enumerating gene Orders

  def run(data)

    data_as_int = Integer(data)

    numbers = []

    for i in 1..data_as_int
      numbers.push(i)
    end

    numbers = numbers.permutation.to_a

    puts numbers.length
    for i in 0..numbers.length
      unless numbers[i].nil?
        puts numbers[i].join(" ")
      end
    end

  end

end