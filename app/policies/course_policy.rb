class CoursePolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end
  def edit?
    @user.has_role?(:admin) || (@user.has_role?(:teacher) && @record.user == @user)
  end

  def update?
    @user.has_role?(:admin) || (@user.has_role?(:teacher) && @record.user == @user)
  end

  def new?
    @user.has_role?(:admin) || (@user.has_role?(:teacher) && @record.user == @user)
  end

  def create?
    @user.has_role?(:admin) || (@user.has_role?(:teacher) && @record.user == @user)
  end

  def destroy?
    @user.has_role?(:admin) || (@user.has_role?(:teacher) && @record.user == @user)
  end
end
