class ApplicationRecord < ActiveRecord::Base
  def current_user
    User.firstt
  end
end
