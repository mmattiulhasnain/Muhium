###### Class androidx.core.view.WindowInsetsControllerCompat (androidx.core.view.WindowInsetsControllerCompat)
.class public final Landroidx/core/view/WindowInsetsControllerCompat;
.super Ljava/lang/Object;
.source "WindowInsetsControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/WindowInsetsControllerCompat$Impl30;,
        Landroidx/core/view/WindowInsetsControllerCompat$Impl;,
        Landroidx/core/view/WindowInsetsControllerCompat$Impl26;,
        Landroidx/core/view/WindowInsetsControllerCompat$Impl23;,
        Landroidx/core/view/WindowInsetsControllerCompat$Impl20;,
        Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;
    }
.end annotation


# static fields
.field public static final BEHAVIOR_DEFAULT:I = 0x1

.field public static final BEHAVIOR_SHOW_BARS_BY_SWIPE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BEHAVIOR_SHOW_BARS_BY_TOUCH:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE:I = 0x2


# instance fields
.field private final mImpl:Landroidx/core/view/WindowInsetsControllerCompat$Impl;


# direct methods
.method public constructor <init>(Landroid/view/Window;Landroid/view/View;)V
    .registers 5
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "view"    # Landroid/view/View;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_11

    .line 123
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    invoke-direct {v0, p1, p0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/core/view/WindowInsetsControllerCompat;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsControllerCompat$Impl;

    goto :goto_27

    .line 124
    :cond_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1f

    .line 125
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    invoke-direct {v0, p1, p2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;-><init>(Landroid/view/Window;Landroid/view/View;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsControllerCompat$Impl;

    goto :goto_27

    .line 126
    :cond_1f
    nop

    .line 127
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    invoke-direct {v0, p1, p2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroid/view/View;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsControllerCompat$Impl;

    .line 133
    :goto_27
    return-void
.end method

.method private constructor <init>(Landroid/view/WindowInsetsController;)V
    .registers 3
    .param p1, "insetsController"    # Landroid/view/WindowInsetsController;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    invoke-direct {v0, p1, p0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/WindowInsetsController;Landroidx/core/view/WindowInsetsControllerCompat;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsControllerCompat$Impl;

    .line 119
    return-void
.end method

.method public static toWindowInsetsControllerCompat(Landroid/view/WindowInsetsController;)Landroidx/core/view/WindowInsetsControllerCompat;
    .registers 2
    .param p0, "insetsController"    # Landroid/view/WindowInsetsController;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 149
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat;

    invoke-direct {v0, p0}, Landroidx/core/view/WindowInsetsControllerCompat;-><init>(Landroid/view/WindowInsetsController;)V

    return-object v0
.end method


# virtual methods
.method public addOnControllableInsetsChangedListener(Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;

    .line 316
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsControllerCompat$Impl;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl;->addOnControllableInsetsChangedListener(Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;)V

    .line 317
    return-void
.end method

.method public controlWindowInsetsAnimation(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;)V
    .registers 14
    .param p1, "types"    # I
    .param p2, "durationMillis"    # J
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p5, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p6, "listener"    # Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;

    .line 276
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsControllerCompat$Impl;

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .end local p1    # "types":I
    .end local p2    # "durationMillis":J
    .end local p4    # "interpolator":Landroid/view/animation/Interpolator;
    .end local p5    # "cancellationSignal":Landroid/os/CancellationSignal;
    .end local p6    # "listener":Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;
    .local v1, "types":I
    .local v2, "durationMillis":J
    .local v4, "interpolator":Landroid/view/animation/Interpolator;
    .local v5, "cancellationSignal":Landroid/os/CancellationSignal;
    .local v6, "listener":Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;
    invoke-virtual/range {v0 .. v6}, Landroidx/core/view/WindowInsetsControllerCompat$Impl;->controlWindowInsetsAnimation(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;)V

    .line 281
    return-void
.end method

.method public getSystemBarsBehavior()I
    .registers 2

    .line 302
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsControllerCompat$Impl;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl;->getSystemBarsBehavior()I

    move-result v0

    return v0
.end method

.method public hide(I)V
    .registers 3
    .param p1, "types"    # I

    .line 188
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsControllerCompat$Impl;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl;->hide(I)V

    .line 189
    return-void
.end method

.method public isAppearanceLightNavigationBars()Z
    .registers 2

    .line 225
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsControllerCompat$Impl;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl;->isAppearanceLightNavigationBars()Z

    move-result v0

    return v0
.end method

.method public isAppearanceLightStatusBars()Z
    .registers 2

    .line 201
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsControllerCompat$Impl;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl;->isAppearanceLightStatusBars()Z

    move-result v0

    return v0
.end method

.method public removeOnControllableInsetsChangedListener(Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;

    .line 331
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsControllerCompat$Impl;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl;->removeOnControllableInsetsChangedListener(Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;)V

    .line 332
    return-void
.end method

.method public setAppearanceLightNavigationBars(Z)V
    .registers 3
    .param p1, "isLight"    # Z

    .line 237
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsControllerCompat$Impl;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl;->setAppearanceLightNavigationBars(Z)V

    .line 238
    return-void
.end method

.method public setAppearanceLightStatusBars(Z)V
    .registers 3
    .param p1, "isLight"    # Z

    .line 213
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsControllerCompat$Impl;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl;->setAppearanceLightStatusBars(Z)V

    .line 214
    return-void
.end method

.method public setSystemBarsBehavior(I)V
    .registers 3
    .param p1, "behavior"    # I

    .line 290
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsControllerCompat$Impl;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl;->setSystemBarsBehavior(I)V

    .line 291
    return-void
.end method

.method public show(I)V
    .registers 3
    .param p1, "types"    # I

    .line 174
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsControllerCompat$Impl;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl;->show(I)V

    .line 175
    return-void
.end method

###### Class androidx.core.view.WindowInsetsControllerCompat.Impl (androidx.core.view.WindowInsetsControllerCompat$Impl)
.class Landroidx/core/view/WindowInsetsControllerCompat$Impl;
.super Ljava/lang/Object;
.source "WindowInsetsControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    return-void
.end method


# virtual methods
.method addOnControllableInsetsChangedListener(Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;)V
    .registers 2
    .param p1, "listener"    # Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;

    .line 406
    return-void
.end method

.method controlWindowInsetsAnimation(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;)V
    .registers 7
    .param p1, "types"    # I
    .param p2, "durationMillis"    # J
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p5, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p6, "listener"    # Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;

    .line 381
    return-void
.end method

.method getSystemBarsBehavior()I
    .registers 2

    .line 387
    const/4 v0, 0x0

    return v0
.end method

.method hide(I)V
    .registers 2
    .param p1, "types"    # I

    .line 376
    return-void
.end method

.method public isAppearanceLightNavigationBars()Z
    .registers 2

    .line 398
    const/4 v0, 0x0

    return v0
.end method

.method public isAppearanceLightStatusBars()Z
    .registers 2

    .line 391
    const/4 v0, 0x0

    return v0
.end method

.method removeOnControllableInsetsChangedListener(Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;)V
    .registers 2
    .param p1, "listener"    # Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;

    .line 411
    return-void
.end method

.method public setAppearanceLightNavigationBars(Z)V
    .registers 2
    .param p1, "isLight"    # Z

    .line 402
    return-void
.end method

.method public setAppearanceLightStatusBars(Z)V
    .registers 2
    .param p1, "isLight"    # Z

    .line 395
    return-void
.end method

.method setSystemBarsBehavior(I)V
    .registers 2
    .param p1, "behavior"    # I

    .line 384
    return-void
.end method

.method show(I)V
    .registers 2
    .param p1, "types"    # I

    .line 373
    return-void
.end method

###### Class androidx.core.view.WindowInsetsControllerCompat.Impl20 (androidx.core.view.WindowInsetsControllerCompat$Impl20)
.class Landroidx/core/view/WindowInsetsControllerCompat$Impl20;
.super Landroidx/core/view/WindowInsetsControllerCompat$Impl;
.source "WindowInsetsControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl20"
.end annotation


# instance fields
.field private final mView:Landroid/view/View;

.field protected final mWindow:Landroid/view/Window;


# direct methods
.method constructor <init>(Landroid/view/Window;Landroid/view/View;)V
    .registers 3
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "view"    # Landroid/view/View;

    .line 423
    invoke-direct {p0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl;-><init>()V

    .line 424
    iput-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    .line 425
    iput-object p2, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mView:Landroid/view/View;

    .line 426
    return-void
.end method

.method private hideForType(I)V
    .registers 5
    .param p1, "type"    # I

    .line 492
    sparse-switch p1, :sswitch_data_2c

    goto :goto_2b

    .line 500
    :sswitch_4
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 501
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    .line 502
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_2b

    .line 497
    :sswitch_21
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->setSystemUiFlag(I)V

    .line 498
    return-void

    .line 494
    :sswitch_26
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->setSystemUiFlag(I)V

    .line 495
    return-void

    .line 505
    :goto_2b
    return-void

    :sswitch_data_2c
    .sparse-switch
        0x1 -> :sswitch_26
        0x2 -> :sswitch_21
        0x8 -> :sswitch_4
    .end sparse-switch
.end method

.method static synthetic lambda$showForType$0(Landroid/view/View;)V
    .registers 3
    .param p0, "finalView"    # Landroid/view/View;

    .line 470
    nop

    .line 471
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 472
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 473
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 475
    return-void
.end method

.method private showForType(I)V
    .registers 5
    .param p1, "type"    # I

    .line 440
    sparse-switch p1, :sswitch_data_4a

    goto :goto_49

    .line 450
    :sswitch_4
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mView:Landroid/view/View;

    .line 453
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {v0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_1a

    .line 459
    :cond_13
    iget-object v1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    goto :goto_1d

    .line 457
    :cond_1a
    :goto_1a
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 463
    :goto_1d
    if-nez v0, :cond_28

    .line 464
    iget-object v1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 467
    :cond_28
    if-eqz v0, :cond_49

    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 468
    move-object v1, v0

    .line 469
    .local v1, "finalView":Landroid/view/View;
    new-instance v2, Landroidx/core/view/WindowInsetsControllerCompat$Impl20$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_49

    .line 446
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "finalView":Landroid/view/View;
    :sswitch_3a
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->unsetSystemUiFlag(I)V

    .line 447
    return-void

    .line 442
    :sswitch_3f
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->unsetSystemUiFlag(I)V

    .line 443
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->unsetWindowFlag(I)V

    .line 444
    return-void

    .line 478
    :cond_49
    :goto_49
    return-void

    :sswitch_data_4a
    .sparse-switch
        0x1 -> :sswitch_3f
        0x2 -> :sswitch_3a
        0x8 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method addOnControllableInsetsChangedListener(Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;)V
    .registers 2
    .param p1, "listener"    # Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;

    .line 561
    return-void
.end method

.method controlWindowInsetsAnimation(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;)V
    .registers 7
    .param p1, "types"    # I
    .param p2, "durationMillis"    # J
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p5, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p6, "listener"    # Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;

    .line 533
    return-void
.end method

.method getSystemBarsBehavior()I
    .registers 2

    .line 555
    const/4 v0, 0x0

    return v0
.end method

.method hide(I)V
    .registers 4
    .param p1, "typeMask"    # I

    .line 482
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x100

    if-gt v0, v1, :cond_10

    .line 484
    and-int v1, p1, v0

    if-nez v1, :cond_a

    .line 485
    goto :goto_d

    .line 487
    :cond_a
    invoke-direct {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->hideForType(I)V

    .line 483
    :goto_d
    shl-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 489
    .end local v0    # "i":I
    :cond_10
    return-void
.end method

.method removeOnControllableInsetsChangedListener(Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;)V
    .registers 2
    .param p1, "listener"    # Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;

    .line 567
    return-void
.end method

.method setSystemBarsBehavior(I)V
    .registers 4
    .param p1, "behavior"    # I

    .line 537
    const/16 v0, 0x800

    const/16 v1, 0x1000

    packed-switch p1, :pswitch_data_1c

    goto :goto_1b

    .line 543
    :pswitch_8
    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->unsetSystemUiFlag(I)V

    .line 544
    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->setSystemUiFlag(I)V

    .line 545
    goto :goto_1b

    .line 539
    :pswitch_f
    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->unsetSystemUiFlag(I)V

    .line 540
    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->setSystemUiFlag(I)V

    .line 541
    goto :goto_1b

    .line 547
    :pswitch_16
    const/16 v0, 0x1800

    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->unsetSystemUiFlag(I)V

    .line 551
    :goto_1b
    return-void

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_16
        :pswitch_f
        :pswitch_8
    .end packed-switch
.end method

.method protected setSystemUiFlag(I)V
    .registers 4
    .param p1, "systemUiFlag"    # I

    .line 508
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 509
    .local v0, "decorView":Landroid/view/View;
    nop

    .line 510
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/2addr v1, p1

    .line 509
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 512
    return-void
.end method

.method protected setWindowFlag(I)V
    .registers 3
    .param p1, "windowFlag"    # I

    .line 522
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->addFlags(I)V

    .line 523
    return-void
.end method

.method show(I)V
    .registers 4
    .param p1, "typeMask"    # I

    .line 430
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x100

    if-gt v0, v1, :cond_10

    .line 432
    and-int v1, p1, v0

    if-nez v1, :cond_a

    .line 433
    goto :goto_d

    .line 435
    :cond_a
    invoke-direct {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->showForType(I)V

    .line 431
    :goto_d
    shl-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 437
    .end local v0    # "i":I
    :cond_10
    return-void
.end method

.method protected unsetSystemUiFlag(I)V
    .registers 5
    .param p1, "systemUiFlag"    # I

    .line 515
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 516
    .local v0, "decorView":Landroid/view/View;
    nop

    .line 517
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    not-int v2, p1

    and-int/2addr v1, v2

    .line 516
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 519
    return-void
.end method

.method protected unsetWindowFlag(I)V
    .registers 3
    .param p1, "windowFlag"    # I

    .line 526
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->clearFlags(I)V

    .line 527
    return-void
.end method

###### Class androidx.core.view.WindowInsetsControllerCompat$Impl20$$ExternalSyntheticLambda0 (androidx.core.view.WindowInsetsControllerCompat$Impl20$$ExternalSyntheticLambda0)
.class public final synthetic Landroidx/core/view/WindowInsetsControllerCompat$Impl20$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/core/view/WindowInsetsControllerCompat$Impl20;"
    method = "lambda$showForType$0"
    proto = "(Landroid/view/View;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x1c
    versionHash = "3b119036505a817327d30bbe4a430e8676906c2ab0a3363856806bcd3b289007"
.end annotation


# instance fields
.field public final synthetic f$0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->lambda$showForType$0(Landroid/view/View;)V

    return-void
.end method

###### Class androidx.core.view.WindowInsetsControllerCompat.Impl23 (androidx.core.view.WindowInsetsControllerCompat$Impl23)
.class Landroidx/core/view/WindowInsetsControllerCompat$Impl23;
.super Landroidx/core/view/WindowInsetsControllerCompat$Impl20;
.source "WindowInsetsControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl23"
.end annotation


# direct methods
.method constructor <init>(Landroid/view/Window;Landroid/view/View;)V
    .registers 3
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "view"    # Landroid/view/View;

    .line 574
    invoke-direct {p0, p1, p2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;-><init>(Landroid/view/Window;Landroid/view/View;)V

    .line 575
    return-void
.end method


# virtual methods
.method public isAppearanceLightStatusBars()Z
    .registers 2

    .line 579
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public setAppearanceLightStatusBars(Z)V
    .registers 4
    .param p1, "isLight"    # Z

    .line 585
    const/16 v0, 0x2000

    if-eqz p1, :cond_12

    .line 586
    const/high16 v1, 0x4000000

    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;->unsetWindowFlag(I)V

    .line 587
    const/high16 v1, -0x80000000

    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;->setWindowFlag(I)V

    .line 588
    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;->setSystemUiFlag(I)V

    goto :goto_15

    .line 590
    :cond_12
    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;->unsetSystemUiFlag(I)V

    .line 592
    :goto_15
    return-void
.end method

###### Class androidx.core.view.WindowInsetsControllerCompat.Impl26 (androidx.core.view.WindowInsetsControllerCompat$Impl26)
.class Landroidx/core/view/WindowInsetsControllerCompat$Impl26;
.super Landroidx/core/view/WindowInsetsControllerCompat$Impl23;
.source "WindowInsetsControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl26"
.end annotation


# direct methods
.method constructor <init>(Landroid/view/Window;Landroid/view/View;)V
    .registers 3
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "view"    # Landroid/view/View;

    .line 599
    invoke-direct {p0, p1, p2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroid/view/View;)V

    .line 600
    return-void
.end method


# virtual methods
.method public isAppearanceLightNavigationBars()Z
    .registers 2

    .line 604
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public setAppearanceLightNavigationBars(Z)V
    .registers 4
    .param p1, "isLight"    # Z

    .line 610
    const/16 v0, 0x10

    if-eqz p1, :cond_12

    .line 611
    const/high16 v1, 0x8000000

    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;->unsetWindowFlag(I)V

    .line 612
    const/high16 v1, -0x80000000

    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;->setWindowFlag(I)V

    .line 613
    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;->setSystemUiFlag(I)V

    goto :goto_15

    .line 615
    :cond_12
    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;->unsetSystemUiFlag(I)V

    .line 617
    :goto_15
    return-void
.end method

###### Class androidx.core.view.WindowInsetsControllerCompat.Impl30 (androidx.core.view.WindowInsetsControllerCompat$Impl30)
.class Landroidx/core/view/WindowInsetsControllerCompat$Impl30;
.super Landroidx/core/view/WindowInsetsControllerCompat$Impl;
.source "WindowInsetsControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl30"
.end annotation


# instance fields
.field final mCompatController:Landroidx/core/view/WindowInsetsControllerCompat;

.field final mInsetsController:Landroid/view/WindowInsetsController;

.field private final mListeners:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;",
            "Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mWindow:Landroid/view/Window;


# direct methods
.method constructor <init>(Landroid/view/Window;Landroidx/core/view/WindowInsetsControllerCompat;)V
    .registers 4
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "compatController"    # Landroidx/core/view/WindowInsetsControllerCompat;

    .line 633
    invoke-virtual {p1}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/WindowInsetsController;Landroidx/core/view/WindowInsetsControllerCompat;)V

    .line 634
    iput-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mWindow:Landroid/view/Window;

    .line 635
    return-void
.end method

.method constructor <init>(Landroid/view/WindowInsetsController;Landroidx/core/view/WindowInsetsControllerCompat;)V
    .registers 4
    .param p1, "insetsController"    # Landroid/view/WindowInsetsController;
    .param p2, "compatController"    # Landroidx/core/view/WindowInsetsControllerCompat;

    .line 638
    invoke-direct {p0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl;-><init>()V

    .line 625
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mListeners:Landroidx/collection/SimpleArrayMap;

    .line 639
    iput-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Landroid/view/WindowInsetsController;

    .line 640
    iput-object p2, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mCompatController:Landroidx/core/view/WindowInsetsControllerCompat;

    .line 641
    return-void
.end method


# virtual methods
.method addOnControllableInsetsChangedListener(Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;)V
    .registers 4
    .param p1, "listener"    # Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;

    .line 789
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mListeners:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 791
    return-void

    .line 794
    :cond_9
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30$$ExternalSyntheticLambda0;-><init>(Landroidx/core/view/WindowInsetsControllerCompat$Impl30;Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;)V

    .line 800
    .local v0, "fwListener":Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;
    iget-object v1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mListeners:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    iget-object v1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Landroid/view/WindowInsetsController;

    invoke-interface {v1, v0}, Landroid/view/WindowInsetsController;->addOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V

    .line 802
    return-void
.end method

.method controlWindowInsetsAnimation(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;)V
    .registers 15
    .param p1, "types"    # I
    .param p2, "durationMillis"    # J
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p5, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p6, "listener"    # Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;

    .line 727
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30$1;

    invoke-direct {v0, p0, p6}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30$1;-><init>(Landroidx/core/view/WindowInsetsControllerCompat$Impl30;Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;)V

    move-object v7, v0

    .line 753
    .local v7, "fwListener":Landroid/view/WindowInsetsAnimationControlListener;
    iget-object v1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Landroid/view/WindowInsetsController;

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "types":I
    .end local p2    # "durationMillis":J
    .end local p4    # "interpolator":Landroid/view/animation/Interpolator;
    .end local p5    # "cancellationSignal":Landroid/os/CancellationSignal;
    .local v2, "types":I
    .local v3, "durationMillis":J
    .local v5, "interpolator":Landroid/view/animation/Interpolator;
    .local v6, "cancellationSignal":Landroid/os/CancellationSignal;
    invoke-interface/range {v1 .. v7}, Landroid/view/WindowInsetsController;->controlWindowInsetsAnimation(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;)V

    .line 758
    return-void
.end method

.method getSystemBarsBehavior()I
    .registers 2

    .line 781
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Landroid/view/WindowInsetsController;

    invoke-interface {v0}, Landroid/view/WindowInsetsController;->getSystemBarsBehavior()I

    move-result v0

    return v0
.end method

.method hide(I)V
    .registers 3
    .param p1, "types"    # I

    .line 664
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Landroid/view/WindowInsetsController;

    invoke-interface {v0, p1}, Landroid/view/WindowInsetsController;->hide(I)V

    .line 665
    return-void
.end method

.method public isAppearanceLightNavigationBars()Z
    .registers 2

    .line 696
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Landroid/view/WindowInsetsController;

    invoke-interface {v0}, Landroid/view/WindowInsetsController;->getSystemBarsAppearance()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isAppearanceLightStatusBars()Z
    .registers 2

    .line 669
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Landroid/view/WindowInsetsController;

    invoke-interface {v0}, Landroid/view/WindowInsetsController;->getSystemBarsAppearance()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method synthetic lambda$addOnControllableInsetsChangedListener$0$androidx-core-view-WindowInsetsControllerCompat$Impl30(Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;Landroid/view/WindowInsetsController;I)V
    .registers 5
    .param p1, "listener"    # Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;
    .param p2, "controller"    # Landroid/view/WindowInsetsController;
    .param p3, "typeMask"    # I

    .line 795
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Landroid/view/WindowInsetsController;

    if-ne v0, p2, :cond_9

    .line 796
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mCompatController:Landroidx/core/view/WindowInsetsControllerCompat;

    invoke-interface {p1, v0, p3}, Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;->onControllableInsetsChanged(Landroidx/core/view/WindowInsetsControllerCompat;I)V

    .line 799
    :cond_9
    return-void
.end method

.method removeOnControllableInsetsChangedListener(Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;)V
    .registers 4
    .param p1, "listener"    # Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;

    .line 809
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mListeners:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

    .line 810
    .local v0, "fwListener":Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;
    if-eqz v0, :cond_f

    .line 811
    iget-object v1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Landroid/view/WindowInsetsController;

    invoke-interface {v1, v0}, Landroid/view/WindowInsetsController;->removeOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V

    .line 813
    :cond_f
    return-void
.end method

.method public setAppearanceLightNavigationBars(Z)V
    .registers 5
    .param p1, "isLight"    # Z

    .line 702
    nop

    .line 711
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mWindow:Landroid/view/Window;

    .line 702
    const/16 v1, 0x10

    if-eqz p1, :cond_12

    .line 703
    if-eqz v0, :cond_c

    .line 704
    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->setSystemUiFlag(I)V

    .line 707
    :cond_c
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Landroid/view/WindowInsetsController;

    invoke-interface {v0, v1, v1}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    goto :goto_1d

    .line 711
    :cond_12
    if-eqz v0, :cond_17

    .line 712
    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->unsetSystemUiFlag(I)V

    .line 715
    :cond_17
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Landroid/view/WindowInsetsController;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    .line 719
    :goto_1d
    return-void
.end method

.method public setAppearanceLightStatusBars(Z)V
    .registers 5
    .param p1, "isLight"    # Z

    .line 675
    nop

    .line 684
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mWindow:Landroid/view/Window;

    .line 675
    const/16 v1, 0x2000

    const/16 v2, 0x8

    if-eqz p1, :cond_14

    .line 676
    if-eqz v0, :cond_e

    .line 677
    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->setSystemUiFlag(I)V

    .line 680
    :cond_e
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Landroid/view/WindowInsetsController;

    invoke-interface {v0, v2, v2}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    goto :goto_1f

    .line 684
    :cond_14
    if-eqz v0, :cond_19

    .line 685
    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->unsetSystemUiFlag(I)V

    .line 688
    :cond_19
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Landroid/view/WindowInsetsController;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    .line 692
    :goto_1f
    return-void
.end method

.method setSystemBarsBehavior(I)V
    .registers 3
    .param p1, "behavior"    # I

    .line 768
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Landroid/view/WindowInsetsController;

    invoke-interface {v0, p1}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    .line 769
    return-void
.end method

.method protected setSystemUiFlag(I)V
    .registers 4
    .param p1, "systemUiFlag"    # I

    .line 823
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 824
    .local v0, "decorView":Landroid/view/View;
    nop

    .line 825
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/2addr v1, p1

    .line 824
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 827
    return-void
.end method

.method show(I)V
    .registers 4
    .param p1, "types"    # I

    .line 645
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_1f

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_1f

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_1f

    .line 646
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mWindow:Landroid/view/Window;

    .line 647
    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 648
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 657
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    .line 659
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1f
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Landroid/view/WindowInsetsController;

    invoke-interface {v0, p1}, Landroid/view/WindowInsetsController;->show(I)V

    .line 660
    return-void
.end method

.method protected unsetSystemUiFlag(I)V
    .registers 5
    .param p1, "systemUiFlag"    # I

    .line 816
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 817
    .local v0, "decorView":Landroid/view/View;
    nop

    .line 818
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    not-int v2, p1

    and-int/2addr v1, v2

    .line 817
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 820
    return-void
.end method

###### Class androidx.core.view.WindowInsetsControllerCompat.Impl30.AnonymousClass1 (androidx.core.view.WindowInsetsControllerCompat$Impl30$1)
.class Landroidx/core/view/WindowInsetsControllerCompat$Impl30$1;
.super Ljava/lang/Object;
.source "WindowInsetsControllerCompat.java"

# interfaces
.implements Landroid/view/WindowInsetsAnimationControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->controlWindowInsetsAnimation(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCompatAnimController:Landroidx/core/view/WindowInsetsAnimationControllerCompat;

.field final synthetic this$0:Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

.field final synthetic val$listener:Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;


# direct methods
.method constructor <init>(Landroidx/core/view/WindowInsetsControllerCompat$Impl30;Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;)V
    .registers 3
    .param p1, "this$0"    # Landroidx/core/view/WindowInsetsControllerCompat$Impl30;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 728
    iput-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30$1;->this$0:Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    iput-object p2, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30$1;->val$listener:Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 730
    const/4 p2, 0x0

    iput-object p2, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30$1;->mCompatAnimController:Landroidx/core/view/WindowInsetsAnimationControllerCompat;

    return-void
.end method


# virtual methods
.method public onCancelled(Landroid/view/WindowInsetsAnimationController;)V
    .registers 4
    .param p1, "controller"    # Landroid/view/WindowInsetsAnimationController;

    .line 749
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30$1;->val$listener:Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;

    if-nez p1, :cond_6

    const/4 v1, 0x0

    goto :goto_8

    :cond_6
    iget-object v1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30$1;->mCompatAnimController:Landroidx/core/view/WindowInsetsAnimationControllerCompat;

    :goto_8
    invoke-interface {v0, v1}, Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;->onCancelled(Landroidx/core/view/WindowInsetsAnimationControllerCompat;)V

    .line 750
    return-void
.end method

.method public onFinished(Landroid/view/WindowInsetsAnimationController;)V
    .registers 4
    .param p1, "controller"    # Landroid/view/WindowInsetsAnimationController;

    .line 743
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30$1;->val$listener:Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;

    iget-object v1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30$1;->mCompatAnimController:Landroidx/core/view/WindowInsetsAnimationControllerCompat;

    invoke-interface {v0, v1}, Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;->onFinished(Landroidx/core/view/WindowInsetsAnimationControllerCompat;)V

    .line 744
    return-void
.end method

.method public onReady(Landroid/view/WindowInsetsAnimationController;I)V
    .registers 5
    .param p1, "controller"    # Landroid/view/WindowInsetsAnimationController;
    .param p2, "types"    # I

    .line 735
    new-instance v0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;

    invoke-direct {v0, p1}, Landroidx/core/view/WindowInsetsAnimationControllerCompat;-><init>(Landroid/view/WindowInsetsAnimationController;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30$1;->mCompatAnimController:Landroidx/core/view/WindowInsetsAnimationControllerCompat;

    .line 737
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30$1;->val$listener:Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;

    iget-object v1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30$1;->mCompatAnimController:Landroidx/core/view/WindowInsetsAnimationControllerCompat;

    invoke-interface {v0, v1, p2}, Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;->onReady(Landroidx/core/view/WindowInsetsAnimationControllerCompat;I)V

    .line 738
    return-void
.end method

###### Class androidx.core.view.WindowInsetsControllerCompat$Impl30$$ExternalSyntheticLambda0 (androidx.core.view.WindowInsetsControllerCompat$Impl30$$ExternalSyntheticLambda0)
.class public final synthetic Landroidx/core/view/WindowInsetsControllerCompat$Impl30$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/core/view/WindowInsetsControllerCompat$Impl30;"
    method = "lambda$addOnControllableInsetsChangedListener$0"
    proto = "(Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;Landroid/view/WindowInsetsController;I)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x1c
    versionHash = "3b119036505a817327d30bbe4a430e8676906c2ab0a3363856806bcd3b289007"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

.field public final synthetic f$1:Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/view/WindowInsetsControllerCompat$Impl30;Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30$$ExternalSyntheticLambda0;->f$0:Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    iput-object p2, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30$$ExternalSyntheticLambda0;->f$1:Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;

    return-void
.end method


# virtual methods
.method public final onControllableInsetsChanged(Landroid/view/WindowInsetsController;I)V
    .registers 5

    .line 0
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30$$ExternalSyntheticLambda0;->f$0:Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    iget-object v1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30$$ExternalSyntheticLambda0;->f$1:Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;

    invoke-virtual {v0, v1, p1, p2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->lambda$addOnControllableInsetsChangedListener$0$androidx-core-view-WindowInsetsControllerCompat$Impl30(Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;Landroid/view/WindowInsetsController;I)V

    return-void
.end method

###### Class androidx.core.view.WindowInsetsControllerCompat.OnControllableInsetsChangedListener (androidx.core.view.WindowInsetsControllerCompat$OnControllableInsetsChangedListener)
.class public interface abstract Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;
.super Ljava/lang/Object;
.source "WindowInsetsControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnControllableInsetsChangedListener"
.end annotation


# virtual methods
.method public abstract onControllableInsetsChanged(Landroidx/core/view/WindowInsetsControllerCompat;I)V
.end method
