class Rosalind

  $exercise_name = 'iprb'

  require 'time'
  #require './src/' + $exercise_name + '.rb'


  $data
  $path = '/data/'

  def load_data(file_name)
    $data = File.open(file_name).read

  end

  def run(exercise_name)

    #for debug purposes, uncomment
    #Dir.chdir('src')
    #print Dir.entries(Dir.pwd)

    start = Time.now
    ret = eval($exercise_name.to_s.upcase).new.run($data)

    elapsed = (Time.now - start)
    #print "\n" + 'Exercise ' + $exercise_name + ' completed in ' + elapsed.to_s + ' seconds' + "\n"
    ret
  end

  def run_with_data(exercise_name, data)
    require Dir.pwd + '/../src/' + exercise_name + '.rb'
    eval(exercise_name.to_s.upcase).new.run(data)
  end


end


#runner = Rosalind.new
#runner.load_data(Dir.pwd + $path + $exercise_name + '.txt')
#runner.run($exercise_name)










