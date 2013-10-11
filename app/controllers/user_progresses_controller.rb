class UserProgressesController < ApplicationController
  before_action :set_user_progress, only: [:show, :edit, :update, :destroy]

  # GET /user_progresses
  # GET /user_progresses.json
  def index
    @user_progresses = UserProgress.all
  end

  # GET /user_progresses/1
  # GET /user_progresses/1.json
  def show
  end

  # GET /user_progresses/new
  def new
    @user_progress = UserProgress.new
  end

  # GET /user_progresses/1/edit
  def edit
  end

  # POST /user_progresses
  # POST /user_progresses.json
  def create
    @user_progress = UserProgress.new(user_progress_params)

    respond_to do |format|
      if @user_progress.save
        format.html { redirect_to @user_progress, notice: 'User progress was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user_progress }
      else
        format.html { render action: 'new' }
        format.json { render json: @user_progress.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_progresses/1
  # PATCH/PUT /user_progresses/1.json
  def update
    respond_to do |format|
      if @user_progress.update(user_progress_params)
        format.html { redirect_to @user_progress, notice: 'User progress was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user_progress.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_progresses/1
  # DELETE /user_progresses/1.json
  def destroy
    @user_progress.destroy
    respond_to do |format|
      format.html { redirect_to user_progresses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_progress
      @user_progress = UserProgress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_progress_params
      params.require(:user_progress).permit(:user_id, :book_no, :chapter_no, :last_read)
    end
end
