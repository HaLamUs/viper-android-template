package ${packageName};

interface ${className}InteractorInput {
    fun loadInitialData(request: ${className}Model.${className}Request )
    fun refreshData(request: ${className}Model.${className}Request)
}

interface ${className}InteractorOutput {
    fun present${modelName}(response: ${className}Model.${className}Response)
}

class ${className}Interactor : ${className}InteractorInput, ${className}ViewControllerOutput {
    var output: ${className}InteractorOutput? = null
    var worker: ${className}Worker = ${className}Worker()
    
    override fun loadInitialData(request: ${className}Model.${className}Request) { 
        worker.doSomeWork()
        prepareResponse()
    }

    override fun refreshData(request: ${className}Model.${className}Request) {
        prepareResponse()
    }
    
    // MARK:- Prepare logic
    private fun prepareResponse() {
        var response = ${className}Model.${className}Response();
        output?.present${modelName}(response)
    }
}
