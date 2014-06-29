class REVC

  require './dna.rb'

  # @param [String] data
  def run(data)

    #brief is a little misleading, let's try it again


    data_size = data.length
    out = ''

    char_array = data.to_s.split(//)

    while data_size > -1
      if char_array[data_size].eql?('A')
        out = out + 'T'
      elsif char_array[data_size].eql?('G')
        out = out + 'C'
      elsif char_array[data_size].eql?('T')
        out = out + 'A'
      elsif char_array[data_size].eql?('C')
        out = out + 'G'
      end
      data_size = data_size - 1
    end
    out
  end

end