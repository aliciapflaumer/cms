# Top-level comment
class ArticlePolicy < ApplicationPolicy

  def destroy?
    record.user == users
  end


  class Scope < Scope
    def resolve
      scope
    end
  end
end
