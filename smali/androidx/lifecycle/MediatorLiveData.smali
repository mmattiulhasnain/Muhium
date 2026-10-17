###### Class androidx.lifecycle.MediatorLiveData (androidx.lifecycle.MediatorLiveData)
.class public Landroidx/lifecycle/MediatorLiveData;
.super Landroidx/lifecycle/MutableLiveData;
.source "MediatorLiveData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/MediatorLiveData$Source;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/MutableLiveData<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mSources:Landroidx/arch/core/internal/SafeIterableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/arch/core/internal/SafeIterableMap<",
            "Landroidx/lifecycle/LiveData<",
            "*>;",
            "Landroidx/lifecycle/MediatorLiveData$Source<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 76
    .local p0, "this":Landroidx/lifecycle/MediatorLiveData;, "Landroidx/lifecycle/MediatorLiveData<TT;>;"
    invoke-direct {p0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 70
    new-instance v0, Landroidx/arch/core/internal/SafeIterableMap;

    invoke-direct {v0}, Landroidx/arch/core/internal/SafeIterableMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/MediatorLiveData;->mSources:Landroidx/arch/core/internal/SafeIterableMap;

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 85
    .local p0, "this":Landroidx/lifecycle/MediatorLiveData;, "Landroidx/lifecycle/MediatorLiveData<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    .line 70
    new-instance v0, Landroidx/arch/core/internal/SafeIterableMap;

    invoke-direct {v0}, Landroidx/arch/core/internal/SafeIterableMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/MediatorLiveData;->mSources:Landroidx/arch/core/internal/SafeIterableMap;

    .line 86
    return-void
.end method


# virtual methods
.method public addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData<",
            "TS;>;",
            "Landroidx/lifecycle/Observer<",
            "-TS;>;)V"
        }
    .end annotation

    .line 102
    .local p0, "this":Landroidx/lifecycle/MediatorLiveData;, "Landroidx/lifecycle/MediatorLiveData<TT;>;"
    .local p1, "source":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<TS;>;"
    .local p2, "onChanged":Landroidx/lifecycle/Observer;, "Landroidx/lifecycle/Observer<-TS;>;"
    if-eqz p1, :cond_2b

    .line 105
    new-instance v0, Landroidx/lifecycle/MediatorLiveData$Source;

    invoke-direct {v0, p1, p2}, Landroidx/lifecycle/MediatorLiveData$Source;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 106
    .local v0, "e":Landroidx/lifecycle/MediatorLiveData$Source;, "Landroidx/lifecycle/MediatorLiveData$Source<TS;>;"
    iget-object v1, p0, Landroidx/lifecycle/MediatorLiveData;->mSources:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v1, p1, v0}, Landroidx/arch/core/internal/SafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/MediatorLiveData$Source;

    .line 107
    .local v1, "existing":Landroidx/lifecycle/MediatorLiveData$Source;, "Landroidx/lifecycle/MediatorLiveData$Source<*>;"
    if-eqz v1, :cond_1e

    iget-object v2, v1, Landroidx/lifecycle/MediatorLiveData$Source;->mObserver:Landroidx/lifecycle/Observer;

    if-ne v2, p2, :cond_16

    goto :goto_1e

    .line 108
    :cond_16
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "This source was already added with the different observer"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 111
    :cond_1e
    :goto_1e
    if-eqz v1, :cond_21

    .line 112
    return-void

    .line 114
    :cond_21
    invoke-virtual {p0}, Landroidx/lifecycle/MediatorLiveData;->hasActiveObservers()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 115
    invoke-virtual {v0}, Landroidx/lifecycle/MediatorLiveData$Source;->plug()V

    .line 117
    :cond_2a
    return-void

    .line 103
    .end local v0    # "e":Landroidx/lifecycle/MediatorLiveData$Source;, "Landroidx/lifecycle/MediatorLiveData$Source<TS;>;"
    .end local v1    # "existing":Landroidx/lifecycle/MediatorLiveData$Source;, "Landroidx/lifecycle/MediatorLiveData$Source<*>;"
    :cond_2b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onActive()V
    .registers 4

    .line 136
    .local p0, "this":Landroidx/lifecycle/MediatorLiveData;, "Landroidx/lifecycle/MediatorLiveData<TT;>;"
    iget-object v0, p0, Landroidx/lifecycle/MediatorLiveData;->mSources:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v0}, Landroidx/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 137
    .local v1, "source":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroidx/lifecycle/LiveData<*>;Landroidx/lifecycle/MediatorLiveData$Source<*>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/MediatorLiveData$Source;

    invoke-virtual {v2}, Landroidx/lifecycle/MediatorLiveData$Source;->plug()V

    .line 138
    .end local v1    # "source":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroidx/lifecycle/LiveData<*>;Landroidx/lifecycle/MediatorLiveData$Source<*>;>;"
    goto :goto_6

    .line 139
    :cond_1c
    return-void
.end method

.method protected onInactive()V
    .registers 4

    .line 144
    .local p0, "this":Landroidx/lifecycle/MediatorLiveData;, "Landroidx/lifecycle/MediatorLiveData<TT;>;"
    iget-object v0, p0, Landroidx/lifecycle/MediatorLiveData;->mSources:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v0}, Landroidx/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 145
    .local v1, "source":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroidx/lifecycle/LiveData<*>;Landroidx/lifecycle/MediatorLiveData$Source<*>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/MediatorLiveData$Source;

    invoke-virtual {v2}, Landroidx/lifecycle/MediatorLiveData$Source;->unplug()V

    .line 146
    .end local v1    # "source":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroidx/lifecycle/LiveData<*>;Landroidx/lifecycle/MediatorLiveData$Source<*>;>;"
    goto :goto_6

    .line 147
    :cond_1c
    return-void
.end method

.method public removeSource(Landroidx/lifecycle/LiveData;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData<",
            "TS;>;)V"
        }
    .end annotation

    .line 127
    .local p0, "this":Landroidx/lifecycle/MediatorLiveData;, "Landroidx/lifecycle/MediatorLiveData<TT;>;"
    .local p1, "toRemote":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<TS;>;"
    iget-object v0, p0, Landroidx/lifecycle/MediatorLiveData;->mSources:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v0, p1}, Landroidx/arch/core/internal/SafeIterableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MediatorLiveData$Source;

    .line 128
    .local v0, "source":Landroidx/lifecycle/MediatorLiveData$Source;, "Landroidx/lifecycle/MediatorLiveData$Source<*>;"
    if-eqz v0, :cond_d

    .line 129
    invoke-virtual {v0}, Landroidx/lifecycle/MediatorLiveData$Source;->unplug()V

    .line 131
    :cond_d
    return-void
.end method

###### Class androidx.lifecycle.MediatorLiveData.Source (androidx.lifecycle.MediatorLiveData$Source)
.class Landroidx/lifecycle/MediatorLiveData$Source;
.super Ljava/lang/Object;
.source "MediatorLiveData.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/MediatorLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Source"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final mLiveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "TV;>;"
        }
    .end annotation
.end field

.field final mObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "-TV;>;"
        }
    .end annotation
.end field

.field mVersion:I


# direct methods
.method constructor <init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "TV;>;",
            "Landroidx/lifecycle/Observer<",
            "-TV;>;)V"
        }
    .end annotation

    .line 154
    .local p0, "this":Landroidx/lifecycle/MediatorLiveData$Source;, "Landroidx/lifecycle/MediatorLiveData$Source<TV;>;"
    .local p1, "liveData":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<TV;>;"
    .local p2, "observer":Landroidx/lifecycle/Observer;, "Landroidx/lifecycle/Observer<-TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const/4 v0, -0x1

    iput v0, p0, Landroidx/lifecycle/MediatorLiveData$Source;->mVersion:I

    .line 155
    iput-object p1, p0, Landroidx/lifecycle/MediatorLiveData$Source;->mLiveData:Landroidx/lifecycle/LiveData;

    .line 156
    iput-object p2, p0, Landroidx/lifecycle/MediatorLiveData$Source;->mObserver:Landroidx/lifecycle/Observer;

    .line 157
    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 169
    .local p0, "this":Landroidx/lifecycle/MediatorLiveData$Source;, "Landroidx/lifecycle/MediatorLiveData$Source<TV;>;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    iget v0, p0, Landroidx/lifecycle/MediatorLiveData$Source;->mVersion:I

    iget-object v1, p0, Landroidx/lifecycle/MediatorLiveData$Source;->mLiveData:Landroidx/lifecycle/LiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getVersion()I

    move-result v1

    if-eq v0, v1, :cond_17

    .line 170
    iget-object v0, p0, Landroidx/lifecycle/MediatorLiveData$Source;->mLiveData:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getVersion()I

    move-result v0

    iput v0, p0, Landroidx/lifecycle/MediatorLiveData$Source;->mVersion:I

    .line 171
    iget-object v0, p0, Landroidx/lifecycle/MediatorLiveData$Source;->mObserver:Landroidx/lifecycle/Observer;

    invoke-interface {v0, p1}, Landroidx/lifecycle/Observer;->onChanged(Ljava/lang/Object;)V

    .line 173
    :cond_17
    return-void
.end method

.method plug()V
    .registers 2

    .line 160
    .local p0, "this":Landroidx/lifecycle/MediatorLiveData$Source;, "Landroidx/lifecycle/MediatorLiveData$Source<TV;>;"
    iget-object v0, p0, Landroidx/lifecycle/MediatorLiveData$Source;->mLiveData:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 161
    return-void
.end method

.method unplug()V
    .registers 2

    .line 164
    .local p0, "this":Landroidx/lifecycle/MediatorLiveData$Source;, "Landroidx/lifecycle/MediatorLiveData$Source<TV;>;"
    iget-object v0, p0, Landroidx/lifecycle/MediatorLiveData$Source;->mLiveData:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 165
    return-void
.end method
