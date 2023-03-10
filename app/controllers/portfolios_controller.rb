class PortfoliosController < ApplicationController
    def index
        @portfolio_items = Portfolio.all
    end

    def show
        @portfolio_item = Portfolio.find(params[:id])
    end

    def new
        @portfolio_item = Portfolio.new
    end

    def create
        @portfolio_item = Portfolio.new(portfolio_item_params)

        respond_to do |format|
            if @portfolio_item.save
                format.html { redirect_to portfolios_path, notice: "Your portfolio item is now live." }
            else
                format.html { render :new, status: :unprocessable_entity }
            end
        end
    end

    def edit
        @portfolio_item = Portfolio.find(params[:id])
    end

    def destroy
        #lookup
        @portfolio_item = Portfolio.find(params[:id])
        #destroy
        @portfolio_item.destroy
        #redirect
        respond_to do |format|
            format.html { redirect_to portfolios_url, notice: "Record was removed." }
        end
    end

    def update
        @portfolio_item = Portfolio.find(params[:id])

        respond_to do |format|
            if @portfolio_item.update(portfolio_item_params)
                format.html { redirect_to portfolios_path, notice: "The record was successfully updated." }
            else
                format.html { render :edit, status: :unprocessable_entity }
            end
        end
    end

    private
    
    def portfolio_item_params
        params.require(:portfolio).permit(:title, :subtitle, :body)
    end
end
