class CreateMessages < ActiveRecord::Migration[8.0]
  def change
    create_table :messages do |t|
      t.string :subject
      t.string :content, null: false
      t.datetime :datetime, null: false, default: DateTime.now
      t.boolean :draft, null: false, default: true
      t.boolean :sent, null: false, default: false
      t.boolean :received, null: false, default: false
      t.boolean :read, null: false, default: false
      t.integer :author_user_id, null: false
      t.integer :recipient_user_id, null: false

      t.timestamps
    end
  end
end
