class PortfoliosController < ApplicationController
	
	before_action :set_portfolio, only: [:show, :edit, :update, :destroy]
	
	def index
		@portfolio_items = Portfolio.all
	end

	def angular
		@angular_pi = Portfolio.angular
	end

	def show
		
	end


	def new
		@portfolio_item = Portfolio.new
		3.times {@portfolio_item.technologies.build}
	end

	def create
		@portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body, technologies_attributes: [:name]))

	    respond_to do |format|
	      if @portfolio_item.save
	        format.html { redirect_to portfolios_path, notice: 'portfolio_item was successfully created.' }
	        format.json { render :show, status: :created, location: @portfolio_item }
	      else
	        format.html { render :new }
	        format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
	      end
	    end
	end

	def edit
	end

	def update
	    respond_to do |format|
	      if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle, :body))
	        format.html { redirect_to portfolios_path, notice: 'portfolio_item was successfully updated.' }
	        format.json { render :show, status: :ok, location: @portfolio_item }
	      else
	        format.html { render :edit }
	        format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
	      end
	    end
  	end

	# DELETE /portfolios/1
	# DELETE /portfolios/1.json
	def destroy
		@portfolio_item.destroy
		respond_to do |format|
			format.html { redirect_to portfolios_path, notice: 'portfolio_item was successfully destroyed.' }
			format.json { head :no_content }
		end
	end

	private
		def set_portfolio
			@portfolio_item = Portfolio.find(params[:id])
		end

end
