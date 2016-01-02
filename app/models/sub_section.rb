class SubSection < ActiveRecord::Base
  validates :name, presence: true

  belongs_to :section
end
