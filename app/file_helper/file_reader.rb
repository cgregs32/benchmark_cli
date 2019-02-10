module FileHelper
	class FileReader
    def initialize(file)
      @file = file
    end

    def call
      current_location = File.expand_path(File.dirname(__FILE__))
      puts "ruby "
      debugger
    end

    private
	end
end