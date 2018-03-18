class Portfolio < ApplicationRecord
  has_many :technologies
  include Placeholder
  enum status: { draft: 0, published: 1 }
  extend FriendlyId
  friendly_id :title, use: :slugged
  validates_presence_of :title, :body, :thumb_image, :main_image

  scope :ruby, -> { where(subtitle: 'Ruby') }
  scope :rails, -> { where(subtitle: 'Ruby on Rails') }
  scope :javascript, -> { where(subtitle: 'JavaScript') }
  scope :html, -> { where(subtitle: 'HTML') }
  scope :css, -> { where(subtitle: 'CSS') }

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: 600, width: 600)
    self.thumb_image ||= Placeholder.image_generator(height: 300, width: 300)
  end
end
