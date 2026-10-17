###### Class com.google.android.material.color.ColorContrast (com.google.android.material.color.ColorContrast)
.class public Lcom/google/android/material/color/ColorContrast;
.super Ljava/lang/Object;
.source "ColorContrast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;
    }
.end annotation


# static fields
.field private static final HIGH_CONTRAST_THRESHOLD:F = 0.6666667f

.field private static final MEDIUM_CONTRAST_THRESHOLD:F = 0.33333334f


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyToActivitiesIfAvailable(Landroid/app/Application;Lcom/google/android/material/color/ColorContrastOptions;)V
    .registers 3
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "colorContrastOptions"    # Lcom/google/android/material/color/ColorContrastOptions;

    .line 77
    invoke-static {}, Lcom/google/android/material/color/ColorContrast;->isContrastAvailable()Z

    move-result v0

    if-nez v0, :cond_7

    .line 78
    return-void

    .line 81
    :cond_7
    new-instance v0, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;

    invoke-direct {v0, p1}, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;-><init>(Lcom/google/android/material/color/ColorContrastOptions;)V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 83
    return-void
.end method

.method public static applyToActivityIfAvailable(Landroid/app/Activity;Lcom/google/android/material/color/ColorContrastOptions;)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "colorContrastOptions"    # Lcom/google/android/material/color/ColorContrastOptions;

    .line 98
    invoke-static {}, Lcom/google/android/material/color/ColorContrast;->isContrastAvailable()Z

    move-result v0

    if-nez v0, :cond_7

    .line 99
    return-void

    .line 102
    :cond_7
    invoke-static {p0, p1}, Lcom/google/android/material/color/ColorContrast;->getContrastThemeOverlayResourceId(Landroid/content/Context;Lcom/google/android/material/color/ColorContrastOptions;)I

    move-result v0

    .line 103
    .local v0, "themeOverlayResourcesId":I
    if-eqz v0, :cond_10

    .line 104
    invoke-static {p0, v0}, Lcom/google/android/material/color/ThemeUtils;->applyThemeOverlay(Landroid/content/Context;I)V

    .line 106
    :cond_10
    return-void
.end method

.method private static getContrastThemeOverlayResourceId(Landroid/content/Context;Lcom/google/android/material/color/ColorContrastOptions;)I
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "colorContrastOptions"    # Lcom/google/android/material/color/ColorContrastOptions;

    .line 142
    const-string/jumbo v0, "uimode"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 143
    .local v0, "uiModeManager":Landroid/app/UiModeManager;
    invoke-static {}, Lcom/google/android/material/color/ColorContrast;->isContrastAvailable()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3a

    if-nez v0, :cond_13

    goto :goto_3a

    .line 147
    :cond_13
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getContrast()F

    move-result v1

    .line 148
    .local v1, "currentContrast":F
    invoke-virtual {p1}, Lcom/google/android/material/color/ColorContrastOptions;->getMediumContrastThemeOverlay()I

    move-result v3

    .line 149
    .local v3, "mediumContrastThemeOverlay":I
    invoke-virtual {p1}, Lcom/google/android/material/color/ColorContrastOptions;->getHighContrastThemeOverlay()I

    move-result v4

    .line 150
    .local v4, "highContrastThemeOverlay":I
    const v5, 0x3f2aaaab

    cmpl-float v5, v1, v5

    if-ltz v5, :cond_2c

    .line 153
    if-nez v4, :cond_2a

    move v2, v3

    goto :goto_2b

    :cond_2a
    move v2, v4

    :goto_2b
    return v2

    .line 154
    :cond_2c
    const v5, 0x3eaaaaab

    cmpl-float v5, v1, v5

    if-ltz v5, :cond_39

    .line 157
    if-nez v3, :cond_37

    .line 158
    move v2, v4

    goto :goto_38

    .line 159
    :cond_37
    move v2, v3

    .line 157
    :goto_38
    return v2

    .line 161
    :cond_39
    return v2

    .line 144
    .end local v1    # "currentContrast":F
    .end local v3    # "mediumContrastThemeOverlay":I
    .end local v4    # "highContrastThemeOverlay":I
    :cond_3a
    :goto_3a
    return v2
.end method

.method public static isContrastAvailable()Z
    .registers 2

    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static wrapContextIfAvailable(Landroid/content/Context;Lcom/google/android/material/color/ColorContrastOptions;)Landroid/content/Context;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "colorContrastOptions"    # Lcom/google/android/material/color/ColorContrastOptions;

    .line 123
    invoke-static {}, Lcom/google/android/material/color/ColorContrast;->isContrastAvailable()Z

    move-result v0

    if-nez v0, :cond_7

    .line 124
    return-object p0

    .line 127
    :cond_7
    invoke-static {p0, p1}, Lcom/google/android/material/color/ColorContrast;->getContrastThemeOverlayResourceId(Landroid/content/Context;Lcom/google/android/material/color/ColorContrastOptions;)I

    move-result v0

    .line 128
    .local v0, "themeOverlayResourcesId":I
    if-nez v0, :cond_e

    .line 129
    return-object p0

    .line 131
    :cond_e
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p0, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-object v1
.end method

###### Class com.google.android.material.color.ColorContrast.ColorContrastActivityLifecycleCallbacks (com.google.android.material.color.ColorContrast$ColorContrastActivityLifecycleCallbacks)
.class Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;
.super Ljava/lang/Object;
.source "ColorContrast.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/ColorContrast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorContrastActivityLifecycleCallbacks"
.end annotation


# instance fields
.field private final activitiesInStack:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final colorContrastOptions:Lcom/google/android/material/color/ColorContrastOptions;

.field private contrastChangeListener:Landroid/app/UiModeManager$ContrastChangeListener;


# direct methods
.method constructor <init>(Lcom/google/android/material/color/ColorContrastOptions;)V
    .registers 3
    .param p1, "colorContrastOptions"    # Lcom/google/android/material/color/ColorContrastOptions;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;->activitiesInStack:Ljava/util/Set;

    .line 174
    iput-object p1, p0, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;->colorContrastOptions:Lcom/google/android/material/color/ColorContrastOptions;

    .line 175
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;

    .line 165
    iget-object v0, p0, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;->activitiesInStack:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 206
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 226
    iget-object v0, p0, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;->activitiesInStack:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 228
    nop

    .line 229
    const-string/jumbo v0, "uimode"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 230
    .local v0, "uiModeManager":Landroid/app/UiModeManager;
    if-eqz v0, :cond_25

    iget-object v1, p0, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;->contrastChangeListener:Landroid/app/UiModeManager$ContrastChangeListener;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;->activitiesInStack:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 231
    iget-object v1, p0, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;->contrastChangeListener:Landroid/app/UiModeManager$ContrastChangeListener;

    invoke-virtual {v0, v1}, Landroid/app/UiModeManager;->removeContrastChangeListener(Landroid/app/UiModeManager$ContrastChangeListener;)V

    .line 232
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;->contrastChangeListener:Landroid/app/UiModeManager$ContrastChangeListener;

    .line 234
    :cond_25
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 215
    return-void
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 180
    nop

    .line 181
    const-string/jumbo v0, "uimode"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 182
    .local v0, "uiModeManager":Landroid/app/UiModeManager;
    if-eqz v0, :cond_2d

    iget-object v1, p0, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;->activitiesInStack:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;->contrastChangeListener:Landroid/app/UiModeManager$ContrastChangeListener;

    if-nez v1, :cond_2d

    .line 183
    new-instance v1, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks$1;

    invoke-direct {v1, p0}, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks$1;-><init>(Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;)V

    iput-object v1, p0, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;->contrastChangeListener:Landroid/app/UiModeManager$ContrastChangeListener;

    .line 193
    nop

    .line 194
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;->contrastChangeListener:Landroid/app/UiModeManager$ContrastChangeListener;

    .line 193
    invoke-virtual {v0, v1, v2}, Landroid/app/UiModeManager;->addContrastChangeListener(Ljava/util/concurrent/Executor;Landroid/app/UiModeManager$ContrastChangeListener;)V

    .line 198
    :cond_2d
    iget-object v1, p0, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;->activitiesInStack:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 199
    if-eqz v0, :cond_39

    .line 200
    iget-object v1, p0, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;->colorContrastOptions:Lcom/google/android/material/color/ColorContrastOptions;

    invoke-static {p1, v1}, Lcom/google/android/material/color/ColorContrast;->applyToActivityIfAvailable(Landroid/app/Activity;Lcom/google/android/material/color/ColorContrastOptions;)V

    .line 202
    :cond_39
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 212
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 221
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 209
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 218
    return-void
.end method

###### Class com.google.android.material.color.ColorContrast.ColorContrastActivityLifecycleCallbacks.AnonymousClass1 (com.google.android.material.color.ColorContrast$ColorContrastActivityLifecycleCallbacks$1)
.class Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks$1;
.super Ljava/lang/Object;
.source "ColorContrast.java"

# interfaces
.implements Landroid/app/UiModeManager$ContrastChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;->onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;


# direct methods
.method constructor <init>(Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;

    .line 184
    iput-object p1, p0, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks$1;->this$0:Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContrastChanged(F)V
    .registers 4
    .param p1, "contrastLevel"    # F

    .line 187
    iget-object v0, p0, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks$1;->this$0:Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;

    invoke-static {v0}, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;->access$000(Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 188
    .local v1, "activityInStack":Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->recreate()V

    .line 189
    .end local v1    # "activityInStack":Landroid/app/Activity;
    goto :goto_a

    .line 190
    :cond_1a
    return-void
.end method
