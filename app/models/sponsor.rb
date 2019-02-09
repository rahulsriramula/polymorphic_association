class Sponsor < ApplicationRecord
  has_many :comments, as: :commentable
end
