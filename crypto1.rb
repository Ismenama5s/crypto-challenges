require_relative 'bases'
require 'colorize'

def test_output(i)
  output = colorize_output(send("challenge_#{i}"))
  puts "Challenge #{i}:             #{output}"
  output2 = colorize_output(send("challenge_#{i}_binary"))
  puts "Challenge #{i} (in binary): #{output2}"
end

def colorize_output(passed)
  passed ? "PASS".green : "FAIL".red
end

def run_tests(n)
  (1..3).each { |num| test_output(num) }
end

sets = 1
challenges = 3
(1..sets).each do |set|
  (1..challenges).each do |challenge|
    require_relative "./set#{set}/c#{challenge}"
  end
end

run_tests(challenges)
