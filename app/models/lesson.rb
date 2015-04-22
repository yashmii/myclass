class Lesson < ActiveRecord::Base
  has_many :attendances
  has_many :clients, through: :attendances
  belongs_to :period
  validates :period_id, presence: true
  def to_s
    id
  end

end
