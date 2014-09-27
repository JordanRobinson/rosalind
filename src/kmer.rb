class KMER
  #Rosalind exercise: k-Mer Composition

  def run(data)

    data.gsub!(/\s+/, '') #remove all whitespace
    data.gsub!(/[0-9]./, '')
    data_array = data.split(/>Rosalind_/)

    #construct an alphabet that resuts in AAAA, AAAC etc
    rough_kmer_alphabet = %w[A A A A C C C C G G G G T T T T].permutation(4).to_a.sort

    kmer_alphabet = []

    #get rid of duplicates in our alphabet
    rough_kmer_alphabet.each { |x|
      kmer_alphabet << x.join
    }

    kmers = []

    for i in 0..data_array[1].length
      #shuffle along the input, creating kmers as we go
      unless (i + 3) > data_array[1].length or data_array[1][i + 3].nil?
        current_kmer = data_array[1][i] + data_array[1][i + 1] + data_array[1][i + 2] + data_array[1][i + 3]
        kmers << current_kmer
      end
    end

    #then simply count the kmers against our alphabet
    ret = ''
    kmer_alphabet.uniq.each { |x|
      ret += kmers.count(x).to_s + ' ' #and output the counts
    }
    ret.strip!

  end
end