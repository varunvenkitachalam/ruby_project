class BudgetsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @budget = @article.budgets.create(budget_params)
    redirect_to articles_path
  end

  def show
    @article = Article.find(params[:article_id])
    @budget = @article.budgets.find(params[:id])
  end


  def update
    @article = Article.find(params[:article_id])
    @budget = @article.budgets.find(params[:id])
    if @budget.update(budget_params)
      redirect_to @article
    else
      render 'budgets/show'
    end
  end

  def destroy
    @article = Article.find(params[:article_id])
    @budget = @article.budgets.find(params[:id])
    @budget.destroy
    redirect_to article_path(@article)
  end

  private
  def budget_params
    params.require(:budget).permit(:week, :newLimit)
  end
end
