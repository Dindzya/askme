module ApplicationHelper
  def inclination(count, one, many)
    case count
    when 1 then one
    else
      many
    end
  end
end
