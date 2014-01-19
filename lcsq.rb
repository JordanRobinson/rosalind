class LCSQ
#Rosalind exercise: Finding a Shared Spliced Motif

  def run(data)

    data.gsub!(/\s+/, "") #remove all whitespace
    data.gsub!(/[0-9]./, "")
    raw_array = data.split(/>Rosalind_/)

    string_a = raw_array[1]
    string_b = raw_array[2]

    puts "working"
    puts recurse(string_a, string_b)

  end


  def recurse(string_a, string_b)
    return "" if string_a.empty? || string_b.empty?
    return "" if string_a.length < 200 || string_b.length < 200


    a_char = string_a[0]
    b_char = string_b[0]
    a_sub = string_a[1..-1]
    b_sub = string_b[1..-1]

    if a_char == b_char #start of a subseq
      a_char + recurse(a_sub, b_sub)
    else
      puts string_a.length
      puts string_b.length
      puts "-------------"
      [recurse(string_a, b_sub), recurse(a_sub, string_b)] #compares all subseqs against the opposite string
      .max_by {|a| a.size} #grabs the longest string from the block
    end
  end

end