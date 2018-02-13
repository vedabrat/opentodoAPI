class User < ActiveRecord::Base
  has_many :lists
  has_many :items, through: :lists
  validates :name, presence: true
  validates :password, presence: true

  def username # see UserSerializer
    name
  end

  def list_titles # see UserSerializer
    lists.map do |list|
      list.title
    end
  end
end
