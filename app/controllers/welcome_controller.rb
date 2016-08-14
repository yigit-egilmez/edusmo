class Test
def initialize(name)
@name = name
end
end
class WelcomeController < ApplicationController
  def get
  d = Test.new("cem")
  e = Test.new("yigit")

  f = [d,e]
  result = ActiveRecord::Base.connection.execute("select * from membership.users")

  render json: result
  end

  def index
  end


  def save
 ActiveRecord::Base.connection.execute("set search_path = membership;Select register('#{ params[:first] }','#{ params[:last] }','#{ params[:email] }','#{ params[:password] }')");
 redirect_to action: "get"
  end
end
