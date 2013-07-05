class MusicController < ApplicationController

  # def index
  #   @pieces = current_user.pieces
  #   respond_to do |format|
  #     format.html
  #     format.xml { render :xml => @pieces}
  #   end
  # end
  
  # def new
  #   @piece = current_user.pieces.new
  #   @tune = current_user.tunes.new
  #   @piece.tune = @tune
  #   respond_to do |format|
  #     format.html
  #   end
  # end
  
  # def create
  #   @piece = current_user.pieces.build(params[:piece])
  #   @piece.tune.tune_name = @piece.name if @piece.tune.tune_name.blank?
  #   respond_to do |format|
  #     if @piece.save
  #       format.html { redirect_to(music_index_path) }
  #       format.js
  #     else
  #       @new_piece_form = render_to_string(:partial => 'new', :locals => {:piece => @piece})          
  #       format.html { render :action => :new }
  #       format.js
  #     end
  #   end
  # end

  # def edit
  #   @piece = current_user.pieces.find(params[:id])
  #   @piece.tune = current_user.tunes.new unless @piece.tune
  #   respond_to do |format|
  #     if @piece && @piece.editable_by?(current_user)
  #       format.html
  #     else
  #       flash[:error] = "You do not have the rights to edit this piece."
  #       redirect_to music_index_path
  #     end
  #   end
  # end
  
  # def update
  #   @piece = current_user.pieces.find(params[:id])
  #   respond_to do |format|
  #     if @piece.update_attributes(params[:piece])
  #       format.html { redirect_to(music_index_path) }
  #       format.js
  #     else
  #       format.html { render :action => :edit }
  #       format.js
  #     end
  #   end
  # end

  # def show
  #   @piece = Piece.find(params[:id])
  #   @piece = nil unless @piece.viewable_by?(current_user)
  #   respond_to do |format|
  #     format.html
  #   end
  # end

end
