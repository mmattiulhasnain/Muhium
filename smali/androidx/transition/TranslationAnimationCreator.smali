###### Class androidx.transition.TranslationAnimationCreator (androidx.transition.TranslationAnimationCreator)
.class Landroidx/transition/TranslationAnimationCreator;
.super Ljava/lang/Object;
.source "TranslationAnimationCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    return-void
.end method

.method static createAnimation(Landroid/view/View;Landroidx/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroidx/transition/Transition;)Landroid/animation/Animator;
    .registers 23
    .param p0, "view"    # Landroid/view/View;
    .param p1, "values"    # Landroidx/transition/TransitionValues;
    .param p2, "viewPosX"    # I
    .param p3, "viewPosY"    # I
    .param p4, "startX"    # F
    .param p5, "startY"    # F
    .param p6, "endX"    # F
    .param p7, "endY"    # F
    .param p8, "interpolator"    # Landroid/animation/TimeInterpolator;
    .param p9, "transition"    # Landroidx/transition/Transition;

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v5

    .line 57
    .local v5, "terminalX":F
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v6

    .line 58
    .local v6, "terminalY":F
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    sget v1, Landroidx/transition/R$id;->transition_position:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    move-object v7, v0

    check-cast v7, [I

    .line 59
    .local v7, "startPosition":[I
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v7, :cond_27

    .line 60
    aget v2, v7, v1

    sub-int/2addr v2, p2

    int-to-float v2, v2

    add-float/2addr v2, v5

    .line 61
    .end local p4    # "startX":F
    .local v2, "startX":F
    aget v3, v7, v0

    sub-int v3, v3, p3

    int-to-float v3, v3

    add-float/2addr v3, v6

    move v8, v2

    move v9, v3

    .end local p5    # "startY":F
    .local v3, "startY":F
    goto :goto_2b

    .line 59
    .end local v2    # "startX":F
    .end local v3    # "startY":F
    .restart local p4    # "startX":F
    .restart local p5    # "startY":F
    :cond_27
    move/from16 v8, p4

    move/from16 v9, p5

    .line 64
    .end local p4    # "startX":F
    .end local p5    # "startY":F
    .local v8, "startX":F
    .local v9, "startY":F
    :goto_2b
    sub-float v2, v8, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int v3, p2, v2

    .line 65
    .local v3, "startPosX":I
    sub-float v2, v9, v6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int v4, p3, v2

    .line 67
    .local v4, "startPosY":I
    invoke-virtual {p0, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 68
    invoke-virtual {p0, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 69
    cmpl-float v2, v8, p6

    if-nez v2, :cond_4b

    cmpl-float v2, v9, p7

    if-nez v2, :cond_4b

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_4b
    const/4 v2, 0x2

    new-array v10, v2, [Landroid/animation/PropertyValuesHolder;

    sget-object v11, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v12, v2, [F

    aput v8, v12, v1

    aput p6, v12, v0

    .line 73
    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    aput-object v11, v10, v1

    sget-object v11, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v2, [F

    aput v9, v2, v1

    aput p7, v2, v0

    .line 74
    invoke-static {v11, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v10, v0

    .line 72
    invoke-static {p0, v10}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 76
    .local v10, "anim":Landroid/animation/ObjectAnimator;
    new-instance v0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;

    iget-object v2, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;-><init>(Landroid/view/View;Landroid/view/View;IIFF)V

    .line 78
    .local v0, "listener":Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;
    move-object/from16 v1, p9

    invoke-virtual {v1, v0}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    .line 79
    invoke-virtual {v10, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 80
    invoke-static {v10, v0}, Landroidx/transition/AnimatorUtils;->addPauseListener(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 81
    move-object/from16 v2, p8

    invoke-virtual {v10, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 82
    return-object v10
.end method

###### Class androidx.transition.TranslationAnimationCreator.TransitionPositionListener (androidx.transition.TranslationAnimationCreator$TransitionPositionListener)
.class Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TranslationAnimationCreator.java"

# interfaces
.implements Landroidx/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/TranslationAnimationCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransitionPositionListener"
.end annotation


# instance fields
.field private final mMovingView:Landroid/view/View;

.field private mPausedX:F

.field private mPausedY:F

.field private final mStartX:I

.field private final mStartY:I

.field private final mTerminalX:F

.field private final mTerminalY:F

.field private mTransitionPosition:[I

.field private final mViewInHierarchy:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/View;IIFF)V
    .registers 10
    .param p1, "movingView"    # Landroid/view/View;
    .param p2, "viewInHierarchy"    # Landroid/view/View;
    .param p3, "startX"    # I
    .param p4, "startY"    # I
    .param p5, "terminalX"    # F
    .param p6, "terminalY"    # F

    .line 99
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 100
    iput-object p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    .line 101
    iput-object p2, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Landroid/view/View;

    .line 102
    iget-object v0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int v0, p3, v0

    iput v0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartX:I

    .line 103
    iget-object v0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int v0, p4, v0

    iput v0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartY:I

    .line 104
    iput p5, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalX:F

    .line 105
    iput p6, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalY:F

    .line 106
    iget-object v0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Landroid/view/View;

    sget v1, Landroidx/transition/R$id;->transition_position:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    iput-object v0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    .line 107
    iget-object v0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    if-eqz v0, :cond_41

    .line 108
    iget-object v0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Landroid/view/View;

    sget v1, Landroidx/transition/R$id;->transition_position:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 110
    :cond_41
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 114
    iget-object v0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    if-nez v0, :cond_9

    .line 115
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    .line 117
    :cond_9
    iget-object v0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    iget v1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartX:I

    int-to-float v1, v1

    iget-object v2, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 118
    iget-object v0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    iget v1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartY:I

    int-to-float v1, v1

    iget-object v2, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 119
    iget-object v0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Landroid/view/View;

    sget v1, Landroidx/transition/R$id;->transition_position:I

    iget-object v2, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 120
    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 124
    iget-object v0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedX:F

    .line 125
    iget-object v0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedY:F

    .line 126
    iget-object v0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 127
    iget-object v0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 128
    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 132
    iget-object v0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 133
    iget-object v0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 134
    return-void
.end method

.method public onTransitionCancel(Landroidx/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroidx/transition/Transition;

    .line 149
    return-void
.end method

.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroidx/transition/Transition;

    .line 142
    iget-object v0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 143
    iget-object v0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 144
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    .line 145
    return-void
.end method

.method public onTransitionPause(Landroidx/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroidx/transition/Transition;

    .line 153
    return-void
.end method

.method public onTransitionResume(Landroidx/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroidx/transition/Transition;

    .line 157
    return-void
.end method

.method public onTransitionStart(Landroidx/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroidx/transition/Transition;

    .line 138
    return-void
.end method
