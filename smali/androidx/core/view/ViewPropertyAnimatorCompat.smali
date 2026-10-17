###### Class androidx.core.view.ViewPropertyAnimatorCompat (androidx.core.view.ViewPropertyAnimatorCompat)
.class public final Landroidx/core/view/ViewPropertyAnimatorCompat;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/ViewPropertyAnimatorCompat$Api16Impl;,
        Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;,
        Landroidx/core/view/ViewPropertyAnimatorCompat$Api18Impl;,
        Landroidx/core/view/ViewPropertyAnimatorCompat$Api21Impl;,
        Landroidx/core/view/ViewPropertyAnimatorCompat$Api19Impl;
    }
.end annotation


# static fields
.field static final LISTENER_TAG_ID:I = 0x7e000000


# instance fields
.field mEndAction:Ljava/lang/Runnable;

.field mOldLayerType:I

.field mStartAction:Ljava/lang/Runnable;

.field private final mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    .line 39
    iput-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    .line 46
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    .line 47
    return-void
.end method

.method static synthetic lambda$setUpdateListener$0(Landroidx/core/view/ViewPropertyAnimatorUpdateListener;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 3
    .param p0, "listener"    # Landroidx/core/view/ViewPropertyAnimatorUpdateListener;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 830
    invoke-interface {p0, p1}, Landroidx/core/view/ViewPropertyAnimatorUpdateListener;->onAnimationUpdate(Landroid/view/View;)V

    return-void
.end method

.method private setListenerInternal(Landroid/view/View;Landroidx/core/view/ViewPropertyAnimatorListener;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "listener"    # Landroidx/core/view/ViewPropertyAnimatorListener;

    .line 790
    if-eqz p2, :cond_f

    .line 791
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroidx/core/view/ViewPropertyAnimatorCompat$1;

    invoke-direct {v1, p0, p2, p1}, Landroidx/core/view/ViewPropertyAnimatorCompat$1;-><init>(Landroidx/core/view/ViewPropertyAnimatorCompat;Landroidx/core/view/ViewPropertyAnimatorListener;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_17

    .line 808
    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 810
    :goto_17
    return-void
.end method


# virtual methods
.method public alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .registers 4
    .param p1, "value"    # F

    .line 148
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_12

    .line 149
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 151
    :cond_12
    return-object p0
.end method

.method public alphaBy(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .registers 4
    .param p1, "value"    # F

    .line 164
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_12

    .line 165
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alphaBy(F)Landroid/view/ViewPropertyAnimator;

    .line 167
    :cond_12
    return-object p0
.end method

.method public cancel()V
    .registers 3

    .line 493
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_12

    .line 494
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 496
    :cond_12
    return-void
.end method

.method public getDuration()J
    .registers 5

    .line 252
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_14

    .line 253
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->getDuration()J

    move-result-wide v2

    return-wide v2

    .line 255
    :cond_14
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .registers 4

    .line 284
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_15

    .line 285
    nop

    .line 286
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 287
    .local v0, "animator":Landroid/view/ViewPropertyAnimator;
    invoke-static {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat$Api18Impl;->getInterpolator(Landroid/view/ViewPropertyAnimator;)Landroid/view/animation/Interpolator;

    move-result-object v2

    return-object v2

    .line 290
    .end local v0    # "animator":Landroid/view/ViewPropertyAnimator;
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStartDelay()J
    .registers 5

    .line 321
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_14

    .line 322
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->getStartDelay()J

    move-result-wide v2

    return-wide v2

    .line 324
    :cond_14
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public rotation(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .registers 4
    .param p1, "value"    # F

    .line 338
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_12

    .line 339
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    .line 341
    :cond_12
    return-object p0
.end method

.method public rotationBy(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .registers 4
    .param p1, "value"    # F

    .line 354
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_12

    .line 355
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotationBy(F)Landroid/view/ViewPropertyAnimator;

    .line 357
    :cond_12
    return-object p0
.end method

.method public rotationX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .registers 4
    .param p1, "value"    # F

    .line 370
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_12

    .line 371
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotationX(F)Landroid/view/ViewPropertyAnimator;

    .line 373
    :cond_12
    return-object p0
.end method

.method public rotationXBy(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .registers 4
    .param p1, "value"    # F

    .line 386
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_12

    .line 387
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotationXBy(F)Landroid/view/ViewPropertyAnimator;

    .line 389
    :cond_12
    return-object p0
.end method

.method public rotationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .registers 4
    .param p1, "value"    # F

    .line 402
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_12

    .line 403
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotationY(F)Landroid/view/ViewPropertyAnimator;

    .line 405
    :cond_12
    return-object p0
.end method

.method public rotationYBy(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .registers 4
    .param p1, "value"    # F

    .line 418
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_12

    .line 419
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotationYBy(F)Landroid/view/ViewPropertyAnimator;

    .line 421
    :cond_12
    return-object p0
.end method

.method public scaleX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .registers 4
    .param p1, "value"    # F

    .line 434
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_12

    .line 435
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 437
    :cond_12
    return-object p0
.end method

.method public scaleXBy(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .registers 4
    .param p1, "value"    # F

    .line 450
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_12

    .line 451
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleXBy(F)Landroid/view/ViewPropertyAnimator;

    .line 453
    :cond_12
    return-object p0
.end method

.method public scaleY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .registers 4
    .param p1, "value"    # F

    .line 466
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_12

    .line 467
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 469
    :cond_12
    return-object p0
.end method

.method public scaleYBy(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .registers 4
    .param p1, "value"    # F

    .line 482
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_12

    .line 483
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleYBy(F)Landroid/view/ViewPropertyAnimator;

    .line 485
    :cond_12
    return-object p0
.end method

.method public setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .registers 5
    .param p1, "value"    # J

    .line 132
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_12

    .line 133
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 135
    :cond_12
    return-object p0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .registers 4
    .param p1, "value"    # Landroid/view/animation/Interpolator;

    .line 270
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_12

    .line 271
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 273
    :cond_12
    return-object p0
.end method

.method public setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .registers 4
    .param p1, "listener"    # Landroidx/core/view/ViewPropertyAnimatorListener;

    .line 778
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_f

    .line 779
    nop

    .line 780
    invoke-direct {p0, v1, p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListenerInternal(Landroid/view/View;Landroidx/core/view/ViewPropertyAnimatorListener;)V

    .line 786
    :cond_f
    return-object p0
.end method

.method public setStartDelay(J)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .registers 5
    .param p1, "value"    # J

    .line 305
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_12

    .line 306
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 308
    :cond_12
    return-object p0
.end method

.method public setUpdateListener(Landroidx/core/view/ViewPropertyAnimatorUpdateListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .registers 5
    .param p1, "listener"    # Landroidx/core/view/ViewPropertyAnimatorUpdateListener;

    .line 826
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_1c

    .line 827
    nop

    .line 828
    const/4 v0, 0x0

    .line 829
    .local v0, "wrapped":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    if-eqz p1, :cond_15

    .line 830
    new-instance v2, Landroidx/core/view/ViewPropertyAnimatorCompat$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat$$ExternalSyntheticLambda0;-><init>(Landroidx/core/view/ViewPropertyAnimatorUpdateListener;Landroid/view/View;)V

    move-object v0, v2

    .line 832
    :cond_15
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 833
    .local v2, "animator":Landroid/view/ViewPropertyAnimator;
    invoke-static {v2, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat$Api19Impl;->setUpdateListener(Landroid/view/ViewPropertyAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    .line 836
    .end local v0    # "wrapped":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .end local v2    # "animator":Landroid/view/ViewPropertyAnimator;
    :cond_1c
    return-object p0
.end method

.method public start()V
    .registers 3

    .line 687
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_12

    .line 688
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 690
    :cond_12
    return-void
.end method

.method public translationX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .registers 4
    .param p1, "value"    # F

    .line 180
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_12

    .line 181
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 183
    :cond_12
    return-object p0
.end method

.method public translationXBy(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .registers 4
    .param p1, "value"    # F

    .line 572
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_12

    .line 573
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    .line 575
    :cond_12
    return-object p0
.end method

.method public translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .registers 4
    .param p1, "value"    # F

    .line 196
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_12

    .line 197
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 199
    :cond_12
    return-object p0
.end method

.method public translationYBy(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .registers 4
    .param p1, "value"    # F

    .line 588
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_12

    .line 589
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    .line 591
    :cond_12
    return-object p0
.end method

.method public translationZ(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .registers 4
    .param p1, "value"    # F

    .line 627
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_13

    .line 628
    nop

    .line 629
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 630
    .local v0, "animator":Landroid/view/ViewPropertyAnimator;
    invoke-static {v0, p1}, Landroidx/core/view/ViewPropertyAnimatorCompat$Api21Impl;->translationZ(Landroid/view/ViewPropertyAnimator;F)Landroid/view/ViewPropertyAnimator;

    .line 633
    .end local v0    # "animator":Landroid/view/ViewPropertyAnimator;
    :cond_13
    return-object p0
.end method

.method public translationZBy(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .registers 4
    .param p1, "value"    # F

    .line 606
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_13

    .line 607
    nop

    .line 608
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 609
    .local v0, "animator":Landroid/view/ViewPropertyAnimator;
    invoke-static {v0, p1}, Landroidx/core/view/ViewPropertyAnimatorCompat$Api21Impl;->translationZBy(Landroid/view/ViewPropertyAnimator;F)Landroid/view/ViewPropertyAnimator;

    .line 612
    .end local v0    # "animator":Landroid/view/ViewPropertyAnimator;
    :cond_13
    return-object p0
.end method

.method public withEndAction(Ljava/lang/Runnable;)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .registers 4
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 230
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_14

    .line 231
    nop

    .line 232
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 233
    .local v0, "animator":Landroid/view/ViewPropertyAnimator;
    invoke-static {v0, p1}, Landroidx/core/view/ViewPropertyAnimatorCompat$Api16Impl;->withEndAction(Landroid/view/ViewPropertyAnimator;Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 234
    .end local v0    # "animator":Landroid/view/ViewPropertyAnimator;
    nop

    .line 239
    :cond_14
    return-object p0
.end method

.method public withLayer()Landroidx/core/view/ViewPropertyAnimatorCompat;
    .registers 3

    .line 724
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_14

    .line 725
    nop

    .line 726
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 727
    .local v0, "animator":Landroid/view/ViewPropertyAnimator;
    invoke-static {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat$Api16Impl;->withLayer(Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 728
    .end local v0    # "animator":Landroid/view/ViewPropertyAnimator;
    nop

    .line 733
    :cond_14
    return-object p0
.end method

.method public withStartAction(Ljava/lang/Runnable;)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .registers 4
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 754
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_14

    .line 755
    nop

    .line 756
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 757
    .local v0, "animator":Landroid/view/ViewPropertyAnimator;
    invoke-static {v0, p1}, Landroidx/core/view/ViewPropertyAnimatorCompat$Api16Impl;->withStartAction(Landroid/view/ViewPropertyAnimator;Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 758
    .end local v0    # "animator":Landroid/view/ViewPropertyAnimator;
    nop

    .line 763
    :cond_14
    return-object p0
.end method

.method public x(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .registers 4
    .param p1, "value"    # F

    .line 508
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_12

    .line 509
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    .line 511
    :cond_12
    return-object p0
.end method

.method public xBy(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .registers 4
    .param p1, "value"    # F

    .line 524
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_12

    .line 525
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->xBy(F)Landroid/view/ViewPropertyAnimator;

    .line 527
    :cond_12
    return-object p0
.end method

.method public y(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .registers 4
    .param p1, "value"    # F

    .line 540
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_12

    .line 541
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    .line 543
    :cond_12
    return-object p0
.end method

.method public yBy(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .registers 4
    .param p1, "value"    # F

    .line 556
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_12

    .line 557
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->yBy(F)Landroid/view/ViewPropertyAnimator;

    .line 559
    :cond_12
    return-object p0
.end method

.method public z(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .registers 4
    .param p1, "value"    # F

    .line 648
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_13

    .line 649
    nop

    .line 650
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 651
    .local v0, "animator":Landroid/view/ViewPropertyAnimator;
    invoke-static {v0, p1}, Landroidx/core/view/ViewPropertyAnimatorCompat$Api21Impl;->z(Landroid/view/ViewPropertyAnimator;F)Landroid/view/ViewPropertyAnimator;

    .line 654
    .end local v0    # "animator":Landroid/view/ViewPropertyAnimator;
    :cond_13
    return-object p0
.end method

.method public zBy(F)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .registers 4
    .param p1, "value"    # F

    .line 669
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_13

    .line 670
    nop

    .line 671
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 672
    .local v0, "animator":Landroid/view/ViewPropertyAnimator;
    invoke-static {v0, p1}, Landroidx/core/view/ViewPropertyAnimatorCompat$Api21Impl;->zBy(Landroid/view/ViewPropertyAnimator;F)Landroid/view/ViewPropertyAnimator;

    .line 675
    .end local v0    # "animator":Landroid/view/ViewPropertyAnimator;
    :cond_13
    return-object p0
.end method

###### Class androidx.core.view.ViewPropertyAnimatorCompat.AnonymousClass1 (androidx.core.view.ViewPropertyAnimatorCompat$1)
.class Landroidx/core/view/ViewPropertyAnimatorCompat$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewPropertyAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/ViewPropertyAnimatorCompat;->setListenerInternal(Landroid/view/View;Landroidx/core/view/ViewPropertyAnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/view/ViewPropertyAnimatorCompat;

.field final synthetic val$listener:Landroidx/core/view/ViewPropertyAnimatorListener;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/core/view/ViewPropertyAnimatorCompat;Landroidx/core/view/ViewPropertyAnimatorListener;Landroid/view/View;)V
    .registers 4
    .param p1, "this$0"    # Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 791
    iput-object p1, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$1;->this$0:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iput-object p2, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$1;->val$listener:Landroidx/core/view/ViewPropertyAnimatorListener;

    iput-object p3, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 794
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$1;->val$listener:Landroidx/core/view/ViewPropertyAnimatorListener;

    iget-object v1, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$1;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationCancel(Landroid/view/View;)V

    .line 795
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 799
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$1;->val$listener:Landroidx/core/view/ViewPropertyAnimatorListener;

    iget-object v1, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$1;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    .line 800
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 804
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$1;->val$listener:Landroidx/core/view/ViewPropertyAnimatorListener;

    iget-object v1, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$1;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationStart(Landroid/view/View;)V

    .line 805
    return-void
.end method

###### Class androidx.core.view.ViewPropertyAnimatorCompat.Api16Impl (androidx.core.view.ViewPropertyAnimatorCompat$Api16Impl)
.class Landroidx/core/view/ViewPropertyAnimatorCompat$Api16Impl;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api16Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 841
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 843
    return-void
.end method

.method static withEndAction(Landroid/view/ViewPropertyAnimator;Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;
    .registers 3
    .param p0, "viewPropertyAnimator"    # Landroid/view/ViewPropertyAnimator;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 848
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method

.method static withLayer(Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .registers 2
    .param p0, "viewPropertyAnimator"    # Landroid/view/ViewPropertyAnimator;

    .line 853
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method

.method static withStartAction(Landroid/view/ViewPropertyAnimator;Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;
    .registers 3
    .param p0, "viewPropertyAnimator"    # Landroid/view/ViewPropertyAnimator;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 859
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method

###### Class androidx.core.view.ViewPropertyAnimatorCompat.Api18Impl (androidx.core.view.ViewPropertyAnimatorCompat$Api18Impl)
.class Landroidx/core/view/ViewPropertyAnimatorCompat$Api18Impl;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api18Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 865
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 867
    return-void
.end method

.method static getInterpolator(Landroid/view/ViewPropertyAnimator;)Landroid/view/animation/Interpolator;
    .registers 2
    .param p0, "viewPropertyAnimator"    # Landroid/view/ViewPropertyAnimator;

    .line 871
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Interpolator;

    return-object v0
.end method

###### Class androidx.core.view.ViewPropertyAnimatorCompat.Api19Impl (androidx.core.view.ViewPropertyAnimatorCompat$Api19Impl)
.class Landroidx/core/view/ViewPropertyAnimatorCompat$Api19Impl;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api19Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 907
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 909
    return-void
.end method

.method static setUpdateListener(Landroid/view/ViewPropertyAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;
    .registers 3
    .param p0, "viewPropertyAnimator"    # Landroid/view/ViewPropertyAnimator;
    .param p1, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 914
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method

###### Class androidx.core.view.ViewPropertyAnimatorCompat.Api21Impl (androidx.core.view.ViewPropertyAnimatorCompat$Api21Impl)
.class Landroidx/core/view/ViewPropertyAnimatorCompat$Api21Impl;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 878
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 880
    return-void
.end method

.method static translationZ(Landroid/view/ViewPropertyAnimator;F)Landroid/view/ViewPropertyAnimator;
    .registers 3
    .param p0, "viewPropertyAnimator"    # Landroid/view/ViewPropertyAnimator;
    .param p1, "value"    # F

    .line 891
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method

.method static translationZBy(Landroid/view/ViewPropertyAnimator;F)Landroid/view/ViewPropertyAnimator;
    .registers 3
    .param p0, "viewPropertyAnimator"    # Landroid/view/ViewPropertyAnimator;
    .param p1, "value"    # F

    .line 885
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->translationZBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method

.method static z(Landroid/view/ViewPropertyAnimator;F)Landroid/view/ViewPropertyAnimator;
    .registers 3
    .param p0, "viewPropertyAnimator"    # Landroid/view/ViewPropertyAnimator;
    .param p1, "value"    # F

    .line 896
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->z(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method

.method static zBy(Landroid/view/ViewPropertyAnimator;F)Landroid/view/ViewPropertyAnimator;
    .registers 3
    .param p0, "viewPropertyAnimator"    # Landroid/view/ViewPropertyAnimator;
    .param p1, "value"    # F

    .line 901
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->zBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method

###### Class androidx.core.view.ViewPropertyAnimatorCompat.ViewPropertyAnimatorListenerApi14 (androidx.core.view.ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14)
.class Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"

# interfaces
.implements Landroidx/core/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewPropertyAnimatorListenerApi14"
.end annotation


# instance fields
.field mAnimEndCalled:Z

.field mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Landroidx/core/view/ViewPropertyAnimatorCompat;)V
    .registers 2
    .param p1, "vpa"    # Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 55
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 109
    const/high16 v0, 0x7e000000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 110
    .local v0, "listenerTag":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 111
    .local v1, "listener":Landroidx/core/view/ViewPropertyAnimatorListener;
    instance-of v2, v0, Landroidx/core/view/ViewPropertyAnimatorListener;

    if-eqz v2, :cond_e

    .line 112
    move-object v1, v0

    check-cast v1, Landroidx/core/view/ViewPropertyAnimatorListener;

    .line 114
    :cond_e
    if-eqz v1, :cond_13

    .line 115
    invoke-interface {v1, p1}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationCancel(Landroid/view/View;)V

    .line 117
    :cond_13
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 83
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iget v0, v0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-le v0, v2, :cond_13

    .line 84
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iget v0, v0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 85
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iput v2, v0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    .line 87
    :cond_13
    nop

    .line 90
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iget-object v0, v0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_25

    .line 91
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iget-object v0, v0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    .line 92
    .local v0, "endAction":Ljava/lang/Runnable;
    iget-object v2, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iput-object v1, v2, Landroidx/core/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    .line 93
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 95
    .end local v0    # "endAction":Ljava/lang/Runnable;
    :cond_25
    const/high16 v0, 0x7e000000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 96
    .local v0, "listenerTag":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 97
    .local v1, "listener":Landroidx/core/view/ViewPropertyAnimatorListener;
    instance-of v2, v0, Landroidx/core/view/ViewPropertyAnimatorListener;

    if-eqz v2, :cond_33

    .line 98
    move-object v1, v0

    check-cast v1, Landroidx/core/view/ViewPropertyAnimatorListener;

    .line 100
    :cond_33
    if-eqz v1, :cond_38

    .line 101
    invoke-interface {v1, p1}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    .line 103
    :cond_38
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mAnimEndCalled:Z

    .line 105
    .end local v0    # "listenerTag":Ljava/lang/Object;
    .end local v1    # "listener":Landroidx/core/view/ViewPropertyAnimatorListener;
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mAnimEndCalled:Z

    .line 62
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iget v0, v0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_f

    .line 63
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 65
    :cond_f
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iget-object v0, v0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_20

    .line 66
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iget-object v0, v0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    .line 67
    .local v0, "startAction":Ljava/lang/Runnable;
    iget-object v1, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iput-object v2, v1, Landroidx/core/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    .line 68
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 70
    .end local v0    # "startAction":Ljava/lang/Runnable;
    :cond_20
    const/high16 v0, 0x7e000000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 71
    .local v0, "listenerTag":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 72
    .local v1, "listener":Landroidx/core/view/ViewPropertyAnimatorListener;
    instance-of v2, v0, Landroidx/core/view/ViewPropertyAnimatorListener;

    if-eqz v2, :cond_2e

    .line 73
    move-object v1, v0

    check-cast v1, Landroidx/core/view/ViewPropertyAnimatorListener;

    .line 75
    :cond_2e
    if-eqz v1, :cond_33

    .line 76
    invoke-interface {v1, p1}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationStart(Landroid/view/View;)V

    .line 78
    :cond_33
    return-void
.end method

###### Class androidx.core.view.ViewPropertyAnimatorCompat$$ExternalSyntheticLambda0 (androidx.core.view.ViewPropertyAnimatorCompat$$ExternalSyntheticLambda0)
.class public final synthetic Landroidx/core/view/ViewPropertyAnimatorCompat$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/core/view/ViewPropertyAnimatorCompat;"
    method = "lambda$setUpdateListener$0"
    proto = "(Landroidx/core/view/ViewPropertyAnimatorUpdateListener;Landroid/view/View;Landroid/animation/ValueAnimator;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x1c
    versionHash = "3b119036505a817327d30bbe4a430e8676906c2ab0a3363856806bcd3b289007"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/core/view/ViewPropertyAnimatorUpdateListener;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/view/ViewPropertyAnimatorUpdateListener;Landroid/view/View;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$$ExternalSyntheticLambda0;->f$0:Landroidx/core/view/ViewPropertyAnimatorUpdateListener;

    iput-object p2, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$$ExternalSyntheticLambda0;->f$0:Landroidx/core/view/ViewPropertyAnimatorUpdateListener;

    iget-object v1, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    invoke-static {v0, v1, p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->lambda$setUpdateListener$0(Landroidx/core/view/ViewPropertyAnimatorUpdateListener;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method
