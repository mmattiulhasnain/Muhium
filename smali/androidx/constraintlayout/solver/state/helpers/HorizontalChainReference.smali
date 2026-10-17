###### Class androidx.constraintlayout.solver.state.helpers.HorizontalChainReference (androidx.constraintlayout.solver.state.helpers.HorizontalChainReference)
.class public Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;
.super Landroidx/constraintlayout/solver/state/helpers/ChainReference;
.source "HorizontalChainReference.java"


# instance fields
.field private mEndToEnd:Ljava/lang/Object;

.field private mEndToStart:Ljava/lang/Object;

.field private mStartToEnd:Ljava/lang/Object;

.field private mStartToStart:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/state/State;)V
    .registers 3
    .param p1, "state"    # Landroidx/constraintlayout/solver/state/State;

    .line 31
    sget-object v0, Landroidx/constraintlayout/solver/state/State$Helper;->HORIZONTAL_CHAIN:Landroidx/constraintlayout/solver/state/State$Helper;

    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/solver/state/helpers/ChainReference;-><init>(Landroidx/constraintlayout/solver/state/State;Landroidx/constraintlayout/solver/state/State$Helper;)V

    .line 32
    return-void
.end method


# virtual methods
.method public apply()V
    .registers 7

    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "first":Landroidx/constraintlayout/solver/state/ConstraintReference;
    const/4 v1, 0x0

    .line 37
    .local v1, "previous":Landroidx/constraintlayout/solver/state/ConstraintReference;
    iget-object v2, p0, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;->mReferences:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 38
    .local v3, "key":Ljava/lang/Object;
    iget-object v4, p0, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;->mState:Landroidx/constraintlayout/solver/state/State;

    invoke-virtual {v4, v3}, Landroidx/constraintlayout/solver/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    move-result-object v4

    .line 39
    .local v4, "reference":Landroidx/constraintlayout/solver/state/ConstraintReference;
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/state/ConstraintReference;->clearHorizontal()Landroidx/constraintlayout/solver/state/ConstraintReference;

    .line 40
    .end local v3    # "key":Ljava/lang/Object;
    .end local v4    # "reference":Landroidx/constraintlayout/solver/state/ConstraintReference;
    goto :goto_8

    .line 42
    :cond_1c
    iget-object v2, p0, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;->mReferences:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_60

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 43
    .restart local v3    # "key":Ljava/lang/Object;
    iget-object v4, p0, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;->mState:Landroidx/constraintlayout/solver/state/State;

    invoke-virtual {v4, v3}, Landroidx/constraintlayout/solver/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    move-result-object v4

    .line 44
    .restart local v4    # "reference":Landroidx/constraintlayout/solver/state/ConstraintReference;
    if-nez v0, :cond_4e

    .line 45
    move-object v0, v4

    .line 46
    iget-object v5, p0, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;->mStartToStart:Ljava/lang/Object;

    if-eqz v5, :cond_3f

    .line 47
    iget-object v5, p0, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;->mStartToStart:Ljava/lang/Object;

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/solver/state/ConstraintReference;->startToStart(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    goto :goto_4e

    .line 48
    :cond_3f
    iget-object v5, p0, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;->mStartToEnd:Ljava/lang/Object;

    if-eqz v5, :cond_49

    .line 49
    iget-object v5, p0, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;->mStartToEnd:Ljava/lang/Object;

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/solver/state/ConstraintReference;->startToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    goto :goto_4e

    .line 51
    :cond_49
    sget-object v5, Landroidx/constraintlayout/solver/state/State;->PARENT:Ljava/lang/Integer;

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/solver/state/ConstraintReference;->startToStart(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    .line 54
    :cond_4e
    :goto_4e
    if-eqz v1, :cond_5e

    .line 55
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/state/ConstraintReference;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/constraintlayout/solver/state/ConstraintReference;->endToStart(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    .line 56
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/state/ConstraintReference;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/state/ConstraintReference;->startToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    .line 58
    :cond_5e
    move-object v1, v4

    .line 59
    .end local v3    # "key":Ljava/lang/Object;
    .end local v4    # "reference":Landroidx/constraintlayout/solver/state/ConstraintReference;
    goto :goto_22

    .line 61
    :cond_60
    if-eqz v1, :cond_7b

    .line 62
    iget-object v2, p0, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;->mEndToStart:Ljava/lang/Object;

    if-eqz v2, :cond_6c

    .line 63
    iget-object v2, p0, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;->mEndToStart:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/state/ConstraintReference;->endToStart(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    goto :goto_7b

    .line 64
    :cond_6c
    iget-object v2, p0, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;->mEndToEnd:Ljava/lang/Object;

    if-eqz v2, :cond_76

    .line 65
    iget-object v2, p0, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;->mEndToEnd:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/state/ConstraintReference;->endToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    goto :goto_7b

    .line 67
    :cond_76
    sget-object v2, Landroidx/constraintlayout/solver/state/State;->PARENT:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/state/ConstraintReference;->endToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    .line 71
    :cond_7b
    :goto_7b
    if-eqz v0, :cond_8a

    iget v2, p0, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;->mBias:F

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_8a

    .line 72
    iget v2, p0, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;->mBias:F

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/solver/state/ConstraintReference;->horizontalBias(F)Landroidx/constraintlayout/solver/state/ConstraintReference;

    .line 75
    :cond_8a
    sget-object v2, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference$1;->$SwitchMap$androidx$constraintlayout$solver$state$State$Chain:[I

    iget-object v3, p0, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;->mStyle:Landroidx/constraintlayout/solver/state/State$Chain;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/state/State$Chain;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_a8

    goto :goto_a7

    .line 83
    :pswitch_98
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/solver/state/ConstraintReference;->setHorizontalChainStyle(I)V

    goto :goto_a7

    .line 80
    :pswitch_9d
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/solver/state/ConstraintReference;->setHorizontalChainStyle(I)V

    .line 81
    goto :goto_a7

    .line 77
    :pswitch_a2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/solver/state/ConstraintReference;->setHorizontalChainStyle(I)V

    .line 78
    nop

    .line 86
    :goto_a7
    return-void

    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_a2
        :pswitch_9d
        :pswitch_98
    .end packed-switch
.end method

.method public endToEnd(Ljava/lang/Object;)V
    .registers 2
    .param p1, "target"    # Ljava/lang/Object;

    .line 91
    iput-object p1, p0, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;->mEndToEnd:Ljava/lang/Object;

    return-void
.end method

.method public endToStart(Ljava/lang/Object;)V
    .registers 2
    .param p1, "target"    # Ljava/lang/Object;

    .line 90
    iput-object p1, p0, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;->mEndToStart:Ljava/lang/Object;

    return-void
.end method

.method public startToEnd(Ljava/lang/Object;)V
    .registers 2
    .param p1, "target"    # Ljava/lang/Object;

    .line 89
    iput-object p1, p0, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;->mStartToEnd:Ljava/lang/Object;

    return-void
.end method

.method public startToStart(Ljava/lang/Object;)V
    .registers 2
    .param p1, "target"    # Ljava/lang/Object;

    .line 88
    iput-object p1, p0, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;->mStartToStart:Ljava/lang/Object;

    return-void
.end method

###### Class androidx.constraintlayout.solver.state.helpers.HorizontalChainReference.AnonymousClass1 (androidx.constraintlayout.solver.state.helpers.HorizontalChainReference$1)
.class synthetic Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference$1;
.super Ljava/lang/Object;
.source "HorizontalChainReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$androidx$constraintlayout$solver$state$State$Chain:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 75
    invoke-static {}, Landroidx/constraintlayout/solver/state/State$Chain;->values()[Landroidx/constraintlayout/solver/state/State$Chain;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference$1;->$SwitchMap$androidx$constraintlayout$solver$state$State$Chain:[I

    :try_start_9
    sget-object v0, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference$1;->$SwitchMap$androidx$constraintlayout$solver$state$State$Chain:[I

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Chain;->SPREAD:Landroidx/constraintlayout/solver/state/State$Chain;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/state/State$Chain;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v0

    :goto_16
    :try_start_16
    sget-object v0, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference$1;->$SwitchMap$androidx$constraintlayout$solver$state$State$Chain:[I

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Chain;->SPREAD_INSIDE:Landroidx/constraintlayout/solver/state/State$Chain;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/state/State$Chain;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v0

    :goto_23
    :try_start_23
    sget-object v0, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference$1;->$SwitchMap$androidx$constraintlayout$solver$state$State$Chain:[I

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Chain;->PACKED:Landroidx/constraintlayout/solver/state/State$Chain;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/state/State$Chain;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v0

    :goto_30
    return-void
.end method
