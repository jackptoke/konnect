class CreateInterpreterDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :interpreter_details do |t|
      t.references :interpreter, null: false, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :abn
      t.string :mobile_no
      t.integer :sex
      t.decimal :payment_rate
      t.decimal :rating_score
      t.references :address, null: false, foreign_key: true

      t.timestamps
    end
  end
end
