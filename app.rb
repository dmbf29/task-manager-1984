require_relative 'task'
require_relative 'task_repository'
require_relative 'controller'
require_relative 'router'

# laundry = Task.new('do laundry')
# dishes = Task.new('wash dishes')

task_repository = TaskRepository.new
# task_repository.create(laundry)
# task_repository.create(dishes)

controller = Controller.new(task_repository)
router = Router.new(controller)
router.run
