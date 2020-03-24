package ${packageName};

interface ${className}RouterInput {
    fun navigateToSomewhere()
}

class ${className}Router : ${className}RouterInput {

   var viewController: ${className}ViewController? = null;

   override fun navigateToSomewhere() { 
   }
   
}
