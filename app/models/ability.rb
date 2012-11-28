class Ability
  include CanCan::Ability
  
  def initialize(user)
    user ||= User.new # guest user
    
    if user.role? :admin
      can :manage, :all
    else
      can :read, User, :id => user.id
      can :update, User, :id => user.id
      #can :update, Comment do |comment|
      #  comment.try(:user) == user || user.role?(:moderator)
      #end
      #if user.role?(:author)
      #  can :create, Article
      #  can :update, Article do |article|
      #    article.try(:user) == user
      #  end
      #end
    end
  end
end
