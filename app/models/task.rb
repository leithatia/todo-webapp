class Task < ApplicationRecord
  belongs_to :list
  validates :name, presence: true, length: { minimum: 2 }
end
