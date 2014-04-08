class Rosalind

  $exercise_name = 'lexv'

  require 'time'
  require './' + $exercise_name + '.rb'

  $data
  $path = '/data/'

  def load_data(file_name)
    $data = File.open(Dir.pwd + $path + file_name).read

  end

  def run(exercise_name)
    #exerciseOne.new.run($data)
    start = Time.now
    print Dir.pwd
    eval($exercise_name.to_s.upcase).new.run($data)
    elapsed = (Time.now - start)
    print '\nExercise ' + $exercise_name + ' completed in ' + elapsed.to_s + ' seconds'
  end
end


runner = Rosalind.new
runner.load_data($exercise_name + '.txt')
runner.run($exercise_name)











