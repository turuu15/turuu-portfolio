class Portfolio < ApplicationRecord

	validates_presence_of :title, :body , :main_image, :thum_image

	def self.angular
		where(subtitle: 'Angular')
	end

	scope :ruby_on_rails_portfolio_items, -> {where(subtitle: 'Ruby on rails')}

	after_initialize :set_defaults

	def set_defaults
		main_image: ||= "https://placehold.it/600x400"
		thum_image: ||= "https://placehold.it/350x200"
	end

end
