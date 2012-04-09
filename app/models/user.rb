class User < ActiveRecord::Base
  validates :first_name, :presence => {:message => "^El campo Nombres no puede estar en blanco."} 
  validates :last_name, :presence => {:message => "^El campo Apellidos no puede estar en blanco."}
  validates :id_number, :presence => {:message => "^El campo Numero de Cedula no puede estar en blanco."}
  validates :id_number, :numericality => { :message => "^Solo puedes escribir numeros en la Cedula de Identidad.", :only_integer => true }
  validates :gender, :presence => {:message => "^Tienes que seleccionar un Genero."}
  validates :email, :presence => {:message => "^Tienes que introducir un Correo Electronico."}
  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/, :message => "El Correo Electronico debe de tener un formato valido" } 
  validates :email, :confirmation => {:message => "^Hay un error en la confirmacion del Correo Electronico"}  
  validates :email_confirmation, :presence => {:message => "^Confirma tu Correo Electronico"}
  validates :email, :uniqueness => { :message => "^La direccion de Correo Electronico ya existe!"}
  validates :password, :presence => {:message => "^Tienes que introducir Contrasena"}
  validates :password, :confirmation => {:message => "^Hay un error en la confirmacion de la Contrasena"}
  validates :password, :length => { :in => 6..20, :message => "^La Contrasena es muy corta minimo 6 caracteres"}
  validates :password_confirmation, :presence => {:message => "^Confirma tu Contrasena." }

  has_secure_password
  
  
end
