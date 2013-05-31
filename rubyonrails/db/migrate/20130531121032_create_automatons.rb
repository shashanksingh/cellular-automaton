class CreateAutomatons < ActiveRecord::Migration
  def change
    create_table :automatons do |t|
      t.string :pos00
      t.string :pos01
      t.string :pos02
      t.string :pos10
      t.string :pos11
      t.string :pos12
      t.string :pos20
      t.string :pos21
      t.string :pos22

      t.timestamps
    end
  end
end
