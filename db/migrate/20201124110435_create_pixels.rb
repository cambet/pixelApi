class CreatePixels < ActiveRecord::Migration[6.0]
  def change
    create_table :pixels do |t|
      t.integer :provider_id
      t.boolean :converted, :default => false
      t.datetime :converted_at, :allow_nil => true

      t.timestamps
    end
  end
end
