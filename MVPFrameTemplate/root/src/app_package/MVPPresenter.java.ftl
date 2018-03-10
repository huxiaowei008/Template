package ${presenterPackageName};

import com.hxw.frame.di.scope.ActivityScope;
import com.hxw.frame.integration.RepositoryManager;

import javax.inject.Inject;

import ${contractPackageName}.${pageName}Contract;

@ActivityScope
public class ${pageName}Presenter implements ${pageName}Contract.Presenter{
    private RepositoryManager mRepositoryManager;
    private ${pageName}Contract.View mView = null;

    @Inject
    public ${pageName}Presenter (RepositoryManager repositoryManager) {
        this.mRepositoryManager = repositoryManager;
    }

    @Override
    public void injectView(${pageName}Contract.View view){
        this.mView=view;
    }
    @Override
    public void dropView() {
        this.mView = null;
    }
}
