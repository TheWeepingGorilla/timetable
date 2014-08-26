class CreateBus < ActiveRecord::Migration
  def change
    add_column :stops, :time, :string
  end
end

