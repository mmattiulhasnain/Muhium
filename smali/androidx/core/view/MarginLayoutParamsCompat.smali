###### Class androidx.core.view.MarginLayoutParamsCompat (androidx.core.view.MarginLayoutParamsCompat)
.class public final Landroidx/core/view/MarginLayoutParamsCompat;
.super Ljava/lang/Object;
.source "MarginLayoutParamsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/MarginLayoutParamsCompat$Api17Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    return-void
.end method

.method public static getLayoutDirection(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .registers 3
    .param p0, "lp"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 132
    nop

    .line 133
    invoke-static {p0}, Landroidx/core/view/MarginLayoutParamsCompat$Api17Impl;->getLayoutDirection(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    .line 138
    .local v0, "result":I
    if-eqz v0, :cond_b

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    .line 142
    const/4 v0, 0x0

    .line 144
    :cond_b
    return v0
.end method

.method public static getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .registers 2
    .param p0, "lp"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 66
    nop

    .line 67
    invoke-static {p0}, Landroidx/core/view/MarginLayoutParamsCompat$Api17Impl;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    return v0
.end method

.method public static getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .registers 2
    .param p0, "lp"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 47
    nop

    .line 48
    invoke-static {p0}, Landroidx/core/view/MarginLayoutParamsCompat$Api17Impl;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    return v0
.end method

.method public static isMarginRelative(Landroid/view/ViewGroup$MarginLayoutParams;)Z
    .registers 2
    .param p0, "lp"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 117
    nop

    .line 118
    invoke-static {p0}, Landroidx/core/view/MarginLayoutParamsCompat$Api17Impl;->isMarginRelative(Landroid/view/ViewGroup$MarginLayoutParams;)Z

    move-result v0

    return v0
.end method

.method public static resolveLayoutDirection(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .registers 2
    .param p0, "lp"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .param p1, "layoutDirection"    # I

    .line 167
    nop

    .line 168
    invoke-static {p0, p1}, Landroidx/core/view/MarginLayoutParamsCompat$Api17Impl;->resolveLayoutDirection(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 170
    return-void
.end method

.method public static setLayoutDirection(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .registers 2
    .param p0, "lp"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .param p1, "layoutDirection"    # I

    .line 156
    nop

    .line 157
    invoke-static {p0, p1}, Landroidx/core/view/MarginLayoutParamsCompat$Api17Impl;->setLayoutDirection(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 159
    return-void
.end method

.method public static setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .registers 2
    .param p0, "lp"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .param p1, "marginEnd"    # I

    .line 104
    nop

    .line 105
    invoke-static {p0, p1}, Landroidx/core/view/MarginLayoutParamsCompat$Api17Impl;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 109
    return-void
.end method

.method public static setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .registers 2
    .param p0, "lp"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .param p1, "marginStart"    # I

    .line 85
    nop

    .line 86
    invoke-static {p0, p1}, Landroidx/core/view/MarginLayoutParamsCompat$Api17Impl;->setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 90
    return-void
.end method

###### Class androidx.core.view.MarginLayoutParamsCompat.Api17Impl (androidx.core.view.MarginLayoutParamsCompat$Api17Impl)
.class Landroidx/core/view/MarginLayoutParamsCompat$Api17Impl;
.super Ljava/lang/Object;
.source "MarginLayoutParamsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/MarginLayoutParamsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api17Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    return-void
.end method

.method static getLayoutDirection(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .registers 2
    .param p0, "marginLayoutParams"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 208
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getLayoutDirection()I

    move-result v0

    return v0
.end method

.method static getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .registers 2
    .param p0, "marginLayoutParams"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 188
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v0

    return v0
.end method

.method static getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .registers 2
    .param p0, "marginLayoutParams"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 183
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    return v0
.end method

.method static isMarginRelative(Landroid/view/ViewGroup$MarginLayoutParams;)Z
    .registers 2
    .param p0, "marginLayoutParams"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 203
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->isMarginRelative()Z

    move-result v0

    return v0
.end method

.method static resolveLayoutDirection(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .registers 2
    .param p0, "marginLayoutParams"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .param p1, "layoutDirection"    # I

    .line 220
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    .line 221
    return-void
.end method

.method static setLayoutDirection(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .registers 2
    .param p0, "marginLayoutParams"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .param p1, "layoutDirection"    # I

    .line 214
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setLayoutDirection(I)V

    .line 215
    return-void
.end method

.method static setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .registers 2
    .param p0, "marginLayoutParams"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .param p1, "end"    # I

    .line 198
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 199
    return-void
.end method

.method static setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .registers 2
    .param p0, "marginLayoutParams"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .param p1, "start"    # I

    .line 193
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 194
    return-void
.end method
