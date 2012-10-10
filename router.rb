require_relative 'page_generator'

if ARGV.size == 0
  puts "Usage: ruby router.rb [action]"
else
  action = ARGV[0]
  generator = WebPageGenerator.new

  if action == 'index'
    generator.generate_all_students
  elsif action == 'random'
    generator.generate_random_student
  else
    puts "Unknown action!  Try again."
  end
  
end