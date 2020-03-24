package ${packageName};

class ${className}Configurator {

     companion object {
        lateinit var shareInstance: ${className}Configurator
            private set
    }

    fun configure(viewController: ${className}ViewController) {
        val router = ${className}Router()
        router.viewController = viewController

        val presenter = ${className}Presenter()
        presenter.output = viewController

        val interactor = ${className}Interactor()
        interactor.output = presenter

        viewController.output = interactor
        viewController.router = router
    }

}
