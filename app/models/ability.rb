class Ability
  include CanCan::Ability

  user ||= User.new

  def initialize(user)
    can :read, :all if user.nil?

    if user.admin?
      can :manage, :all
    else
      can :read, :all
      can :manage, Post, author_id: user.id
      can :manage, Comment, author_id: user.id
    end
  end
end
