class CreateTestCases < ActiveRecord::Migration
  def change
    create_table :test_cases do |t|
      t.string :name
      t.text :description
      t.string :result

      t.timestamps
    end
  end
end
