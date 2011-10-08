class CreateAgendas < ActiveRecord::Migration
  def change
    create_table :agendas do |t|
      t.decimal :meetingnr
      t.decimal :punktnr
      t.string :punktnavn
      t.text :beskrivelse

      t.timestamps
    end
  end
end
