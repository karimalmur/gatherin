# This migration comes from gatherin_auth (originally 20191230042534)
class AddUnconfirmedEmailToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :gatherin_users, :unconfirmed_email, :string
  end
end
