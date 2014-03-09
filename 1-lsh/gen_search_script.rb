File.delete 'search_script.sh' if File.exists? 'search_script.sh'

File.open('search_script.sh', 'w') do |f|

  f.puts "#!/bin/bash"

  f.puts "mkdir search"
  f.puts "cd search"


  bands = (32..250).select { |i| i%5 == 0 }
  rows = (20..70).select { |i| i%5 == 0 }

  bands.each do |band|
    rows.each do |row|
      f.puts "if [ ! -f ./prediction_#{band}_#{row}.txt ]; then"
      # race condition...
      f.puts "touch ./prediction_#{band}_#{row}.txt" 
      f.puts "cat ../1_data/train.txt | ../src/mapper.py #{band} #{row} | sort | ../reducer.py > ./prediction_#{band}_#{row}.txt"
      f.puts "echo 'Bands #{band}, Rows #{row}:' >> _results.txt"
      f.puts "../check.py ./prediction_#{band}_#{row}.txt ../1_data/duplicates.txt >> _results.txt"
      f.puts "echo '' >> _results.txt"
      f.puts "fi"
    end
  end

end

