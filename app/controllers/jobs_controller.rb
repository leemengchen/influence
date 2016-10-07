class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]

  # GET /jobs
  # GET /jobs.json
  def index
    if params[:tag]
      @jobs = Job.tagged_with(params[:tag])
      @jobs = @jobs.all.order('id ASC')
    else
      @jobs = Job.all.order('id ASC')
    end
    @jobs = Job.page(params[ :page]).per(6)
  end

  # GET /jobs/1
  # GET /jobs/1.json
  def show
    @jobs = Job.all
    @job = Job.find_by(id: params[:id])
  end

  # GET /jobs/new
  def new
    @job = Job.new
  end

  # GET /jobs/1/edit
  def edit
  end

  # POST /jobs
  # POST /jobs.json
  def create
    # @job = Job.new(job_params)

    @job = current_marketer.jobs.create(job_params)

    # @work = current_user.works.create(params[:work])
    # @post = current_user.posts.build(post_params.merge(topic_id: @topic.id))


    respond_to do |format|
      if @job.save
        format.html { redirect_to @job, notice: 'Job was successfully created.' }
        format.json { render :show, status: :created, location: @job }
      else
        format.html { render :new }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobs/1
  # PATCH/PUT /jobs/1.json
  def update
    respond_to do |format|
      if @job.update(job_params)
        format.html { redirect_to @job, notice: 'Job was successfully updated.' }
        format.json { render :show, status: :ok, location: @job }
      else
        format.html { render :edit }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobs/1
  # DELETE /jobs/1.json
  def destroy
    @job.destroy
    respond_to do |format|
      format.html { redirect_to jobs_url, notice: 'Job was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    #why when i put this line , current marketer will automatically sign out
    # def current_marketer
    #   return unless session[:id]
    #   @current_marketer ||= Marketer.find_by(session[:id])
    #
    # end
    # helper_method :current_marketer

    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = Job.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_params

      params.require(:job).permit(:title, :description, :background_image, :companyId, :companyName, :budget, :industry, :requirements, :skills, :due, :viewCount, :tag_list)

    end
end
