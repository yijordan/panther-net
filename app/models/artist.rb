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
end
