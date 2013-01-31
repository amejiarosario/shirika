class User
	include Mongoid::Document

	field :name, type: String

	has_many :resources

	validates :name, presence: true
end
