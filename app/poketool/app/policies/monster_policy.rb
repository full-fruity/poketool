class MonsterPolicy < ApplicationPolicy
  def destroy?
    record.user_id == user.id
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
