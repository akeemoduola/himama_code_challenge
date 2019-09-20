class Timelog < ApplicationRecord
  belongs_to :user
  attribute :log_at, :datetime, default: -> { Time.now }
end
