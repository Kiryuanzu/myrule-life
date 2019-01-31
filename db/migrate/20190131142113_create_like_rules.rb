class CreateLikeRules < ActiveRecord::Migration[5.1]
  def change
    create_table :like_rules do |t|
      t.integer :user_id
      t.integer :rule_id
      t.index ["rule_id"], name: "index_like_rules_on_rule_id"
      t.index ["user_id", "rule_id"], name: "index_like_rules_on_user_id_and_rule_id", unique: true
      t.index ["user_id"], name: "index_like_rules_on_user_id"
      t.timestamps
    end
  end
end
