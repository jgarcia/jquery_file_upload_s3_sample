class Photo < ActiveRecord::Base
  attr_accessible :caption, :file
  has_attached_file :file, 
    styles: {thumb: "100x100#", medium: "350x270>"},
    storage: :s3,
    bucket: 'lisa-apac',
    s3_credentials:Rails.root.join('config', 'amazon.yml'), 
    s3_host_name: "s3-ap-southeast-1.amazonaws.com"

  belongs_to :album
end
