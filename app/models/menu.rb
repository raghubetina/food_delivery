class Menu < ApplicationRecord
  # Direct associations

  belongs_to :restaurant

  has_many   :food_items,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
