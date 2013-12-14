require 'spec_helper'

describe Tag do
  it { should validate_presence_of(:body) }
  it { should_have_and_belong_to_many(:requests) }
end
