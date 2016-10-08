class AddAmountPaidToMarketers < ActiveRecord::Migration[5.0]
  def change
    add_column :marketers, :amountpaid, :decimal
  end
end
