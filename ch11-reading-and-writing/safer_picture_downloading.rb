Dir.chdir '/Users/josecopovi-king/projects/learn_to_program/ch11-reading-and-writing/testPics/renamed'
pic_names = Dir['/Users/josecopovi-king/projects/learn_to_program/ch11-reading-and-writing/testPics/*.jpg']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "

pic_number = 1

pic_names.each do |name|
  print '.'

  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end
  if File.exist?(new_name) == true
      puts "ERROR:  File already exists, cannot overwrite"
      exit
  else
    File.rename name, new_name
  end
  pic_number = pic_number + 1
end

puts
puts 'Done, cutie!'
