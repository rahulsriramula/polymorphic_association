class Speaker < ApplicationRecord
  has_many :comments, as: :commentable
  validates :name, :place, :blog, :presence => {:message => 'This field is required.'}
end
