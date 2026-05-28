class AddUrlToList < ActiveRecord::Migration[8.1]
  def change
    add_column :lists, :url, :string
  end
end
