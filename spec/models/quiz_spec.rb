require 'spec_helper'

describe Quiz do
  it { should have_many(:questions) }
  it { should have_many(:scores) }
end