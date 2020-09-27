class PreferencesUsersController < ApplicationController
  before_action :set_preferences_user, only: [:show, :edit, :update, :destroy]

  # GET /preferences_users
  # GET /preferences_users.json
  def index
    @preferences_users = PreferencesUser.all
  end

  # GET /preferences_users/1
  # GET /preferences_users/1.json
  def show
  end

  # GET /preferences_users/new
  def new
    @preferences_user = PreferencesUser.new
  end

  # GET /preferences_users/1/edit
  def edit
  end

  # POST /preferences_users
  # POST /preferences_users.json
  def create
    @preferences_user = PreferencesUser.new(preferences_user_params)

    respond_to do |format|
      if @preferences_user.save
        format.html { redirect_to @preferences_user, notice: 'Preferences user was successfully created.' }
        format.json { render :show, status: :created, location: @preferences_user }
      else
        format.html { render :new }
        format.json { render json: @preferences_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /preferences_users/1
  # PATCH/PUT /preferences_users/1.json
  def update
    respond_to do |format|
      if @preferences_user.update(preferences_user_params)
        format.html { redirect_to @preferences_user, notice: 'Preferences user was successfully updated.' }
        format.json { render :show, status: :ok, location: @preferences_user }
      else
        format.html { render :edit }
        format.json { render json: @preferences_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /preferences_users/1
  # DELETE /preferences_users/1.json
  def destroy
    @preferences_user.destroy
    respond_to do |format|
      format.html { redirect_to preferences_users_url, notice: 'Preferences user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_preferences_user
      @preferences_user = PreferencesUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def preferences_user_params
      params.require(:preferences_user).permit(:preferences_id, :users_id, :options)
    end
end
