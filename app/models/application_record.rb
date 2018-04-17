class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def create
        @users = Usre.new(user_params)
        @users_id = current_user.id
        if @users.save
          redirect_to users_path
        else
          render :new
        end
    end

end
