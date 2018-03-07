# == Schema Information
#
# Table name: cat_rental_requests
#
#  id         :integer          not null, primary key
#  cat_id     :integer          not null
#  start_date :date             not null
#  end_date   :date             not null
#  status     :string           default("pending"), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CatRentalRequest < ApplicationRecord

  validates :start_date, :end_date, :status, presence: true
  validates :status, inclusion: { in: %w(pending approved denied),
                                  message: "%{value} is not a valid status" }

  belongs_to :cat,
             foreign_key: :cat_id,
             class_name: :Cat

  def overlapping_requests
    current_cat_id = self.cat_id
    current_cat_start_date = self.start_date
    current_cat_end_date = self.end_date

    CatRentalRequest
      .select
      .where('cat_id = ?', current_cat_id)
      .where(
        ('? BETWEEN start_date AND end_date', current_cat_start_date)
        .or('? BETWEEN start_date AND end_date', current_cat_end_date)
        .or('? < start_date AND ? > end_date', current_cat_start_date, current_cat_end_date)
      )

  end

end
