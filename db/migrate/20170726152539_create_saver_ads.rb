class CreateSaverAds < ActiveRecord::Migration[5.1]
  def change
    create_table :saver_ads do |t|
      t.references :saver
      t.references :saved_ad

      t.timestamps
    end
  end
end
