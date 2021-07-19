class ImageUploader < Shrine
  Attacher.validate do
    validate_mime_type %w[image/jpeg image/jpg image/png image/webp]
  end
end