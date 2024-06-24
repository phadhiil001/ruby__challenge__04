class Comment < ApplicationRecord
  include Visible

  def self.ransackable_attributes(auth_object = nil)
    ["article_id", "body", "commenter", "created_at", "id", "id_value", "status", "updated_at"]
  end

  belongs_to :article
end
