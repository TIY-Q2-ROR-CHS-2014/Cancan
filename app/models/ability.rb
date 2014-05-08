class Ability
  include CanCan::Ability

  def initialize(user)
    # Read
    # Create
    # Update
    # Destroy
    if user.user_type == "CEO"
      # can :read, Homework, course_id: current_user.courses.map(&:id)
      can :read, Project, name: ["Google", "Yahoo"], description: ["Dude man sup"]
      can :create, Project
      can :update, Project
      can :destroy, Project
    elsif user.user_type == "Developer"
      can :read, Project
    elsif user.user_type == "Project Manager"
      can :read, Project
      can :create, Project
      can :update, Project
    end
  end
end
