require 'spec_helper'
describe TheGreatEscape do
  specify{ expect(TheGreatEscape::VERSION).not_to be nil }
end

describe Object do
	it{ is_expected.to respond_to :escape }
	it{ is_expected.to respond_to :escape_puts }
end
