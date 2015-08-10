module TheGreatEscape
  VERSION = "0.1.0"
	def self.escape string
		string.inspect.gsub(/\\\\/,'\\').gsub(/"/,'')
	end
end
