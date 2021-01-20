Doggy Hangouts

User 
- has_many :pets
- has_many :requests
- has_many :requested_listings, through: :requests
- has_many :authored_listings, foreign_key: "author_id", class_name: "Listing"

Pets 
- belongs_to :user
- has_many :requests
- has_many :listings 

Request
- belongs_to :user
- belongs_to :listing 
- belongs_to :pet_requestor, class_name: "Pet" 

Listing
- has_many :requests
- has_many :user_requestors, through: :requests, source: :user
- belongs_to :author, class_name: "User"
- belongs_to :pet_solicitor, class_name: "Pet" 

<!-- - has_many :listing_tags 
- has_many :tags, through: :listing_tags  -->

<!-- Listing_tag
- belongs_to :listing
- belongs_to :tag  -->
