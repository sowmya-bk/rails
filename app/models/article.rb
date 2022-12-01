class Article
  
  include Mongoid::Document
  include Mongoid::Timestamps
  validates :name,presence: true
  validates :body,presence: true,length: {minimum: 10}
  field :name, type: String
  field :body, type: String
end
