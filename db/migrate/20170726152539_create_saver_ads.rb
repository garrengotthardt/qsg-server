class CreateSaverAds < ActiveRecord::Migration[5.1]
  def change
    create_table :saver_ads do |t|

      t.timestamps
    end
  end
end
