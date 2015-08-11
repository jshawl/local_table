class CreateJoinTableForUsersGoods < ActiveRecord::Migration
  def change
    create_table :goods_users, id: false do |t|
      # excellent! I believe you can use has many through in your models without any db modifications.
      t.belongs_to :good
      t.belongs_to :user
      end
  end
end
