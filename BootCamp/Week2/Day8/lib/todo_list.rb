
class TodoList
    attr_reader :tasks
    def initialize
        @tasks = []
    end

    def add_task(new_task)
      @tasks.push(new_task)
    end

    def delete_task(task_id)
      @tasks = @tasks.delete_if do |task|
        task.id == task_id
      end
    end
end