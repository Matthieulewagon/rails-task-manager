class TaskManager < ApplicationRecord
  validates :name, :stars , presence: true
end
