module TheGreatEscape
  VERSION = "0.1.0"
	def self.escape_put string
		STDOUT.puts(escape string)
	end

	def self.escape string
		string.dump.gsub /"/, ''
	end
end
