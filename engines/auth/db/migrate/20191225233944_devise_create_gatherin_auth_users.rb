# frozen_string_literal: true

class DeviseCreateGatherinAuthUsers < ActiveRecord::Migration[6.0]
  def change
    ## Database authenticatable
    change_column :gatherin_users, :email, null: false, default: ""
    add_column :gatherin_users, :encrypted_password, :string, null: false, default: ""

    ## Recoverable
    add_column :gatherin_users, :reset_password_token, :string
    add_column :gatherin_users, :reset_password_sent_at, :datetime

    ## Rememberable
    add_column :gatherin_users, :remember_created_at, :datetime

    ## Confirmable
    add_column :gatherin_users, :confirmation_token, :string
    add_column :gatherin_users, :confirmed_at, :datetime
    add_column :gatherin_users, :confirmation_sent_at, :datetime

    ## Lockable
    # add_column :gatherin_users, :failed_attempts, :integer, default: 0, null: false # Only if lock strategy is :failed_attempts
    add_column :gatherin_users, :unlock_token, :string # Only if unlock strategy is :email or :both
    add_column :gatherin_users, :locked_at, :datetime

    add_index :gatherin_users, :email,                unique: true
    add_index :gatherin_users, :reset_password_token, unique: true
    add_index :gatherin_users, :confirmation_token,   unique: true
    add_index :gatherin_users, :unlock_token,         unique: true
  end
end
