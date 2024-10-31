class CommentsController < ApplicationController
  def create
    @the_gossip_project = TheGossipProject.find(params[:the_gossip_project_id])
    @comment = @the_gossip_project.comments.build(comment_params)
    @comment.user = User.first # Utilisateur par défaut pour l’instant

    if @comment.save
      redirect_to @the_gossip_project, notice: "Commentaire ajouté avec succès."
    else
      redirect_to @the_gossip_project, alert: "Erreur lors de l'ajout du commentaire."
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to the_gossip_project_path(@comment.the_gossip_project), notice: "Commentaire supprimé."
  end
  

  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
