class RenameTitleToThemeInReports < ActiveRecord::Migration[5.1]
  def change
    rename_column :reports, :title, :theme
  end
end
