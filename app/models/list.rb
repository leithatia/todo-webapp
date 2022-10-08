class List < ApplicationRecord
  has_many :tasks, dependent: :destroy
  belongs_to :user
  validates :name, presence: true, length: { minimum: 2 }
end
