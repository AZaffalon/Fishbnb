class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    record_user || record.fish.user == user
  end

  def show?
    record.user == user || record.fish.user == user
    raise
  end

  def create?
    record != user
  end

  def new?
    create?
  end

  def update?
    record.user == user || record.fish.user == user
  end

  def edit?
    update?
  end

  def destroy?
    record.user == user
  end
end
