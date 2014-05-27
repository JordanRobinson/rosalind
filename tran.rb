class TRAN
  #Rosalind exercise: Transitions and Transversions

  def run(data)

    #puts data

    data.gsub!(/\s+/, "") #remove all whitespace
    data.gsub!(/[0-9]./, "")
    data_array = data.split(/>Rosalind_/)

    #puts data_array

    first_set = data_array[0]
    second_set = data_array[1]

    puts first_set
    puts second_set

    transition = 0.0
    transversion = 0.0

    i = 0

    first_set.each { |x|
      unless x.equal?(second_set[i])
        if transition?(x, second_set[i])
          transition = transition + 1
        end
      else
        transversion = transversion + 1
      end
      i = i + 1
    }
    puts transition / transversion
  end

  def transition?(first_char, second_char)
    if (first_char.equal?('A') && second_char.equal?('G')) || (first_char.equal?('G') && second_char.equal?('A'))
      true
    end

    if (first_char.equal?('C') && second_char.equal?('T')) || (first_char.equal?('T') && second_char.equal?('C'))
      true
    end

    false
  end

end