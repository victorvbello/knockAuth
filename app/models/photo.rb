class Photo < ApplicationRecord
  validates :title, :gender, :presence => true
  validates_length_of :title, :minimum => 5, :maximum => 10, :allow_blank => false
end
