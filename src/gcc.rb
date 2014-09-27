class GCC
#Rosalind exercise: Computing GC Content


  def run(data)
    split_id(data)
  end

# @param [String] raw_data
  def split_id(raw_data)
    fasta_array = raw_data.split(/>/)
    #next we split out ids from the data itself
    highest_name = ''
    highest_percent = 0.0


    fasta_array.each { |x|
      unless x.split(/[ACGT]/)[0].nil?
        if calculate_gc_percent(x.split(/Rosalind.*?\n/)[1].to_s) > highest_percent
          highest_name = x.split(/[ACGT]/)[0].to_s #get the id
          highest_percent = calculate_gc_percent(x.split(/Rosalind.*?\n/)[1].to_s)
        end
      end
    } #get the data

    highest_name + highest_percent.to_s[0..-9]

  end

  #@param [String] data
  def calculate_gc_percent(data)
    #strip whitespace first, since this counts as characters
    data.gsub!(/\s+/, '')

    g_count = data.count('G')
    c_count = data.count('C')
    total_count = data.length


    (g_count + c_count).to_f / total_count * 100

  end
end