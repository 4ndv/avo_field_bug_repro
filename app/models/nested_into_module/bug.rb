class NestedIntoModule::Bug < ApplicationRecord
  self.table_name = "bugs"
  belongs_to :parent, class_name: "Bug", optional: true

  enum :priority, {
    low: 'low',
    medium: 'medium',
    high: 'high',
    severe: 'severe'
  }, validate: true, suffix: true
end

