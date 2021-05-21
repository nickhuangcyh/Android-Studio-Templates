package ${packageName}

class ${presenterName}(override var view: ${contractName}.View?, override var interactor: ${contractName}.Interactor?) : ${contractName}.Presenter {

    //region Properties

    //endregion

    //region ${contractName}.Presenter
    override fun onDestory() {
        view = null
        interactor = null
    }
    //endregion
}