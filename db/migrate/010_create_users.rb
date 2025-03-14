class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :email, null: false
      t.string :password, null: false
      t.string :remember_token
      t.integer :role, default: 1, null: false
      t.integer :rating, default: 0, null: false
      t.boolean :registered, default: false, null: false
      t.timestamp :registration_date, default: DateTime.now(), null: false
      t.boolean :subscribed, default: false, null: false
      t.boolean :active, default: false, null: false
      t.boolean :deactivated, default: false, null: false
      t.boolean :suspended, default: false, null: false

      t.timestamps
    end
  end
end
