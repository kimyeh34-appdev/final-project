# == Schema Information
#
# Table name: restaurants
#
#  id         :integer          not null, primary key
#  name       :string
#  user_id    :integer
#  bus_id     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Restaurant < ApplicationRecord
    validates :name, presence: true
    
    belongs_to :user
end
