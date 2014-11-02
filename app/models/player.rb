class Player < ActiveRecord::Base
	attr_accessor :password
        validates :username, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
        validates :password, :confirmation => true
        validates_length_of :password, :in => 6..20, :on => :create
        before_save :encrypt_password
        after_save :clear_password
	acts_as_authentic

        def encrypt_password
                if password.present?
                        self.salt = BCrypt::Engine.generate_salt
                        self.encrypted_password = BCrypt::Engine.hash_secret(self.password, self.salt)
                end
        end

        def clear_password
                self.password = nil
        end

end
