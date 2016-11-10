class Job < ApplicationRecord
  belongs_to :company
  belongs_to :category
  validates :title, :location, :description, :category, presence: true

  def expired?
    90.days.ago > created_at
  end
end
