class Image < ActiveRecord::Base
  has_attached_file :avatar, :styles => {
                      :thumb => "75x75>",
                      :small => "150x150>"
                    }
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  # private
  #   def default_url_by_name
  #     "/images/:style/default_#{name}.png"
  #   end
end
