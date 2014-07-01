class TRAN
  #Rosalind exercise: Transitions and Transversions

  def run(data)

    data.gsub!(/\s+/, '') #remove all whitespace
    data.gsub!(/[0-9]./, '')
    data_array = data.split(/>Rosalind_/)

    first_set = data_array[1]
    second_set = data_array[2]

    transition = 0.0
    transversion = 0.0

    i = 0

    first_set.split(//).each { |x|

      unless x == second_set.split(//)[i]
        if transition?(x, second_set[i])
          transition = transition + 1.0
        else
          transversion = transversion + 1.0
        end
      end
      i = i + 1
    }
    "\n" + (transition / transversion).to_s
  end

  def transition?(first_char, second_char)
    if (first_char == 'A' && second_char == 'G') || (first_char == 'G' && second_char == 'A')
      return true
    end

    if (first_char == 'C' && second_char == 'T') || (first_char == 'T' && second_char == 'C')
      return true
    end

    false
  end

end