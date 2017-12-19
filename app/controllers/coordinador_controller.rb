class CoordinadorController < ApplicationController
  before_action :set_coord, only: [:show, :update, :destroy]

  def showMessage
  	@mensaje = Mensaje.where(coordinador_id: params[:id])
  	#logger.info(@mensaje.to_json)
  	if @mensaje       
        render json: @mensaje, status: :ok
    else
      render json: @mensaje, status: :unprocessable_entity
    end
  end

  def createMessage
    mensajeNuevo = Mensaje.new
    logger.info(mensaje_params)
    mensajeNuevo.titulo = mensaje_params[:titulo]
    mensajeNuevo.texto = mensaje_params[:texto]
    mensajeNuevo.carrera = mensaje_params[:carrera]
    mensajeNuevo.campus = mensaje_params[:campus]
    mensajeNuevo.coordinador_id = params[:id]
    
    if mensaje_params[:imageDIR]
      mensajeNuevo.imageDIR = mensaje_params[:imageDIR]
    end

    if mensajeNuevo.save
      render json: mensajeNuevo, status: :created
    else
      render json: mensajeNuevo.errors, status: :unprocessable_entity
    end
  end

  private

  def mensaje_params
    params.fetch(:data, {}).permit(:titulo,:texto,:imageDIR,:carrera,:campus,:coordinador_id)
    #params.require(:data).permit(:titulo,:texto,:imageDIR,:carrera,:campus,:coordinador_id)
  end

  def set_coord
    @coordinador = Coordinador.find(params[:id])
  end

end
