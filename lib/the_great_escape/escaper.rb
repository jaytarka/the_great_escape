module TheGreatEscape
	module Escaper
		def escape_puts string
			STDOUT.puts(escape string)
		end

		def escape string
			string.dump.gsub /"/, ''
		end
	end
end
