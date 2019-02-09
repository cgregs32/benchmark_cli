require 'optparse'
require 'byebug'
require "awesome_print"

# This will hold the options we parse
options = {}

OptionParser.new do |parser|

  # Whenever we see -n or --name, with an
  # argument, save the argument.
  parser.on("-n", "--name NAME", "The name of the person to greet.") do |v|
    options[:name] = v
  end
  debugger
  parser.on("-c", "--climb CLIMB",  "The grade you climb.") { |g|  options[:grade] = g }
  parser.on("-h", "--help", "Show this help message") { || puts parser }
end.parse!

# Now we can use the options hash however we like.
puts "Hello #{ options[:name] }"  if options[:name]
puts "So, #{ options[:name] } you think you can climb #{options[:grade]}" if options[:grade] && options[:name]
puts "Dude thinks he can climb #{options[:grade]}" if options[:grade]