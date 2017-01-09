require 'json'
require 'rabbit'


rabbit = Rabbit::Converter.new
$file_name  = ARGV[0].chomp
$r_file_name  = ARGV[1].chomp

if File.exist?($file_name) then
	File.delete($file_name) 
end

file_comment = File.open($file_name,"a+")  
$ary = Array.new 
File.open($r_file_name, 'r') .readlines.each do |line|
		
		file_comment.write(rabbit.uni2zg(line))
end
file_comment.close

