class AuthorSerializer < ActiveModel::Serializer
  attributes :name  #author :name by default

  has_one :profile  #see filtering in profile serializer
  has_many :posts, serializer: AuthorPostSerializer #extra layer of filtering, we added some logic to display a shortened set of content
  

  # it appears the order of operations on an '/authors' route is:
  # author_controller fires => author_serializer => profile_serializer => posts_serializer (extra serializer to filter post data) 
end
