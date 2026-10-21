class CreateComments < ActiveRecord::Migration[8.1]
  def change
    create_table :comments do |t|
      t.belongs_to :bug, null: false, foreign_key: true
      t.text :text

      t.timestamps
    end
  end
end
