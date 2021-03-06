RailsAdmin.config do |config|
  ### Popular gems integration

  ## == Devise ==
  #config.authenticate_with do
  #  warden.authenticate! scope: :user
  #end
  #config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show

    config.authorize_with do
      authenticate_or_request_with_http_basic('Trebuie să vă logați') do |username, password|
        username == Rails.application.secrets.user &&
        password == Rails.application.secrets.password
      end
    end

    config.model About do
      edit do
        field :content, :text do
          label 'content'
        end
      end
    end
#    config.model Category do
#      edit do
#        field :name, :string do
#          label 'name'
#        end
#        field :pret, :integer do
#          label 'pret'
#        end
#        field :content, :ck_editor, :text do
#          label 'content'
#        end
#      end
#    end
#    config.model Grupe do
#      edit do
#        field :name, :string do
#          label 'name'
#        end
#        field :orar, :_editor, :text do
#          label 'content'
#        end
#      end
#    end
#
  end
end
