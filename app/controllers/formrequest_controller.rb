class FormrequestController < ApplicationController
  protect_from_forgery except: :insert

  def index
    #検索結果取得 todo: coding auth
    @result = User.where("id = :id and password like :password", id: 1, password: "yu0802ya")
  end

  def insert

    request_user_name = params[:name]
    request_type = params[:type]
    request_team = params[:team]
    request_project = params[:project]
    request_products = params[:products]
    request_detail = params[:detail]
    request_datetime = params[:datetime]
    parson_charge = "未確定"
    flg = "0"

    #insert into Request info table.
    Request.create(
        :request_user => request_user_name,
        :request_type => request_type,
        :request_team => request_team,
        :project_name => request_project,
        :product_name => request_products,
        :request_detail => request_detail,
        :desired_date => request_datetime,
        :person_charge => parson_charge,
        :request_flg => flg,
        :progress => 0
    ).valid?

    redirect_to "/main"

  end
end
