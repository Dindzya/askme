class QuestionsController < ApplicationController
  before_action :set_question, only: [:update, :show, :destroy, :edit]
  def create
    @question = Question.create(question_params)
    redirect_to question_path(@question), notice: 'New question create!'
  end
  def update
    @question.update(question_params) 
    redirect_to question_path(@question), notice: 'Question updated'
  end
  def destroy
    @question.destroy
    redirect_to questions_path, notice: 'Question deleted'
  end
  def show
  end 
  def index
    @questions = Question.all
    @question = Question.new
  end
  def new 
    @question = Question.new
  end 
  def edit
  end 
  private
  def question_params
    params.require(:question).permit(:body, :user_id)
  end
  def set_question
    @question = Question.find(params[:id])
  end 
end
