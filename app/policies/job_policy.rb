class JobPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def index?
    return true
  end

  def create?
    return true
  end

  def edit?
    record.company.user == user
  end

  def show?
    return true
  end

  def update?
    record.company.user == user
  end

  def destroy?
    record.company.user == user
  end

  def candidates?
    return true
  end

  def favorites?
    return true
  end
end
