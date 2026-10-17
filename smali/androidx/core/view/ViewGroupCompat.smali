###### Class androidx.core.view.ViewGroupCompat (androidx.core.view.ViewGroupCompat)
.class public final Landroidx/core/view/ViewGroupCompat;
.super Ljava/lang/Object;
.source "ViewGroupCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/ViewGroupCompat$Api18Impl;,
        Landroidx/core/view/ViewGroupCompat$Api21Impl;
    }
.end annotation


# static fields
.field public static final LAYOUT_MODE_CLIP_BOUNDS:I = 0x0

.field public static final LAYOUT_MODE_OPTICAL_BOUNDS:I = 0x1


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLayoutMode(Landroid/view/ViewGroup;)I
    .registers 2
    .param p0, "group"    # Landroid/view/ViewGroup;

    .line 116
    nop

    .line 117
    invoke-static {p0}, Landroidx/core/view/ViewGroupCompat$Api18Impl;->getLayoutMode(Landroid/view/ViewGroup;)I

    move-result v0

    return v0
.end method

.method public static getNestedScrollAxes(Landroid/view/ViewGroup;)I
    .registers 2
    .param p0, "group"    # Landroid/view/ViewGroup;

    .line 183
    nop

    .line 184
    invoke-static {p0}, Landroidx/core/view/ViewGroupCompat$Api21Impl;->getNestedScrollAxes(Landroid/view/ViewGroup;)I

    move-result v0

    return v0
.end method

.method public static isTransitionGroup(Landroid/view/ViewGroup;)Z
    .registers 2
    .param p0, "group"    # Landroid/view/ViewGroup;

    .line 159
    nop

    .line 160
    invoke-static {p0}, Landroidx/core/view/ViewGroupCompat$Api21Impl;->isTransitionGroup(Landroid/view/ViewGroup;)Z

    move-result v0

    return v0
.end method

.method public static onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4
    .param p0, "group"    # Landroid/view/ViewGroup;
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 77
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public static setLayoutMode(Landroid/view/ViewGroup;I)V
    .registers 2
    .param p0, "group"    # Landroid/view/ViewGroup;
    .param p1, "mode"    # I

    .line 132
    nop

    .line 133
    invoke-static {p0, p1}, Landroidx/core/view/ViewGroupCompat$Api18Impl;->setLayoutMode(Landroid/view/ViewGroup;I)V

    .line 135
    return-void
.end method

.method public static setMotionEventSplittingEnabled(Landroid/view/ViewGroup;Z)V
    .registers 2
    .param p0, "group"    # Landroid/view/ViewGroup;
    .param p1, "split"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 100
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 101
    return-void
.end method

.method public static setTransitionGroup(Landroid/view/ViewGroup;Z)V
    .registers 2
    .param p0, "group"    # Landroid/view/ViewGroup;
    .param p1, "isTransitionGroup"    # Z

    .line 146
    nop

    .line 147
    invoke-static {p0, p1}, Landroidx/core/view/ViewGroupCompat$Api21Impl;->setTransitionGroup(Landroid/view/ViewGroup;Z)V

    .line 151
    return-void
.end method

###### Class androidx.core.view.ViewGroupCompat.Api18Impl (androidx.core.view.ViewGroupCompat$Api18Impl)
.class Landroidx/core/view/ViewGroupCompat$Api18Impl;
.super Ljava/lang/Object;
.source "ViewGroupCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewGroupCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api18Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    return-void
.end method

.method static getLayoutMode(Landroid/view/ViewGroup;)I
    .registers 2
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;

    .line 200
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutMode()I

    move-result v0

    return v0
.end method

.method static setLayoutMode(Landroid/view/ViewGroup;I)V
    .registers 2
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .param p1, "layoutMode"    # I

    .line 205
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutMode(I)V

    .line 206
    return-void
.end method

###### Class androidx.core.view.ViewGroupCompat.Api21Impl (androidx.core.view.ViewGroupCompat$Api21Impl)
.class Landroidx/core/view/ViewGroupCompat$Api21Impl;
.super Ljava/lang/Object;
.source "ViewGroupCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewGroupCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    return-void
.end method

.method static getNestedScrollAxes(Landroid/view/ViewGroup;)I
    .registers 2
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;

    .line 227
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method static isTransitionGroup(Landroid/view/ViewGroup;)Z
    .registers 2
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;

    .line 222
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v0

    return v0
.end method

.method static setTransitionGroup(Landroid/view/ViewGroup;Z)V
    .registers 2
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .param p1, "isTransitionGroup"    # Z

    .line 217
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTransitionGroup(Z)V

    .line 218
    return-void
.end method
