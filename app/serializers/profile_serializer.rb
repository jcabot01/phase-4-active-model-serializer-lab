class ProfileSerializer < ActiveModel::Serializer
  attributes :username, :email, :bio, :avatar_url #these attributes will be displayed by default

  belongs_to :author  #based on author serializer that will be :name only
end
