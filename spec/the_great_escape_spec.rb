require 'spec_helper'

describe TheGreatEscape do
  specify{ expect(TheGreatEscape::VERSION).not_to be nil }
	it{ is_expected.to respond_to :escape }

	let(:string_one){ "\e[542mI am just a normal lorem string\e[0m" }
	let(:inspected_string_one){ %q{\"\\e[542mI am just a normal lorem string\\e[0m\"}}
	let(:escaped_string_one){ %q{\e[542mI am just a normal lorem string\e[0m}}

	let(:string_two){ "ust a normal so called \'lorem\' string" }
	let(:escaped_string_two){ "ust a normal so called \'lorem\' string" }

	let(:string_three){ "IamLorem\e[3m" }
	let(:escaped_string_three){ "IamLorem\\e[3m" }

	describe '.escape' do
		subject{ TheGreatEscape.escape string }
		
		context 'when string is string_one' do
			let(:string){ string_one }
			it{ is_expected.to eq escaped_string_one }
		end

		context 'when string is string_two' do
			let(:string){ string_two }
			it{ is_expected.to eq escaped_string_two }
		end

		context 'when string is string_three' do
			let(:string){ string_three }
			it{ is_expected.to eq escaped_string_three }
			specify{ expect(subject.scan /\\e\[3m$/).to eq ['\\e[3m'] }
		end
	end
end
