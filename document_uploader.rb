class DocumentUploader < Shrine
  Attacher.validate do
    validate_mime_type %w[application/pdf]
  end
end