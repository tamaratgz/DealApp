class ChangeDateToDatetime < ActiveRecord::Migration[6.1]
  def change
    change_column :polls, :deadline, :datetime
  end
end
