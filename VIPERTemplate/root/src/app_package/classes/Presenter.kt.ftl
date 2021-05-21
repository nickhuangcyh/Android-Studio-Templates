package ${packageName}

class ${presenterName}(override var view: ${contractName}.View?, 
                        override var interactor: ${contractName}.Interactor?, 
                        override var router: ${contractName}.Router?) 
    : ${contractName}.Presenter<#if (isGenerateInteractor)>, ${contractName}.InteractorOutput</#if> {

    //region Properties

    //endregion

    //region ${contractName}.Presenter
    override fun onCreate() {
        interactor?.output = this
    }

    override fun onDestory() {
        view = null
        router = null
        interactor?.output = null
        interactor = null
    }
    //endregion
}