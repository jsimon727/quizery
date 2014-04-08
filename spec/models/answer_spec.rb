require 'spec_helper'

describe Answer do
  it { should belong_to(:user) }
  it { should belong_to(:question) }
end