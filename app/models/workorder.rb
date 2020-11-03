class Workorder < ApplicationRecord
    belongs_to :location, optional: true
    belongs_to :technician, optional: true
end
