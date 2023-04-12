class AddUserIdToStamps < ActiveRecord::Migration[7.0]
  def change
    add_reference :stamps, :user, null: false, foreign_key: true
  end
end
