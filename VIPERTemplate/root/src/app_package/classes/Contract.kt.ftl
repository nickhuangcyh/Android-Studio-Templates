package ${packageName}

interface ${contractName} {

    interface View {

        var presenter: Presenter?

        fun setupView()

    }

    interface Presenter {

        var view: View?
        <#if (isGenerateInteractor)>
            var interactor: Interactor?
        </#if>
        <#if (isGenerateRouter)>
            var router: Router?
        </#if>
        
        fun onCreate()
        fun onDestory()
    }
    
<#if (isGenerateRouter)>
    interface Router {
        var view: View?
    }
</#if>

<#if (isGenerateInteractor)>
    interface InteractorOutput {

    }
</#if>

<#if (isGenerateInteractor)>
    interface Interactor {
        var output: InteractorOutput?
    }
</#if>
    
}
