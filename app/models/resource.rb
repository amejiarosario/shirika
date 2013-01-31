class Resource
  include Mongoid::Document
  include Mongoid::Paperclip

  has_mongoid_attached_file :file
  field :link, type: String
  field :title, type: String
  field :created_at, type: DateTime, default: ->{ Time.now }
  field :last_accessed_at, type: DateTime, default: ->{ Time.now }
  field :tags, type: Array
  field :priority, type: Integer, default: 0

  belongs_to :user

  validates :title, presence: true
  validate :resource_presence
  validate :unique_uri

  def resource_presence
    if self.link.blank? && self.file.blank?
      errors.add :base, "You need add a file or a link"
    end
  end

  def uri
    self.file.exists? ? self.file.url : self.link
  end

  def unique_uri
    true
  end
end
