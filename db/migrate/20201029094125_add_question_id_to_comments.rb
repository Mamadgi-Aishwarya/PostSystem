class AddQuestionIdToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :question_id, :int
  end
end
