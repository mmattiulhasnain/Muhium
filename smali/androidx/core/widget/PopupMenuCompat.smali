###### Class androidx.core.widget.PopupMenuCompat (androidx.core.widget.PopupMenuCompat)
.class public final Landroidx/core/widget/PopupMenuCompat;
.super Ljava/lang/Object;
.source "PopupMenuCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/PopupMenuCompat$Api19Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static getDragToOpenListener(Ljava/lang/Object;)Landroid/view/View$OnTouchListener;
    .registers 2
    .param p0, "popupMenu"    # Ljava/lang/Object;

    .line 57
    nop

    .line 58
    move-object v0, p0

    check-cast v0, Landroid/widget/PopupMenu;

    invoke-static {v0}, Landroidx/core/widget/PopupMenuCompat$Api19Impl;->getDragToOpenListener(Landroid/widget/PopupMenu;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    return-object v0
.end method

###### Class androidx.core.widget.PopupMenuCompat.Api19Impl (androidx.core.widget.PopupMenuCompat$Api19Impl)
.class Landroidx/core/widget/PopupMenuCompat$Api19Impl;
.super Ljava/lang/Object;
.source "PopupMenuCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/PopupMenuCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api19Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method static getDragToOpenListener(Landroid/widget/PopupMenu;)Landroid/view/View$OnTouchListener;
    .registers 2
    .param p0, "popupMenu"    # Landroid/widget/PopupMenu;

    .line 72
    invoke-virtual {p0}, Landroid/widget/PopupMenu;->getDragToOpenListener()Landroid/view/View$OnTouchListener;

    move-result-object v0

    return-object v0
.end method
