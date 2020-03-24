package ${packageName}

interface ${className}ViewControllerInput {
    fun display${modelName}(viewModel: ${className}Model.${className}ViewModel);
}

interface ${className}ViewControllerOutput {
    fun loadInitialData(request: ${className}Model.${className}Request);
    fun refreshData(request: ${className}Model.${className}Request );
}

class ${className}ViewController: ${className}ViewControllerInput, ${className}PresenterOutput {

    var output: ${className}ViewControllerOutput? = null
    var router: ${className}Router? = null
    var viewModel: ${className}Model.${className}ViewModel? = null

    private fun setup() {
        ${className}Configurator.shareInstance.configure(this)
    }

    private fun loadInitialData() {
        val request = ${className}Model.${className}Request()
        output?.loadInitialData(request)
    }

    override fun display${modelName}(viewModel: ${className}Model.${className}ViewModel) {
        this.viewModel = viewModel
    }
    
}
