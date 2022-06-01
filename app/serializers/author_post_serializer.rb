class AuthorPostSerializer < ActiveModel::Serializer
  attributes :title, :short_content #when explicitly called, this serializer displays :title and :short_content which is an instance variable below
  has_many :tags  #this displays the 'tag' object based on its serializer criteria

  def short_content
    "#{self.object.content[0..39]}..."
  end

  #we built an extra serializer here that we pass into the 'post' serializer, we handle this instance variable here to separate concerns
end
