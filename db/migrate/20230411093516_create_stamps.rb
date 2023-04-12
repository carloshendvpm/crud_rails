class CreateStamps < ActiveRecord::Migration[7.0]
  def change
    create_table :stamps do |t|
      t.string :description
      t.float :value

      t.timestamps
    end
  end
end
