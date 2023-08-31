

def compress(str)
    new_str = []
    word = str.split("")

    word.each do |char|
      count = 0
      word.each do |item|
        count += 1 if item == char
      end
      new_str << "#{char}x" if count >= 1
    end

    result = []
    count = 0
    new_str.each_with_index do |val,index|
      if val == new_str[index+1]
        count += 1
      else
        result << "#{val}#{count}" if count > 0
        result << "#{val}"         if count == 0
        count = 0
      end
    end

    result.join('')
end


p compress('aaaaca')
p compress('aaaaaabbcaaa')
p compress('mississippi')
