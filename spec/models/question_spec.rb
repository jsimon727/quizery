require 'spec_helper'

describe Question do
  it { should have_many(:answers) }
  it { should belong_to(:quiz) }
end