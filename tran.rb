class TRAN
  #Rosalind exercise: Transitions and Transversions

  def run(data)

    #puts data

    data.gsub!(/\s+/, '') #remove all whitespace
    data.gsub!(/[0-9]./, '')
    data_array = data.split(/>Rosalind_/)

    first_set = data_array[1]
    second_set = data_array[2]

    puts first_set
    puts second_set

    transition = 0.0
    transversion = 0.0

    i = 0

    first_set.split(//).each { |x|

      puts x + ' ' + second_set.split(//)[i]

      unless x.equal?(second_set.split(//)[i])
        if transition?(x, second_set[i])
          transition = transition + 1.0
          puts 'transi' + transition.to_s
        else
          transversion = transversion + 1.0
          puts 'transv' + transversion.to_s
        end

      end
      i = i + 1
    }
    puts transition.to_s
    puts transversion.to_s
    puts (transition / transversion).to_s
  end

  def transition?(first_char, second_char)
    if (first_char == 'A' && second_char == 'G') || (first_char == 'G' && second_char == 'A')
      puts 'found true'
      return true
    end

    if (first_char == 'C' && second_char == 'T') || (first_char == 'T' && second_char == 'C')
      puts 'found true'
      return true
    end

    false
  end

end