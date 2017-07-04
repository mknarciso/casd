class PagesController < ApplicationController
  helper_method :resource_name, :resource, :devise_mapping
  before_action :require_admin, only: [:dashboard]
  
  def home
  end
  
  def dashboard
    @numero_de_candidatos = Candidato.all.size
  end

  def resource_name
    :user
  end
 
  def resource
    @resource ||= User.new
  end
 
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
end
