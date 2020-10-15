class CreateLinks < ActiveRecord::Migration[6.0]
  def change
    create_table :links do |t|
      t.string :name_link
      t.string :status
      t.references :report, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
