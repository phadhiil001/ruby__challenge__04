class Article < ApplicationRecord
    include Visible

    def self.ransackable_attributes(auth_object = nil)
      ["body", "created_at", "id", "id_value", "status", "title", "updated_at"]
    end
    
    def self.ransackable_associations(auth_object = nil)
      ["comments"]
    end

    has_many :comments, dependent: :destroy

    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
  end
