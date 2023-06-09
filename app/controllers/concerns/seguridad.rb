module Seguridad
	extend ActiveSupport::Concern

	def dog_name
		'Hugo Chinga G.'
	end

	def dog_email
		'hugo.chinga.g@gmail.com'
	end

	def perfil?
		usuario_signed_in? ? AppPerfil.find_by(email: current_usuario.email).present? : false
	end

	def perfil_activo
		usuario_signed_in? ? AppPerfil.find_by(email: current_usuario.email) : nil
	end

	def nomina_empresa?
		nomina = AppNomina.find_by(email: current_usuario.email)
		unless usuario_signed_in?
			nomina.blank? ? false : nomina.empresa.present?
		else
			false
		end
	end

	def administrador_empresa?
		administrador = AppAdministrador.find_by(email: current_usuario.email)
		unless usuario_signed_in?
			administrador.blank? ? false : administrador.empresa.present?
		else
			false
		end
	end

	def perfil_empresa?
		nomina_empresa? or administrador_empresa?
	end

	def perfil_activo_id
		usuario_signed_in? ? (perfil_activo.blank? ? nil : perfil_activo.id) : nil
	end

	def dog?
		usuario_signed_in? ? (current_usuario.email == dog_email) : false
	end

	def admin?
		usuario_signed_in? ? AppAdministrador.find_by(email: current_usuario.email).present? : false
	end

	def nomina?
		usuario_signed_in? ? AppNomina.find_by(email: current_usuario.email).present? : false
	end

	def general?
		usuario_signed_in? and not admin? and not nomina?
	end

	def anonimo?
		not usuario_signed_in?
	end

	def mi_seguridad?
		if current_usuario.email == dog_email
			:dog
		elsif AppAdministrador.find_by(email: current_usuario.email).present?
			:admin
		elsif AppNomina.find_by(email: current_usuario.email).present?
			:nomina
		elsif usuario_signed_in?
			:general
		else
			:anonimo
		end
	end

	def seguridad_desde(tipo_usuario)
		if tipo_usuario.blank?
			dog? or admin?
		else
			case tipo_usuario
			when 'dog'
				dog?
			when 'admin'
				dog? or admin?
			when 'nomina'
				dog? or admin? or nomina?
			when 'general'
				dog? or admin? or nomina? or general?
			when 'anonimo'
				true
			end
		end
	end

end