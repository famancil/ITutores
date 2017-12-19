class TutoradoController < ApplicationController
  before_action :set_tutorado, only: [:show, :update, :destroy]


  # GET /tutorados
  # GET /tutorados.json
  def index
    @tutorados = Tutorado.all

    render json: @tutorados, status: :ok
  end

  #def login
    #key = "TPSW_servidor"
  #  @tutorado = User.find_by(email: credential_params[:email])
  #  if @tutorado 
  #    email = credential_params[:email]
  #    pass = credential_params[:password]      
  #    @tutorado.password = AESCrypt.decrypt(@tutorado.password, key)
  #    if email==@tutorado.email && pass == @tutorado.password
  #      @tutorado.password = AESCrypt.encrypt(@tutorado.password, key) 
  #      render json: @tutorado.to_json(include: :preferences), status: :ok
  #    else
  #      render json: @tutorado.errors, status: :unprocessable_entity
  #    end
  #  else
  #    render json: @tutorado, status: :unprocessable_entity
  #  end
    
  #end

  # GET /tutorados/1
  # GET /tutorados/1.json
  def show
    render json: @tutorado, status: :ok
  end

  ##Crear tutorados, para un proximo desarrollo.

  # POST /tutorados
  # POST /tutorados.json
  #def create
  #  @tutorado = Tutorado.new(user_params.except(:preferences))
  #  types = user_params[:preferences].split(",")
  #  #password = "TPSW_servidor"
  #  @tutorado.password = AESCrypt.encrypt(@tutorado.password, key)
  #  #logger.info(@user)
  #  if @tutorado.save
  #  	types.each { |type|
  #  		pref = Preference.find_by(type_of_place: type)
  #  		if !pref
  # 			pref = Preference.create([{type_of_place: type}])   			
  #  		end
  #  		@tutorado.preferences << pref unless @tutorado.preferences.include?(pref)
    	
  #  	}
  #    render json: @tutorado.to_json(include: :preferences), status: :created
  #  else
  #    render json: @tutorado.errors, status: :unprocessable_entity
  #  end
  #end

  ##Desarrollo posterior

  # PATCH/PUT /tutorados/1
  # PATCH/PUT /tutorados/1.json
  #def update
  #  if @tutorado.update(user_params)
  #    render json: @tutorado.to_json(include: :preferences), status: :ok
  #  else
  #    render json: @tutorado.errors, status: :unprocessable_entity
  #  end
  #end

  # DELETE /tutorados/1
  # DELETE /tutorados/1.json
  def destroy
    @tutorado.destroy
  end

	private

	def set_tutorado
      @tutorado = Tutorado.find(params[:id])
  end

end
