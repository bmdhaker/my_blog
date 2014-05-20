require 'rails_admin/metadata'
require 'rails_admin/publish'

RailsAdmin.config do |config|
  config.current_user_method &:current_user
  config.authorize_with :cancan

  config.actions do
    # root actions
      dashboard                     # mandatory
    # collection actions 
      index                         # mandatory
      new
      export
      bulk_delete
	  history_show
	  history_index
    # member actions
      show
      edit
      delete
      publish do
        only 'Blog::Post'
        link_icon 'icon-check'
      end
  end
end
