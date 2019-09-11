class Post < ApplicationRecord

    #to set the relations 
    has_many:comments
    validates :title, presence: true,length:{minimum:5}

end
