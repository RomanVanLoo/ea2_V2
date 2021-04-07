class MessagesController < ApplicationController
    skip_before_action :authenticate_user!

  def create
    @message = Message.new(message_params)
    respond_to do |format|
      if @message.save
        format.html { redirect_to articles_path(id: message_params[:article_id]), notice: "Message successfully sent!" }
      else
        format.html { redirect_to articles_path(id: message_params[:article_id]), alert: "We're sorry, something went wrong!" }
      end
    end
  end

  private

  def message_params
    params.require(:message).permit(
      :name,
      :email,
      :content,
      :article_id
    )
  end
end
