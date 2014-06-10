class KMER
  #Rosalind exercise: k-Mer Composition

  def run(data)

    data.gsub!(/\s+/, '') #remove all whitespace
    data.gsub!(/[0-9]./, '')
    data_array = data.split(/>Rosalind_/)

    puts "\n" + data_array[1]

    rough_kmer_alphabet = %w[A A A A C C C C G G G G T T T T].permutation(4).to_a.sort

    kmer_alphabet = []

    rough_kmer_alphabet.each { |x|
      kmer_alphabet << x.join
    }

    i = 0
    kmer_alphabet.uniq.each { |x|
      puts x






      puts data_array[1].split(//)


      i = i + 1
    }

  end

end