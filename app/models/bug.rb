class Bug < ApplicationRecord
  belongs_to :parent, class_name: "Bug", optional: true
end
