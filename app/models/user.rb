class User < ApplicationRecord
  # Direct associations

  has_many   :bookmarks,
             :dependent => :destroy

  # Indirect associations

  has_many   :restaurants,
             :through => :menus,
             :source => :restaurant

  has_many   :menus,
             :through => :food_items,
             :source => :menu

  has_many   :food_items,
             :through => :bookmarks,
             :source => :food_item

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
