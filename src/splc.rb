class SPLC
  #Rosalind exercise: RNA Splicing

  $protein_values = {"TTT" => "F","CTT" => "L","ATT" => "I","GTT" => "V","TTC" => "F","CTC" => "L",
                     "ATC" => "I","GTC" => "V","TTA" => "L","CTA" => "L","ATA" => "I","GTA" => "V",
                     "TTG" => "L","CTG" => "L","ATG" => "M","GTG" => "V","TCT" => "S","CCT" => "P",
                     "ACT" => "T","GCT" => "A","TCC" => "S","CCC" => "P","ACC" => "T","GCC" => "A",
                     "TCA" => "S","CCA" => "P","ACA" => "T","GCA" => "A","TCG" => "S","CCG" => "P",
                     "ACG" => "T","GCG" => "A","TAT" => "Y","CAT" => "H","AAT" => "N","GAT" => "D",
                     "TAC" => "Y","CAC" => "H","AAC" => "N","GAC" => "D","CAA" => "Q","AAA" => "K",
                     "GAA" => "E","CAG" => "Q","AAG" => "K","GAG" => "E","TGT" => "C","CGT" => "R",
                     "AGT" => "S","GGT" => "G","TGC" => "C","CGC" => "R","AGC" => "S","GGC" => "G",
                     "CGA" => "R","AGA" => "R","GGA" => "G","TGG" => "W","CGG" => "R","AGG" => "R",
                     "GGG" => "G"}

  $is_done

  #@param [String] data
  def run(data)

    data.gsub!(/\s+/, "") #remove all whitespace
    data.gsub!(/[0-9]./, "")
    raw_array = data.split(/>Rosalind_/)

    data = raw_array[1]

    for i in 2..raw_array.length
      unless raw_array[i].nil?
        data.slice!(raw_array[i])
      end
    end


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
    if data_chunk == "TAA" or data_chunk == "TAG" or data_chunk == "TGA"
      $is_done = true
      "" #we still need to return something
    else
      $protein_values[data_chunk.to_s]
    end
  end
end