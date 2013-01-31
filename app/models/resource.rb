class Resource
	include Mongoid::Document

	field :path, type: String
	field :title, type: String
	field :created_at, type: Date, default: ->{ Time.now }
	field :last_accessed_at, type: Date, default: ->{ Time.now }
	field :tags, type: Array
	field :priority, type: Integer, default: 0

	belongs_to :user

	validates :path, presence: true
end