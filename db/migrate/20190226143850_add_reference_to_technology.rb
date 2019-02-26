class AddReferenceToTechnology < ActiveRecord::Migration[5.2]
  def change
    add_reference :technologies, :portfolio, foreign_key: true
  end
end
