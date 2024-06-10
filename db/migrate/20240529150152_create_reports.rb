class CreateReports < ActiveRecord::Migration[7.1]
  def change
    create_table :reports do |t|
      t.string :reporttype
      t.date :reportdate
      t.text :reportcontent
      t.timestamp :generatedat

      t.timestamps
    end
  end
end
