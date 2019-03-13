require 'rails_helper'

RSpec.describe BankAccount, type: :model do
  describe "associations" do
    it { should belong_to(:users) }
  end
end
