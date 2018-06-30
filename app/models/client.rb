class Client < ApplicationRecord
	# validates :first_name, :last_name, presence: true, length: { minimum: 2 }
	validates :email, presence: true
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
	validates :phone, numericality: true

	# def time_to_call
	# 	created_at + 2.days
	# end

	# def full_name
	# 	if first_name.nil? || first_name == ''
	# 		last_name
	# 	elsif last_name.nil? || last_name == ''
	# 		first_name
	# 	elsif first_name.nil? || first_name == '' && last_name.nil? || last_name == ''
	# 			''
	# 	else
	# 		"#{first_name} #{last_name}"
	# 	end
	# end

	def full_name
		"#{first_name} #{last_name}".strip
	end
end

# фамилия

# 1. добавить поле в базу даных
# 2. добавить полк в нашу форму client_params
# 3. добавить полк в админку permit_params
# 4. добавить поле в админку в формы (если они есть и прописаны)

# Опционально
# 5. валидации
