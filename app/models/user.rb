class User < ActiveRecord::Base
	before_save { self.email = email.downcase }
	before_create :create_remember_token
	#before_save { email.downcase! }

	#attr_accessor :name, :email
	#strong parameter whitelisting 
		#http://edgeapi.rubyonrails.org/classes/ActionController/StrongParameters.html
		#http://www.sitepoint.com/rails-4-quick-look-strong-parameters/	
	

	validates :name,  presence: true, length: { maximum: 50 }
	#validates_presence_of :name
    #validates_length_of :name, :maximum => 50 
	

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
	#validates_presence_of :email
	#validates_format_of :email, :with => VALID_EMAIL_REGEX
	#validates_uniqueness_of :email, :case_sensitive => false
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, 
		uniqueness: {case_sensitive: false} 

	#validates_length_of :password, :minimum =>6
    validates :password, length: { minimum: 6 }


	#validation api 
	 #http://api.rubyonrails.org/classes/ActiveModel/Validations/ClassMethods.html#method-i-validators
	
	#this adds :password and :password_confirmation to the User Model
    has_secure_password
	has_many :microposts

  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

    def create_remember_token
      self.remember_token = User.encrypt(User.new_remember_token)
    end
end
