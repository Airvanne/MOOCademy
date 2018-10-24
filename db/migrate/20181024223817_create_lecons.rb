class CreateLecons < ActiveRecord::Migration[5.2]
  def change
    create_table :lecons do |t|
      t.string :titre
      t.text :body
      t.references :cour, index: true
      t.timestamps
    end
  end
end
