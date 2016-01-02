class Section < ActiveRecord::Base
  validates :name, presence: true

  has_many :sub_sections
end
