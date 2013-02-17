class DNA

  def run(data)

    puts count_char(data, "A").to_s +
             " " + count_char(data, "C").to_s +
             " " + count_char(data, "G").to_s +
             " " + count_char(data, "T").to_s
  end

  def count_char(data, char)
    data.count(char)
  end

end