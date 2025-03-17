# == Schema Information
#
# Table name: artists
#
#  id                    :bigint           not null, primary key
#  age                   :string
#  bio                   :text
#  contact_method        :string
#  email                 :string
#  experience            :string
#  gender                :string
#  instagram             :string
#  name                  :string
#  specializations_count :integer
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  studio_id             :integer
#  user_id               :integer
#
class Artist < ApplicationRecord
  validates(:name, presence: true, uniqueness: true)
  validates(:instagram, presence: true, uniqueness: true)
  validates(:gender, presence: true)

  belongs_to :artist_account, class_name: "User", foreign_key: "user_id", counter_cache: true, optional: true
  belongs_to :studio, class_name: "Studio", foreign_key: "studio_id", counter_cache: true
  has_many :specializations, class_name: "Specialization", foreign_key: "artist_id", dependent: :destroy

  has_many :styles, through: :specializations, source: :style

  def self.ransackable_attribute(auth_object = nil)
    ["age", "experience", "gender", "name"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["style", "city"]
  end
end
