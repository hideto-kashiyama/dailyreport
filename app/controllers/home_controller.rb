class HomeController < ApplicationController
  
 #before_action :authenticate_user!
  #def index
     # flash[:success] = "メッセージ"
      
  #end
  
  #require 'rest-client'
  
    require 'net/http'
    require 'uri'
    require 'json' 
  
 def index
    @transval = params[:transval]
   
    respond_to do |format|
      format.html
      format.js
    end
  
 end 
 
  def master
      
       @categories=Category.all
       @masters = Master.where(category_id: params[:category_id])
       #@masters = Master.all
       
  end
  
  def e100
      
     @ctg = Category.find_by_id(params[:category_id])
   # @masters = Master.all
    @masters = Master.where(category_id: params[:category_id])
      
  end
  
  def ctg
      
       @categories=Category.all
       
  end
 
   def ctgs 
    

     master=Master.new(user_id: 9, j: params[:jtxt], category_id: params[:st], dt: Time.now )
     master.save
     
     redirect_to :action => "index"
 
   end
 
  def ibmttsj 
  
    fstr = params[:fstr]
    
    json_file_path = "/home/ubuntu/workspace/ja.json"
    
    # 読み込んで
    json_data = open(json_file_path) do |io|
      JSON.load(io)
    end
    
    # 更新して
    json_data['text'] =fstr
    
    # 保存する
    open(json_file_path, 'w') do |io|
      JSON.dump(json_data, io)
    end
    
   
   render action: :index
   
 end

end
