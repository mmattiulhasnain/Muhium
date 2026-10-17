###### Class com.google.android.material.transition.platform.FadeThroughProvider (com.google.android.material.transition.platform.FadeThroughProvider)
.class public final Lcom/google/android/material/transition/platform/FadeThroughProvider;
.super Ljava/lang/Object;
.source "FadeThroughProvider.java"

# interfaces
.implements Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;


# static fields
.field static final FADE_THROUGH_THRESHOLD:F = 0.35f


# instance fields
.field private progressThreshold:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const v0, 0x3eb33333    # 0.35f

    iput v0, p0, Lcom/google/android/material/transition/platform/FadeThroughProvider;->progressThreshold:F

    return-void
.end method

.method private static createFadeThroughAnimator(Landroid/view/View;FFFFF)Landroid/animation/Animator;
    .registers 13
    .param p0, "view"    # Landroid/view/View;
    .param p1, "startValue"    # F
    .param p2, "endValue"    # F
    .param p3, "startFraction"    # F
    .param p4, "endFraction"    # F
    .param p5, "originalAlpha"    # F

    .line 100
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_20

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 101
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/google/android/material/transition/platform/FadeThroughProvider$1;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .end local p0    # "view":Landroid/view/View;
    .end local p1    # "startValue":F
    .end local p2    # "endValue":F
    .end local p3    # "startFraction":F
    .end local p4    # "endFraction":F
    .local v2, "view":Landroid/view/View;
    .local v3, "startValue":F
    .local v4, "endValue":F
    .local v5, "startFraction":F
    .local v6, "endFraction":F
    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/transition/platform/FadeThroughProvider$1;-><init>(Landroid/view/View;FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 109
    new-instance p0, Lcom/google/android/material/transition/platform/FadeThroughProvider$2;

    invoke-direct {p0, v2, p5}, Lcom/google/android/material/transition/platform/FadeThroughProvider$2;-><init>(Landroid/view/View;F)V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 117
    return-object v0

    :array_20
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public createAppear(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;
    .registers 10
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;

    .line 70
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_c

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_10

    :cond_c
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v0

    :goto_10
    move v3, v0

    .line 71
    .local v3, "originalAlpha":F
    iget v4, p0, Lcom/google/android/material/transition/platform/FadeThroughProvider;->progressThreshold:F

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    move v6, v3

    move-object v1, p2

    .end local p2    # "view":Landroid/view/View;
    .local v1, "view":Landroid/view/View;
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/transition/platform/FadeThroughProvider;->createFadeThroughAnimator(Landroid/view/View;FFFFF)Landroid/animation/Animator;

    move-result-object p2

    return-object p2
.end method

.method public createDisappear(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;
    .registers 10
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;

    .line 83
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_c

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_10

    :cond_c
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v0

    :goto_10
    move v2, v0

    .line 84
    .local v2, "originalAlpha":F
    const/4 v4, 0x0

    iget v5, p0, Lcom/google/android/material/transition/platform/FadeThroughProvider;->progressThreshold:F

    const/4 v3, 0x0

    move v6, v2

    move-object v1, p2

    .end local p2    # "view":Landroid/view/View;
    .local v1, "view":Landroid/view/View;
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/transition/platform/FadeThroughProvider;->createFadeThroughAnimator(Landroid/view/View;FFFFF)Landroid/animation/Animator;

    move-result-object p2

    return-object p2
.end method

.method public getProgressThreshold()F
    .registers 2

    .line 54
    iget v0, p0, Lcom/google/android/material/transition/platform/FadeThroughProvider;->progressThreshold:F

    return v0
.end method

.method public setProgressThreshold(F)V
    .registers 2
    .param p1, "progressThreshold"    # F

    .line 64
    iput p1, p0, Lcom/google/android/material/transition/platform/FadeThroughProvider;->progressThreshold:F

    .line 65
    return-void
.end method

###### Class com.google.android.material.transition.platform.FadeThroughProvider.AnonymousClass1 (com.google.android.material.transition.platform.FadeThroughProvider$1)
.class Lcom/google/android/material/transition/platform/FadeThroughProvider$1;
.super Ljava/lang/Object;
.source "FadeThroughProvider.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transition/platform/FadeThroughProvider;->createFadeThroughAnimator(Landroid/view/View;FFFFF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$endFraction:F

.field final synthetic val$endValue:F

.field final synthetic val$startFraction:F

.field final synthetic val$startValue:F

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;FFFF)V
    .registers 6

    .line 102
    iput-object p1, p0, Lcom/google/android/material/transition/platform/FadeThroughProvider$1;->val$view:Landroid/view/View;

    iput p2, p0, Lcom/google/android/material/transition/platform/FadeThroughProvider$1;->val$startValue:F

    iput p3, p0, Lcom/google/android/material/transition/platform/FadeThroughProvider$1;->val$endValue:F

    iput p4, p0, Lcom/google/android/material/transition/platform/FadeThroughProvider$1;->val$startFraction:F

    iput p5, p0, Lcom/google/android/material/transition/platform/FadeThroughProvider$1;->val$endFraction:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 8
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 105
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 106
    .local v0, "progress":F
    iget-object v1, p0, Lcom/google/android/material/transition/platform/FadeThroughProvider$1;->val$view:Landroid/view/View;

    iget v2, p0, Lcom/google/android/material/transition/platform/FadeThroughProvider$1;->val$startValue:F

    iget v3, p0, Lcom/google/android/material/transition/platform/FadeThroughProvider$1;->val$endValue:F

    iget v4, p0, Lcom/google/android/material/transition/platform/FadeThroughProvider$1;->val$startFraction:F

    iget v5, p0, Lcom/google/android/material/transition/platform/FadeThroughProvider$1;->val$endFraction:F

    invoke-static {v2, v3, v4, v5, v0}, Lcom/google/android/material/transition/platform/TransitionUtils;->lerp(FFFFF)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 107
    return-void
.end method

###### Class com.google.android.material.transition.platform.FadeThroughProvider.AnonymousClass2 (com.google.android.material.transition.platform.FadeThroughProvider$2)
.class Lcom/google/android/material/transition/platform/FadeThroughProvider$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FadeThroughProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transition/platform/FadeThroughProvider;->createFadeThroughAnimator(Landroid/view/View;FFFFF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$originalAlpha:F

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;F)V
    .registers 3

    .line 110
    iput-object p1, p0, Lcom/google/android/material/transition/platform/FadeThroughProvider$2;->val$view:Landroid/view/View;

    iput p2, p0, Lcom/google/android/material/transition/platform/FadeThroughProvider$2;->val$originalAlpha:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 114
    iget-object v0, p0, Lcom/google/android/material/transition/platform/FadeThroughProvider$2;->val$view:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/transition/platform/FadeThroughProvider$2;->val$originalAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 115
    return-void
.end method
