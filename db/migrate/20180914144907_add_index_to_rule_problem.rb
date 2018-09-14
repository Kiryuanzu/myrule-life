class AddIndexToRuleProblem < ActiveRecord::Migration[5.1]
  def change
    add_index :rules, :user_id
    add_index :rules, :problem_id
    add_index :problems, :user_id
  end
end
