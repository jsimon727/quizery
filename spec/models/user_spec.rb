require 'spec_helper'

describe User do
  it { should have_many(:scores) }
  it { should have_many(:answers) }
  it { should validate_presence_of(:email) }
end