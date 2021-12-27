class UsersController < ApplicationController
  # GET /users
  def index
    
    api_url = "https://mindicador.cl/api/uf/#{(params[:date])}"
    response = HTTParty.get(api_url)
    user = JSON.parse(response.read_body)

    
    if user['serie'][0].nil?
      return render json: {mensaje:"Valor no encontrado para esa fecha"}
    else 
      if request.headers['X-CLIENT'].present?
        Search.create(date_query: params[:date], name: request.headers['X-CLIENT'])
        render json: user["serie"][0]["valor"]
      else
        render json: "Cliente no reconocido"
      end
    end
  end

  def count_index
    count = Search.where(name: params[:name]).count 
    render json: count
  end
end

  


 
