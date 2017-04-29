class FoodItem < ApplicationRecord
  mount_uploader :image, ImageUploader

  # Direct associations

  has_many   :bookmarks,
             :dependent => :destroy

  belongs_to :menu

  # Indirect associations

  has_many   :users,
             :through => :bookmarks,
             :source => :user

  # Validations

end
