class CreateBankAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :bank_accounts do |t|
      t.belongs_to :users, foreign_key: true
      t.float :amount, null: false, default: 0
      t.boolean :active, null: false, default: true
      t.string :institution, null: false
      t.text :body

      t.timestamps
    end
  end
end
