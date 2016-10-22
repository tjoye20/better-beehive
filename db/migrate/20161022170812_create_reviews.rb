class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.belongs_to :business, index: true 
      t.text :feedback_type
      t.text :relationship_type
      t.text :feedback_comment

      t.timestamps
    end
  end
end
