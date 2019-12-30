class AddUnconfirmedEmailToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :gatherin_users, :unconfirmed_email, :string
  end
end
