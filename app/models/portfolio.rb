class Portfolio < ApplicationRecord
	has_many :technologies

	include Placeholder
	validates_presence_of :title, :body , :main_image, :thum_image

	def self.angular
		where(subtitle: 'Angular')
	end

	scope :ruby_on_rails_portfolio_items, -> {where(subtitle: 'Ruby on rails')}

	after_initialize :set_defaults

	def set_defaults
		self.main_image ||= Placeholder.image_gen(height: '600', width: '400')
		self.thum_image ||= Placeholder.image_gen(height: '350', width: '200')
	end

end
