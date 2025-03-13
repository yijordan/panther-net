# == Schema Information
#
# Table name: styles
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Style < ApplicationRecord
  has_many :specializations, class_name: "Specialization", foreign_key: "style_id", dependent: :destroy

  has_many :artists, through: :specializations, source: :artist

  def self.ransackable_associations(auth_object = nil)
    ["name"]
  end
end
