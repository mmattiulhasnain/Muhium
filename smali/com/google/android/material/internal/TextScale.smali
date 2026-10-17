###### Class com.google.android.material.internal.TextScale (com.google.android.material.internal.TextScale)
.class public Lcom/google/android/material/internal/TextScale;
.super Landroidx/transition/Transition;
.source "TextScale.java"


# static fields
.field private static final PROPNAME_SCALE:Ljava/lang/String; = "android:textscale:scale"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    return-void
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .registers 6
    .param p1, "transitionValues"    # Landroidx/transition/TransitionValues;

    .line 48
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_19

    .line 49
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 50
    .local v0, "textview":Landroid/widget/TextView;
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/widget/TextView;->getScaleX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "android:textscale:scale"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .end local v0    # "textview":Landroid/widget/TextView;
    :cond_19
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .registers 2
    .param p1, "transitionValues"    # Landroidx/transition/TransitionValues;

    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/TextScale;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 45
    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .registers 2
    .param p1, "transitionValues"    # Landroidx/transition/TransitionValues;

    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/TextScale;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 40
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 12
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroidx/transition/TransitionValues;
    .param p3, "endValues"    # Landroidx/transition/TransitionValues;

    .line 59
    const/4 v0, 0x0

    if-eqz p2, :cond_5b

    if-eqz p3, :cond_5b

    iget-object v1, p2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_5b

    iget-object v1, p3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/TextView;

    if-nez v1, :cond_12

    goto :goto_5b

    .line 65
    :cond_12
    iget-object v1, p3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    .line 66
    .local v1, "view":Landroid/widget/TextView;
    iget-object v2, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 67
    .local v2, "startVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 69
    .local v3, "endVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "android:textscale:scale"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v5, :cond_2f

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    goto :goto_30

    :cond_2f
    move v5, v6

    .line 71
    .local v5, "startSize":F
    :goto_30
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_40

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 72
    .local v6, "endSize":F
    :cond_40
    cmpl-float v4, v5, v6

    if-nez v4, :cond_45

    .line 73
    return-object v0

    .line 76
    :cond_45
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v4, 0x0

    aput v5, v0, v4

    const/4 v4, 0x1

    aput v6, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 78
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v4, Lcom/google/android/material/internal/TextScale$1;

    invoke-direct {v4, p0, v1}, Lcom/google/android/material/internal/TextScale$1;-><init>(Lcom/google/android/material/internal/TextScale;Landroid/widget/TextView;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 87
    return-object v0

    .line 63
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "view":Landroid/widget/TextView;
    .end local v2    # "startVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "endVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "startSize":F
    .end local v6    # "endSize":F
    :cond_5b
    :goto_5b
    return-object v0
.end method

###### Class com.google.android.material.internal.TextScale.AnonymousClass1 (com.google.android.material.internal.TextScale$1)
.class Lcom/google/android/material/internal/TextScale$1;
.super Ljava/lang/Object;
.source "TextScale.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/internal/TextScale;->createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/internal/TextScale;

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/TextScale;Landroid/widget/TextView;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/android/material/internal/TextScale;

    .line 79
    iput-object p1, p0, Lcom/google/android/material/internal/TextScale$1;->this$0:Lcom/google/android/material/internal/TextScale;

    iput-object p2, p0, Lcom/google/android/material/internal/TextScale$1;->val$view:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 82
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 83
    .local v0, "animatedValue":F
    iget-object v1, p0, Lcom/google/android/material/internal/TextScale$1;->val$view:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setScaleX(F)V

    .line 84
    iget-object v1, p0, Lcom/google/android/material/internal/TextScale$1;->val$view:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setScaleY(F)V

    .line 85
    return-void
.end method
