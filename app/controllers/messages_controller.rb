# -*- coding: utf-8 -*-
class MessagesController < ApplicationController
  def index
   @message = Message.new
   #messageを全て取得する
   @messages = Message.all
  end

  def create
   @message = Message.new(message_params)
   @message.save
   redirect_to root_path , notice: 'メッセージを保存しました'
  end

  private
  def message_params
    params.require(:message).params(:name, :body)
  end
  ##ここまで
end
