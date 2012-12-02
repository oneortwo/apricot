class CreateTestPoints < ActiveRecord::Migration
  def change
    create_table :test_points do |t|
      t.string :activity
      t.string :name
      t.text :description
      t.string :result
      t.string :failMsg
      t.integer :test_case_id

      t.timestamps
    end
  end
end
