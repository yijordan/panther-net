# == Schema Information
#
# Table name: studios
#
#  id            :bigint           not null, primary key
#  address       :string
#  artists_count :integer
#  name          :string
#  phone         :string
#  shop_minimum  :float
#  walk_in       :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  city_id       :integer
#
class Studio < ApplicationRecord
  has_many :artists, class_name: "Artist", foreign_key: "studio_id", dependent: :nullify
  belongs_to :city, required: true, class_name: "City", foreign_key: "city_id"

  def self.ransackable_attributes(auth_object = nil)
    ["shop_minimum", "walk_in"]
  end

  def self.ransackable_associations(auth_object = nil)
    return ["city", "artist"]
  end
end
