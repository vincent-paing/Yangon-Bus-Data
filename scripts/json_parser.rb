require 'json'


$write_file_name = ARGV[0].chomp
$read_file_name = ARGV[1].chomp
if File.exist?($write_file_name) then
	File.delete($write_file_name) 
end
file_comment = File.open($write_file_name,"a+")  
$ary = Array.new 

File.open($read_file_name, 'r') .readlines.each do |line|
	
	if line.include?("\n")then
	line["\n"]=""
	end
	lineArray = line.split(",")
	tmpArray = Array.new
	 lineArray.each  do|l| 
 	if l.include?("\"")then
 			l["\""]=""
		end
		tmpArray << l.strip
	end	
	busArray = tmpArray 
	id =	busArray.shift

	h = Hash["bus_id" =>id,"routes" => busArray]
	# puts h.to_json 
	$ary << h 


end
jsonHash = Hash["buses",$ary]
jsonString = JSON.pretty_generate(jsonHash) 
jsonString.chomp
file_comment.write(jsonString)
file_comment.close

