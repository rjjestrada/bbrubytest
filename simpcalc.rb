def Add(numbers)
    if numbers.empty?
        puts 0
    elsif numbers.include? ',' or  numbers.include? "\n"
        numbers = numbers.gsub("\n", ",").split(',').map! { |x| x.to_i }
        puts numbers.inject(:+)
    else
        puts numbers.to_i
    end
end