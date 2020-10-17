class Trainee < ApplicationRecord
  belongs_to :provider
  scope :newest_first, -> { order(created_at: :desc) }
end
