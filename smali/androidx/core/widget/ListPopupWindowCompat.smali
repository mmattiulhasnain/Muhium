###### Class androidx.core.widget.ListPopupWindowCompat (androidx.core.widget.ListPopupWindowCompat)
.class public final Landroidx/core/widget/ListPopupWindowCompat;
.super Ljava/lang/Object;
.source "ListPopupWindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/ListPopupWindowCompat$Api19Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static createDragToOpenListener(Landroid/widget/ListPopupWindow;Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .registers 3
    .param p0, "listPopupWindow"    # Landroid/widget/ListPopupWindow;
    .param p1, "src"    # Landroid/view/View;

    .line 99
    nop

    .line 100
    invoke-static {p0, p1}, Landroidx/core/widget/ListPopupWindowCompat$Api19Impl;->createDragToOpenListener(Landroid/widget/ListPopupWindow;Landroid/view/View;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    return-object v0
.end method

.method public static createDragToOpenListener(Ljava/lang/Object;Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .registers 3
    .param p0, "listPopupWindow"    # Ljava/lang/Object;
    .param p1, "src"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 67
    move-object v0, p0

    check-cast v0, Landroid/widget/ListPopupWindow;

    invoke-static {v0, p1}, Landroidx/core/widget/ListPopupWindowCompat;->createDragToOpenListener(Landroid/widget/ListPopupWindow;Landroid/view/View;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    return-object v0
.end method

###### Class androidx.core.widget.ListPopupWindowCompat.Api19Impl (androidx.core.widget.ListPopupWindowCompat$Api19Impl)
.class Landroidx/core/widget/ListPopupWindowCompat$Api19Impl;
.super Ljava/lang/Object;
.source "ListPopupWindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/ListPopupWindowCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api19Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    return-void
.end method

.method static createDragToOpenListener(Landroid/widget/ListPopupWindow;Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .registers 3
    .param p0, "listPopupWindow"    # Landroid/widget/ListPopupWindow;
    .param p1, "src"    # Landroid/view/View;

    .line 114
    invoke-virtual {p0, p1}, Landroid/widget/ListPopupWindow;->createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    return-object v0
.end method
