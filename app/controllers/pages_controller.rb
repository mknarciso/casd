class PagesController < ApplicationController
  helper_method :resource_name, :resource, :devise_mapping
  before_action :require_user, only: [:dashboard]
  
  def home
      redirect_to(pages_dashboard_path) if (current_user)
  end
  
  def dashboard
    @num_cand = Candidato.all.size
    @num_pesq = Pesquisa.all.size
    @num_entr = Entrevista.all.size
    @candidatos = Candidato.all
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
