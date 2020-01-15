package ${packageName}

import android.os.Bundle

class ${activityName} : ${baseModuleName}Activity<${contractName}.Presenter>(), ${contractName}.View {

    //region Properties
    
    //endregion

    //region Lifecycle

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.${activityLayoutName})

        presenter = ${presenterName}(this, ${interactorName}())
        presenter?.onCreate()
    }

    override fun onStart() {
        super.onStart()
        presenter?.onStart()
    }

    override fun onResume() {
        super.onResume()
        presenter?.onResume()
    }

    override fun onPause() {
        super.onPause()
        presenter?.onPause()
    }

    override fun onStop() {
        super.onStop()
        presenter?.onStop()
    }

    override fun onDestroy() {
        super.onDestroy()
        presenter?.onDestroy()
    }
    
    //endregion

    //region ${contractName}.View
    
    //endregion
}
