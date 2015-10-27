class AddReturnedToCheckout < ActiveRecord::Migration
  def change
    add_column :checkouts, :returned, :boolean
  end
end
