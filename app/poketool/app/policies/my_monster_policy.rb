class MyMonsterPolicy < ApplicationPolicy
  def destroy?
    p 'ok!!!!!!!!!!!!!!!!!!!!!!!!!!'
    # true
    record.user_id == user.id
  end
  # class Scope < Scope
  #
  #
  #   def resolve
  #     scope.all
  #   end
  # end
end
