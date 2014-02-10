def Add(numbers)
    if numbers.empty?
        puts 0
    elsif numbers.include? ','
        numbers = numbers.split(',')
        numbers.map! { |x| x.to_i }
        sum = 0
        numbers.each do |i|
          sum += i
        end
        puts sum
    else
        puts numbers.to_i
    end
end