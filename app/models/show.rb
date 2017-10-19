class Show < ApplicationRecord

  validates :title, :summary, :review, :genre, :status, presence: true


end
