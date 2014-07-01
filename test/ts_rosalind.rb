require 'test/unit'
require './src/rosalind'

class TestRosalind < Test::Unit::TestCase

  def test_everything

    debug = false

    #for debug purposes, uncomment
    #print Dir.entries(Dir.pwd)
    Dir.chdir('sample')
    files = Dir.entries(Dir.pwd)

    sample_files = []
    result_files = []

    files.each do |x|
      if x.include?('txt')
        if x.include?('sample')
          sample_files << x
        end
        if x.include?('expected')
          result_files << x
        end
      end
    end

    assert_equal(sample_files.size, result_files.size)

    runner = Rosalind.new

    for i in 0...sample_files.length
      sample = IO.read(sample_files[i])
      result = IO.read(result_files[i])


      exercise_name = sample_files[i].gsub!('-sample.txt', '')
      test_result = runner.run_with_data(exercise_name, sample)
      if debug
        puts '---------------------exercise = ' + exercise_name + '----------------'
        puts '---------------------sample-------------------------'
        puts sample
        puts '---------------------expected-----------------------'
        puts result
        puts '---------------------given--------------------------'
        puts test_result
        puts
      end


      assert_equal(result, test_result, 'failure on running ' + exercise_name)
    end

  end






end
