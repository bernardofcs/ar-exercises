class Store < ActiveRecord::Base
  has_many :employees, dependent: :restrict_with_error
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 } 
  validate :needs_one_type_of_apparel

  def needs_one_type_of_apparel
    if !mens_apparel.present? && !womens_apparel.present?
      errors.add(:mens_apparel, "Need at least one type of apparel")
    end
  end
end
