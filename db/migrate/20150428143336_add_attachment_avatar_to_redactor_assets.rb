class AddAttachmentAvatarToRedactorAssets < ActiveRecord::Migration
  def self.up
    change_table :redactor_assets do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :redactor_assets, :avatar
  end
end
