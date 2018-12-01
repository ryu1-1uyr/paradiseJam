class CreateEveryParams < ActiveRecord::Migration[5.2]
  def change
    create_table :every_params do |t|
      t.integer :userId
      t.integer :minusCalorie
      t.integer :currentWeight

      t.timestamps
    end
  end
end
