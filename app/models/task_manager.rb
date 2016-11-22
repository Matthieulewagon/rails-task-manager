class TaskManager < ApplicationRecord
  validates :name, presence: true
end
