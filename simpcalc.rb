def Add(numbers)
    if numbers.empty?
        puts 0
    elsif numbers[0,2] == "//"
        delimiterend = numbers.index("\n")
        delimiter = numbers[2..delimiterend-1]
        numbers = numbers.split("#{delimiter}")
        negatives = []
        numbers.each do |negative|
            if negative.include? "-"
                negatives << negative.to_i
            end
        end
        if negatives.empty?
            numbers.map! { |x| x.to_i }
            puts numbers.inject(:+)
        else
            puts "negatives not allowed: #{negatives}"
        end
    elsif numbers.include? "-"
        negatives = []
        numbers.gsub("\n", ",").split(',').each do |negative|
            if negative.include? "-"
                negatives << negative.to_i
            end
        end
        puts "negatives not allowed: #{negatives}"
    elsif numbers.include? ',' or  numbers.include? "\n"
        numbers = numbers.gsub("\n", ",").split(',').map! { |x| x.to_i }
        puts numbers.inject(:+)
    else
        puts numbers.to_i
    end
end