require 'spec_helper'

describe Comment do
  it { should validate_presence_of(:body) }
end

describe Request do
  it { should validate_presence_of(:gist_url) }
  it { should validate_presence_of(:description) }
end

describe User do
  it { should validate_presence_of(:username) }
  # it { should validate_presence_of(:github_token) }
  # it { should validate_presence_of(:avator) }
  # it { should validate_presence_of(:email) }
end

describe Tag do
  it { should validate_presence_of(:body) }
end