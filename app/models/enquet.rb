# frozen_string_literal: true

class Enquet < ApplicationRecord
  mount_uploader :picture1, PictureUploader
  mount_uploader :picture2, PictureUploader

  # with_options presence: true do
  #   validates :content
  #   validates :picture1
  #   validates :picture2
  # end

end
