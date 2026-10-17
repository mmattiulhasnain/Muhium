###### Class com.google.android.material.navigation.DrawerLayoutUtils (com.google.android.material.navigation.DrawerLayoutUtils)
.class public Lcom/google/android/material/navigation/DrawerLayoutUtils;
.super Ljava/lang/Object;
.source "DrawerLayoutUtils.java"


# static fields
.field private static final DEFAULT_SCRIM_ALPHA:I

.field private static final DEFAULT_SCRIM_COLOR:I = -0x67000000


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    const/high16 v0, -0x67000000

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    sput v0, Lcom/google/android/material/navigation/DrawerLayoutUtils;->DEFAULT_SCRIM_ALPHA:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScrimCloseAnimatorListener(Landroidx/drawerlayout/widget/DrawerLayout;Landroid/view/View;)Landroid/animation/Animator$AnimatorListener;
    .registers 3
    .param p0, "drawerLayout"    # Landroidx/drawerlayout/widget/DrawerLayout;
    .param p1, "drawerView"    # Landroid/view/View;

    .line 65
    new-instance v0, Lcom/google/android/material/navigation/DrawerLayoutUtils$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/navigation/DrawerLayoutUtils$1;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;Landroid/view/View;)V

    return-object v0
.end method

.method public static getScrimCloseAnimatorUpdateListener(Landroidx/drawerlayout/widget/DrawerLayout;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .registers 2
    .param p0, "drawerLayout"    # Landroidx/drawerlayout/widget/DrawerLayout;

    .line 51
    new-instance v0, Lcom/google/android/material/navigation/DrawerLayoutUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/material/navigation/DrawerLayoutUtils$$ExternalSyntheticLambda0;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;)V

    return-object v0
.end method

.method static synthetic lambda$getScrimCloseAnimatorUpdateListener$0(Landroidx/drawerlayout/widget/DrawerLayout;Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p0, "drawerLayout"    # Landroidx/drawerlayout/widget/DrawerLayout;
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 52
    sget v0, Lcom/google/android/material/navigation/DrawerLayoutUtils;->DEFAULT_SCRIM_ALPHA:I

    .line 53
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    move-result v0

    .line 54
    .local v0, "newScrimAlpha":I
    const/high16 v1, -0x67000000

    invoke-static {v1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->setScrimColor(I)V

    .line 55
    return-void
.end method

###### Class com.google.android.material.navigation.DrawerLayoutUtils.AnonymousClass1 (com.google.android.material.navigation.DrawerLayoutUtils$1)
.class Lcom/google/android/material/navigation/DrawerLayoutUtils$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DrawerLayoutUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/navigation/DrawerLayoutUtils;->getScrimCloseAnimatorListener(Landroidx/drawerlayout/widget/DrawerLayout;Landroid/view/View;)Landroid/animation/Animator$AnimatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

.field final synthetic val$drawerView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/drawerlayout/widget/DrawerLayout;Landroid/view/View;)V
    .registers 3

    .line 65
    iput-object p1, p0, Lcom/google/android/material/navigation/DrawerLayoutUtils$1;->val$drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    iput-object p2, p0, Lcom/google/android/material/navigation/DrawerLayoutUtils$1;->val$drawerView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 68
    iget-object v0, p0, Lcom/google/android/material/navigation/DrawerLayoutUtils$1;->val$drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v1, p0, Lcom/google/android/material/navigation/DrawerLayoutUtils$1;->val$drawerView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;Z)V

    .line 69
    iget-object v0, p0, Lcom/google/android/material/navigation/DrawerLayoutUtils$1;->val$drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const/high16 v1, -0x67000000

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->setScrimColor(I)V

    .line 70
    return-void
.end method

###### Class com.google.android.material.navigation.DrawerLayoutUtils$$ExternalSyntheticLambda0 (com.google.android.material.navigation.DrawerLayoutUtils$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/google/android/material/navigation/DrawerLayoutUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/google/android/material/navigation/DrawerLayoutUtils;"
    method = "lambda$getScrimCloseAnimatorUpdateListener$0"
    proto = "(Landroidx/drawerlayout/widget/DrawerLayout;Landroid/animation/ValueAnimator;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x1c
    versionHash = "3b119036505a817327d30bbe4a430e8676906c2ab0a3363856806bcd3b289007"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/drawerlayout/widget/DrawerLayout;


# direct methods
.method public synthetic constructor <init>(Landroidx/drawerlayout/widget/DrawerLayout;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/navigation/DrawerLayoutUtils$$ExternalSyntheticLambda0;->f$0:Landroidx/drawerlayout/widget/DrawerLayout;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/google/android/material/navigation/DrawerLayoutUtils$$ExternalSyntheticLambda0;->f$0:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-static {v0, p1}, Lcom/google/android/material/navigation/DrawerLayoutUtils;->lambda$getScrimCloseAnimatorUpdateListener$0(Landroidx/drawerlayout/widget/DrawerLayout;Landroid/animation/ValueAnimator;)V

    return-void
.end method
