class Ability
  include CanCan::Ability

def initialize(user)
    can [:read, :public, :generate_shopping], Recipe  # start by defining rules for all users, also not logged ones
    return unless user.present?
    can [:create, :destroy, :update], Recipe, user_id: user.id # if the user is logged in can manage it's own recipe
    can [:read, :create], Food # logged in users can also create comments
    can [:update, :destroy, :create], RecipeFood
end
end
