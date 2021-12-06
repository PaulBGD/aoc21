# frozen_string_literal: true

def count_increments(depths)
  count = 0

  (1..depths.length - 1).each do |index|
    count += 1 if depths[index] > depths[index - 1]
  end

  count
end

puts count_increments(ARGV.map(&:to_i)) if __FILE__ == $PROGRAM_NAME
