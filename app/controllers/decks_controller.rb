class DecksController < ApplicationController
  before_action :set_deck, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:destroy]
  # GET /decks
  # GET /decks.json
  def index
    @decks = Deck.all
    @user = User.find(params[:user_id])
    @mydecks = Deck.where(user_id: @user)

    term = params[:term]
    return if term.blank? # matches nil and ""

    deckstitle = @mydecks.where("title like ?", "%#{params[:term]}%")
    decksdescr = @mydecks.where("description like ?", "%#{params[:term]}%")
    @results = deckstitle + decksdescr
end

  # GET /decks/1
  # GET /decks/1.json
  def show
    @user = current_user
  end

  # GET /decks/new
  def new
    @user = User.find(params[:user_id])
    @deck = Deck.new
  end

  # GET /decks/1/edit
  def edit
  end

  # POST /decks
  # POST /decks.json
  def create
    @deck = Deck.new(deck_params)
    @user = current_user
    @deck.user = @user

    respond_to do |format|
      if @deck.save
        # format.html { redirect_to @deck, notice: 'Deck was successfully created.' }
        format.html { redirect_to user_decks_path(@user), notice: 'Deck was successfully created.'}
        format.json { render :show, status: :created, location: @deck }
      else
        format.html { render :new }
        format.json { render json: @deck.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /decks/1
  # PATCH/PUT /decks/1.json
  def update
    @user = current_user

    respond_to do |format|
      if @deck.update(deck_params)
        # format.html { redirect_to @deck, notice: 'Deck was successfully updated.' }
        format.html { redirect_to user_decks_path(@user), notice: 'Deck was successfully updated.' }
        format.json { render :show, status: :ok, location: @deck }
      else
        format.html { render :edit }
        format.json { render json: @deck.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /decks/1
  # DELETE /decks/1.json
  def destroy
    @deck = @user.decks.find(params[:id])
    @deck.destroy
    respond_to do |format|
      format.html { redirect_to user_decks_path(@user), notice: 'Deck was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def study
    @deck = params[:deck_id]
    @cards = Card.where(deck_id: @deck)
    @terms = @cards.each do |term| p term end
    @question = @terms.sample.original
    @answer = Card.where(original: @question).first.target
  end

  def review
    @deck = params[:deck_id].to_s
    @user_answer = params[@deck][:user_answer].downcase
    @correct_answer = params[@deck][:correct_answer].downcase
  end

  def check_answer
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deck
      @deck = Deck.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def deck_params
      params.require(:deck).permit(:language, :title, :description, :category_id, :user_id, :language_id, :user_answer, :correct_answer, :deck_id)
    end

    def study_deck
    end
end
