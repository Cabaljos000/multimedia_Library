module Api
    module V1

        class Api::V1::AuthController < ApplicationController
            skip_before_action :authenticate_user!, only: [:login]

            def login
              # Perform Devise login logic here (e.g., user signing in)
              if user_signed_in?
                render json: { message: "Login successful" }
              else
                render json: { error: "Invalid login" }, status: :unauthorized
              end
            end
        end

        def logout
            current_user = nil
            render json: { message: 'Logged out successfully' }, status: :ok
          end
          
          
        class AuthController < ApplicationController
        skip_before_action :verify_authenticity_token # If you're handling CSRF tokens, add protection accordingly
  
        # POST /api/v1/login
            def login
          user = User.find_for_database_authentication(email: params[:email])
  
            if user&.valid_password?(params[:password])
            # Optionally generate a JWT token or use Devise session
                token = generate_jwt_token(user)
                render json: { message: 'Logged in successfully', token: token }, status: :ok
            else
                render json: { error: 'Invalid email or password' }, status: :unauthorized
            end
        end
  
        private
  
        def generate_jwt_token(user)
          # Generate a simple JWT token (you can use gems like jwt or devise_token_auth for more complex setups)
          JWT.encode({ user_id: user.id, exp: 24.hours.from_now.to_i }, Rails.application.secret_key_base)
        end
      end
    end
  end
  
