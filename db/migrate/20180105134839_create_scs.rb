class CreateScs < ActiveRecord::Migration[5.1]
  def change
    create_table :scs do |t|
      t.string :studentx_id
      t.string :course_id
    end
  end
end
