class Visit < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant

  # validates :last_visit, :presence => true, :format => /(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d/
end
