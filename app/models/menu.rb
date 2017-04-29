class Menu < ApplicationRecord
  # Direct associations

  has_many   :food_items,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
