class Gig < ApplicationRecord
  belongs_to :user
  belongs_to :category

  has_rich_text :description
  has_many :pricings
  has_many_attached :photos

  accepts_nested_attributes_for :pricings

  validates :title, presence: {message: 'can not be blank'}
end
