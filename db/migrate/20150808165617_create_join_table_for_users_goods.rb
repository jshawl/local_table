class CreateJoinTableForUsersGoods < ActiveRecord::Migration
  def change
    create_table :goods_users, id: false do |t|
      t.belongs_to :good
      t.belongs_to :user
      end
  end
end
