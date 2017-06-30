class User < ApplicationRecord
	EMAIL_REGEXP = /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/

	validates_presence_of :email, :full_name, :location
	validates_length_of :bio, minimum: 30, allow_blank: false
	validates_uniqueness_of :email
	# Essa validação pode ser representada da seguinte forma:
	# validates_format_of :email, with: EMAIL_REGEXP
	validate do
		errors.add(:email, :invalid) unless email.match(EMAIL_REGEXP)
	end

	has_secure_password
end
