class KMER
  #Rosalind exercise: k-Mer Composition

  def run(data)

    data.gsub!(/\s+/, '') #remove all whitespace
    data.gsub!(/[0-9]./, '')
    data_array = data.split(/>Rosalind_/)

  end

end