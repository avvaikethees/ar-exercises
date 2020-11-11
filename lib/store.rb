class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3}
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0, only_integer: true}
  validate :apparel_validation
    def apparel_validation
      if !mens_apparel && !womens_apparel
        errors.add(:apparel_validation, "The store should have at least one apparel type")
      end
    end
end
