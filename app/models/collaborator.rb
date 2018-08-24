class Collaborator < ApplicationRecord
  mount_uploader :photo, PhotoUploader
end
