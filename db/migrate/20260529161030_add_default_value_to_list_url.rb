class AddDefaultValueToListUrl < ActiveRecord::Migration[8.1]
  def change
    change_column_default :lists, :url, from: nil, to: 'https://images.unsplash.com/photo-1762329854982-9bb811c3be64?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
  end
end
