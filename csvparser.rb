require 'json'


 if File.exist?("buslines.json") then
	File.delete("buslines.json") 
 end
 file_comment = File.open("buslines.json","a+")  

$ary = Array.new 
File.open('buslines_no_quotes.txt', 'r') .readlines.each do |line|
	
	 lineArray = line.split(",")
  	busArray = lineArray
	 busArray.shift
	 h = Hash["bus_id" => lineArray[0],"routes" => busArray]
	# puts h.to_json 
	 $ary << JSON.pretty_generate(h) 

	
end
jsonHash = Hash["buses",$ary]
jsonString = JSON.pretty_generate(jsonHash) 
jsonString.delete! '\\'
jsonString.delete! 'n'
file_comment.write(jsonString)

file_comment.close

