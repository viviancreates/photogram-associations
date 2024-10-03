# == Schema Information
#
# Table name: comments
#
#  id         :bigint           not null, primary key
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :integer
#  photo_id   :integer
#

class Comment < ApplicationRecord
  validates(:commenter, { :presence => true })
  belongs_to(:commenter, class_name: "User", foreign_key: "author_id")
  # Association accessor methods to define:
  
  ## Direct associations

  # Comment#commenter: returns a row from the users table associated to this comment by the author_id column

  # Comment#photo: returns a row from the photos table associated to this comment by the photo_id column

  #def commenter
    #my_author_id = self.author_id

    #matching_users = User.where({ :id => my_author_id })

    #the_user = matching_users.at(0)

    #return the_user
  #end
end
