class FIB
#Rosalind exercise: Rabbits and Recurrence Relations

  def run(data)

    raw_array = data.split(" ")
    recurse(Integer(raw_array[0]), Integer(raw_array[1])).to_s
  end

  def recurse(x, y)
    if x == 1 or x == 2
      1
    else
      recurse(x-1, y) + recurse(x-2, y) * y
    end
  end

end