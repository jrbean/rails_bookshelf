class Book < ActiveRecord::Base
  has_many :users
  has_many :checkouts, through :users
end
