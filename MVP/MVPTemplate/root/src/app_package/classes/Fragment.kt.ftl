package ${packageName}

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup

class ${fragmentName} : BaseFragment(), ${contractName}.View {

    //region Properties
    override var presenter: ${contractName}.Presenter? = null
    //endregion

    //region Lifecycle
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
    }

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?,
                              savedInstanceState: Bundle?): View? {
        // Inflate the layout for this fragment
        return inflater.inflate(R.layout.${fragmentLayoutName}, container, false)
    }
    //endregion

    //region ${contractName}.View
    override fun setupView() {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }
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
