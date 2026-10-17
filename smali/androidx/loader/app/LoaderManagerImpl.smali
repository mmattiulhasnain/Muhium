###### Class androidx.loader.app.LoaderManagerImpl (androidx.loader.app.LoaderManagerImpl)
.class Landroidx/loader/app/LoaderManagerImpl;
.super Landroidx/loader/app/LoaderManager;
.source "LoaderManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;,
        Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;,
        Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;
    }
.end annotation


# static fields
.field static DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "LoaderManager"


# instance fields
.field private final mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field private final mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Landroidx/loader/app/LoaderManagerImpl;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/ViewModelStore;)V
    .registers 4
    .param p1, "lifecycleOwner"    # Landroidx/lifecycle/LifecycleOwner;
    .param p2, "viewModelStore"    # Landroidx/lifecycle/ViewModelStore;

    .line 371
    invoke-direct {p0}, Landroidx/loader/app/LoaderManager;-><init>()V

    .line 372
    iput-object p1, p0, Landroidx/loader/app/LoaderManagerImpl;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 373
    invoke-static {p2}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->getInstance(Landroidx/lifecycle/ViewModelStore;)Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    move-result-object v0

    iput-object v0, p0, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    .line 374
    return-void
.end method

.method private createAndInstallLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;Landroidx/loader/content/Loader;)Landroidx/loader/content/Loader;
    .registers 10
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "TD;>;",
            "Landroidx/loader/content/Loader<",
            "TD;>;)",
            "Landroidx/loader/content/Loader<",
            "TD;>;"
        }
    .end annotation

    .line 382
    .local p3, "callback":Landroidx/loader/app/LoaderManager$LoaderCallbacks;, "Landroidx/loader/app/LoaderManager$LoaderCallbacks<TD;>;"
    .local p4, "priorLoader":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v1}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->startCreatingLoader()V

    .line 383
    invoke-interface {p3, p1, p2}, Landroidx/loader/app/LoaderManager$LoaderCallbacks;->onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;

    move-result-object v1

    .line 384
    .local v1, "loader":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    if-eqz v1, :cond_74

    .line 388
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 389
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_25

    goto :goto_3e

    .line 390
    :cond_25
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object returned from onCreateLoader must not be a non-static inner member class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "id":I
    .end local p2    # "args":Landroid/os/Bundle;
    .end local p3    # "callback":Landroidx/loader/app/LoaderManager$LoaderCallbacks;, "Landroidx/loader/app/LoaderManager$LoaderCallbacks<TD;>;"
    .end local p4    # "priorLoader":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    throw v2

    .line 394
    .restart local p1    # "id":I
    .restart local p2    # "args":Landroid/os/Bundle;
    .restart local p3    # "callback":Landroidx/loader/app/LoaderManager$LoaderCallbacks;, "Landroidx/loader/app/LoaderManager$LoaderCallbacks<TD;>;"
    .restart local p4    # "priorLoader":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    :cond_3e
    :goto_3e
    new-instance v2, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    invoke-direct {v2, p1, p2, v1, p4}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;-><init>(ILandroid/os/Bundle;Landroidx/loader/content/Loader;Landroidx/loader/content/Loader;)V
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_7c

    move-object v0, v2

    .line 395
    .local v0, "info":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;, "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    :try_start_44
    sget-boolean v2, Landroidx/loader/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_60

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Created new loader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_60
    iget-object v2, p0, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v2, p1, v0}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->putLoader(ILandroidx/loader/app/LoaderManagerImpl$LoaderInfo;)V
    :try_end_65
    .catchall {:try_start_44 .. :try_end_65} :catchall_72

    .line 398
    .end local v1    # "loader":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    iget-object v1, p0, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v1}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->finishCreatingLoader()V

    .line 399
    nop

    .line 400
    iget-object v1, p0, Landroidx/loader/app/LoaderManagerImpl;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v0, v1, p3}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->setCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    move-result-object v1

    return-object v1

    .line 398
    :catchall_72
    move-exception v1

    goto :goto_7d

    .line 385
    .end local v0    # "info":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;, "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    .restart local v1    # "loader":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    :cond_74
    :try_start_74
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Object returned from onCreateLoader must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "id":I
    .end local p2    # "args":Landroid/os/Bundle;
    .end local p3    # "callback":Landroidx/loader/app/LoaderManager$LoaderCallbacks;, "Landroidx/loader/app/LoaderManager$LoaderCallbacks<TD;>;"
    .end local p4    # "priorLoader":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    throw v2
    :try_end_7c
    .catchall {:try_start_74 .. :try_end_7c} :catchall_7c

    .line 398
    .end local v1    # "loader":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    .restart local p1    # "id":I
    .restart local p2    # "args":Landroid/os/Bundle;
    .restart local p3    # "callback":Landroidx/loader/app/LoaderManager$LoaderCallbacks;, "Landroidx/loader/app/LoaderManager$LoaderCallbacks<TD;>;"
    .restart local p4    # "priorLoader":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    :catchall_7c
    move-exception v1

    .restart local v0    # "info":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;, "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    :goto_7d
    iget-object v2, p0, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v2}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->finishCreatingLoader()V

    throw v1
.end method


# virtual methods
.method public destroyLoader(I)V
    .registers 4
    .param p1, "id"    # I

    .line 453
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v0}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->isCreatingLoader()Z

    move-result v0

    if-nez v0, :cond_52

    .line 456
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_4a

    .line 460
    sget-boolean v0, Landroidx/loader/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_38

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroyLoader in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_38
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v0, p1}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->getLoader(I)Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v0

    .line 462
    .local v0, "info":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;
    if-eqz v0, :cond_49

    .line 463
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->destroy(Z)Landroidx/loader/content/Loader;

    .line 464
    iget-object v1, p0, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v1, p1}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->removeLoader(I)V

    .line 466
    :cond_49
    return-void

    .line 457
    .end local v0    # "info":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;
    :cond_4a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "destroyLoader must be called on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 454
    :cond_52
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called while creating a loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 498
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 499
    return-void
.end method

.method public getLoader(I)Landroidx/loader/content/Loader;
    .registers 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroidx/loader/content/Loader<",
            "TD;>;"
        }
    .end annotation

    .line 471
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v0}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->isCreatingLoader()Z

    move-result v0

    if-nez v0, :cond_17

    .line 475
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v0, p1}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->getLoader(I)Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v0

    .line 476
    .local v0, "info":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;, "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->getLoader()Landroidx/loader/content/Loader;

    move-result-object v1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return-object v1

    .line 472
    .end local v0    # "info":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;, "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called while creating a loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasRunningLoaders()Z
    .registers 2

    .line 503
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v0}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->hasRunningLoaders()Z

    move-result v0

    return v0
.end method

.method public initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;
    .registers 8
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "TD;>;)",
            "Landroidx/loader/content/Loader<",
            "TD;>;"
        }
    .end annotation

    .line 408
    .local p3, "callback":Landroidx/loader/app/LoaderManager$LoaderCallbacks;, "Landroidx/loader/app/LoaderManager$LoaderCallbacks<TD;>;"
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v0}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->isCreatingLoader()Z

    move-result v0

    if-nez v0, :cond_6f

    .line 411
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_67

    .line 415
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v0, p1}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->getLoader(I)Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v0

    .line 417
    .local v0, "info":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;, "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    sget-boolean v1, Landroidx/loader/app/LoaderManagerImpl;->DEBUG:Z

    const-string v2, "LoaderManager"

    if-eqz v1, :cond_3e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initLoader in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": args="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_3e
    if-nez v0, :cond_46

    .line 421
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Landroidx/loader/app/LoaderManagerImpl;->createAndInstallLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;Landroidx/loader/content/Loader;)Landroidx/loader/content/Loader;

    move-result-object v1

    return-object v1

    .line 423
    :cond_46
    sget-boolean v1, Landroidx/loader/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_60

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Re-using existing loader "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_60
    iget-object v1, p0, Landroidx/loader/app/LoaderManagerImpl;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v0, v1, p3}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->setCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    move-result-object v1

    return-object v1

    .line 412
    .end local v0    # "info":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;, "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    :cond_67
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "initLoader must be called on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_6f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called while creating a loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public markForRedelivery()V
    .registers 2

    .line 481
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v0}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->markForRedelivery()V

    .line 482
    return-void
.end method

.method public restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;
    .registers 7
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "TD;>;)",
            "Landroidx/loader/content/Loader<",
            "TD;>;"
        }
    .end annotation

    .line 433
    .local p3, "callback":Landroidx/loader/app/LoaderManager$LoaderCallbacks;, "Landroidx/loader/app/LoaderManager$LoaderCallbacks<TD;>;"
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v0}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->isCreatingLoader()Z

    move-result v0

    if-nez v0, :cond_53

    .line 436
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_4b

    .line 440
    sget-boolean v0, Landroidx/loader/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_38

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restartLoader in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": args="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_38
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl;->mLoaderViewModel:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v0, p1}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->getLoader(I)Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v0

    .line 442
    .local v0, "info":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;, "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    const/4 v1, 0x0

    .line 443
    .local v1, "priorLoader":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    if-eqz v0, :cond_46

    .line 444
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->destroy(Z)Landroidx/loader/content/Loader;

    move-result-object v1

    .line 447
    :cond_46
    invoke-direct {p0, p1, p2, p3, v1}, Landroidx/loader/app/LoaderManagerImpl;->createAndInstallLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;Landroidx/loader/content/Loader;)Landroidx/loader/content/Loader;

    move-result-object v2

    return-object v2

    .line 437
    .end local v0    # "info":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;, "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    .end local v1    # "priorLoader":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    :cond_4b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "restartLoader must be called on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    :cond_53
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called while creating a loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 487
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "LoaderManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    iget-object v1, p0, Landroidx/loader/app/LoaderManagerImpl;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v1, v0}, Landroidx/core/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 491
    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

###### Class androidx.loader.app.LoaderManagerImpl.LoaderInfo (androidx.loader.app.LoaderManagerImpl$LoaderInfo)
.class public Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;
.super Landroidx/lifecycle/MutableLiveData;
.source "LoaderManagerImpl.java"

# interfaces
.implements Landroidx/loader/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/loader/app/LoaderManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoaderInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/MutableLiveData<",
        "TD;>;",
        "Landroidx/loader/content/Loader$OnLoadCompleteListener<",
        "TD;>;"
    }
.end annotation


# instance fields
.field private final mArgs:Landroid/os/Bundle;

.field private final mId:I

.field private mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field private final mLoader:Landroidx/loader/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/content/Loader<",
            "TD;>;"
        }
    .end annotation
.end field

.field private mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/app/LoaderManagerImpl$LoaderObserver<",
            "TD;>;"
        }
    .end annotation
.end field

.field private mPriorLoader:Landroidx/loader/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/content/Loader<",
            "TD;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILandroid/os/Bundle;Landroidx/loader/content/Loader;Landroidx/loader/content/Loader;)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Landroidx/loader/content/Loader<",
            "TD;>;",
            "Landroidx/loader/content/Loader<",
            "TD;>;)V"
        }
    .end annotation

    .line 61
    .local p0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;, "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    .local p3, "loader":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    .local p4, "priorLoader":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    invoke-direct {p0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 62
    iput p1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mId:I

    .line 63
    iput-object p2, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    .line 64
    iput-object p3, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    .line 65
    iput-object p4, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mPriorLoader:Landroidx/loader/content/Loader;

    .line 66
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    invoke-virtual {v0, p1, p0}, Landroidx/loader/content/Loader;->registerListener(ILandroidx/loader/content/Loader$OnLoadCompleteListener;)V

    .line 67
    return-void
.end method


# virtual methods
.method destroy(Z)Landroidx/loader/content/Loader;
    .registers 4
    .param p1, "reset"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroidx/loader/content/Loader<",
            "TD;>;"
        }
    .end annotation

    .line 149
    .local p0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;, "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    sget-boolean v0, Landroidx/loader/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Destroying: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_1c
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    invoke-virtual {v0}, Landroidx/loader/content/Loader;->cancelLoad()Z

    .line 152
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    invoke-virtual {v0}, Landroidx/loader/content/Loader;->abandon()V

    .line 154
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    .line 155
    .local v0, "observer":Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;, "Landroidx/loader/app/LoaderManagerImpl$LoaderObserver<TD;>;"
    if-eqz v0, :cond_32

    .line 156
    invoke-virtual {p0, v0}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 157
    if-eqz p1, :cond_32

    .line 158
    invoke-virtual {v0}, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->reset()V

    .line 162
    :cond_32
    iget-object v1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    invoke-virtual {v1, p0}, Landroidx/loader/content/Loader;->unregisterListener(Landroidx/loader/content/Loader$OnLoadCompleteListener;)V

    .line 163
    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->hasDeliveredData()Z

    move-result v1

    if-eqz v1, :cond_41

    :cond_3f
    if-eqz p1, :cond_49

    .line 164
    :cond_41
    iget-object v1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    invoke-virtual {v1}, Landroidx/loader/content/Loader;->reset()V

    .line 165
    iget-object v1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mPriorLoader:Landroidx/loader/content/Loader;

    return-object v1

    .line 167
    :cond_49
    iget-object v1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    return-object v1
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 212
    .local p0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;, "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 213
    const-string v0, " mArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 214
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoader="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 215
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroidx/loader/content/Loader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    if-eqz v0, :cond_63

    .line 217
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCallbacks="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 218
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 220
    :cond_63
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->getLoader()Landroidx/loader/content/Loader;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/loader/content/Loader;->dataToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->hasActiveObservers()Z

    move-result v0

    .line 222
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 224
    return-void
.end method

.method getLoader()Landroidx/loader/content/Loader;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/loader/content/Loader<",
            "TD;>;"
        }
    .end annotation

    .line 71
    .local p0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;, "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    return-object v0
.end method

.method isCallbackWaitingForData()Z
    .registers 3

    .line 125
    .local p0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;, "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    invoke-virtual {p0}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->hasActiveObservers()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 127
    return v1

    .line 129
    :cond_8
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    invoke-virtual {v0}, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->hasDeliveredData()Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method markForRedelivery()V
    .registers 3

    .line 111
    .local p0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;, "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 112
    .local v0, "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    iget-object v1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    .line 113
    .local v1, "observer":Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;, "Landroidx/loader/app/LoaderManagerImpl$LoaderObserver<TD;>;"
    if-eqz v0, :cond_e

    if-eqz v1, :cond_e

    .line 118
    invoke-super {p0, v1}, Landroidx/lifecycle/MutableLiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 119
    invoke-virtual {p0, v0, v1}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 121
    :cond_e
    return-void
.end method

.method protected onActive()V
    .registers 3

    .line 76
    .local p0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;, "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    sget-boolean v0, Landroidx/loader/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Starting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_1c
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    invoke-virtual {v0}, Landroidx/loader/content/Loader;->startLoading()V

    .line 78
    return-void
.end method

.method protected onInactive()V
    .registers 3

    .line 82
    .local p0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;, "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    sget-boolean v0, Landroidx/loader/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Stopping: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_1c
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    invoke-virtual {v0}, Landroidx/loader/content/Loader;->stopLoading()V

    .line 84
    return-void
.end method

.method public onLoadComplete(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "TD;>;TD;)V"
        }
    .end annotation

    .line 172
    .local p0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;, "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    .local p1, "loader":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    .local p2, "data":Ljava/lang/Object;, "TD;"
    sget-boolean v0, Landroidx/loader/app/LoaderManagerImpl;->DEBUG:Z

    const-string v1, "LoaderManager"

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadComplete: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_1c
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_2a

    .line 174
    invoke-virtual {p0, p2}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->setValue(Ljava/lang/Object;)V

    goto :goto_36

    .line 179
    :cond_2a
    sget-boolean v0, Landroidx/loader/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_33

    .line 180
    const-string v0, "onLoadComplete was incorrectly called on a background thread"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_33
    invoke-virtual {p0, p2}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->postValue(Ljava/lang/Object;)V

    .line 185
    :goto_36
    return-void
.end method

.method public removeObserver(Landroidx/lifecycle/Observer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Observer<",
            "-TD;>;)V"
        }
    .end annotation

    .line 134
    .local p0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;, "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    .local p1, "observer":Landroidx/lifecycle/Observer;, "Landroidx/lifecycle/Observer<-TD;>;"
    invoke-super {p0, p1}, Landroidx/lifecycle/MutableLiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 137
    iput-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    .line 138
    return-void
.end method

.method setCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;
    .registers 5
    .param p1, "owner"    # Landroidx/lifecycle/LifecycleOwner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "TD;>;)",
            "Landroidx/loader/content/Loader<",
            "TD;>;"
        }
    .end annotation

    .line 98
    .local p0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;, "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    .local p2, "callback":Landroidx/loader/app/LoaderManager$LoaderCallbacks;, "Landroidx/loader/app/LoaderManager$LoaderCallbacks<TD;>;"
    new-instance v0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    iget-object v1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    invoke-direct {v0, v1, p2}, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;-><init>(Landroidx/loader/content/Loader;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)V

    .line 100
    .local v0, "observer":Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;, "Landroidx/loader/app/LoaderManagerImpl$LoaderObserver<TD;>;"
    invoke-virtual {p0, p1, v0}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 102
    iget-object v1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    if-eqz v1, :cond_13

    .line 103
    iget-object v1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    invoke-virtual {p0, v1}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 105
    :cond_13
    iput-object p1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 106
    iput-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    .line 107
    iget-object v1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    return-object v1
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 189
    .local p0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;, "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    .local p1, "value":Ljava/lang/Object;, "TD;"
    invoke-super {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 191
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mPriorLoader:Landroidx/loader/content/Loader;

    if-eqz v0, :cond_f

    .line 192
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mPriorLoader:Landroidx/loader/content/Loader;

    invoke-virtual {v0}, Landroidx/loader/content/Loader;->reset()V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mPriorLoader:Landroidx/loader/content/Loader;

    .line 195
    :cond_f
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 199
    .local p0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;, "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<TD;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 200
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "LoaderInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget v1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget-object v1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    invoke-static {v1, v0}, Landroidx/core/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 206
    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

###### Class androidx.loader.app.LoaderManagerImpl.LoaderObserver (androidx.loader.app.LoaderManagerImpl$LoaderObserver)
.class Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;
.super Ljava/lang/Object;
.source "LoaderManagerImpl.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/loader/app/LoaderManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoaderObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "TD;>;"
    }
.end annotation


# instance fields
.field private final mCallback:Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "TD;>;"
        }
    .end annotation
.end field

.field private mDeliveredData:Z

.field private final mLoader:Landroidx/loader/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/content/Loader<",
            "TD;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/loader/content/Loader;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "TD;>;",
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "TD;>;)V"
        }
    .end annotation

    .line 239
    .local p0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;, "Landroidx/loader/app/LoaderManagerImpl$LoaderObserver<TD;>;"
    .local p1, "loader":Landroidx/loader/content/Loader;, "Landroidx/loader/content/Loader<TD;>;"
    .local p2, "callback":Landroidx/loader/app/LoaderManager$LoaderCallbacks;, "Landroidx/loader/app/LoaderManager$LoaderCallbacks<TD;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mDeliveredData:Z

    .line 240
    iput-object p1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mLoader:Landroidx/loader/content/Loader;

    .line 241
    iput-object p2, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mCallback:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    .line 242
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 272
    .local p0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;, "Landroidx/loader/app/LoaderManagerImpl$LoaderObserver<TD;>;"
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDeliveredData="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mDeliveredData:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 274
    return-void
.end method

.method hasDeliveredData()Z
    .registers 2

    .line 255
    .local p0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;, "Landroidx/loader/app/LoaderManagerImpl$LoaderObserver<TD;>;"
    iget-boolean v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mDeliveredData:Z

    return v0
.end method

.method public onChanged(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 246
    .local p0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;, "Landroidx/loader/app/LoaderManagerImpl$LoaderObserver<TD;>;"
    .local p1, "data":Ljava/lang/Object;, "TD;"
    sget-boolean v0, Landroidx/loader/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2e

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  onLoadFinished in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mLoader:Landroidx/loader/content/Loader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mLoader:Landroidx/loader/content/Loader;

    .line 248
    invoke-virtual {v1, p1}, Landroidx/loader/content/Loader;->dataToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_2e
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mCallback:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    iget-object v1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mLoader:Landroidx/loader/content/Loader;

    invoke-interface {v0, v1, p1}, Landroidx/loader/app/LoaderManager$LoaderCallbacks;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mDeliveredData:Z

    .line 252
    return-void
.end method

.method reset()V
    .registers 3

    .line 260
    .local p0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;, "Landroidx/loader/app/LoaderManagerImpl$LoaderObserver<TD;>;"
    iget-boolean v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mDeliveredData:Z

    if-eqz v0, :cond_29

    .line 261
    sget-boolean v0, Landroidx/loader/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Resetting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mLoader:Landroidx/loader/content/Loader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_22
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mCallback:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    iget-object v1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mLoader:Landroidx/loader/content/Loader;

    invoke-interface {v0, v1}, Landroidx/loader/app/LoaderManager$LoaderCallbacks;->onLoaderReset(Landroidx/loader/content/Loader;)V

    .line 264
    :cond_29
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 268
    .local p0, "this":Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;, "Landroidx/loader/app/LoaderManagerImpl$LoaderObserver<TD;>;"
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mCallback:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class androidx.loader.app.LoaderManagerImpl.LoaderViewModel (androidx.loader.app.LoaderManagerImpl$LoaderViewModel)
.class Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "LoaderManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/loader/app/LoaderManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoaderViewModel"
.end annotation


# static fields
.field private static final FACTORY:Landroidx/lifecycle/ViewModelProvider$Factory;


# instance fields
.field private mCreatingLoader:Z

.field private mLoaders:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 281
    new-instance v0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel$1;

    invoke-direct {v0}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel$1;-><init>()V

    sput-object v0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->FACTORY:Landroidx/lifecycle/ViewModelProvider$Factory;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 280
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 295
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    .line 296
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mCreatingLoader:Z

    return-void
.end method

.method static getInstance(Landroidx/lifecycle/ViewModelStore;)Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;
    .registers 3
    .param p0, "viewModelStore"    # Landroidx/lifecycle/ViewModelStore;

    .line 292
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    sget-object v1, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->FACTORY:Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 354
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    if-lez v0, :cond_57

    .line 355
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "innerPrefix":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_24
    iget-object v2, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v2}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v2

    if-ge v1, v2, :cond_57

    .line 358
    iget-object v2, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v2, v1}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    .line 359
    .local v2, "info":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v3, v1}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 360
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v2, v0, p2, p3, p4}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 357
    .end local v2    # "info":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 364
    .end local v0    # "innerPrefix":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_57
    return-void
.end method

.method finishCreatingLoader()V
    .registers 2

    .line 307
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mCreatingLoader:Z

    .line 308
    return-void
.end method

.method getLoader(I)Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;
    .registers 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroidx/loader/app/LoaderManagerImpl$LoaderInfo<",
            "TD;>;"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    return-object v0
.end method

.method hasRunningLoaders()Z
    .registers 5

    .line 324
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    .line 325
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_7
    if-ge v1, v0, :cond_1c

    .line 326
    iget-object v2, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v2, v1}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    .line 327
    .local v2, "info":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;
    invoke-virtual {v2}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->isCallbackWaitingForData()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 328
    const/4 v3, 0x1

    return v3

    .line 325
    .end local v2    # "info":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 331
    .end local v1    # "index":I
    :cond_1c
    const/4 v1, 0x0

    return v1
.end method

.method isCreatingLoader()Z
    .registers 2

    .line 303
    iget-boolean v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mCreatingLoader:Z

    return v0
.end method

.method markForRedelivery()V
    .registers 4

    .line 335
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    .line 336
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 337
    iget-object v2, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v2, v1}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    .line 338
    .local v2, "info":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;
    invoke-virtual {v2}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->markForRedelivery()V

    .line 336
    .end local v2    # "info":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 340
    .end local v1    # "index":I
    :cond_17
    return-void
.end method

.method protected onCleared()V
    .registers 5

    .line 344
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 345
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    .line 346
    .local v0, "size":I
    const/4 v1, 0x0

    .line 350
    .local v1, "index":I
    :goto_a
    iget-object v2, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    .line 346
    if-ge v1, v0, :cond_1b

    .line 347
    invoke-virtual {v2, v1}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    .line 348
    .local v2, "info":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->destroy(Z)Landroidx/loader/content/Loader;

    .line 346
    .end local v2    # "info":Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 350
    .end local v1    # "index":I
    :cond_1b
    invoke-virtual {v2}, Landroidx/collection/SparseArrayCompat;->clear()V

    .line 351
    return-void
.end method

.method putLoader(ILandroidx/loader/app/LoaderManagerImpl$LoaderInfo;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "info"    # Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    .line 311
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 312
    return-void
.end method

.method removeLoader(I)V
    .registers 3
    .param p1, "id"    # I

    .line 320
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->remove(I)V

    .line 321
    return-void
.end method

.method startCreatingLoader()V
    .registers 2

    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mCreatingLoader:Z

    .line 300
    return-void
.end method

###### Class androidx.loader.app.LoaderManagerImpl.LoaderViewModel.AnonymousClass1 (androidx.loader.app.LoaderManagerImpl$LoaderViewModel$1)
.class final Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel$1;
.super Ljava/lang/Object;
.source "LoaderManagerImpl.java"

# interfaces
.implements Landroidx/lifecycle/ViewModelProvider$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 286
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-direct {v0}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;-><init>()V

    return-object v0
.end method

.method public synthetic create(Ljava/lang/Class;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;
    .registers 3

    invoke-static {p0, p1, p2}, Landroidx/lifecycle/ViewModelProvider$Factory$-CC;->$default$create(Landroidx/lifecycle/ViewModelProvider$Factory;Ljava/lang/Class;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    return-object p1
.end method
