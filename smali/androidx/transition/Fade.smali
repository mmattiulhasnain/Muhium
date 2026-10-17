###### Class androidx.transition.Fade (androidx.transition.Fade)
.class public Landroidx/transition/Fade;
.super Landroidx/transition/Visibility;
.source "Fade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/Fade$FadeAnimatorListener;
    }
.end annotation


# static fields
.field public static final IN:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "Fade"

.field public static final OUT:I = 0x2

.field private static final PROPNAME_TRANSITION_ALPHA:Ljava/lang/String; = "android:fade:transitionAlpha"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 98
    invoke-direct {p0}, Landroidx/transition/Visibility;-><init>()V

    .line 99
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "fadingMode"    # I

    .line 91
    invoke-direct {p0}, Landroidx/transition/Visibility;-><init>()V

    .line 92
    invoke-virtual {p0, p1}, Landroidx/transition/Fade;->setMode(I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 104
    invoke-direct {p0, p1, p2}, Landroidx/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    sget-object v0, Landroidx/transition/Styleable;->FADE:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 107
    .local v0, "a":Landroid/content/res/TypedArray;
    move-object v1, p2

    check-cast v1, Landroid/content/res/XmlResourceParser;

    .line 108
    invoke-virtual {p0}, Landroidx/transition/Fade;->getMode()I

    move-result v2

    .line 107
    const-string v3, "fadingMode"

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4, v2}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    .line 109
    .local v1, "fadingMode":I
    invoke-virtual {p0, v1}, Landroidx/transition/Fade;->setMode(I)V

    .line 110
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 111
    return-void
.end method

.method private createAnimation(Landroid/view/View;FF)Landroid/animation/Animator;
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "startAlpha"    # F
    .param p3, "endAlpha"    # F

    .line 124
    cmpl-float v0, p2, p3

    if-nez v0, :cond_6

    .line 125
    const/4 v0, 0x0

    return-object v0

    .line 127
    :cond_6
    invoke-static {p1, p2}, Landroidx/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    .line 128
    sget-object v0, Landroidx/transition/ViewUtils;->TRANSITION_ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p3, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 133
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    new-instance v1, Landroidx/transition/Fade$FadeAnimatorListener;

    invoke-direct {v1, p1}, Landroidx/transition/Fade$FadeAnimatorListener;-><init>(Landroid/view/View;)V

    .line 134
    .local v1, "listener":Landroidx/transition/Fade$FadeAnimatorListener;
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 135
    new-instance v2, Landroidx/transition/Fade$1;

    invoke-direct {v2, p0, p1}, Landroidx/transition/Fade$1;-><init>(Landroidx/transition/Fade;Landroid/view/View;)V

    invoke-virtual {p0, v2}, Landroidx/transition/Fade;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    .line 143
    return-object v0
.end method

.method private static getStartAlpha(Landroidx/transition/TransitionValues;F)F
    .registers 5
    .param p0, "startValues"    # Landroidx/transition/TransitionValues;
    .param p1, "fallbackValue"    # F

    .line 171
    move v0, p1

    .line 172
    .local v0, "startAlpha":F
    if-eqz p0, :cond_13

    .line 173
    iget-object v1, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:fade:transitionAlpha"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 174
    .local v1, "startAlphaFloat":Ljava/lang/Float;
    if-eqz v1, :cond_13

    .line 175
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 178
    .end local v1    # "startAlphaFloat":Ljava/lang/Float;
    :cond_13
    return v0
.end method


# virtual methods
.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .registers 5
    .param p1, "transitionValues"    # Landroidx/transition/TransitionValues;

    .line 115
    invoke-super {p0, p1}, Landroidx/transition/Visibility;->captureStartValues(Landroidx/transition/TransitionValues;)V

    .line 116
    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v1, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 117
    invoke-static {v1}, Landroidx/transition/ViewUtils;->getTransitionAlpha(Landroid/view/View;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 116
    const-string v2, "android:fade:transitionAlpha"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    return-void
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 8
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroidx/transition/TransitionValues;
    .param p4, "endValues"    # Landroidx/transition/TransitionValues;

    .line 155
    const/4 v0, 0x0

    invoke-static {p3, v0}, Landroidx/transition/Fade;->getStartAlpha(Landroidx/transition/TransitionValues;F)F

    move-result v0

    .line 156
    .local v0, "startAlpha":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-nez v2, :cond_c

    .line 157
    const/4 v0, 0x0

    .line 159
    :cond_c
    invoke-direct {p0, p2, v0, v1}, Landroidx/transition/Fade;->createAnimation(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v1

    return-object v1
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 7
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroidx/transition/TransitionValues;
    .param p4, "endValues"    # Landroidx/transition/TransitionValues;

    .line 165
    invoke-static {p2}, Landroidx/transition/ViewUtils;->saveNonTransitionAlpha(Landroid/view/View;)V

    .line 166
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p3, v0}, Landroidx/transition/Fade;->getStartAlpha(Landroidx/transition/TransitionValues;F)F

    move-result v0

    .line 167
    .local v0, "startAlpha":F
    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroidx/transition/Fade;->createAnimation(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v1

    return-object v1
.end method

###### Class androidx.transition.Fade.AnonymousClass1 (androidx.transition.Fade$1)
.class Landroidx/transition/Fade$1;
.super Landroidx/transition/TransitionListenerAdapter;
.source "Fade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/Fade;->createAnimation(Landroid/view/View;FF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/transition/Fade;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/transition/Fade;Landroid/view/View;)V
    .registers 3
    .param p1, "this$0"    # Landroidx/transition/Fade;

    .line 135
    iput-object p1, p0, Landroidx/transition/Fade$1;->this$0:Landroidx/transition/Fade;

    iput-object p2, p0, Landroidx/transition/Fade$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroidx/transition/Transition;

    .line 138
    iget-object v0, p0, Landroidx/transition/Fade$1;->val$view:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroidx/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    .line 139
    iget-object v0, p0, Landroidx/transition/Fade$1;->val$view:Landroid/view/View;

    invoke-static {v0}, Landroidx/transition/ViewUtils;->clearNonTransitionAlpha(Landroid/view/View;)V

    .line 140
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    .line 141
    return-void
.end method

###### Class androidx.transition.Fade.FadeAnimatorListener (androidx.transition.Fade$FadeAnimatorListener)
.class Landroidx/transition/Fade$FadeAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Fade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/Fade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FadeAnimatorListener"
.end annotation


# instance fields
.field private mLayerTypeChanged:Z

.field private final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 186
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/transition/Fade$FadeAnimatorListener;->mLayerTypeChanged:Z

    .line 187
    iput-object p1, p0, Landroidx/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    .line 188
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 201
    iget-object v0, p0, Landroidx/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroidx/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    .line 202
    iget-boolean v0, p0, Landroidx/transition/Fade$FadeAnimatorListener;->mLayerTypeChanged:Z

    if-eqz v0, :cond_12

    .line 203
    iget-object v0, p0, Landroidx/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 205
    :cond_12
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 192
    iget-object v0, p0, Landroidx/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->hasOverlappingRendering(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroidx/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    .line 193
    invoke-virtual {v0}, Landroid/view/View;->getLayerType()I

    move-result v0

    if-nez v0, :cond_1a

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/transition/Fade$FadeAnimatorListener;->mLayerTypeChanged:Z

    .line 195
    iget-object v0, p0, Landroidx/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 197
    :cond_1a
    return-void
.end method
