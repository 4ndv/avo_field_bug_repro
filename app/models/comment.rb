class Comment < ApplicationRecord
  belongs_to :bug

  normalizes :text, with: ->(text) { text.squish.presence }
end
