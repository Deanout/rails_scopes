class Post < ApplicationRecord
    scope :get_top_3_posts, -> { order(views: :desc).limit(3) }
    scope :short_read, -> { where("LENGTH(body) < 100")}
    # It is LIKE in sqlite and ILIKE in postgresql
    # % is a wildcard character
    # %i% => "title" because title contains i
    scope :where_title_contains, -> (title) { where("title LIKE ?", "%#{title}%")}
end
