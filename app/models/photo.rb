class Photo < ActiveRecord::Base
  attr_accessible :caption, :file
  has_attached_file :file, 
    styles: {thumb: "100x100#", medium: "350x270>"},
    storage: :s3,
    bucket: 'test-uploads',
    s3_credentials:Rails.root.join('config', 'amazon.yml')

  belongs_to :album
end
