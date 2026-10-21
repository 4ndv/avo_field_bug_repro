class Bug < ApplicationRecord
  belongs_to :parent, class_name: "Bug", optional: true

  has_many :comments

  enum :priority, {
    low: 'low',
    medium: 'medium',
    high: 'high',
    severe: 'severe'
  }, validate: true, suffix: true
end
