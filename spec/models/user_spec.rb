require 'rails_helper'

RSpec.describe User, :type => :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it { should have_many :tweets }
  it { should respond_to(:relationships)}

end
