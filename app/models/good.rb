class Good < ActiveRecord::Base
  belongs_to :carpenter
  has_and_belongs_to_many :users
  # habtm works here, but consider has many through instead.
  # This will allow you to add more columns to the join table in the future.
end
