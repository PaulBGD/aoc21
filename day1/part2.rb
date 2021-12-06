# frozen_string_literal: true

def count_sliding_increments(depths, slide = 3)
  count = 0
  prev = -1

  (slide - 1..depths.length - 1).each do |index|
    total = 0

    (0...slide).each { |i| total += depths[index - i] }

    count += 1 if prev != -1 && total > prev
    prev = total
  end

  count
end

puts count_sliding_increments(ARGV.map(&:to_i)) if __FILE__ == $PROGRAM_NAME
