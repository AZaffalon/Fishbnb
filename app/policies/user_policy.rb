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
    self.user == user
  end

  def update?
    self.user == user
  end

  def edit?
    update?
  end

end
