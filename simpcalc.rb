def Add(numbers)
    if numbers.empty?
        puts 0
    elsif numbers.include? ','
        comma = numbers.index ','
        a = numbers[0,comma].to_i
        b = numbers[(comma+1)..-1].to_i
        c = a + b
        puts c
    else
        puts numbers.to_i
    end
end