require 'rails_helper'

describe Tweet do
  it { should validate_presence_of :status }
  it { should validate_presence_of :user_id }

  it { should belong_to :user }

end
