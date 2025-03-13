# == Schema Information
#
# Table name: specializations
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  artist_id  :integer
#  style_id   :integer
#
class Specialization < ApplicationRecord
  belongs_to :artist, required: true, class_name: "Artist", foreign_key: "artist_id", counter_cache: true
  belongs_to :style, required: true, class_name: "Style", foreign_key: "style_id"

end
