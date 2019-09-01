class QuestionsController < ApplicationController
  def ask
    # @questions = QUESTIONS.select { |id, r| r[:question] == @question }
  end

  def answer
    @question = params[:question]
    @answer = ""
    if @question == 'I am going to work'
      @answer = 'Great!'
    elsif @question.include? '?'
      @answer = 'Silly question, get dressed and go to work!'
    elsif @question == 'what time is it'
      @answer = Time.now
    else
      @answer = 'I dont care, get dressed and go to work!'
    end
  end
end
