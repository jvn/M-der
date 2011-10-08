class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.decimal :nr
      t.string :dato
      t.string :sted
      t.decimal :kl
      t.string :navn

      t.timestamps
    end
  end
end
