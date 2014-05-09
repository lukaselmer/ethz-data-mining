#!/usr/bin/env ruby

results = []
Dir.glob('out*').each do |v|
  open(v).each do |line|
    next unless line.start_with?('Score: ')

    version = v.gsub('out', '').to_i
    score = line.gsub('Score: ', '').to_f.abs
    results << [score, version]
  end

end

results.sort! { |a, b| a.first <=> b.first }
results.each do |v|
  score, num = v
  puts "#{num} has score #{score}"
end
