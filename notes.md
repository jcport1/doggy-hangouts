Doggy Hangouts

User 
- has_many :pets
- has_many :requests, foreign_key: :user_requestor_id 
- has_many :requested_listings, through: :requests
- has_many :authored_listings, foreign_key: "author_id", class_name: "Listing"

Pets 
- belongs_to :user
- has_many :requests
- has_many :listings 

Request
- belongs_to :user_requestor, class_name: "User"
- belongs_to :listing, class_name: "Listing" 
- belongs_to :pet_requestor, class_name: "Pet" 

Listing
- has_many :requests
- has_many :user_requestors, through: :requests, source: :user_requestor_id
- belongs_to :author, class_name: "User"
- belongs_to :pet 
<!-- - has_many :listing_tags 
- has_many :tags, through: :listing_tags  -->

<!-- Listing_tag
- belongs_to :listing
- belongs_to :tag  -->
