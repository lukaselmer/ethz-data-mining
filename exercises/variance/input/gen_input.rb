require 'securerandom'

100000.times do
  puts SecureRandom.random_number(1000)
end
