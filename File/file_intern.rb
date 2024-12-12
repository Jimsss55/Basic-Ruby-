
File.open("intern.txt", "w") do |file|
  file.puts "Hello I am Jimpa Jamtsho"
  file.write "I am currently doing intern at SELISE"
end

File.rename("intern.txt", "intern_docs.txt")

File.delete("intern_docs.txt") if File.exist?("intern_docs.txt")
