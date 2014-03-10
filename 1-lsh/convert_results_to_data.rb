require 'csv'

text = File.readlines('search/_results.txt').join
regex = /Bands ([0-9]*), Rows ([0-9]*):\nTP = ([0-9]*) FP = ([0-9]*) FN = ([0-9]*)\nPrecision = ([0-9.]*), recall = ([0-9.]*), F1 = ([0-9.]*)/
data = text.scan(regex)

CSV.open('search/_data.csv', 'w') do |csv|
  csv << %w(Bands Rows TP FP FN Precision Recall F1)
  data.each do |val|
    csv << val
  end
end
