class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new

    @review.book_id = params[:book_id]

    @review.user_id = params[:user_id]

    @review.summary = params[:summary]

    @review.fullReview = params[:fullReview]

    @review.startDate = params[:startDate]

    @review.endDate = params[:endDate]

    @review.enlightenmentRating = params[:enlightenmentRating]

    @review.enjoymentRating = params[:enjoymentRating]

    @review.overallRating = params[:overallRating]



    if @review.save
      redirect_to "/reviews", :notice => "Review created successfully."
    else
      render 'new'
    end

  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])


    @review.book_id = params[:book_id]

    @review.user_id = params[:user_id]

    @review.summary = params[:summary]

    @review.fullReview = params[:fullReview]

    @review.startDate = params[:startDate]

    @review.endDate = params[:endDate]

    @review.enlightenmentRating = params[:enlightenmentRating]

    @review.enjoymentRating = params[:enjoymentRating]

    @review.overallRating = params[:overallRating]



    if @review.save
      redirect_to "/reviews", :notice => "Review updated successfully."
    else
      render 'edit'
    end

  end

  def destroy
    @review = Review.find(params[:id])

    @review.destroy


    redirect_to "/reviews", :notice => "Review deleted."

  end
end
