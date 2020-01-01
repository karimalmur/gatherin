# frozen_string_literal: true
# This migration comes from gatherin_admin (originally 20200101035548)

class DeviseCreateGatherinAdminAdminUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :gatherin_admin_users do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      t.timestamps null: false
    end

    add_index :gatherin_admin_users, :email,                unique: true
    add_index :gatherin_admin_users, :reset_password_token, unique: true
  end
end
