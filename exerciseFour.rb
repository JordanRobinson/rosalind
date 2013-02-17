class ExerciseFour
#Rosalind exercise: Computing GC Content


  def run(data)
    split_id(data)
  end

# @param [String] raw_data
  def split_id(raw_data)
    fasta_array = raw_data.split(/>/)
    #next we split out ids from the data itself
    fasta_array.each { |x| puts x.split(/[ACGT]/)[0] #get the id
    puts calculate_gc_percent(x.split(/Rosalind.*?\n/)[1].to_s) } #get the data

  end

  #@param [String] data
  def calculate_gc_percent(data)
    #strip whitespace first, since this counts as characters
    data.gsub!(/\s+/,"")

    g_count = data.count("G")
    c_count = data.count("C")
    total_count = data.length


    ret = (g_count + c_count).to_f / total_count * 100

  end
end