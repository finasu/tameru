class RemoveLimitDateFromTodos < ActiveRecord::Migration[5.2]
  def change
    remove_column :todos, :limit_date, :date
  end
end
