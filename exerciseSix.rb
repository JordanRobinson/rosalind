class ExerciseSix
  #Rosalind exercise: Finding a Motif in DNA


  #@param [String] data
  def run(data)

    target_data = data.split("\n")[0].split(//)
    capture_group = data.split("\n")[1]

    i = 0
    ret = ""

    target_data.each { |x|
      i = i + 1 #not zero indexed as according to brief
      if x.eql?(capture_group.split(//)[0])
        if found_group?(capture_group, target_data, i)
          ret = ret + i.to_s + " "
        end

      end
    }


    puts ret.chop

  end

  #@param [String] capture_group
  #@param [Array] target_data
  #@param [Integer] position
  def found_group?(capture_group, target_data, position)

    position = position - 1 #convert back to 0-based

    capture_length = capture_group.length - 1 #decrement since we're comparing as 0-based still
    capture_group_array = capture_group.split(//)

    ret = true

    for i in 0..capture_length
      check_position = i + position
      if not target_data[check_position].eql?(capture_group_array[i])
        ret = false
      end
    end

    ret


  end




end