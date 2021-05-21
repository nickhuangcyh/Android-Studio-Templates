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
        
        fun onDestory()
    }

<#if (isGenerateInteractor)>
    interface Interactor {

    }
</#if>
    
}
