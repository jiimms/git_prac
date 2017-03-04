class User < ApplicationRecord
  has_attached_file :avatar, styles: { thumb: "100x100!", small: "200x200#", medium: "300x300#" }, default_url: "missing_:style.jpg"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end

# "100x100>" keeps the image in proportion
# You can use "160x160#" which will scale and crop to exactly that size, 
# image is cropped

# "160x160!" Width and height emphatically given, original aspect ratio ignored, 
# image is not cropped but adjusted.
# in all three above only height of the image size changed, width was constant

# You can (re)generate your thumbnails en masse with Paperclip’s rake tasks. Using our example class above:

# rake paperclip:refresh:thumbnails CLASS=User
# or to refresh all of your defined styles in one go (:thumb, :small, :medium from the above example)

# rake paperclip:refresh CLASS=User
# and to refresh only missing styles:
# a list of styles will be defined or updated in a file “/public/system/paperclip_attachments.yml”

# rake paperclip:refresh:missing_styles