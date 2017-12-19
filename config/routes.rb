Rails.application.routes.draw do
	match '/tutors/login' => 'tutor#login', via: :post
	match '/tutors/:id' => 'tutor#show', via: :get
	match '/tutors/:id/mensajes' => 'tutor#showMessage', via: :get
	match '/tutorados' => 'tutorado#index', via: :get
	match '/tutorados/:id' => 'tutorado#show', via: :get
	match '/coordinadors/:id/mensajes' => 'coordinador#showMessage', via: :get
	match '/coordinadors/:id/mensajes' => 'coordinador#createMessage', via: :post
	match '/tutors/:id/asignaciones' => 'tutor#assign', via: :post
	match '/tutors/:id/asignaciones' => 'tutor#show_tutorado_assing', via: :get
	match '/tutors/:id/entrevistas' => 'tutor#interview', via: :post
	match '/tutors/:id/entrevistas' => 'tutor#show_interview', via: :get
	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
