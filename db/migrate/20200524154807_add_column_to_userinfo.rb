class AddColumnToUserinfo < ActiveRecord::Migration[5.2]
  def change
    add_reference :userinfos, :user, foreign_key: true
  end
end
