class CreateCandidatos < ActiveRecord::Migration[7.2]
  def change
    create_table :candidatos do |t|
      t.string :nome
      t.string :email
      t.string :telefone

      t.timestamps
    end
  end
end
