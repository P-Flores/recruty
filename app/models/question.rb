class Question < ApplicationRecord
  has_many :choices, dependent: :restrict_with_error
  belongs_to :questionnaire

  validates :kind, :name, presence: true

  KINDS = %w(boolean checkbox text radiobutton multitext)

  def to_s
    name
  end
end
