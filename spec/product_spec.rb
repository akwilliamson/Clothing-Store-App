require 'spec_helper'

describe Product do
  it { should validate_presence_of :name }
  it { should validate_presence_of :price }
  it { should validate_presence_of :description }
  it { should validate_presence_of :pic }
  it { should allow_value(/^\d+??(?:\.\d{0,2})?$/) }
end
