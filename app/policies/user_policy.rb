class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def show?
    record.user == user
  end

  def update?
    record.user == user
  end

  def edit?
    update?
  end

end
