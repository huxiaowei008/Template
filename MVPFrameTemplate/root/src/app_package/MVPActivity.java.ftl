package ${activityPackageName};

import android.os.Bundle;
import com.hxw.frame.base.DaggerActivity;
import com.hxw.frame.utils.UIUtils;
import javax.inject.Inject;

import ${packageName}.R;
import ${contractPackageName}.${pageName}Contract;
import ${presenterPackageName}.${pageName}Presenter;

/**
 * @author ${USER}
 * @date ${DATE}.
 */
public class ${pageName}Activity extends DaggerActivity implements ${pageName}Contract.View {

    @Inject
    ${pageName}Presenter mPresenter;

    @Override
    public int getLayoutId() {
        return R.layout.${activityLayoutName};
    }

    @Override
    public void init(Bundle savedInstanceState) {

    }

    @Override
    public void showMessage(String message) {
        UIUtils.toast(message);
    }

    @Override
    protected void onResume() {
        super.onResume();
        mPresenter.injectView(this);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        mPresenter.dropView();  //prevent leaking activity in
        // case presenter is orchestrating a long running task
    }

}
