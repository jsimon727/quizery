require 'spec_helper'

describe Score do
  it { should belong_to(:user) }
  it { should belong_to(:quiz) }
end