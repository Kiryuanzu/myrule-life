class CreateRules < ActiveRecord::Migration[5.1]
  def change
    create_table :rules do |t|
      t.string :title
      t.integer :user_id
      t.integer :problem_id

      t.timestamps
    end
  end
end
