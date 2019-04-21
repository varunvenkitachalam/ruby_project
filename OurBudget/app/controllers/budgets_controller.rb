class BudgetsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @budget = @article.budgets.create(budget_params)
    redirect_to articles_path
  end

  def edit

  end
  def destroy
    @article = Article.find(params[:article_id])
    @budget = @article.comments.find(params[:id])
    @budget.destroy
    redirect_to article_path(@article)
  end

  private
  def budget_params
    params.require(:budget).permit(:week, :newLimit)
  end
end
