if Rails.env.development?
  User.create!(email: 'test@example.com', password: 'password')
  AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
end
