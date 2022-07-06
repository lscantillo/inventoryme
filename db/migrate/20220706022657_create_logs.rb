class CreateLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :logs do |t|
      t.references :product, null: false, foreign_key: true
      t.integer :log_type
      t.integer :quantity
      t.text :comment

      t.timestamps
    end
  end
end
