class AuthorSerializer < ActiveModel::Serializer
  attributes :name  #author :name by default

  has_one :profile  #displays the 'profile' object based on its serializer criteria
  has_many :posts, serializer: AuthorPostSerializer #displays the 'posts' object based the criteria set inside the AuthorPostSerializer
  

  # it appears the order of operations on an '/authors' index and show routes are:
  # author_controller fires => author_serializer => profile_serializer => posts_serializer but as the AuthorPostSerializer
end
