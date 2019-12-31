class RolifyCreateRoles < ActiveRecord::Migration[6.0]
  def change
    create_table(:gatherin_roles) do |t|
      t.string :name
      t.references :resource, polymorphic: true

      t.timestamps
    end

    create_table(:gatherin_users__gatherin_roles, id: false) do |t|
      t.references :user
      t.references :role
    end

    add_index(:gatherin_roles, %i[name resource_type resource_id])
    add_index(:gatherin_users__gatherin_roles, %i[user_id role_id])
  end
end
