class Bookmark < ApplicationRecord
  # Direct associations

  belongs_to :user

  belongs_to :food_item

  # Indirect associations

  # Validations

end
