class CreateDeltageres < ActiveRecord::Migration
  def change
    create_table :deltageres do |t|
      t.string :meetingnr
      t.string :navn

      t.timestamps
    end
  end
end
