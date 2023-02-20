class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:question]
      @your_answer = params[:question]
      if @your_answer == 'I am going to work right now!'
        @answer = 'Great!'

      elsif @your_answer.end_with? '?'
        @answer = 'Silly question, get dressed and go to work!'

      else
        @answer = 'I do not care, get dressed and go to work!'
      end
    end
  end
end
