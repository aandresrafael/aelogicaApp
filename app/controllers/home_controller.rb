class HomeController < ApplicationController
  before_action :detroy_users

  def index
    EtlAelogica::UserEtl.call
    @users = User.all
    render :index
  end

  protected
  def detroy_users
    #In order to run it several times
    User.destroy_all
  end
end
