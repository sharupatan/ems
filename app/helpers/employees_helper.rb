module EmployeesHelper
  def positions
		Position.all.map { |position| [position.name, position.id] }
	end
	
	def html_or_json_format(request)
		request.format.html? || request.format.json?
	end
end
