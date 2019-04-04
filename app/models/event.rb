class Event < ApplicationRecord
  belongs_to :event_venue
  has_many :ticket_types
  validate :event_date_cannot_be_in_the_past
  def event_date_cannot_be_in_the_past
    if start_date < created_at
        errors.add(:start_date, "can't be in the past")
    end
  end
end
