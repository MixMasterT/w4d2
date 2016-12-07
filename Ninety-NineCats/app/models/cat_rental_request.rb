class CatRentalRequest < ActiveRecord::Base
validates :cat_id, :start_date, :end_date, :status, presence: true
validates :status, inclusion: { in: ['APPROVED', 'PENDING', 'DENIED']}
validate :dates_in_order?, :no_overlapping_approved_requests

belongs_to :cat

def approve!
  ActiveRecord::Base.transaction do
    self.status = 'APPROVED'
    self.save
    overlapping_requests.each { |r| r.deny! }
  end
end

def deny!
  self.status = 'DENIED'
  self.save
end



 private
  def dates_in_order?
    start_date <= end_date
  end

  def no_overlapping_approved_requests
    overlapping_requests.empty?
  end

  def overlapping_requests
    CatRentalRequest.where(cat_id: cat_id,
      start_date: start_date..end_date,
      end_date: start_date..end_date).where.not(id: id)
  end

end
