class LCSM
#Rosalind exercise: Finding a Shared Motif


  def run(data)

    #strip headings
    raw_array = data.split(/>Rosalind_[0-9].*?\n/)


    #there are much better ways of doing this
    #but for now let's just brute force it, till we have a better understanding of the problem

    for i in 0..raw_array[0].length
      for j in 0..raw_array.length
        #this isn't finished yet
      end
      puts "\n"
    end



  end


  end