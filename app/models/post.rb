class Post < ApplicationRecord

    #to set the relations between child and the parent
    #a post can have many comments
    has_many:comments
    
    #We can validate the input using validates method
    validates :title, presence: true,length:{minimum:5}

end
