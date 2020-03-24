package ${packageName};

interface ${className}PresenterInput {
    fun present${className}(response: ${className}Model.${className}Response )
}

interface ${className}PresenterOutput {
    fun display${modelName}(viewModel: ${className}Model.${className}ViewModel)
}

class ${className}Presenter : ${className}PresenterInput, ${className}InteractorOutput {
    var output: ${className}PresenterOutput? = null

    override fun present${className}(response: ${className}Model.${className}Response ) {
        val viewModel = ${className}Model.${className}ViewModel()
        viewModel.defaultViewModel = prepareDefaultViewModel(response)
        output?.display${modelName}(viewModel)
    }
    private fun prepareDefaultViewModel(response: ${className}Model.${className}Response): ${className}Model.${className}DefaultViewModel {
        return ${className}Model.${className}DefaultViewModel()
    }
}
