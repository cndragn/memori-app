class CardsController < ApplicationController
  before_action :set_card, only: [:show, :edit, :update, :destroy]
  before_action :set_deck, only: [:index, :new, :create]
  # GET /cards
  # GET /cards.json
  def index
    @cards = Card.all

    key = '55359353dedf4958bf05995dff13eb9d'

    host = 'https://api.microsofttranslator.com'
    path = '/V2/Http.svc/Translate'

    target = 'es'
    text = 'Hello'

    params = '?to=' + target + '&text=' + CGI.escape(text)
    uri = URI (host + path + params)

    request = Net::HTTP::Get.new(uri)
    request['Ocp-Apim-Subscription-Key'] = key

    response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
        http.request (request)
    end

    doc = Nokogiri::XML(response.body)

    @translation = doc.text

  end

  # GET /cards/1
  # GET /cards/1.json
  def show
  end

  # GET /cards/new
  def new
    @deck = Deck.find(params[:deck_id])
    @card = Card.new
  end

  # GET /cards/1/edit
  def edit
  end

  # POST /cards
  # POST /cards.json
  def create
    @card = @deck.cards.new(card_params)

    respond_to do |format|
      if @card.save
        format.html { redirect_to @card, notice: 'Card was successfully created.' }
        format.json { render :show, status: :created, location: @card }
      else
        format.html { render :new }
        format.json { render json: @card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cards/1
  # PATCH/PUT /cards/1.json
  def update
    respond_to do |format|
      if @card.update(card_params)
        format.html { redirect_to @card, notice: 'Card was successfully updated.' }
        format.json { render :show, status: :ok, location: @card }
      else
        format.html { render :edit }
        format.json { render json: @card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cards/1
  # DELETE /cards/1.json
  def destroy
    @card.destroy
    respond_to do |format|
      format.html { redirect_to cards_url, notice: 'Card was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_card
      @card = Card.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def card_params
      params.require(:card).permit(:original, :target, :language)
    end

    def set_deck
      @deck = Deck.find(params[:deck_id])
    end

end
