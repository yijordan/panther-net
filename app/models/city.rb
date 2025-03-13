# == Schema Information
#
# Table name: cities
#
#  id         :bigint           not null, primary key
#  name       :string
#  state      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class City < ApplicationRecord
  has_many :studios, class_name: "Studio", foreign_key: "city_id", dependent: :destroy
end
