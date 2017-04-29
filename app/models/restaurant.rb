class Restaurant < ApplicationRecord
  # Direct associations

  has_many   :menus,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
