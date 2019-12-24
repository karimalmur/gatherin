class CreateGatherinUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :gatherin_users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.date   :birthdate
      t.string :gender

      t.timestamps
    end
  end
end
