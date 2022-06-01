class TagSerializer < ActiveModel::Serializer
  attributes :name #tag :name by default

  has_many :posts #ensures connection between tag and post
end
