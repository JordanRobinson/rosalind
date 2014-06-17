class PROT
  #Rosalind exercise: Protein Translation

  $protein_values = {"UUU" => "F","CUU" => "L","AUU" => "I","GUU" => "V","UUC" => "F","CUC" => "L","AUC" => "I","GUC" => "V","UUA" => "L","CUA" => "L","AUA" => "I","GUA" => "V","UUG" => "L","CUG" => "L","AUG" => "M","GUG" => "V","UCU" => "S","CCU" => "P","ACU" => "T","GCU" => "A","UCC" => "S","CCC" => "P","ACC" => "T","GCC" => "A","UCA" => "S","CCA" => "P","ACA" => "T","GCA" => "A","UCG" => "S","CCG" => "P","ACG" => "T","GCG" => "A","UAU" => "Y","CAU" => "H","AAU" => "N","GAU" => "D","UAC" => "Y","CAC" => "H","AAC" => "N","GAC" => "D","CAA" => "Q","AAA" => "K","GAA" => "E","CAG" => "Q","AAG" => "K","GAG" => "E","UGU" => "C","CGU" => "R","AGU" => "S","GGU" => "G","UGC" => "C","CGC" => "R","AGC" => "S","GGC" => "G","CGA" => "R","AGA" => "R","GGA" => "G","UGG" => "W","CGG" => "R","AGG" => "R","GGG" => "G"}
  $is_done
  #@param [String] data
  def run(data)

    puts "input: " + data
    data_chunks = data.scan(/.{3}/)
    ret = ""

    for i in 0..data_chunks.length
      #puts "iterating... " +  i.to_s
      if $is_done
        puts ret
      end
      ret = ret + map_data(data_chunks[i]).to_s
    end

  end

  #@param [Array] data_chunk
  def map_data(data_chunk)
    if data_chunk == "UAA" or data_chunk == "UAG" or data_chunk == "UGA"
      $is_done = true
      ""
    else
      $protein_values[data_chunk.to_s]
    end
  end






end