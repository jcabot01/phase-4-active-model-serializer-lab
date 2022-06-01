class PostSerializer < ActiveModel::Serializer
  attributes :title, :content #a URL call to '/posts' renders :title, :content & see below

  has_many :tags  #will give access to tag serializer (nested data)
  belongs_to :author  #will give access to author serializer
end
