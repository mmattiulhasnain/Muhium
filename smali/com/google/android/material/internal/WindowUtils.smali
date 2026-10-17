###### Class com.google.android.material.internal.WindowUtils (com.google.android.material.internal.WindowUtils)
.class public Lcom/google/android/material/internal/WindowUtils;
.super Ljava/lang/Object;
.source "WindowUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/WindowUtils$Api14Impl;,
        Lcom/google/android/material/internal/WindowUtils$Api17Impl;,
        Lcom/google/android/material/internal/WindowUtils$Api30Impl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    const-class v0, Lcom/google/android/material/internal/WindowUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/internal/WindowUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 40
    sget-object v0, Lcom/google/android/material/internal/WindowUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getCurrentWindowBounds(Landroid/content/Context;)Landroid/graphics/Rect;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 48
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 49
    .local v0, "windowManager":Landroid/view/WindowManager;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_14

    .line 50
    invoke-static {v0}, Lcom/google/android/material/internal/WindowUtils$Api30Impl;->getCurrentWindowBounds(Landroid/view/WindowManager;)Landroid/graphics/Rect;

    move-result-object v1

    return-object v1

    .line 51
    :cond_14
    nop

    .line 52
    invoke-static {v0}, Lcom/google/android/material/internal/WindowUtils$Api17Impl;->getCurrentWindowBounds(Landroid/view/WindowManager;)Landroid/graphics/Rect;

    move-result-object v1

    return-object v1
.end method

###### Class com.google.android.material.internal.WindowUtils.Api14Impl (com.google.android.material.internal.WindowUtils$Api14Impl)
.class Lcom/google/android/material/internal/WindowUtils$Api14Impl;
.super Ljava/lang/Object;
.source "WindowUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/WindowUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api14Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCurrentWindowBounds(Landroid/view/WindowManager;)Landroid/graphics/Rect;
    .registers 5
    .param p0, "windowManager"    # Landroid/view/WindowManager;

    .line 89
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 90
    .local v0, "defaultDisplay":Landroid/view/Display;
    invoke-static {v0}, Lcom/google/android/material/internal/WindowUtils$Api14Impl;->getRealSizeForDisplay(Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v1

    .line 92
    .local v1, "defaultDisplaySize":Landroid/graphics/Point;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 93
    .local v2, "bounds":Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Point;->x:I

    if-eqz v3, :cond_1f

    iget v3, v1, Landroid/graphics/Point;->y:I

    if-nez v3, :cond_16

    goto :goto_1f

    .line 96
    :cond_16
    iget v3, v1, Landroid/graphics/Point;->x:I

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 97
    iget v3, v1, Landroid/graphics/Point;->y:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_22

    .line 94
    :cond_1f
    :goto_1f
    invoke-virtual {v0, v2}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 100
    :goto_22
    return-object v2
.end method

.method private static getRealSizeForDisplay(Landroid/view/Display;)Landroid/graphics/Point;
    .registers 8
    .param p0, "display"    # Landroid/view/Display;

    .line 104
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 106
    .local v0, "size":Landroid/graphics/Point;
    :try_start_5
    const-class v1, Landroid/view/Display;

    const-string v2, "getRealSize"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/Point;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 107
    .local v1, "getRealSizeMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 108
    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_1f} :catch_33
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_1f} :catch_2a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_1f} :catch_21

    .line 115
    nop

    .end local v1    # "getRealSizeMethod":Ljava/lang/reflect/Method;
    goto :goto_3c

    .line 113
    :catch_21
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {}, Lcom/google/android/material/internal/WindowUtils;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3c

    .line 111
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2a
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-static {}, Lcom/google/android/material/internal/WindowUtils;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_3b

    .line 109
    :catch_33
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {}, Lcom/google/android/material/internal/WindowUtils;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :goto_3b
    nop

    .line 116
    :goto_3c
    return-object v0
.end method

###### Class com.google.android.material.internal.WindowUtils.Api17Impl (com.google.android.material.internal.WindowUtils$Api17Impl)
.class Lcom/google/android/material/internal/WindowUtils$Api17Impl;
.super Ljava/lang/Object;
.source "WindowUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/WindowUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api17Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCurrentWindowBounds(Landroid/view/WindowManager;)Landroid/graphics/Rect;
    .registers 5
    .param p0, "windowManager"    # Landroid/view/WindowManager;

    .line 72
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 74
    .local v0, "defaultDisplay":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 75
    .local v1, "defaultDisplaySize":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 77
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 78
    .local v2, "bounds":Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Point;->x:I

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 79
    iget v3, v1, Landroid/graphics/Point;->y:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 81
    return-object v2
.end method

###### Class com.google.android.material.internal.WindowUtils.Api30Impl (com.google.android.material.internal.WindowUtils$Api30Impl)
.class Lcom/google/android/material/internal/WindowUtils$Api30Impl;
.super Ljava/lang/Object;
.source "WindowUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/WindowUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api30Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCurrentWindowBounds(Landroid/view/WindowManager;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "windowManager"    # Landroid/view/WindowManager;

    .line 63
    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method
