print "File to analyze: "
file_to_analyze = gets.strip

lines = File.readlines(file_to_analyze)
line_count = lines.size
text = lines.join
char_count = text.length
char_count_nospace = text.gsub(/\s+/, '').length
word_count = text.scan(/\w+/).length
sentence_count = text.split(/\.|\?|!/).length
paragraph_count = text.split(/\n\n/).length


puts "#{line_count} lines"
puts "#{char_count} characters"
puts "#{char_count_nospace} no space characters"
puts "#{word_count} words"
puts "#{sentence_count} sentences"
puts "#{sentence_count / paragraph_count} average paragraphs per sentences"
