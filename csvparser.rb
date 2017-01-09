require 'json'


 if File.exist?("buslines.json") then
	File.delete("buslines.json") 
 end
 file_comment = File.open("buslines.json","a+")  

$ary = Array.new 
File.open('buslines_no_quotes.txt', 'r') .readlines.each do |line|
	
	 lineArray = line.split(",")
  	busArray = lineArray
id =	busArray.shift
	 
	h = Hash["bus_id" =>id,"routes" => busArray]
	# puts h.to_json 
	 $ary << h 

	
end
jsonHash = Hash["buses",$ary]
jsonString = JSON.pretty_generate(jsonHash) 

jsonString.chomp
file_comment.write(jsonString)

puts jsonString
file_comment.close

