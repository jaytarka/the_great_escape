module TheGreatEscape
	module Escaper
		def escape_puts string
			STDOUT.puts(escape string)
		end

		def escape string
			string.to_s.dump.gsub /"/, ''
		end
	end
end
