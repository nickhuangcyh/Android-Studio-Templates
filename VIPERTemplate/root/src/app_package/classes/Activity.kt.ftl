package ${packageName}

import android.os.Bundle

class ${activityName} : BaseActivity(), ${contractName}.View {

    //region Properties
    override var presenter: ${contractName}.Presenter? = null
    //endregion

    //region Lifecycle
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.${activityLayoutName})
    }
    //endregion

    //region ${contractName}.View
    override fun setupView() {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }
    //endregion
}
