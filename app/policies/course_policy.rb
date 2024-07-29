class CoursePolicy < ApplicationPolicy
  def index?
    true
  end

  def show?
    user.present?
  end

  def create?
    user.role.nombre == 'Profesor'
  end

  def update?
    user.role.nombre == 'Profesor' && record.professor.user_id == user.id
  end

  def destroy?
    user.role.nombre == 'Profesor' && record.professor.user_id == user.id
  end

  class Scope < Scope
    def resolve
      if user.role.nombre == 'Profesor'
        scope.where(professor: user.professor)
      else
        scope.all
      end
    end
  end
end
