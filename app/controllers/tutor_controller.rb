require 'json'
class TutorController < ApplicationController
  before_action :set_tutor, only: [:show, :showMessage, :update, :destroy]

  key = "Tutor"
  # GET /tutor
  # GET /tutor.json
  def index
    @tutor = Tutor.all

    render json: @tutor, status: :ok
  end

  # GET /tutor/1
  # GET /tutor/1.json
  def show
    render json: @tutor, status: :ok
  end

  def showMessage
  	@mensaje = Mensaje.where(carrera: @tutor.carrera)
  	if @mensaje
      render json: @mensaje, status: :ok
    else
      render json: @mensaje, status: :unprocessable_entity
    end
  end

  def login
  	logger.info(params[:email])
  	key = "Tutor"
  	@usuario = Tutor.find_by(email: params[:email])
  	if @usuario 
      email = params[:email]
      pass = params[:contraseña]      
      @usuario.contraseña = AESCrypt.decrypt(@usuario.contraseña, key)
      if email==@usuario.email && pass == @usuario.contraseña
        @usuario.contraseña = AESCrypt.encrypt(@usuario.contraseña, key)

        tutor = {:id => @usuario.id,:isCoord => false}

        render json: tutor, status: :ok
      else
        error = {:code => "Password Incorrecto"} 
        render json: error, status: :unprocessable_entity
        #render json: @usuario.errors, status: :unprocessable_entity
      end
    else
	    @usuario = Coordinador.find_by(email: params[:email])
	    if @usuario 
	      email = params[:email]
	      pass = params[:contraseña]      
	      @usuario.contraseña = AESCrypt.decrypt(@usuario.contraseña, key)
	      if email==@usuario.email && pass == @usuario.contraseña
	        @usuario.contraseña = AESCrypt.encrypt(@usuario.contraseña, key)
	        coordinador = {:id => @usuario.id,:isCoord => true} 
	        render json: coordinador, status: :ok
	      else
          error = {:code => "Password Incorrecto"} 
	        render json: error, status: :unprocessable_entity
	      end
	    else
        error = {:code => "Email Incorrecto"} 
	      render json: error, status: :unprocessable_entity
	    end
    end
  end

  def assign
   @asignar = TutorTutoradoSemestre.new
   @asignar.semestre = "2017-2"
   @asignar.tutor_id = params[:id]
   @asignar.tutorado_id = tutorado_params[:tutorado_id]

   if @asignar.save
    render json: @asignar, status: :created
   else
    render json: @asignar.errors, status: :unprocessable_entity
   end
  end

  def show_tutorado_assing
    @asignados = TutorTutoradoSemestre.where(tutor_id: params[:id])
    if @asignados
      #@asignados.each { |asignado|
      #  tutorado = Tutorado.find(asignado.tutorado_id)
      #  logger.info(tutorado.to_json)
      #  asignadoJSON = asignado.to_json
      #  asignadoJSON["tutorado"] = tutorado.nombre
      #}
      #tutorado = Tutorado.find(@asignados[:tutorado_id])
      #@asignados.tutorado = tutorado
      #logger.info(@asignados.to_json)
      render json: @asignados.to_json(include: :tutorado), status: :ok
    else
      render json: @asignados, status: :not_found
    end
  end

  def delete_assing
    @tutoradoAssing = TutorTutoradoSemestre.find_by(tutorado_id: tutorado_params[:tutorado_id])
    @tutoradoAssing.destroy
  end

  def interview
    entrevista = Entrevista.new

    entrevista.tutor_id = params[:id]
    entrevista.tutorado_id = entrevista_params[:tutorado_id]
    entrevista.comentario = entrevista_params[:comentario]

    totalEntrevista = Entrevista.where(tutor_id: params[:id]).count
    entrevista.cantidadEntrevista = totalEntrevista + 1


    if entrevista_params[:vocacional]
      entrevista.vocacional = entrevista_params[:vocacional]
    else
      entrevista.vocacional = 0
    end
    if entrevista_params[:academico]
      entrevista.academico = entrevista_params[:academico]
    else
      entrevista.academico = 0
    end
    if entrevista_params[:interracion]
      entrevista.interracion = entrevista_params[:interracion]
    else
      entrevista.interracion = 0
    end
    if entrevista_params[:migratorio]
      entrevista.migratorio = entrevista_params[:migratorio]
    else
      entrevista.migratorio = 0
    end
    if entrevista_params[:salud]
      entrevista.salud = entrevista_params[:salud]
    else
      entrevista.salud = 0
    end
    if entrevista_params[:familiar]
      entrevista.familiar = entrevista_params[:familiar]
    else
      entrevista.familiar = 0
    end
    if entrevista_params[:economico]
      entrevista.economico = entrevista_params[:economico]
    else
      entrevista.economico = 0
    end

    if entrevista.save
      render json: entrevista, status: :created
    else
      render json: entrevista.errors, status: :unprocessable_entity
    end
  end

  def show_interview
    @entrevistados = Entrevista.where(tutor_id: params[:id])
    if @entrevistados
      #@asignados.each { |asignado|
      #  tutorado = Tutorado.find(asignado.tutorado_id)
      #  logger.info(tutorado.to_json)
      #  asignadoJSON = asignado.to_json
      #  asignadoJSON["tutorado"] = tutorado.nombre
      #}
      #tutorado = Tutorado.find(@asignados[:tutorado_id])
      #@asignados.tutorado = tutorado
      #logger.info(@asignados.to_json)
      render json: @entrevistados.to_json(include: :tutorado), status: :ok
    else
      render json: @entrevistados, status: :not_found
    end
  end

  private

  def tutorado_params
    params.require(:data).permit(:tutorado_id)
  end

  def entrevista_params
    params.require(:data).permit(:tutorado_id,:comentario,:vocacional,:academico,:interracion,
      :migratorio,:salud,:familiar,:economico)    
  end

  def set_tutor
    @tutor = Tutor.find(params[:id])
  end

  #def credential_params
  #  params.require(:data).permit(:email,:contraseña)
  #end

end
