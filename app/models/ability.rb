class Ability
  include CanCan::Ability

  def initialize(user)
    can %i[read public generate_shopping], Recipe # start by defining rules for all users, also not logged ones
    return unless user.present?

    can %i[create destroy update], Recipe, user_id: user.id # if the user is logged in can manage it's own recipe
    can %i[read create], Food # logged in users can also create comments
    can %i[update destroy create], RecipeFood
  end
end
