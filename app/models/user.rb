class User < ApplicationRecord

  # after_initialize :init, if: :new_record?
  # after_initialize :second_user, if: :new_record?
  # after_initialize :first_user, if: :new_record?

  has_secure_password
  has_many :feedbacks

# Validations start Here

  # Password
  validates :password,
    presence: {message: 'Escolha e digite uma senha'},
    confirmation: {message: 'Senhas diferentes, digite novamente'}

  validates_length_of :password,
    within: 4..30,
    too_short: 'Sua senha deve ter pelo menos 4 caracteres',
    too_long: 'Sua senha pode ter máximo 30 caracteres'

  # Password_confirmation
  validates :password_confirmation,
    presence: {message: 'Você deve confirmar sua senha'}

  # Email
  VALID_EMAIL = /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email,
    presence: {message: 'Informe um email'},
    uniqueness: {message: 'Esse email já foi escolhido, digite outro'},
    length: {maximum: 50, message: 'O email pode ter no máximo 100 caracteres'},
    confirmation: {message: 'Emails diferentes, digite novamente'},
    format: {with: VALID_EMAIL, message: 'Insira um email válido'}

  # Login
  validates :login, 
    presence: {message: 'Informe um login de usuário (um apelido)'},
    uniqueness: {message: 'Esse login já foi escolhido, digite outro login'}

  validates_length_of :login,
    within: 4..25,
    too_short: 'O seu login deve ter pelo menos 4 caracteres',
    too_long: 'O seu login deve ter no máximo 25 caracteres'


# Validations end here

# Methods to define users type before create

  # def init
  #   self.assistant ||= false
  #   self.admin ||= false
  #   self.active ||= true
  # end

  # def first_user
  #   if User.count == 0
  #     self.admin ||= true
  #   else
  #   end
  # end

end
