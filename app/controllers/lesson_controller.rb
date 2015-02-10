# coding: utf-8

class LessonController < ApplicationController
  def step1
    render text: "こんにちは、#{params[:name]}さん"
  end

  def step2
    render text: params[:controller] + "#" + params[:action]
  end

  def step3
    redirect_to action: "step4"
  end

  def step4
    render text: "step4に移動しました。"
  end

  def step5
    flash[:notice] = "step6に移動します。"
    redirect_to action: "step6"
  end

  def step6
    render text: flash[:notice]
  end
end
