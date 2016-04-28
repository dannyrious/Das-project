class Task < ActiveRecord::Base
    validates :name, presence: true, length: { maximum: 50 }
    validates :description, length: { maximum: 100 }
    validates :status, presence: true, inclusion: { in: %w(toDo inProgress done) }
end
