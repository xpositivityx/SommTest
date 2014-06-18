require 'spec_helper'

describe Subregion  do
	it 'has a valid factory' do
		build (:subregion).should be_valid
	end
	it 'is invalid without an email' do
		build(:subregion, name: nil).should_not be_valid
	end
end