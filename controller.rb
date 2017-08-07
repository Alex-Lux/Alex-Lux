class Controller

  def initialize(repository, view)
    @repository = repository
    @view = view
  end

def list
  #Get all tasks from the repo
  tasks = @repository.all
  # Pass them to the view
  view.list_tasks(tasks)
end

def add
  # Get the description from the user
  description = @view.get_task_description
  # Create task object
  task = Task.new(description)
  # Add the task to the repo
  end

  def remove
  end

  def mark_as_done
  end

end
