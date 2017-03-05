class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_comment, only: [:destroy]



  # POST /comments
  # POST /comments.json
  def create
      @product = Product.find(params[:product_id])
      @comment = @product.comments.new(comment_params)
      @comment.user = current_user

      respond_to do |format|
        if @comment.save
          format.html { redirect_to @product, notice: 'Comment was successfully created.' }
          format.json { render json: @comment, status: :created, location: @comment }
        else
          format.html { render action: "new" }
          format.json { render json: @comment.errors, status: :unprocessable_entity }
        end
      end
    end


  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to :back, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:product_id, :body, :user_id)
    end
end
