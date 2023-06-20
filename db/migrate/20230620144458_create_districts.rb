class CreateDistricts < ActiveRecord::Migration[7.0]
  def change
    create_table :districts do |t|
      column_names = File.readlines('db/data/message.txt').map(&:strip)
      t.string column_names[0].downcase
      t.float column_names[1].downcase
      t.float column_names[2].downcase
      t.integer column_names[3].downcase
      t.integer column_names[4].downcase
      t.integer column_names[5].downcase
      t.integer column_names[6].downcase
      column_names[7..column_names.size - 1].each do |column_name|
        t.integer column_name.downcase
      end
      t.timestamps
    end
  end
end
