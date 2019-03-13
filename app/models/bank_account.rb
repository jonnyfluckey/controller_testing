class BankAccount < ApplicationRecord
  belongs_to :users

  validates_presence_of :amount, :institution, :active
end
