class Project < ApplicationRecord
    validates :name, :description, :state, presence: true
  enum state: { proposal: 1, inprogress: 2, finished: 3 }
  #scope :filter_by_state, -> where('state = ?', 2)
end
