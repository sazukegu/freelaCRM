module Projects
  class AnnouncementsController < ApplicationController
    load_and_authorize_resource
    expose(:project)

    def new
      @announcement = Announcement.new
    end

    def create
      @announcement = Announcement.new(announcement_params)
      @announcement&.project_id = project.id
      if @announcement.save
        flash[:success] = "Announcement created!"
        render action: "index"
      else
        render "new"
      end
    end

    def destroy
      Announcement.find(params[:id]).destroy!
      flash[:success] = "Announcement deleted!"
      render action: "index"
    end

    private

    def announcement_params
      params.require(:announcement).permit(:project_id, :title, :body)
    end
  end
end
