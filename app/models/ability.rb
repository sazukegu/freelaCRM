# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
      user ||= User.new # guest user (not logged in)

      freelancer(user) if user.has_role?(:freelancer)
      client(user) if user.has_role?(:client)
  end

  def freelancer(user)
    can :manage, Project, freelancer_id: user.id
    can :manage, Announcement, project: { freelancer: { id: user.id } }
    can :create, Announcement
    can :manage, Ticket, project: { freelancer: { id: user.id } }
    can :manage, Task, project: { freelancer: { id: user.id } }
  end

  def client(user)
    cannot :manage, Project
    cannot :manage, Announcement
    cannot :manage, Task
    cannot :manage, Ticket
    can :create, Ticket
    can :read, Project, client_id: user.id
    can :read, Announcement, project: { client: { id: user.id } }
    can :read, Task, project: { client: { id: user.id } }
    can :read, Ticket, project: { client: { id: user.id } }
  end
end

