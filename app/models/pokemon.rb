class Pokemon < ApplicationRecord
  validates :name, presence: true
  # validates :element_type, :inclusion => { :in => %w[Fire Water Earth Toxic] }
  has_one_attached :photo
end
