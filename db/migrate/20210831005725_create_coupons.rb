class CreateCoupons < ActiveRecord::Migration[5.2]
  def change
    create_table :coupons do |t|
      t.string :code #Coupon code
      t.string :kind #massive or targeted
      t.decimal :amount # Amount or percentage
      t.string :discount #discount type: percent or fixed
      t.references :user, foreign_key: true
      t.integer :count 

      t.timestamps
    end
  end
end
