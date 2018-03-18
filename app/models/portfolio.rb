class Portfolio < ApplicationRecord
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
    self.main_image ||= "http://via.placeholder.com/600x600"
    self.thumb_image ||= "http://via.placeholder.com/300x300"
  end
end
