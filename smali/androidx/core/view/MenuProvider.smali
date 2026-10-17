###### Class androidx.core.view.MenuProvider (androidx.core.view.MenuProvider)
.class public interface abstract Landroidx/core/view/MenuProvider;
.super Ljava/lang/Object;
.source "MenuProvider.java"


# virtual methods
.method public abstract onCreateMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end method

.method public abstract onMenuClosed(Landroid/view/Menu;)V
.end method

.method public abstract onMenuItemSelected(Landroid/view/MenuItem;)Z
.end method

.method public abstract onPrepareMenu(Landroid/view/Menu;)V
.end method

###### Class androidx.core.view.MenuProvider.CC (androidx.core.view.MenuProvider$-CC)
.class public final synthetic Landroidx/core/view/MenuProvider$-CC;
.super Ljava/lang/Object;
.source "MenuProvider.java"


# direct methods
.method public static $default$onMenuClosed(Landroidx/core/view/MenuProvider;Landroid/view/Menu;)V
    .registers 2
    .param p0, "_this"    # Landroidx/core/view/MenuProvider;
    .param p1, "menu"    # Landroid/view/Menu;

    .line 63
    return-void
.end method

.method public static $default$onPrepareMenu(Landroidx/core/view/MenuProvider;Landroid/view/Menu;)V
    .registers 2
    .param p0, "_this"    # Landroidx/core/view/MenuProvider;
    .param p1, "menu"    # Landroid/view/Menu;

    .line 38
    return-void
.end method
