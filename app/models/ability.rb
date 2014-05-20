class Ability
  include CanCan::Ability

  def initialize(user)
    case user.profile
    when 'supervisor'
		can :manage, :all
    when 'superuser'
		#can :access, :rails_admin
		#can :dashboard
		can :manage, :all
		cannot :manage, [User]
	when 'visitor'
		can :access, :rails_admin
		can :dashboard
		#can :read, Blog::Post
		#can :read, Blog::Comment
		can :read, :all
		cannot :read, [User]

    end
  end
end
