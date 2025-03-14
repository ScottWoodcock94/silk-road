class UpdateMessages < ActiveRecord::Migration[8.0]
  def change
    add_foreign_key :messages, :users, column: :author_user_id
    add_foreign_key :messages, :users, column: :recipient_user_id
  end
end
