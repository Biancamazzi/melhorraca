class Result < ApplicationRecord
  belongs_to :quiz
  belongs_to :info
  belongs_to :user
  validates :info, presence: true
end
