class CreateCalculations < ActiveRecord::Migration
  def change
    create_table :calculations do |t|
      t.string :aktsia_nimi
      t.decimal :hind
      t.decimal :kogus
      t.decimal :protsent
      t.integer :aastad

      t.timestamps
    end
  end
end
