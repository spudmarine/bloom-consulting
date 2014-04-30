class Admin::QuotesController < ApplicationController
	before_action :authorize

	def new
    @quote = Quote.new
  end

  def create
    @quote = Quote.new(params[:quote])

    respond_to do |format|
      if @quote.save
        format.html { redirect_to admin_quotes_url,
          notice: 'Blog Quote successfully created' }
        format.json { render json: @quote,
          status: :created,
          location: [:admin,@quote] }
      else
        format.html { render action: "new" }
        format.json { render json: @quote.errors,
          status: :unprocessable_entity }
      end
    end
  end

  def index
    @quotes = Quote.all
  end

  def show
    @quote = Quote.find(params[:id])
  end

  def edit
    @quote = Quote.find(params[:id])
  end

  def update
    @quote = Quote.find(params[:id])
    if @quote.update_attributes(params[:quote])
      redirect_to admin_quotes_url, notice: "quote has been updated."
    else
      render "edit"
    end
  end

  def destroy
    Quote.find(params[:id]).destroy
    redirect_to admin_quotes_url
  end
end
