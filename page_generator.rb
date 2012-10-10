require 'open-uri'
require 'json'

json_response = open("http://codemountain.com/api/students/am.json").read

students = JSON.parse(json_response)

puts "<html>"
puts "	<head>"
puts "		<title>TSL AM Dev Students</title>"
puts "		<link rel='stylesheet' href='reset.css' type='text/css'>"
puts "		<link rel='stylesheet' href='styles.css' type='text/css'>"
puts "		<link href='http://fonts.googleapis.com/css?family=Arvo' rel='stylesheet' type='text/css'>"
puts "	</head>"
puts "	<body>"
puts "		<h1>"
puts "			TSL AM Dev Students"
puts "		</h1>"
puts "		<ul>"

students.each do |student_hash|
  puts "      <li class='frame'>"
  puts "    	  <img class='thumbnail' src='http://codemountain.com#{student_hash["student"]["avatar_url"]}'>"
  puts "    	  <p class='name'>#{student_hash["student"]["name"]}</p>"
  puts "    	</li>"
end

puts "    </ul>"
puts "	</body>"
puts "</html>"

