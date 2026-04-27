class CreateBugs < ActiveRecord::Migration[8.1]
  def change
    create_table :bugs do |t|
      t.string :title
      t.belongs_to :parent, null: true, foreign_key: { to_table: :bugs }

      t.timestamps
    end
  end
end
