package ${modulePackageName};

import com.hxw.frame.di.scope.ActivityScope;
import dagger.Binds;
import dagger.Module;

import ${contractPackageName}.${pageName}Contract;
import ${presenterPackageName}.${pageName}Presenter;

@Module
public abstract class ${pageName}Module {

    @ActivityScope
    @Binds
    public abstract ${pageName}Contract.Presenter provide${pageName}Presenter(${pageName}Presenter presenter);

}