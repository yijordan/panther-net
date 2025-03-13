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
end
