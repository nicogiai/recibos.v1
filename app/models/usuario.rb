class Usuario < ActiveRecord::Base
	validates_presence_of :usuario
	validates_uniqueness_of :usuario 

	attr_accessor :password_confirmation
	validates_confirmation_of :password 

	validate :password_non_blank

	def password
		@password
	end

	private
		def password_non_blank
			errors.add_to_base("Falta la clave") if clave.blank?
		end
end
