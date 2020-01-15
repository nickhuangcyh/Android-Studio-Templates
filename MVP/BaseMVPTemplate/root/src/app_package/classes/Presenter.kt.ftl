package ${packageName}

class ${presenterName}(override var view: ${contractName}.View?,
                         override var interactor: ${contractName}.Interactor?)
    : ${baseModuleName}Presenter<${contractName}.View, ${contractName}.Interactor>(), 
        ${contractName}.Presenter, 
        ${contractName}.InteractorOutput {

    //region Properties

    //endregion

    //region ${contractName}.Presenter
    
    override fun onCreate() {
        super.onCreate()
        
        interactor?.output = this
    }

    override fun onStart() {
        super.onStart()
    }

    override fun onResume() {
        super.onResume()
    }

    override fun onPause() {
        super.onPause()
    }

    override fun onStop() {
        super.onStop()
    }

    override fun onDestroy() {
        super.onDestroy()

        view = null
        interactor?.output = null
        interactor = null
    }

    //endregion

    //region ${contractName}.InteractorOutput
    
    //endregion
}