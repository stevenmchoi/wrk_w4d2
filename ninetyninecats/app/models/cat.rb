# == Schema Information
#
# Table name: cats
#
#  id          :integer          not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Cat < ApplicationRecord
  validates_inclusion_of :sex, :in => %w( M F )
  validates :birth_date, :color, :name, :sex, :description, presence: true

  COLORS = %w( red orange yellow green blue purple )

  def age
    ((Date.today - self.birth_date) / 365.25).floor
  end
end
