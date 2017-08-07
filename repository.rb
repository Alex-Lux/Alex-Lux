class Repository

  def initialize
    @tasks = []
  end


  def add_task(task)
    @tasks << task
  end

  def remove_task(index)
    @tasks.delete_at(index)
  end

  def find_task(index)
    @tasks[index]
  end
end
