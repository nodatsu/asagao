# coding: utf-8

class LessonController < ApplicationController
  def step1
    render text: "こんにちは、#{params[:name]}さん"
  end
  def step2
    render text: params[:controller] + "#" + params[:action]
  end
end
