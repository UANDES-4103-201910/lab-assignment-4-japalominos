class EventVenue < ApplicationRecord
    validates :name, lenght: { minimum: 20}
    validates :capacity, numericality: {only_integer: true, greater_than:0}
    
end
