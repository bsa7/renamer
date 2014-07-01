Dir.entries(Dir.pwd).each do |filename|   #=> [".", "..", "config.h", "main.rb"]
 if filename[ARGV[0]]
  newfilename = filename.gsub(ARGV[0], ARGV[1])
  File.rename(filename, newfilename)
  puts "file #{filename} was renamed to #{newfilename}"
 end
end

