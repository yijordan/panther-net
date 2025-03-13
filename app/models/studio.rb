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
end
