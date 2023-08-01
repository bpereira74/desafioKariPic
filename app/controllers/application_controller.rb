class ApplicationController < ActionController::Base
      def configure_sign_up_params
            devise parameter_sanitizer.permit(:sign_up, keys:[:name, :photo])
      end
      def configure_update_params
            devise parameter_sanitizer.permit(:account_update, keys:[:name, :photo])
      end
end
