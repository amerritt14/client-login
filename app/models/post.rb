class Post < ApplicationRecord
  validates_presence_of :body

  broadcasts_to ->(i) { "posts" }, inserts_by: :prepend, target: "posts"
  after_destroy_commit { broadcast_remove_to self }
end
