require 'rails_helper'

describe Team do
  it { should have_many(:players) }
end
