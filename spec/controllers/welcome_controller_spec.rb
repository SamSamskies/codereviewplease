require 'spec_helper'

describe Comment do
  it { should validate_presence_of(:body) }
end

describe Request do
  it { should validate_presence_of(:gist_url) }
  it { should validate_presence_of(:description) }

  it { should_have_many(:comments)}
  it { should_have_and_belong_to_many(:tags)}
end

describe User do
  it { should validate_presence_of(:username) }
  # it { should validate_presence_of(:github_token) }
  # it { should validate_presence_of(:avator) }
  # it { should validate_presence_of(:email) }
  
  it { should have_many(:requests)}
end

describe Tag do
  it { should validate_presence_of(:body) }

  it { should_have_and_belong_to_many(:requests)
end