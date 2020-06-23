# frozen_string_literal: true

class Property < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :street_address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zipcode, presence: true
  validates :unit_count, presence: true
  validates :year_built, presence: true
  validates :msa, presence: true
  validates :analysis_year, presence: true
end
