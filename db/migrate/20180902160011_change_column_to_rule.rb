class ChangeColumnToRule < ActiveRecord::Migration[5.1]
  def change
    change_column :rules, :user_id, :integer, index: true
    change_column :rules, :problem_id, :integer, index: true
  end
end
