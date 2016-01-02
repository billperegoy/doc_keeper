class AddSectionIdToSection < ActiveRecord::Migration
  def change
    add_column :sub_sections, :section_id, :string
  end
end
