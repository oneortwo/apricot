class CreateRequirements < ActiveRecord::Migration
  def change
    create_table :requirements do |t|
      t.string :name
      t.text :description
      t.integer :test_case_id

      t.timestamps
    end
  end
end
