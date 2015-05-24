class Admin::QuotesController < ApplicationController
	before_action :authorize

  layout 'admin'

	def new
    @quote = Quote.new
  end

  def create
    @quote = Quote.new(quote_params)

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
    @quotes = Quote.order("sortorder")
  end

  def show
    @quote = Quote.find(params[:id])
  end

  def edit
    @quote = Quote.find(params[:id])
  end

  def update
    @quote = Quote.find(params[:id])
    if @quote.update_attributes(quote_params)
      redirect_to admin_quotes_url, notice: "quote has been updated."
    else
      render "edit"
    end
  end

  def destroy
    Quote.find(params[:id]).destroy
    redirect_to admin_quotes_url
  end

  def sort
    params[:quote].each_with_index do |id, index|
      quote = Quote.find(id)
      quote.update_attribute(:sortorder, index) if quote
    end
    render nothing: true
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quote
      @quote = Quote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quote_params
      params.require(:quote).permit(:title, :quote, :credit)
    end
  
end
