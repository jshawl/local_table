class Good < ActiveRecord::Base
  belongs_to :carpenter
  has_and_belongs_to_many :users
end
