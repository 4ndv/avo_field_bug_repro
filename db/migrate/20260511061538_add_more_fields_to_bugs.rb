class AddMoreFieldsToBugs < ActiveRecord::Migration[8.1]
  def change
    add_column :bugs, :description, :text
    add_column :bugs, :priority, :string, null: false, default: "low"
    add_column :bugs, :deadline, :datetime
  end
end
