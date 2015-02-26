def grep file_path, pattern
  regex = Regexp.new(pattern)
  file = File.open(file_path).read
  file.each_line.each_with_index do |line, index|
    puts "Line #{index}: #{line}" if (regex =~ line)
  end
end

grep('example.rb', 'p')
