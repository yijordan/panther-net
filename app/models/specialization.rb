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
end
