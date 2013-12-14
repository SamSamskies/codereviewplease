require 'spec_helper'

describe Request do
  it { should validate_presence_of(:gist_url) }
  it { should validate_presence_of(:title) }

  it { should_have_many(:comments)}
  it { should_have_and_belong_to_many(:tags)}
end
