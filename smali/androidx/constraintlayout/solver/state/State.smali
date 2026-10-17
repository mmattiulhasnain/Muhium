###### Class androidx.constraintlayout.solver.state.State (androidx.constraintlayout.solver.state.State)
.class public Landroidx/constraintlayout/solver/state/State;
.super Ljava/lang/Object;
.source "State.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/state/State$Chain;,
        Landroidx/constraintlayout/solver/state/State$Helper;,
        Landroidx/constraintlayout/solver/state/State$Direction;,
        Landroidx/constraintlayout/solver/state/State$Constraint;
    }
.end annotation


# static fields
.field static final CONSTRAINT_RATIO:I = 0x2

.field static final CONSTRAINT_SPREAD:I = 0x0

.field static final CONSTRAINT_WRAP:I = 0x1

.field public static final PARENT:Ljava/lang/Integer;

.field static final UNKNOWN:I = -0x1


# instance fields
.field protected mHelperReferences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Landroidx/constraintlayout/solver/state/HelperReference;",
            ">;"
        }
    .end annotation
.end field

.field public final mParent:Landroidx/constraintlayout/solver/state/ConstraintReference;

.field protected mReferences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Landroidx/constraintlayout/solver/state/Reference;",
            ">;"
        }
    .end annotation
.end field

.field private numHelpers:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/solver/state/State;->PARENT:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mReferences:Ljava/util/HashMap;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mHelperReferences:Ljava/util/HashMap;

    .line 50
    new-instance v0, Landroidx/constraintlayout/solver/state/ConstraintReference;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/solver/state/ConstraintReference;-><init>(Landroidx/constraintlayout/solver/state/State;)V

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mParent:Landroidx/constraintlayout/solver/state/ConstraintReference;

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/state/State;->numHelpers:I

    .line 96
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mReferences:Ljava/util/HashMap;

    sget-object v1, Landroidx/constraintlayout/solver/state/State;->PARENT:Ljava/lang/Integer;

    iget-object v2, p0, Landroidx/constraintlayout/solver/state/State;->mParent:Landroidx/constraintlayout/solver/state/ConstraintReference;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void
.end method

.method private createHelperKey()Ljava/lang/String;
    .registers 4

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "__HELPER_KEY_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/solver/state/State;->numHelpers:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/constraintlayout/solver/state/State;->numHelpers:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "__"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public apply(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V
    .registers 11
    .param p1, "container"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 265
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->removeAllChildren()V

    .line 266
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mParent:Landroidx/constraintlayout/solver/state/ConstraintReference;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/state/ConstraintReference;->getWidth()Landroidx/constraintlayout/solver/state/Dimension;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroidx/constraintlayout/solver/state/Dimension;->apply(Landroidx/constraintlayout/solver/state/State;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V

    .line 267
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mParent:Landroidx/constraintlayout/solver/state/ConstraintReference;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/state/ConstraintReference;->getHeight()Landroidx/constraintlayout/solver/state/Dimension;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Landroidx/constraintlayout/solver/state/Dimension;->apply(Landroidx/constraintlayout/solver/state/State;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V

    .line 268
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mHelperReferences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 269
    .local v1, "key":Ljava/lang/Object;
    iget-object v2, p0, Landroidx/constraintlayout/solver/state/State;->mHelperReferences:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/state/HelperReference;

    .line 270
    .local v2, "reference":Landroidx/constraintlayout/solver/state/HelperReference;
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/state/HelperReference;->getHelperWidget()Landroidx/constraintlayout/solver/widgets/HelperWidget;

    move-result-object v3

    .line 271
    .local v3, "helperWidget":Landroidx/constraintlayout/solver/widgets/HelperWidget;
    if-eqz v3, :cond_4a

    .line 272
    iget-object v4, p0, Landroidx/constraintlayout/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/state/Reference;

    .line 273
    .local v4, "constraintReference":Landroidx/constraintlayout/solver/state/Reference;
    if-nez v4, :cond_47

    .line 274
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    move-result-object v4

    .line 276
    :cond_47
    invoke-interface {v4, v3}, Landroidx/constraintlayout/solver/state/Reference;->setConstraintWidget(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 278
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "reference":Landroidx/constraintlayout/solver/state/HelperReference;
    .end local v3    # "helperWidget":Landroidx/constraintlayout/solver/widgets/HelperWidget;
    .end local v4    # "constraintReference":Landroidx/constraintlayout/solver/state/Reference;
    :cond_4a
    goto :goto_21

    .line 279
    :cond_4b
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_55
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_82

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 280
    .restart local v1    # "key":Ljava/lang/Object;
    iget-object v2, p0, Landroidx/constraintlayout/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/state/Reference;

    .line 281
    .local v2, "reference":Landroidx/constraintlayout/solver/state/Reference;
    iget-object v3, p0, Landroidx/constraintlayout/solver/state/State;->mParent:Landroidx/constraintlayout/solver/state/ConstraintReference;

    if-eq v2, v3, :cond_7e

    .line 282
    invoke-interface {v2}, Landroidx/constraintlayout/solver/state/Reference;->getConstraintWidget()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v3

    .line 283
    .local v3, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setParent(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 284
    instance-of v4, v2, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;

    if-eqz v4, :cond_7a

    .line 286
    invoke-interface {v2}, Landroidx/constraintlayout/solver/state/Reference;->apply()V

    .line 288
    :cond_7a
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 289
    .end local v3    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    goto :goto_81

    .line 290
    :cond_7e
    invoke-interface {v2, p1}, Landroidx/constraintlayout/solver/state/Reference;->setConstraintWidget(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 292
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "reference":Landroidx/constraintlayout/solver/state/Reference;
    :goto_81
    goto :goto_55

    .line 293
    :cond_82
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mHelperReferences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_cc

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 294
    .restart local v1    # "key":Ljava/lang/Object;
    iget-object v2, p0, Landroidx/constraintlayout/solver/state/State;->mHelperReferences:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/state/HelperReference;

    .line 295
    .local v2, "reference":Landroidx/constraintlayout/solver/state/HelperReference;
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/state/HelperReference;->getHelperWidget()Landroidx/constraintlayout/solver/widgets/HelperWidget;

    move-result-object v3

    .line 296
    .local v3, "helperWidget":Landroidx/constraintlayout/solver/widgets/HelperWidget;
    if-eqz v3, :cond_cb

    .line 297
    iget-object v4, v2, Landroidx/constraintlayout/solver/state/HelperReference;->mReferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_aa
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 298
    .local v5, "keyRef":Ljava/lang/Object;
    iget-object v6, p0, Landroidx/constraintlayout/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/solver/state/Reference;

    .line 299
    .local v6, "constraintReference":Landroidx/constraintlayout/solver/state/Reference;
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/state/HelperReference;->getHelperWidget()Landroidx/constraintlayout/solver/widgets/HelperWidget;

    move-result-object v7

    invoke-interface {v6}, Landroidx/constraintlayout/solver/state/Reference;->getConstraintWidget()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/widgets/HelperWidget;->add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 300
    .end local v5    # "keyRef":Ljava/lang/Object;
    .end local v6    # "constraintReference":Landroidx/constraintlayout/solver/state/Reference;
    goto :goto_aa

    .line 301
    :cond_c8
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/state/HelperReference;->apply()V

    .line 303
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "reference":Landroidx/constraintlayout/solver/state/HelperReference;
    .end local v3    # "helperWidget":Landroidx/constraintlayout/solver/widgets/HelperWidget;
    :cond_cb
    goto :goto_8c

    .line 304
    :cond_cc
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ec

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 305
    .restart local v1    # "key":Ljava/lang/Object;
    iget-object v2, p0, Landroidx/constraintlayout/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/state/Reference;

    .line 306
    .local v2, "reference":Landroidx/constraintlayout/solver/state/Reference;
    invoke-interface {v2}, Landroidx/constraintlayout/solver/state/Reference;->apply()V

    .line 307
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "reference":Landroidx/constraintlayout/solver/state/Reference;
    goto :goto_d6

    .line 308
    :cond_ec
    return-void
.end method

.method public barrier(Ljava/lang/Object;Landroidx/constraintlayout/solver/state/State$Direction;)Landroidx/constraintlayout/solver/state/helpers/BarrierReference;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "direction"    # Landroidx/constraintlayout/solver/state/State$Direction;

    .line 223
    sget-object v0, Landroidx/constraintlayout/solver/state/State$Helper;->BARRIER:Landroidx/constraintlayout/solver/state/State$Helper;

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/solver/state/State;->helper(Ljava/lang/Object;Landroidx/constraintlayout/solver/state/State$Helper;)Landroidx/constraintlayout/solver/state/HelperReference;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/state/helpers/BarrierReference;

    .line 224
    .local v0, "reference":Landroidx/constraintlayout/solver/state/helpers/BarrierReference;
    invoke-virtual {v0, p2}, Landroidx/constraintlayout/solver/state/helpers/BarrierReference;->setBarrierDirection(Landroidx/constraintlayout/solver/state/State$Direction;)V

    .line 225
    return-object v0
.end method

.method public varargs centerHorizontally([Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/helpers/AlignHorizontallyReference;
    .registers 4
    .param p1, "references"    # [Ljava/lang/Object;

    .line 241
    const/4 v0, 0x0

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Helper;->ALIGN_HORIZONTALLY:Landroidx/constraintlayout/solver/state/State$Helper;

    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/solver/state/State;->helper(Ljava/lang/Object;Landroidx/constraintlayout/solver/state/State$Helper;)Landroidx/constraintlayout/solver/state/HelperReference;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/state/helpers/AlignHorizontallyReference;

    .line 242
    .local v0, "reference":Landroidx/constraintlayout/solver/state/helpers/AlignHorizontallyReference;
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/state/helpers/AlignHorizontallyReference;->add([Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/HelperReference;

    .line 243
    return-object v0
.end method

.method public varargs centerVertically([Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;
    .registers 4
    .param p1, "references"    # [Ljava/lang/Object;

    .line 247
    const/4 v0, 0x0

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Helper;->ALIGN_VERTICALLY:Landroidx/constraintlayout/solver/state/State$Helper;

    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/solver/state/State;->helper(Ljava/lang/Object;Landroidx/constraintlayout/solver/state/State$Helper;)Landroidx/constraintlayout/solver/state/HelperReference;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;

    .line 248
    .local v0, "reference":Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;->add([Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/HelperReference;

    .line 249
    return-object v0
.end method

.method public constraints(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/state/Reference;

    .line 155
    .local v0, "reference":Landroidx/constraintlayout/solver/state/Reference;
    if-nez v0, :cond_16

    .line 156
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/state/State;->createConstraintReference(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    move-result-object v0

    .line 157
    iget-object v1, p0, Landroidx/constraintlayout/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-interface {v0, p1}, Landroidx/constraintlayout/solver/state/Reference;->setKey(Ljava/lang/Object;)V

    .line 160
    :cond_16
    instance-of v1, v0, Landroidx/constraintlayout/solver/state/ConstraintReference;

    if-eqz v1, :cond_1e

    .line 161
    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/solver/state/ConstraintReference;

    return-object v1

    .line 163
    :cond_1e
    const/4 v1, 0x0

    return-object v1
.end method

.method public convertDimension(Ljava/lang/Object;)I
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 112
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_c

    .line 113
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    return v0

    .line 115
    :cond_c
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_18

    .line 116
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 118
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public createConstraintReference(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 128
    new-instance v0, Landroidx/constraintlayout/solver/state/ConstraintReference;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/solver/state/ConstraintReference;-><init>(Landroidx/constraintlayout/solver/state/State;)V

    return-object v0
.end method

.method public directMapping()V
    .registers 4

    .line 253
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 254
    .local v1, "key":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    move-result-object v2

    .line 255
    .local v2, "reference":Landroidx/constraintlayout/solver/state/ConstraintReference;
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/solver/state/ConstraintReference;->setView(Ljava/lang/Object;)V

    .line 256
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "reference":Landroidx/constraintlayout/solver/state/ConstraintReference;
    goto :goto_a

    .line 257
    :cond_1c
    return-void
.end method

.method public guideline(Ljava/lang/Object;I)Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "orientation"    # I

    .line 211
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/state/Reference;

    .line 212
    .local v0, "reference":Landroidx/constraintlayout/solver/state/Reference;
    if-nez v0, :cond_1b

    .line 213
    new-instance v1, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;-><init>(Landroidx/constraintlayout/solver/state/State;)V

    .line 214
    .local v1, "guidelineReference":Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;
    invoke-virtual {v1, p2}, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->setOrientation(I)V

    .line 215
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->setKey(Ljava/lang/Object;)V

    .line 216
    iget-object v2, p0, Landroidx/constraintlayout/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    move-object v0, v1

    .line 219
    .end local v1    # "guidelineReference":Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;
    :cond_1b
    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;

    return-object v1
.end method

.method public height(Landroidx/constraintlayout/solver/state/Dimension;)Landroidx/constraintlayout/solver/state/State;
    .registers 3
    .param p1, "dimension"    # Landroidx/constraintlayout/solver/state/Dimension;

    .line 136
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/state/State;->setHeight(Landroidx/constraintlayout/solver/state/Dimension;)Landroidx/constraintlayout/solver/state/State;

    move-result-object v0

    return-object v0
.end method

.method public helper(Ljava/lang/Object;Landroidx/constraintlayout/solver/state/State$Helper;)Landroidx/constraintlayout/solver/state/HelperReference;
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "type"    # Landroidx/constraintlayout/solver/state/State$Helper;

    .line 172
    if-nez p1, :cond_6

    .line 173
    invoke-direct {p0}, Landroidx/constraintlayout/solver/state/State;->createHelperKey()Ljava/lang/String;

    move-result-object p1

    .line 175
    :cond_6
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mHelperReferences:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/state/HelperReference;

    .line 176
    .local v0, "reference":Landroidx/constraintlayout/solver/state/HelperReference;
    if-nez v0, :cond_49

    .line 177
    sget-object v1, Landroidx/constraintlayout/solver/state/State$1;->$SwitchMap$androidx$constraintlayout$solver$state$State$Helper:[I

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/state/State$Helper;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_4a

    .line 194
    new-instance v1, Landroidx/constraintlayout/solver/state/HelperReference;

    invoke-direct {v1, p0, p2}, Landroidx/constraintlayout/solver/state/HelperReference;-><init>(Landroidx/constraintlayout/solver/state/State;Landroidx/constraintlayout/solver/state/State$Helper;)V

    move-object v0, v1

    .end local v0    # "reference":Landroidx/constraintlayout/solver/state/HelperReference;
    .local v1, "reference":Landroidx/constraintlayout/solver/state/HelperReference;
    goto :goto_44

    .line 191
    .end local v1    # "reference":Landroidx/constraintlayout/solver/state/HelperReference;
    .restart local v0    # "reference":Landroidx/constraintlayout/solver/state/HelperReference;
    :pswitch_22
    new-instance v1, Landroidx/constraintlayout/solver/state/helpers/BarrierReference;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/solver/state/helpers/BarrierReference;-><init>(Landroidx/constraintlayout/solver/state/State;)V

    .line 192
    .end local v0    # "reference":Landroidx/constraintlayout/solver/state/HelperReference;
    .restart local v1    # "reference":Landroidx/constraintlayout/solver/state/HelperReference;
    move-object v0, v1

    goto :goto_44

    .line 188
    .end local v1    # "reference":Landroidx/constraintlayout/solver/state/HelperReference;
    .restart local v0    # "reference":Landroidx/constraintlayout/solver/state/HelperReference;
    :pswitch_29
    new-instance v1, Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;-><init>(Landroidx/constraintlayout/solver/state/State;)V

    .line 189
    .end local v0    # "reference":Landroidx/constraintlayout/solver/state/HelperReference;
    .restart local v1    # "reference":Landroidx/constraintlayout/solver/state/HelperReference;
    move-object v0, v1

    goto :goto_44

    .line 185
    .end local v1    # "reference":Landroidx/constraintlayout/solver/state/HelperReference;
    .restart local v0    # "reference":Landroidx/constraintlayout/solver/state/HelperReference;
    :pswitch_30
    new-instance v1, Landroidx/constraintlayout/solver/state/helpers/AlignHorizontallyReference;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/solver/state/helpers/AlignHorizontallyReference;-><init>(Landroidx/constraintlayout/solver/state/State;)V

    .line 186
    .end local v0    # "reference":Landroidx/constraintlayout/solver/state/HelperReference;
    .restart local v1    # "reference":Landroidx/constraintlayout/solver/state/HelperReference;
    move-object v0, v1

    goto :goto_44

    .line 182
    .end local v1    # "reference":Landroidx/constraintlayout/solver/state/HelperReference;
    .restart local v0    # "reference":Landroidx/constraintlayout/solver/state/HelperReference;
    :pswitch_37
    new-instance v1, Landroidx/constraintlayout/solver/state/helpers/VerticalChainReference;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/solver/state/helpers/VerticalChainReference;-><init>(Landroidx/constraintlayout/solver/state/State;)V

    .line 183
    .end local v0    # "reference":Landroidx/constraintlayout/solver/state/HelperReference;
    .restart local v1    # "reference":Landroidx/constraintlayout/solver/state/HelperReference;
    move-object v0, v1

    goto :goto_44

    .line 179
    .end local v1    # "reference":Landroidx/constraintlayout/solver/state/HelperReference;
    .restart local v0    # "reference":Landroidx/constraintlayout/solver/state/HelperReference;
    :pswitch_3e
    new-instance v1, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;-><init>(Landroidx/constraintlayout/solver/state/State;)V

    .line 180
    .end local v0    # "reference":Landroidx/constraintlayout/solver/state/HelperReference;
    .restart local v1    # "reference":Landroidx/constraintlayout/solver/state/HelperReference;
    move-object v0, v1

    .line 197
    .end local v1    # "reference":Landroidx/constraintlayout/solver/state/HelperReference;
    .restart local v0    # "reference":Landroidx/constraintlayout/solver/state/HelperReference;
    :goto_44
    iget-object v1, p0, Landroidx/constraintlayout/solver/state/State;->mHelperReferences:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_49
    return-object v0

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_37
        :pswitch_30
        :pswitch_29
        :pswitch_22
    .end packed-switch
.end method

.method public varargs horizontalChain([Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;
    .registers 4
    .param p1, "references"    # [Ljava/lang/Object;

    .line 235
    const/4 v0, 0x0

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Helper;->HORIZONTAL_CHAIN:Landroidx/constraintlayout/solver/state/State$Helper;

    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/solver/state/State;->helper(Ljava/lang/Object;Landroidx/constraintlayout/solver/state/State$Helper;)Landroidx/constraintlayout/solver/state/HelperReference;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;

    .line 236
    .local v0, "reference":Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;->add([Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/HelperReference;

    .line 237
    return-object v0
.end method

.method public horizontalGuideline(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 203
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/solver/state/State;->guideline(Ljava/lang/Object;I)Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;

    move-result-object v0

    return-object v0
.end method

.method public map(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "view"    # Ljava/lang/Object;

    .line 260
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    move-result-object v0

    .line 261
    .local v0, "reference":Landroidx/constraintlayout/solver/state/ConstraintReference;
    invoke-virtual {v0, p2}, Landroidx/constraintlayout/solver/state/ConstraintReference;->setView(Ljava/lang/Object;)V

    .line 262
    return-void
.end method

.method reference(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/Reference;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/state/Reference;

    return-object v0
.end method

.method public reset()V
    .registers 2

    .line 100
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mHelperReferences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 101
    return-void
.end method

.method public setHeight(Landroidx/constraintlayout/solver/state/Dimension;)Landroidx/constraintlayout/solver/state/State;
    .registers 3
    .param p1, "dimension"    # Landroidx/constraintlayout/solver/state/Dimension;

    .line 145
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mParent:Landroidx/constraintlayout/solver/state/ConstraintReference;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/state/ConstraintReference;->setHeight(Landroidx/constraintlayout/solver/state/Dimension;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    .line 146
    return-object p0
.end method

.method public setWidth(Landroidx/constraintlayout/solver/state/Dimension;)Landroidx/constraintlayout/solver/state/State;
    .registers 3
    .param p1, "dimension"    # Landroidx/constraintlayout/solver/state/Dimension;

    .line 140
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mParent:Landroidx/constraintlayout/solver/state/ConstraintReference;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/state/ConstraintReference;->setWidth(Landroidx/constraintlayout/solver/state/Dimension;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    .line 141
    return-object p0
.end method

.method public varargs verticalChain([Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/helpers/VerticalChainReference;
    .registers 4
    .param p1, "references"    # [Ljava/lang/Object;

    .line 229
    const/4 v0, 0x0

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Helper;->VERTICAL_CHAIN:Landroidx/constraintlayout/solver/state/State$Helper;

    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/solver/state/State;->helper(Ljava/lang/Object;Landroidx/constraintlayout/solver/state/State$Helper;)Landroidx/constraintlayout/solver/state/HelperReference;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/state/helpers/VerticalChainReference;

    .line 230
    .local v0, "reference":Landroidx/constraintlayout/solver/state/helpers/VerticalChainReference;
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/state/helpers/VerticalChainReference;->add([Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/HelperReference;

    .line 231
    return-object v0
.end method

.method public verticalGuideline(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 207
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/solver/state/State;->guideline(Ljava/lang/Object;I)Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;

    move-result-object v0

    return-object v0
.end method

.method public width(Landroidx/constraintlayout/solver/state/Dimension;)Landroidx/constraintlayout/solver/state/State;
    .registers 3
    .param p1, "dimension"    # Landroidx/constraintlayout/solver/state/Dimension;

    .line 132
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/state/State;->setWidth(Landroidx/constraintlayout/solver/state/Dimension;)Landroidx/constraintlayout/solver/state/State;

    move-result-object v0

    return-object v0
.end method

###### Class androidx.constraintlayout.solver.state.State.AnonymousClass1 (androidx.constraintlayout.solver.state.State$1)
.class synthetic Landroidx/constraintlayout/solver/state/State$1;
.super Ljava/lang/Object;
.source "State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/state/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$androidx$constraintlayout$solver$state$State$Helper:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 177
    invoke-static {}, Landroidx/constraintlayout/solver/state/State$Helper;->values()[Landroidx/constraintlayout/solver/state/State$Helper;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroidx/constraintlayout/solver/state/State$1;->$SwitchMap$androidx$constraintlayout$solver$state$State$Helper:[I

    :try_start_9
    sget-object v0, Landroidx/constraintlayout/solver/state/State$1;->$SwitchMap$androidx$constraintlayout$solver$state$State$Helper:[I

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Helper;->HORIZONTAL_CHAIN:Landroidx/constraintlayout/solver/state/State$Helper;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/state/State$Helper;->ordinal()I

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
    sget-object v0, Landroidx/constraintlayout/solver/state/State$1;->$SwitchMap$androidx$constraintlayout$solver$state$State$Helper:[I

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Helper;->VERTICAL_CHAIN:Landroidx/constraintlayout/solver/state/State$Helper;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/state/State$Helper;->ordinal()I

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
    sget-object v0, Landroidx/constraintlayout/solver/state/State$1;->$SwitchMap$androidx$constraintlayout$solver$state$State$Helper:[I

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Helper;->ALIGN_HORIZONTALLY:Landroidx/constraintlayout/solver/state/State$Helper;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/state/State$Helper;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v0

    :goto_30
    :try_start_30
    sget-object v0, Landroidx/constraintlayout/solver/state/State$1;->$SwitchMap$androidx$constraintlayout$solver$state$State$Helper:[I

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Helper;->ALIGN_VERTICALLY:Landroidx/constraintlayout/solver/state/State$Helper;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/state/State$Helper;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_3b} :catch_3c

    goto :goto_3d

    :catch_3c
    move-exception v0

    :goto_3d
    :try_start_3d
    sget-object v0, Landroidx/constraintlayout/solver/state/State$1;->$SwitchMap$androidx$constraintlayout$solver$state$State$Helper:[I

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Helper;->BARRIER:Landroidx/constraintlayout/solver/state/State$Helper;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/state/State$Helper;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_48} :catch_49

    goto :goto_4a

    :catch_49
    move-exception v0

    :goto_4a
    return-void
.end method

###### Class androidx.constraintlayout.solver.state.State.Chain (androidx.constraintlayout.solver.state.State$Chain)
.class public final enum Landroidx/constraintlayout/solver/state/State$Chain;
.super Ljava/lang/Enum;
.source "State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/state/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Chain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/solver/state/State$Chain;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/constraintlayout/solver/state/State$Chain;

.field public static final enum PACKED:Landroidx/constraintlayout/solver/state/State$Chain;

.field public static final enum SPREAD:Landroidx/constraintlayout/solver/state/State$Chain;

.field public static final enum SPREAD_INSIDE:Landroidx/constraintlayout/solver/state/State$Chain;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 90
    new-instance v0, Landroidx/constraintlayout/solver/state/State$Chain;

    const-string v1, "SPREAD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/solver/state/State$Chain;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/state/State$Chain;->SPREAD:Landroidx/constraintlayout/solver/state/State$Chain;

    .line 91
    new-instance v0, Landroidx/constraintlayout/solver/state/State$Chain;

    const-string v1, "SPREAD_INSIDE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroidx/constraintlayout/solver/state/State$Chain;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/state/State$Chain;->SPREAD_INSIDE:Landroidx/constraintlayout/solver/state/State$Chain;

    .line 92
    new-instance v0, Landroidx/constraintlayout/solver/state/State$Chain;

    const-string v1, "PACKED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroidx/constraintlayout/solver/state/State$Chain;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/state/State$Chain;->PACKED:Landroidx/constraintlayout/solver/state/State$Chain;

    .line 89
    const/4 v0, 0x3

    new-array v0, v0, [Landroidx/constraintlayout/solver/state/State$Chain;

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Chain;->SPREAD:Landroidx/constraintlayout/solver/state/State$Chain;

    aput-object v1, v0, v2

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Chain;->SPREAD_INSIDE:Landroidx/constraintlayout/solver/state/State$Chain;

    aput-object v1, v0, v3

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Chain;->PACKED:Landroidx/constraintlayout/solver/state/State$Chain;

    aput-object v1, v0, v4

    sput-object v0, Landroidx/constraintlayout/solver/state/State$Chain;->$VALUES:[Landroidx/constraintlayout/solver/state/State$Chain;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/solver/state/State$Chain;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 89
    const-class v0, Landroidx/constraintlayout/solver/state/State$Chain;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/state/State$Chain;

    return-object v0
.end method

.method public static values()[Landroidx/constraintlayout/solver/state/State$Chain;
    .registers 1

    .line 89
    sget-object v0, Landroidx/constraintlayout/solver/state/State$Chain;->$VALUES:[Landroidx/constraintlayout/solver/state/State$Chain;

    invoke-virtual {v0}, [Landroidx/constraintlayout/solver/state/State$Chain;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/state/State$Chain;

    return-object v0
.end method

###### Class androidx.constraintlayout.solver.state.State.Constraint (androidx.constraintlayout.solver.state.State$Constraint)
.class public final enum Landroidx/constraintlayout/solver/state/State$Constraint;
.super Ljava/lang/Enum;
.source "State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/state/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Constraint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/solver/state/State$Constraint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/constraintlayout/solver/state/State$Constraint;

.field public static final enum BASELINE_TO_BASELINE:Landroidx/constraintlayout/solver/state/State$Constraint;

.field public static final enum BOTTOM_TO_BOTTOM:Landroidx/constraintlayout/solver/state/State$Constraint;

.field public static final enum BOTTOM_TO_TOP:Landroidx/constraintlayout/solver/state/State$Constraint;

.field public static final enum CENTER_HORIZONTALLY:Landroidx/constraintlayout/solver/state/State$Constraint;

.field public static final enum CENTER_VERTICALLY:Landroidx/constraintlayout/solver/state/State$Constraint;

.field public static final enum END_TO_END:Landroidx/constraintlayout/solver/state/State$Constraint;

.field public static final enum END_TO_START:Landroidx/constraintlayout/solver/state/State$Constraint;

.field public static final enum LEFT_TO_LEFT:Landroidx/constraintlayout/solver/state/State$Constraint;

.field public static final enum LEFT_TO_RIGHT:Landroidx/constraintlayout/solver/state/State$Constraint;

.field public static final enum RIGHT_TO_LEFT:Landroidx/constraintlayout/solver/state/State$Constraint;

.field public static final enum RIGHT_TO_RIGHT:Landroidx/constraintlayout/solver/state/State$Constraint;

.field public static final enum START_TO_END:Landroidx/constraintlayout/solver/state/State$Constraint;

.field public static final enum START_TO_START:Landroidx/constraintlayout/solver/state/State$Constraint;

.field public static final enum TOP_TO_BOTTOM:Landroidx/constraintlayout/solver/state/State$Constraint;

.field public static final enum TOP_TO_TOP:Landroidx/constraintlayout/solver/state/State$Constraint;


# direct methods
.method static constructor <clinit>()V
    .registers 17

    .line 53
    new-instance v0, Landroidx/constraintlayout/solver/state/State$Constraint;

    const-string v1, "LEFT_TO_LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/solver/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->LEFT_TO_LEFT:Landroidx/constraintlayout/solver/state/State$Constraint;

    .line 54
    new-instance v0, Landroidx/constraintlayout/solver/state/State$Constraint;

    const-string v1, "LEFT_TO_RIGHT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroidx/constraintlayout/solver/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->LEFT_TO_RIGHT:Landroidx/constraintlayout/solver/state/State$Constraint;

    .line 55
    new-instance v0, Landroidx/constraintlayout/solver/state/State$Constraint;

    const-string v1, "RIGHT_TO_LEFT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroidx/constraintlayout/solver/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->RIGHT_TO_LEFT:Landroidx/constraintlayout/solver/state/State$Constraint;

    .line 56
    new-instance v0, Landroidx/constraintlayout/solver/state/State$Constraint;

    const-string v1, "RIGHT_TO_RIGHT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Landroidx/constraintlayout/solver/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->RIGHT_TO_RIGHT:Landroidx/constraintlayout/solver/state/State$Constraint;

    .line 57
    new-instance v0, Landroidx/constraintlayout/solver/state/State$Constraint;

    const-string v1, "START_TO_START"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Landroidx/constraintlayout/solver/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->START_TO_START:Landroidx/constraintlayout/solver/state/State$Constraint;

    .line 58
    new-instance v0, Landroidx/constraintlayout/solver/state/State$Constraint;

    const-string v1, "START_TO_END"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Landroidx/constraintlayout/solver/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->START_TO_END:Landroidx/constraintlayout/solver/state/State$Constraint;

    .line 59
    new-instance v0, Landroidx/constraintlayout/solver/state/State$Constraint;

    const-string v1, "END_TO_START"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Landroidx/constraintlayout/solver/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->END_TO_START:Landroidx/constraintlayout/solver/state/State$Constraint;

    .line 60
    new-instance v0, Landroidx/constraintlayout/solver/state/State$Constraint;

    const-string v1, "END_TO_END"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Landroidx/constraintlayout/solver/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->END_TO_END:Landroidx/constraintlayout/solver/state/State$Constraint;

    .line 61
    new-instance v0, Landroidx/constraintlayout/solver/state/State$Constraint;

    const-string v1, "TOP_TO_TOP"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Landroidx/constraintlayout/solver/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->TOP_TO_TOP:Landroidx/constraintlayout/solver/state/State$Constraint;

    .line 62
    new-instance v0, Landroidx/constraintlayout/solver/state/State$Constraint;

    const-string v1, "TOP_TO_BOTTOM"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Landroidx/constraintlayout/solver/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->TOP_TO_BOTTOM:Landroidx/constraintlayout/solver/state/State$Constraint;

    .line 63
    new-instance v0, Landroidx/constraintlayout/solver/state/State$Constraint;

    const-string v1, "BOTTOM_TO_TOP"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Landroidx/constraintlayout/solver/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->BOTTOM_TO_TOP:Landroidx/constraintlayout/solver/state/State$Constraint;

    .line 64
    new-instance v0, Landroidx/constraintlayout/solver/state/State$Constraint;

    const-string v1, "BOTTOM_TO_BOTTOM"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Landroidx/constraintlayout/solver/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->BOTTOM_TO_BOTTOM:Landroidx/constraintlayout/solver/state/State$Constraint;

    .line 65
    new-instance v0, Landroidx/constraintlayout/solver/state/State$Constraint;

    const-string v1, "BASELINE_TO_BASELINE"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Landroidx/constraintlayout/solver/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->BASELINE_TO_BASELINE:Landroidx/constraintlayout/solver/state/State$Constraint;

    .line 66
    new-instance v0, Landroidx/constraintlayout/solver/state/State$Constraint;

    const-string v1, "CENTER_HORIZONTALLY"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Landroidx/constraintlayout/solver/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->CENTER_HORIZONTALLY:Landroidx/constraintlayout/solver/state/State$Constraint;

    .line 67
    new-instance v0, Landroidx/constraintlayout/solver/state/State$Constraint;

    const-string v1, "CENTER_VERTICALLY"

    move/from16 v16, v2

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/solver/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->CENTER_VERTICALLY:Landroidx/constraintlayout/solver/state/State$Constraint;

    .line 52
    const/16 v0, 0xf

    new-array v0, v0, [Landroidx/constraintlayout/solver/state/State$Constraint;

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Constraint;->LEFT_TO_LEFT:Landroidx/constraintlayout/solver/state/State$Constraint;

    aput-object v1, v0, v16

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Constraint;->LEFT_TO_RIGHT:Landroidx/constraintlayout/solver/state/State$Constraint;

    aput-object v1, v0, v3

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Constraint;->RIGHT_TO_LEFT:Landroidx/constraintlayout/solver/state/State$Constraint;

    aput-object v1, v0, v4

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Constraint;->RIGHT_TO_RIGHT:Landroidx/constraintlayout/solver/state/State$Constraint;

    aput-object v1, v0, v5

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Constraint;->START_TO_START:Landroidx/constraintlayout/solver/state/State$Constraint;

    aput-object v1, v0, v6

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Constraint;->START_TO_END:Landroidx/constraintlayout/solver/state/State$Constraint;

    aput-object v1, v0, v7

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Constraint;->END_TO_START:Landroidx/constraintlayout/solver/state/State$Constraint;

    aput-object v1, v0, v8

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Constraint;->END_TO_END:Landroidx/constraintlayout/solver/state/State$Constraint;

    aput-object v1, v0, v9

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Constraint;->TOP_TO_TOP:Landroidx/constraintlayout/solver/state/State$Constraint;

    aput-object v1, v0, v10

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Constraint;->TOP_TO_BOTTOM:Landroidx/constraintlayout/solver/state/State$Constraint;

    aput-object v1, v0, v11

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Constraint;->BOTTOM_TO_TOP:Landroidx/constraintlayout/solver/state/State$Constraint;

    aput-object v1, v0, v12

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Constraint;->BOTTOM_TO_BOTTOM:Landroidx/constraintlayout/solver/state/State$Constraint;

    aput-object v1, v0, v13

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Constraint;->BASELINE_TO_BASELINE:Landroidx/constraintlayout/solver/state/State$Constraint;

    aput-object v1, v0, v14

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Constraint;->CENTER_HORIZONTALLY:Landroidx/constraintlayout/solver/state/State$Constraint;

    aput-object v1, v0, v15

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Constraint;->CENTER_VERTICALLY:Landroidx/constraintlayout/solver/state/State$Constraint;

    aput-object v1, v0, v2

    sput-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->$VALUES:[Landroidx/constraintlayout/solver/state/State$Constraint;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/solver/state/State$Constraint;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 52
    const-class v0, Landroidx/constraintlayout/solver/state/State$Constraint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/state/State$Constraint;

    return-object v0
.end method

.method public static values()[Landroidx/constraintlayout/solver/state/State$Constraint;
    .registers 1

    .line 52
    sget-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->$VALUES:[Landroidx/constraintlayout/solver/state/State$Constraint;

    invoke-virtual {v0}, [Landroidx/constraintlayout/solver/state/State$Constraint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/state/State$Constraint;

    return-object v0
.end method

###### Class androidx.constraintlayout.solver.state.State.Direction (androidx.constraintlayout.solver.state.State$Direction)
.class public final enum Landroidx/constraintlayout/solver/state/State$Direction;
.super Ljava/lang/Enum;
.source "State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/state/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/solver/state/State$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/constraintlayout/solver/state/State$Direction;

.field public static final enum BOTTOM:Landroidx/constraintlayout/solver/state/State$Direction;

.field public static final enum END:Landroidx/constraintlayout/solver/state/State$Direction;

.field public static final enum LEFT:Landroidx/constraintlayout/solver/state/State$Direction;

.field public static final enum RIGHT:Landroidx/constraintlayout/solver/state/State$Direction;

.field public static final enum START:Landroidx/constraintlayout/solver/state/State$Direction;

.field public static final enum TOP:Landroidx/constraintlayout/solver/state/State$Direction;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 71
    new-instance v0, Landroidx/constraintlayout/solver/state/State$Direction;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/solver/state/State$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/state/State$Direction;->LEFT:Landroidx/constraintlayout/solver/state/State$Direction;

    .line 72
    new-instance v0, Landroidx/constraintlayout/solver/state/State$Direction;

    const-string v1, "RIGHT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroidx/constraintlayout/solver/state/State$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/state/State$Direction;->RIGHT:Landroidx/constraintlayout/solver/state/State$Direction;

    .line 73
    new-instance v0, Landroidx/constraintlayout/solver/state/State$Direction;

    const-string v1, "START"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroidx/constraintlayout/solver/state/State$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/state/State$Direction;->START:Landroidx/constraintlayout/solver/state/State$Direction;

    .line 74
    new-instance v0, Landroidx/constraintlayout/solver/state/State$Direction;

    const-string v1, "END"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Landroidx/constraintlayout/solver/state/State$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/state/State$Direction;->END:Landroidx/constraintlayout/solver/state/State$Direction;

    .line 75
    new-instance v0, Landroidx/constraintlayout/solver/state/State$Direction;

    const-string v1, "TOP"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Landroidx/constraintlayout/solver/state/State$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/state/State$Direction;->TOP:Landroidx/constraintlayout/solver/state/State$Direction;

    .line 76
    new-instance v0, Landroidx/constraintlayout/solver/state/State$Direction;

    const-string v1, "BOTTOM"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Landroidx/constraintlayout/solver/state/State$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/state/State$Direction;->BOTTOM:Landroidx/constraintlayout/solver/state/State$Direction;

    .line 70
    const/4 v0, 0x6

    new-array v0, v0, [Landroidx/constraintlayout/solver/state/State$Direction;

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Direction;->LEFT:Landroidx/constraintlayout/solver/state/State$Direction;

    aput-object v1, v0, v2

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Direction;->RIGHT:Landroidx/constraintlayout/solver/state/State$Direction;

    aput-object v1, v0, v3

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Direction;->START:Landroidx/constraintlayout/solver/state/State$Direction;

    aput-object v1, v0, v4

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Direction;->END:Landroidx/constraintlayout/solver/state/State$Direction;

    aput-object v1, v0, v5

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Direction;->TOP:Landroidx/constraintlayout/solver/state/State$Direction;

    aput-object v1, v0, v6

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Direction;->BOTTOM:Landroidx/constraintlayout/solver/state/State$Direction;

    aput-object v1, v0, v7

    sput-object v0, Landroidx/constraintlayout/solver/state/State$Direction;->$VALUES:[Landroidx/constraintlayout/solver/state/State$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/solver/state/State$Direction;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 70
    const-class v0, Landroidx/constraintlayout/solver/state/State$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/state/State$Direction;

    return-object v0
.end method

.method public static values()[Landroidx/constraintlayout/solver/state/State$Direction;
    .registers 1

    .line 70
    sget-object v0, Landroidx/constraintlayout/solver/state/State$Direction;->$VALUES:[Landroidx/constraintlayout/solver/state/State$Direction;

    invoke-virtual {v0}, [Landroidx/constraintlayout/solver/state/State$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/state/State$Direction;

    return-object v0
.end method

###### Class androidx.constraintlayout.solver.state.State.Helper (androidx.constraintlayout.solver.state.State$Helper)
.class public final enum Landroidx/constraintlayout/solver/state/State$Helper;
.super Ljava/lang/Enum;
.source "State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/state/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Helper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/solver/state/State$Helper;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/constraintlayout/solver/state/State$Helper;

.field public static final enum ALIGN_HORIZONTALLY:Landroidx/constraintlayout/solver/state/State$Helper;

.field public static final enum ALIGN_VERTICALLY:Landroidx/constraintlayout/solver/state/State$Helper;

.field public static final enum BARRIER:Landroidx/constraintlayout/solver/state/State$Helper;

.field public static final enum FLOW:Landroidx/constraintlayout/solver/state/State$Helper;

.field public static final enum HORIZONTAL_CHAIN:Landroidx/constraintlayout/solver/state/State$Helper;

.field public static final enum LAYER:Landroidx/constraintlayout/solver/state/State$Helper;

.field public static final enum VERTICAL_CHAIN:Landroidx/constraintlayout/solver/state/State$Helper;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 80
    new-instance v0, Landroidx/constraintlayout/solver/state/State$Helper;

    const-string v1, "HORIZONTAL_CHAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/solver/state/State$Helper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/state/State$Helper;->HORIZONTAL_CHAIN:Landroidx/constraintlayout/solver/state/State$Helper;

    .line 81
    new-instance v0, Landroidx/constraintlayout/solver/state/State$Helper;

    const-string v1, "VERTICAL_CHAIN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroidx/constraintlayout/solver/state/State$Helper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/state/State$Helper;->VERTICAL_CHAIN:Landroidx/constraintlayout/solver/state/State$Helper;

    .line 82
    new-instance v0, Landroidx/constraintlayout/solver/state/State$Helper;

    const-string v1, "ALIGN_HORIZONTALLY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroidx/constraintlayout/solver/state/State$Helper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/state/State$Helper;->ALIGN_HORIZONTALLY:Landroidx/constraintlayout/solver/state/State$Helper;

    .line 83
    new-instance v0, Landroidx/constraintlayout/solver/state/State$Helper;

    const-string v1, "ALIGN_VERTICALLY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Landroidx/constraintlayout/solver/state/State$Helper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/state/State$Helper;->ALIGN_VERTICALLY:Landroidx/constraintlayout/solver/state/State$Helper;

    .line 84
    new-instance v0, Landroidx/constraintlayout/solver/state/State$Helper;

    const-string v1, "BARRIER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Landroidx/constraintlayout/solver/state/State$Helper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/state/State$Helper;->BARRIER:Landroidx/constraintlayout/solver/state/State$Helper;

    .line 85
    new-instance v0, Landroidx/constraintlayout/solver/state/State$Helper;

    const-string v1, "LAYER"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Landroidx/constraintlayout/solver/state/State$Helper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/state/State$Helper;->LAYER:Landroidx/constraintlayout/solver/state/State$Helper;

    .line 86
    new-instance v0, Landroidx/constraintlayout/solver/state/State$Helper;

    const-string v1, "FLOW"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Landroidx/constraintlayout/solver/state/State$Helper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/state/State$Helper;->FLOW:Landroidx/constraintlayout/solver/state/State$Helper;

    .line 79
    const/4 v0, 0x7

    new-array v0, v0, [Landroidx/constraintlayout/solver/state/State$Helper;

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Helper;->HORIZONTAL_CHAIN:Landroidx/constraintlayout/solver/state/State$Helper;

    aput-object v1, v0, v2

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Helper;->VERTICAL_CHAIN:Landroidx/constraintlayout/solver/state/State$Helper;

    aput-object v1, v0, v3

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Helper;->ALIGN_HORIZONTALLY:Landroidx/constraintlayout/solver/state/State$Helper;

    aput-object v1, v0, v4

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Helper;->ALIGN_VERTICALLY:Landroidx/constraintlayout/solver/state/State$Helper;

    aput-object v1, v0, v5

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Helper;->BARRIER:Landroidx/constraintlayout/solver/state/State$Helper;

    aput-object v1, v0, v6

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Helper;->LAYER:Landroidx/constraintlayout/solver/state/State$Helper;

    aput-object v1, v0, v7

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Helper;->FLOW:Landroidx/constraintlayout/solver/state/State$Helper;

    aput-object v1, v0, v8

    sput-object v0, Landroidx/constraintlayout/solver/state/State$Helper;->$VALUES:[Landroidx/constraintlayout/solver/state/State$Helper;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/solver/state/State$Helper;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 79
    const-class v0, Landroidx/constraintlayout/solver/state/State$Helper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/state/State$Helper;

    return-object v0
.end method

.method public static values()[Landroidx/constraintlayout/solver/state/State$Helper;
    .registers 1

    .line 79
    sget-object v0, Landroidx/constraintlayout/solver/state/State$Helper;->$VALUES:[Landroidx/constraintlayout/solver/state/State$Helper;

    invoke-virtual {v0}, [Landroidx/constraintlayout/solver/state/State$Helper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/state/State$Helper;

    return-object v0
.end method
