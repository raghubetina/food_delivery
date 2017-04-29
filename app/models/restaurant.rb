class Restaurant < ApplicationRecord
  # Direct associations

  has_many   :menus,
             :dependent => :destroy

  # Indirect associations

  has_many   :users,
             :through => :menus,
             :source => :users

  # Validations

end
