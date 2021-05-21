package ${packageName}

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup

class ${fragmentName} : ${baseModuleName}Fragment<${contractName}.Presenter>(), 
        ${contractName}.View {

    //region Properties
    
    //endregion

    //region Lifecycle

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        presenter = ${presenterName}(this, ${interactorName}())
        presenter?.onCreate()
    }

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?,
                              savedInstanceState: Bundle?): View? {
        // Inflate the layout for this fragment
        return inflater.inflate(R.layout.${fragmentLayoutName}, container, false)
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

    companion object {
        /**
         * Use this factory method to create a new instance of
         * @return A new instance of fragment ${fragmentName}.
         */
        @JvmStatic
        fun newInstance() = ${fragmentName}()
    }
}
