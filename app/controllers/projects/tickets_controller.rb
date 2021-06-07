module Projects
  class TicketsController < ApplicationController
    load_and_authorize_resource
    expose(:project)

    def index
      @tickets = project&.tickets&.where(archived: false)
    end

    def new
      @ticket = Ticket.new
    end

    def create
      @ticket = Ticket.new(ticket_params)
      @ticket&.project_id = project.id
      if @ticket.save!
        flash[:success] = "Ticket created!"
        render action: "index"
      else
        render "new"
      end
    end

    def archive
      Ticket.find(params[:ticket_id]).archive
      render action: "index"
    end

    private

    def ticket_params
      params.require(:ticket).permit(:title, :content, :project_id)
    end
  end
end
