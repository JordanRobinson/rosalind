class Rosalind

  $exercise_name = "prtm"

  require "./" + $exercise_name + ".rb"

  $data
  $path = "D:\\0\\rosalind\\"

  def load_data(file_name)
    full_path = $path.concat(file_name)
    $data = File.open(full_path).read
  end

  def run(exercise_name)
    #xerciseOne.new.run($data)
    eval($exercise_name.to_s.upcase).new.run($data)
  end
end


runner = Rosalind.new
runner.load_data($exercise_name + ".txt")
runner.run($exercise_name)











