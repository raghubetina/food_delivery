class Menu < ApplicationRecord
  # Direct associations

  belongs_to :restaurant

  has_many   :food_items,
             :dependent => :destroy

  # Indirect associations

  has_many   :users,
             :through => :food_items,
             :source => :users

  # Validations

end
