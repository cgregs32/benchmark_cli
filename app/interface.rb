require 'optparse'
require 'byebug'
require "awesome_print"
require_relative "file_helper/file_reader"

options = {}

OptionParser.new do |parser|

  parser.on("-s", "--stats FILE_PATH", "Output file statistcs") { |f| options[:file_path] = f }

  parser.on("-c", "--climb CLIMB",  "The grade you climb.") { |g|  options[:grade] = g }
  parser.on("-h", "--help", "Show this help message") { || puts parser }
end.parse!

# Now we can use the options hash however we like.
puts "Hello #{ options[:name] }"  if options[:name]
puts "So, #{ options[:name] } you think you can climb #{options[:grade]}" if options[:grade] && options[:name]
puts "Dude thinks he can climb #{options[:grade]}" if options[:grade]
FileHelper::FileReader.new(options[:file_path]).call if options[:file_path]
