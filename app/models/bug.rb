class Bug < ApplicationRecord
  has_many_attached :files

  belongs_to :parent, class_name: "Bug", optional: true

  enum :priority, {
    low: 'low',
    medium: 'medium',
    high: 'high',
    severe: 'severe'
  }, validate: true, suffix: true
end
