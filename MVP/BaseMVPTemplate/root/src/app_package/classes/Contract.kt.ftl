package ${packageName}

interface ${contractName} {

    interface View : ${baseModuleName}Contract.View<Presenter> {

    }

    interface Presenter : ${baseModuleName}Contract.Presenter<View, Interactor> {

    }
    
    interface InteractorOutput : ${baseModuleName}Contract.InteractorOutput {

    }

    interface Interactor : ${baseModuleName}Contract.Interactor<InteractorOutput> {

    }
}
