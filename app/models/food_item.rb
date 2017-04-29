class FoodItem < ApplicationRecord
  # Direct associations

  has_many   :bookmarks,
             :dependent => :destroy

  belongs_to :menu

  # Indirect associations

  # Validations

end
