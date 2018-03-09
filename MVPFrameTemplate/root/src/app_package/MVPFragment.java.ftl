package ${fragmentPackageName};

import android.os.Bundle;
import com.hxw.frame.base.DaggerFragment;
import com.hxw.frame.utils.UIUtils;
import javax.inject.Inject;

import ${packageName}.R;
import ${contractPackageName}.${pageName}Contract;
import ${presenterPackageName}.${pageName}Presenter;

/**
 * @author ${USER}
 * @date ${DATE}.
 */
public class ${pageName}Fragment extends DaggerFragment implements ${pageName}Contract.View{

    @Inject
    ${pageName}Presenter mPresenter;

    @Override
    public int getLayoutId() {
        return R.layout.${fragmentLayoutName};
    }

    @Override
    public void init(Bundle savedInstanceState) {

    }

    @Override
    public void showMessage(String message) {
        UIUtils.toast(message);
    }

    @Override
    public void onResume() {
        super.onResume();
        mPresenter.injectView(this);
    }

    @Override
    public void onDestroyView(){
        super.onDestroyView();
        mPresenter.dropView();
    }



}
