def grep file_path, pattern
  regex = Regexp.new(pattern)
  file = File.open(file_path).read
  file.each_line do |line|
    puts line if (regex =~ line)
  end
end

grep('example.rb', 'a')
