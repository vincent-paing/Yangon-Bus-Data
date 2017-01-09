require 'json'
require 'rabbit'


$write_file_name = ARGV[0].chomp
$read_file_name = ARGV[1].chomp
if File.exist?($write_file_name) then
	File.delete($write_file_name) 
end
file_comment = File.open($write_file_name,"a+")  
$ary = Array.new 

File.open($read_file_name, 'r') .readlines.each do |line|

	if line.include?("\"")then
 			line["\""]=""

		end
		line.gsub! /"/, ''
	file_comment.write(line)

	
	# if line.include?("\n")then
	# line["\n"]=""
	# end
	# lineArray = line.split(",")
	# tmpArray = Array.new
	#  lineArray.each  do|l| 
 	
	# 	l = l.strip

	# end	
	
end


file_comment.close

