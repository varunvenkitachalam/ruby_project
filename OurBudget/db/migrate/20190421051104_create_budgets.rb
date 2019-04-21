class CreateBudgets < ActiveRecord::Migration[5.2]
  def change
    create_table :budgets do |t|
      t.integer :week
      t.float :newLimit
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
