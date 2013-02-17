class Rosalind
  require "./exerciseOne.rb"
  require "./exerciseTwo.rb"
  require "./exerciseThree.rb"
  require "./exerciseFour.rb"
  require "./exerciseFive.rb"
  require "./exerciseSix.rb"
  require "./exerciseSeven.rb"

  $data
  $path = "D:\\0\\rosalind\\"

  def load_data(file_name)
    full_path = $path.concat(file_name)
    $data = File.open(full_path).read
  end

  def run(exercise_number)
    case exercise_number
      when "1"
        ExerciseOne.new.run($data)
      when "2"
        ExerciseTwo.new.run($data)
      when "3"
        ExerciseThree.new.run($data)
      when "4"
        ExerciseFour.new.run($data)
      when "5"
        ExerciseFive.new.run($data)
      when "6"
        ExerciseSix.new.run($data)
      when "7"
        ExerciseSeven.new.run($data)
      else
        puts "can't find exercise"
    end
  end
end


runner = Rosalind.new
exercise_number = 7

runner.load_data("exercise" + exercise_number.to_s + ".txt")
runner.run(exercise_number.to_s)