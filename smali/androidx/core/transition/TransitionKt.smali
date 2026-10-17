###### Class androidx.core.transition.TransitionKt (androidx.core.transition.TransitionKt)
.class public final Landroidx/core/transition/TransitionKt;
.super Ljava/lang/Object;
.source "Transition.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Transition.kt\nandroidx/core/transition/TransitionKt\n*L\n1#1,86:1\n69#1,16:87\n69#1,16:103\n69#1,16:119\n69#1,16:135\n69#1,16:151\n*S KotlinDebug\n*F\n+ 1 Transition.kt\nandroidx/core/transition/TransitionKt\n*L\n31#1:87,16\n39#1:103,16\n47#1:119,16\n55#1:135,16\n63#1:151,16\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000b\u001a\u00c9\u0001\u0010\u0000\u001a\u00020\u0001*\u00020\u00022#\u0008\u0006\u0010\u0003\u001a\u001d\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0007\u0012\u0004\u0012\u00020\u00080\u00042#\u0008\u0006\u0010\t\u001a\u001d\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0007\u0012\u0004\u0012\u00020\u00080\u00042#\u0008\u0006\u0010\n\u001a\u001d\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0007\u0012\u0004\u0012\u00020\u00080\u00042#\u0008\u0006\u0010\u000b\u001a\u001d\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0007\u0012\u0004\u0012\u00020\u00080\u00042#\u0008\u0006\u0010\u000c\u001a\u001d\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0007\u0012\u0004\u0012\u00020\u00080\u0004H\u0087\u0008\u00f8\u0001\u0000\u001a5\u0010\r\u001a\u00020\u0001*\u00020\u00022#\u0008\u0004\u0010\u000e\u001a\u001d\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0007\u0012\u0004\u0012\u00020\u00080\u0004H\u0087\u0008\u00f8\u0001\u0000\u001a5\u0010\u000f\u001a\u00020\u0001*\u00020\u00022#\u0008\u0004\u0010\u000e\u001a\u001d\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0007\u0012\u0004\u0012\u00020\u00080\u0004H\u0087\u0008\u00f8\u0001\u0000\u001a5\u0010\u0010\u001a\u00020\u0001*\u00020\u00022#\u0008\u0004\u0010\u000e\u001a\u001d\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0007\u0012\u0004\u0012\u00020\u00080\u0004H\u0087\u0008\u00f8\u0001\u0000\u001a5\u0010\u0011\u001a\u00020\u0001*\u00020\u00022#\u0008\u0004\u0010\u000e\u001a\u001d\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0007\u0012\u0004\u0012\u00020\u00080\u0004H\u0087\u0008\u00f8\u0001\u0000\u001a5\u0010\u0012\u001a\u00020\u0001*\u00020\u00022#\u0008\u0004\u0010\u000e\u001a\u001d\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0007\u0012\u0004\u0012\u00020\u00080\u0004H\u0087\u0008\u00f8\u0001\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0013"
    }
    d2 = {
        "addListener",
        "Landroid/transition/Transition$TransitionListener;",
        "Landroid/transition/Transition;",
        "onEnd",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "transition",
        "",
        "onStart",
        "onCancel",
        "onResume",
        "onPause",
        "doOnCancel",
        "action",
        "doOnEnd",
        "doOnPause",
        "doOnResume",
        "doOnStart",
        "core-ktx_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final addListener(Landroid/transition/Transition;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroid/transition/Transition$TransitionListener;
    .registers 13
    .param p0, "$this$addListener"    # Landroid/transition/Transition;
    .param p1, "onEnd"    # Lkotlin/jvm/functions/Function1;
    .param p2, "onStart"    # Lkotlin/jvm/functions/Function1;
    .param p3, "onCancel"    # Lkotlin/jvm/functions/Function1;
    .param p4, "onResume"    # Lkotlin/jvm/functions/Function1;
    .param p5, "onPause"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/transition/Transition;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/transition/Transition;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/transition/Transition;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/transition/Transition;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/transition/Transition;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/transition/Transition$TransitionListener;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onEnd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onStart"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onCancel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onResume"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onPause"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 76
    .local v0, "$i$f$addListener":I
    new-instance v1, Landroidx/core/transition/TransitionKt$addListener$listener$1;

    move-object v2, p1

    move-object v6, p2

    move-object v5, p3

    move-object v3, p4

    move-object v4, p5

    .end local p1    # "onEnd":Lkotlin/jvm/functions/Function1;
    .end local p2    # "onStart":Lkotlin/jvm/functions/Function1;
    .end local p3    # "onCancel":Lkotlin/jvm/functions/Function1;
    .end local p4    # "onResume":Lkotlin/jvm/functions/Function1;
    .end local p5    # "onPause":Lkotlin/jvm/functions/Function1;
    .local v2, "onEnd":Lkotlin/jvm/functions/Function1;
    .local v3, "onResume":Lkotlin/jvm/functions/Function1;
    .local v4, "onPause":Lkotlin/jvm/functions/Function1;
    .local v5, "onCancel":Lkotlin/jvm/functions/Function1;
    .local v6, "onStart":Lkotlin/jvm/functions/Function1;
    invoke-direct/range {v1 .. v6}, Landroidx/core/transition/TransitionKt$addListener$listener$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 83
    .local v1, "listener":Landroidx/core/transition/TransitionKt$addListener$listener$1;
    move-object p1, v1

    check-cast p1, Landroid/transition/Transition$TransitionListener;

    invoke-virtual {p0, p1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 84
    move-object p1, v1

    check-cast p1, Landroid/transition/Transition$TransitionListener;

    return-object p1
.end method

.method public static synthetic addListener$default(Landroid/transition/Transition;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroid/transition/Transition$TransitionListener;
    .registers 9
    .param p0, "$this$addListener_u24default"    # Landroid/transition/Transition;
    .param p1, "onEnd"    # Lkotlin/jvm/functions/Function1;
    .param p2, "onStart"    # Lkotlin/jvm/functions/Function1;
    .param p3, "onCancel"    # Lkotlin/jvm/functions/Function1;
    .param p4, "onResume"    # Lkotlin/jvm/functions/Function1;
    .param p5, "onPause"    # Lkotlin/jvm/functions/Function1;

    .line 69
    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_9

    .line 70
    sget-object p7, Landroidx/core/transition/TransitionKt$addListener$1;->INSTANCE:Landroidx/core/transition/TransitionKt$addListener$1;

    move-object p1, p7

    check-cast p1, Lkotlin/jvm/functions/Function1;

    .line 69
    :cond_9
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_14

    .line 71
    sget-object p7, Landroidx/core/transition/TransitionKt$addListener$2;->INSTANCE:Landroidx/core/transition/TransitionKt$addListener$2;

    move-object p2, p7

    check-cast p2, Lkotlin/jvm/functions/Function1;

    move-object p7, p2

    goto :goto_15

    .line 69
    :cond_14
    move-object p7, p2

    .end local p2    # "onStart":Lkotlin/jvm/functions/Function1;
    .local p7, "onStart":Lkotlin/jvm/functions/Function1;
    :goto_15
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1e

    .line 72
    sget-object p2, Landroidx/core/transition/TransitionKt$addListener$3;->INSTANCE:Landroidx/core/transition/TransitionKt$addListener$3;

    move-object p3, p2

    check-cast p3, Lkotlin/jvm/functions/Function1;

    .line 69
    :cond_1e
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_27

    .line 73
    sget-object p2, Landroidx/core/transition/TransitionKt$addListener$4;->INSTANCE:Landroidx/core/transition/TransitionKt$addListener$4;

    move-object p4, p2

    check-cast p4, Lkotlin/jvm/functions/Function1;

    .line 69
    :cond_27
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_30

    .line 74
    sget-object p2, Landroidx/core/transition/TransitionKt$addListener$5;->INSTANCE:Landroidx/core/transition/TransitionKt$addListener$5;

    move-object p5, p2

    check-cast p5, Lkotlin/jvm/functions/Function1;

    .line 69
    :cond_30
    const-string p2, "<this>"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "onEnd"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "onStart"

    invoke-static {p7, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "onCancel"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "onResume"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "onPause"

    invoke-static {p5, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 76
    .local v0, "$i$f$addListener":I
    new-instance p2, Landroidx/core/transition/TransitionKt$addListener$listener$1;

    move-object p6, p3

    move-object p3, p1

    .end local p1    # "onEnd":Lkotlin/jvm/functions/Function1;
    .local p3, "onEnd":Lkotlin/jvm/functions/Function1;
    .local p6, "onCancel":Lkotlin/jvm/functions/Function1;
    invoke-direct/range {p2 .. p7}, Landroidx/core/transition/TransitionKt$addListener$listener$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 83
    .local p2, "listener":Landroidx/core/transition/TransitionKt$addListener$listener$1;
    move-object p1, p2

    check-cast p1, Landroid/transition/Transition$TransitionListener;

    invoke-virtual {p0, p1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 84
    move-object p1, p2

    check-cast p1, Landroid/transition/Transition$TransitionListener;

    return-object p1
.end method

.method public static final doOnCancel(Landroid/transition/Transition;Lkotlin/jvm/functions/Function1;)Landroid/transition/Transition$TransitionListener;
    .registers 7
    .param p0, "$this$doOnCancel"    # Landroid/transition/Transition;
    .param p1, "action"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/transition/Transition;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/transition/Transition$TransitionListener;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 47
    .local v0, "$i$f$doOnCancel":I
    move-object v1, p0

    .line 119
    .local v1, "$this$addListener_u24default$iv":Landroid/transition/Transition;
    nop

    .line 120
    nop

    .line 119
    nop

    .line 121
    nop

    .line 119
    nop

    .line 123
    nop

    .line 119
    nop

    .line 124
    nop

    .line 119
    const/4 v2, 0x0

    .line 126
    .local v2, "$i$f$addListener":I
    new-instance v3, Landroidx/core/transition/TransitionKt$doOnCancel$$inlined$addListener$default$1;

    invoke-direct {v3, p1}, Landroidx/core/transition/TransitionKt$doOnCancel$$inlined$addListener$default$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 133
    .local v3, "listener$iv":Landroidx/core/transition/TransitionKt$doOnCancel$$inlined$addListener$default$1;
    move-object v4, v3

    check-cast v4, Landroid/transition/Transition$TransitionListener;

    invoke-virtual {v1, v4}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 134
    move-object v1, v3

    check-cast v1, Landroid/transition/Transition$TransitionListener;

    .line 47
    .end local v1    # "$this$addListener_u24default$iv":Landroid/transition/Transition;
    .end local v2    # "$i$f$addListener":I
    .end local v3    # "listener$iv":Landroidx/core/transition/TransitionKt$doOnCancel$$inlined$addListener$default$1;
    return-object v1
.end method

.method public static final doOnEnd(Landroid/transition/Transition;Lkotlin/jvm/functions/Function1;)Landroid/transition/Transition$TransitionListener;
    .registers 7
    .param p0, "$this$doOnEnd"    # Landroid/transition/Transition;
    .param p1, "action"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/transition/Transition;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/transition/Transition$TransitionListener;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 31
    .local v0, "$i$f$doOnEnd":I
    move-object v1, p0

    .line 87
    .local v1, "$this$addListener_u24default$iv":Landroid/transition/Transition;
    nop

    .line 89
    nop

    .line 87
    nop

    .line 90
    nop

    .line 87
    nop

    .line 91
    nop

    .line 87
    nop

    .line 92
    nop

    .line 87
    const/4 v2, 0x0

    .line 94
    .local v2, "$i$f$addListener":I
    new-instance v3, Landroidx/core/transition/TransitionKt$doOnEnd$$inlined$addListener$default$1;

    invoke-direct {v3, p1}, Landroidx/core/transition/TransitionKt$doOnEnd$$inlined$addListener$default$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 101
    .local v3, "listener$iv":Landroidx/core/transition/TransitionKt$doOnEnd$$inlined$addListener$default$1;
    move-object v4, v3

    check-cast v4, Landroid/transition/Transition$TransitionListener;

    invoke-virtual {v1, v4}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 102
    move-object v1, v3

    check-cast v1, Landroid/transition/Transition$TransitionListener;

    .line 31
    .end local v1    # "$this$addListener_u24default$iv":Landroid/transition/Transition;
    .end local v2    # "$i$f$addListener":I
    .end local v3    # "listener$iv":Landroidx/core/transition/TransitionKt$doOnEnd$$inlined$addListener$default$1;
    return-object v1
.end method

.method public static final doOnPause(Landroid/transition/Transition;Lkotlin/jvm/functions/Function1;)Landroid/transition/Transition$TransitionListener;
    .registers 7
    .param p0, "$this$doOnPause"    # Landroid/transition/Transition;
    .param p1, "action"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/transition/Transition;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/transition/Transition$TransitionListener;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 63
    .local v0, "$i$f$doOnPause":I
    move-object v1, p0

    .line 151
    .local v1, "$this$addListener_u24default$iv":Landroid/transition/Transition;
    nop

    .line 152
    nop

    .line 151
    nop

    .line 153
    nop

    .line 151
    nop

    .line 154
    nop

    .line 151
    nop

    .line 155
    nop

    .line 151
    const/4 v2, 0x0

    .line 158
    .local v2, "$i$f$addListener":I
    new-instance v3, Landroidx/core/transition/TransitionKt$doOnPause$$inlined$addListener$default$1;

    invoke-direct {v3, p1}, Landroidx/core/transition/TransitionKt$doOnPause$$inlined$addListener$default$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 165
    .local v3, "listener$iv":Landroidx/core/transition/TransitionKt$doOnPause$$inlined$addListener$default$1;
    move-object v4, v3

    check-cast v4, Landroid/transition/Transition$TransitionListener;

    invoke-virtual {v1, v4}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 166
    move-object v1, v3

    check-cast v1, Landroid/transition/Transition$TransitionListener;

    .line 63
    .end local v1    # "$this$addListener_u24default$iv":Landroid/transition/Transition;
    .end local v2    # "$i$f$addListener":I
    .end local v3    # "listener$iv":Landroidx/core/transition/TransitionKt$doOnPause$$inlined$addListener$default$1;
    return-object v1
.end method

.method public static final doOnResume(Landroid/transition/Transition;Lkotlin/jvm/functions/Function1;)Landroid/transition/Transition$TransitionListener;
    .registers 7
    .param p0, "$this$doOnResume"    # Landroid/transition/Transition;
    .param p1, "action"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/transition/Transition;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/transition/Transition$TransitionListener;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 55
    .local v0, "$i$f$doOnResume":I
    move-object v1, p0

    .line 135
    .local v1, "$this$addListener_u24default$iv":Landroid/transition/Transition;
    nop

    .line 136
    nop

    .line 135
    nop

    .line 137
    nop

    .line 135
    nop

    .line 138
    nop

    .line 135
    nop

    .line 140
    nop

    .line 135
    const/4 v2, 0x0

    .line 142
    .local v2, "$i$f$addListener":I
    new-instance v3, Landroidx/core/transition/TransitionKt$doOnResume$$inlined$addListener$default$1;

    invoke-direct {v3, p1}, Landroidx/core/transition/TransitionKt$doOnResume$$inlined$addListener$default$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 149
    .local v3, "listener$iv":Landroidx/core/transition/TransitionKt$doOnResume$$inlined$addListener$default$1;
    move-object v4, v3

    check-cast v4, Landroid/transition/Transition$TransitionListener;

    invoke-virtual {v1, v4}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 150
    move-object v1, v3

    check-cast v1, Landroid/transition/Transition$TransitionListener;

    .line 55
    .end local v1    # "$this$addListener_u24default$iv":Landroid/transition/Transition;
    .end local v2    # "$i$f$addListener":I
    .end local v3    # "listener$iv":Landroidx/core/transition/TransitionKt$doOnResume$$inlined$addListener$default$1;
    return-object v1
.end method

.method public static final doOnStart(Landroid/transition/Transition;Lkotlin/jvm/functions/Function1;)Landroid/transition/Transition$TransitionListener;
    .registers 7
    .param p0, "$this$doOnStart"    # Landroid/transition/Transition;
    .param p1, "action"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/transition/Transition;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/transition/Transition$TransitionListener;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 39
    .local v0, "$i$f$doOnStart":I
    move-object v1, p0

    .line 103
    .local v1, "$this$addListener_u24default$iv":Landroid/transition/Transition;
    nop

    .line 104
    nop

    .line 103
    nop

    .line 106
    nop

    .line 103
    nop

    .line 107
    nop

    .line 103
    nop

    .line 108
    nop

    .line 103
    const/4 v2, 0x0

    .line 110
    .local v2, "$i$f$addListener":I
    new-instance v3, Landroidx/core/transition/TransitionKt$doOnStart$$inlined$addListener$default$1;

    invoke-direct {v3, p1}, Landroidx/core/transition/TransitionKt$doOnStart$$inlined$addListener$default$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 117
    .local v3, "listener$iv":Landroidx/core/transition/TransitionKt$doOnStart$$inlined$addListener$default$1;
    move-object v4, v3

    check-cast v4, Landroid/transition/Transition$TransitionListener;

    invoke-virtual {v1, v4}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 118
    move-object v1, v3

    check-cast v1, Landroid/transition/Transition$TransitionListener;

    .line 39
    .end local v1    # "$this$addListener_u24default$iv":Landroid/transition/Transition;
    .end local v2    # "$i$f$addListener":I
    .end local v3    # "listener$iv":Landroidx/core/transition/TransitionKt$doOnStart$$inlined$addListener$default$1;
    return-object v1
.end method

###### Class androidx.core.transition.TransitionKt.AnonymousClass1 (androidx.core.transition.TransitionKt$addListener$1)
.class public final Landroidx/core/transition/TransitionKt$addListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Transition.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/transition/TransitionKt;->addListener$default(Landroid/transition/Transition;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroid/transition/Transition$TransitionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/transition/Transition;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Transition.kt\nandroidx/core/transition/TransitionKt$addListener$1\n*L\n1#1,86:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/transition/Transition;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0xb0
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/core/transition/TransitionKt$addListener$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/core/transition/TransitionKt$addListener$1;

    invoke-direct {v0}, Landroidx/core/transition/TransitionKt$addListener$1;-><init>()V

    sput-object v0, Landroidx/core/transition/TransitionKt$addListener$1;->INSTANCE:Landroidx/core/transition/TransitionKt$addListener$1;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "p1"    # Ljava/lang/Object;

    .line 70
    move-object v0, p1

    check-cast v0, Landroid/transition/Transition;

    invoke-virtual {p0, v0}, Landroidx/core/transition/TransitionKt$addListener$1;->invoke(Landroid/transition/Transition;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroid/transition/Transition;)V
    .registers 3
    .param p1, "it"    # Landroid/transition/Transition;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    return-void
.end method

###### Class androidx.core.transition.TransitionKt.AnonymousClass2 (androidx.core.transition.TransitionKt$addListener$2)
.class public final Landroidx/core/transition/TransitionKt$addListener$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Transition.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/transition/TransitionKt;->addListener$default(Landroid/transition/Transition;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroid/transition/Transition$TransitionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/transition/Transition;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Transition.kt\nandroidx/core/transition/TransitionKt$addListener$2\n*L\n1#1,86:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/transition/Transition;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0xb0
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/core/transition/TransitionKt$addListener$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/core/transition/TransitionKt$addListener$2;

    invoke-direct {v0}, Landroidx/core/transition/TransitionKt$addListener$2;-><init>()V

    sput-object v0, Landroidx/core/transition/TransitionKt$addListener$2;->INSTANCE:Landroidx/core/transition/TransitionKt$addListener$2;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "p1"    # Ljava/lang/Object;

    .line 71
    move-object v0, p1

    check-cast v0, Landroid/transition/Transition;

    invoke-virtual {p0, v0}, Landroidx/core/transition/TransitionKt$addListener$2;->invoke(Landroid/transition/Transition;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroid/transition/Transition;)V
    .registers 3
    .param p1, "it"    # Landroid/transition/Transition;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    return-void
.end method

###### Class androidx.core.transition.TransitionKt.AnonymousClass3 (androidx.core.transition.TransitionKt$addListener$3)
.class public final Landroidx/core/transition/TransitionKt$addListener$3;
.super Lkotlin/jvm/internal/Lambda;
.source "Transition.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/transition/TransitionKt;->addListener$default(Landroid/transition/Transition;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroid/transition/Transition$TransitionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/transition/Transition;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Transition.kt\nandroidx/core/transition/TransitionKt$addListener$3\n*L\n1#1,86:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/transition/Transition;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0xb0
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/core/transition/TransitionKt$addListener$3;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/core/transition/TransitionKt$addListener$3;

    invoke-direct {v0}, Landroidx/core/transition/TransitionKt$addListener$3;-><init>()V

    sput-object v0, Landroidx/core/transition/TransitionKt$addListener$3;->INSTANCE:Landroidx/core/transition/TransitionKt$addListener$3;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "p1"    # Ljava/lang/Object;

    .line 72
    move-object v0, p1

    check-cast v0, Landroid/transition/Transition;

    invoke-virtual {p0, v0}, Landroidx/core/transition/TransitionKt$addListener$3;->invoke(Landroid/transition/Transition;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroid/transition/Transition;)V
    .registers 3
    .param p1, "it"    # Landroid/transition/Transition;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    return-void
.end method

###### Class androidx.core.transition.TransitionKt.AnonymousClass4 (androidx.core.transition.TransitionKt$addListener$4)
.class public final Landroidx/core/transition/TransitionKt$addListener$4;
.super Lkotlin/jvm/internal/Lambda;
.source "Transition.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/transition/TransitionKt;->addListener$default(Landroid/transition/Transition;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroid/transition/Transition$TransitionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/transition/Transition;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Transition.kt\nandroidx/core/transition/TransitionKt$addListener$4\n*L\n1#1,86:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/transition/Transition;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0xb0
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/core/transition/TransitionKt$addListener$4;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/core/transition/TransitionKt$addListener$4;

    invoke-direct {v0}, Landroidx/core/transition/TransitionKt$addListener$4;-><init>()V

    sput-object v0, Landroidx/core/transition/TransitionKt$addListener$4;->INSTANCE:Landroidx/core/transition/TransitionKt$addListener$4;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "p1"    # Ljava/lang/Object;

    .line 73
    move-object v0, p1

    check-cast v0, Landroid/transition/Transition;

    invoke-virtual {p0, v0}, Landroidx/core/transition/TransitionKt$addListener$4;->invoke(Landroid/transition/Transition;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroid/transition/Transition;)V
    .registers 3
    .param p1, "it"    # Landroid/transition/Transition;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    return-void
.end method

###### Class androidx.core.transition.TransitionKt.AnonymousClass5 (androidx.core.transition.TransitionKt$addListener$5)
.class public final Landroidx/core/transition/TransitionKt$addListener$5;
.super Lkotlin/jvm/internal/Lambda;
.source "Transition.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/transition/TransitionKt;->addListener$default(Landroid/transition/Transition;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroid/transition/Transition$TransitionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/transition/Transition;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Transition.kt\nandroidx/core/transition/TransitionKt$addListener$5\n*L\n1#1,86:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/transition/Transition;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0xb0
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/core/transition/TransitionKt$addListener$5;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/core/transition/TransitionKt$addListener$5;

    invoke-direct {v0}, Landroidx/core/transition/TransitionKt$addListener$5;-><init>()V

    sput-object v0, Landroidx/core/transition/TransitionKt$addListener$5;->INSTANCE:Landroidx/core/transition/TransitionKt$addListener$5;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "p1"    # Ljava/lang/Object;

    .line 74
    move-object v0, p1

    check-cast v0, Landroid/transition/Transition;

    invoke-virtual {p0, v0}, Landroidx/core/transition/TransitionKt$addListener$5;->invoke(Landroid/transition/Transition;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroid/transition/Transition;)V
    .registers 3
    .param p1, "it"    # Landroid/transition/Transition;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    return-void
.end method

###### Class androidx.core.transition.TransitionKt$doOnCancel$$inlined$addListener$default$1 (androidx.core.transition.TransitionKt$doOnCancel$$inlined$addListener$default$1)
.class public final Landroidx/core/transition/TransitionKt$doOnCancel$$inlined$addListener$default$1;
.super Ljava/lang/Object;
.source "Transition.kt"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/transition/TransitionKt;->doOnCancel(Landroid/transition/Transition;Lkotlin/jvm/functions/Function1;)Landroid/transition/Transition$TransitionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Transition.kt\nandroidx/core/transition/TransitionKt$addListener$listener$1\n+ 2 Transition.kt\nandroidx/core/transition/TransitionKt$addListener$1\n+ 3 Transition.kt\nandroidx/core/transition/TransitionKt$addListener$4\n+ 4 Transition.kt\nandroidx/core/transition/TransitionKt$addListener$5\n+ 5 Transition.kt\nandroidx/core/transition/TransitionKt$addListener$2\n*L\n1#1,86:1\n70#2:87\n73#3:88\n74#4:89\n71#5:90\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\n\u00b8\u0006\u0000"
    }
    d2 = {
        "androidx/core/transition/TransitionKt$addListener$listener$1",
        "Landroid/transition/Transition$TransitionListener;",
        "onTransitionCancel",
        "",
        "transition",
        "Landroid/transition/Transition;",
        "onTransitionEnd",
        "onTransitionPause",
        "onTransitionResume",
        "onTransitionStart",
        "core-ktx_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0xb0
.end annotation


# instance fields
.field final synthetic $onCancel:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .param p1, "$onCancel"    # Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Landroidx/core/transition/TransitionKt$doOnCancel$$inlined$addListener$default$1;->$onCancel:Lkotlin/jvm/functions/Function1;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .registers 3
    .param p1, "transition"    # Landroid/transition/Transition;

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Landroidx/core/transition/TransitionKt$doOnCancel$$inlined$addListener$default$1;->$onCancel:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/transition/Transition;

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    const/4 v0, 0x0

    .local v0, "$i$a$-addListener-TransitionKt$addListener$1":I
    move-object v1, p1

    .line 87
    .local v1, "it":Landroid/transition/Transition;
    nop

    .line 77
    .end local v0    # "$i$a$-addListener-TransitionKt$addListener$1":I
    .end local v1    # "it":Landroid/transition/Transition;
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/transition/Transition;

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x0

    .local v0, "$i$a$-addListener-TransitionKt$addListener$5":I
    move-object v1, p1

    .line 89
    .local v1, "it":Landroid/transition/Transition;
    nop

    .line 79
    .end local v0    # "$i$a$-addListener-TransitionKt$addListener$5":I
    .end local v1    # "it":Landroid/transition/Transition;
    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/transition/Transition;

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x0

    .local v0, "$i$a$-addListener-TransitionKt$addListener$4":I
    move-object v1, p1

    .line 88
    .local v1, "it":Landroid/transition/Transition;
    nop

    .line 78
    .end local v0    # "$i$a$-addListener-TransitionKt$addListener$4":I
    .end local v1    # "it":Landroid/transition/Transition;
    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/transition/Transition;

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x0

    .local v0, "$i$a$-addListener-TransitionKt$addListener$2":I
    move-object v1, p1

    .line 90
    .local v1, "it":Landroid/transition/Transition;
    nop

    .line 81
    .end local v0    # "$i$a$-addListener-TransitionKt$addListener$2":I
    .end local v1    # "it":Landroid/transition/Transition;
    return-void
.end method

###### Class androidx.core.transition.TransitionKt$doOnEnd$$inlined$addListener$default$1 (androidx.core.transition.TransitionKt$doOnEnd$$inlined$addListener$default$1)
.class public final Landroidx/core/transition/TransitionKt$doOnEnd$$inlined$addListener$default$1;
.super Ljava/lang/Object;
.source "Transition.kt"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/transition/TransitionKt;->doOnEnd(Landroid/transition/Transition;Lkotlin/jvm/functions/Function1;)Landroid/transition/Transition$TransitionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Transition.kt\nandroidx/core/transition/TransitionKt$addListener$listener$1\n+ 2 Transition.kt\nandroidx/core/transition/TransitionKt$addListener$4\n+ 3 Transition.kt\nandroidx/core/transition/TransitionKt$addListener$5\n+ 4 Transition.kt\nandroidx/core/transition/TransitionKt$addListener$3\n+ 5 Transition.kt\nandroidx/core/transition/TransitionKt$addListener$2\n*L\n1#1,86:1\n73#2:87\n74#3:88\n72#4:89\n71#5:90\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\n\u00b8\u0006\u0000"
    }
    d2 = {
        "androidx/core/transition/TransitionKt$addListener$listener$1",
        "Landroid/transition/Transition$TransitionListener;",
        "onTransitionCancel",
        "",
        "transition",
        "Landroid/transition/Transition;",
        "onTransitionEnd",
        "onTransitionPause",
        "onTransitionResume",
        "onTransitionStart",
        "core-ktx_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0xb0
.end annotation


# instance fields
.field final synthetic $onEnd:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .param p1, "$onEnd"    # Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Landroidx/core/transition/TransitionKt$doOnEnd$$inlined$addListener$default$1;->$onEnd:Lkotlin/jvm/functions/Function1;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/transition/Transition;

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    const/4 v0, 0x0

    .local v0, "$i$a$-addListener-TransitionKt$addListener$3":I
    move-object v1, p1

    .line 89
    .local v1, "it":Landroid/transition/Transition;
    nop

    .line 80
    .end local v0    # "$i$a$-addListener-TransitionKt$addListener$3":I
    .end local v1    # "it":Landroid/transition/Transition;
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .registers 3
    .param p1, "transition"    # Landroid/transition/Transition;

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Landroidx/core/transition/TransitionKt$doOnEnd$$inlined$addListener$default$1;->$onEnd:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/transition/Transition;

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x0

    .local v0, "$i$a$-addListener-TransitionKt$addListener$5":I
    move-object v1, p1

    .line 88
    .local v1, "it":Landroid/transition/Transition;
    nop

    .line 79
    .end local v0    # "$i$a$-addListener-TransitionKt$addListener$5":I
    .end local v1    # "it":Landroid/transition/Transition;
    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/transition/Transition;

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x0

    .local v0, "$i$a$-addListener-TransitionKt$addListener$4":I
    move-object v1, p1

    .line 87
    .local v1, "it":Landroid/transition/Transition;
    nop

    .line 78
    .end local v0    # "$i$a$-addListener-TransitionKt$addListener$4":I
    .end local v1    # "it":Landroid/transition/Transition;
    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/transition/Transition;

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x0

    .local v0, "$i$a$-addListener-TransitionKt$addListener$2":I
    move-object v1, p1

    .line 90
    .local v1, "it":Landroid/transition/Transition;
    nop

    .line 81
    .end local v0    # "$i$a$-addListener-TransitionKt$addListener$2":I
    .end local v1    # "it":Landroid/transition/Transition;
    return-void
.end method

###### Class androidx.core.transition.TransitionKt$doOnPause$$inlined$addListener$default$1 (androidx.core.transition.TransitionKt$doOnPause$$inlined$addListener$default$1)
.class public final Landroidx/core/transition/TransitionKt$doOnPause$$inlined$addListener$default$1;
.super Ljava/lang/Object;
.source "Transition.kt"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/transition/TransitionKt;->doOnPause(Landroid/transition/Transition;Lkotlin/jvm/functions/Function1;)Landroid/transition/Transition$TransitionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Transition.kt\nandroidx/core/transition/TransitionKt$addListener$listener$1\n+ 2 Transition.kt\nandroidx/core/transition/TransitionKt$addListener$1\n+ 3 Transition.kt\nandroidx/core/transition/TransitionKt$addListener$4\n+ 4 Transition.kt\nandroidx/core/transition/TransitionKt$addListener$3\n+ 5 Transition.kt\nandroidx/core/transition/TransitionKt$addListener$2\n*L\n1#1,86:1\n70#2:87\n73#3:88\n72#4:89\n71#5:90\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\n\u00b8\u0006\u0000"
    }
    d2 = {
        "androidx/core/transition/TransitionKt$addListener$listener$1",
        "Landroid/transition/Transition$TransitionListener;",
        "onTransitionCancel",
        "",
        "transition",
        "Landroid/transition/Transition;",
        "onTransitionEnd",
        "onTransitionPause",
        "onTransitionResume",
        "onTransitionStart",
        "core-ktx_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0xb0
.end annotation


# instance fields
.field final synthetic $onPause:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .param p1, "$onPause"    # Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Landroidx/core/transition/TransitionKt$doOnPause$$inlined$addListener$default$1;->$onPause:Lkotlin/jvm/functions/Function1;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/transition/Transition;

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    const/4 v0, 0x0

    .local v0, "$i$a$-addListener-TransitionKt$addListener$3":I
    move-object v1, p1

    .line 89
    .local v1, "it":Landroid/transition/Transition;
    nop

    .line 80
    .end local v0    # "$i$a$-addListener-TransitionKt$addListener$3":I
    .end local v1    # "it":Landroid/transition/Transition;
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/transition/Transition;

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    const/4 v0, 0x0

    .local v0, "$i$a$-addListener-TransitionKt$addListener$1":I
    move-object v1, p1

    .line 87
    .local v1, "it":Landroid/transition/Transition;
    nop

    .line 77
    .end local v0    # "$i$a$-addListener-TransitionKt$addListener$1":I
    .end local v1    # "it":Landroid/transition/Transition;
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .registers 3
    .param p1, "transition"    # Landroid/transition/Transition;

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Landroidx/core/transition/TransitionKt$doOnPause$$inlined$addListener$default$1;->$onPause:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/transition/Transition;

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x0

    .local v0, "$i$a$-addListener-TransitionKt$addListener$4":I
    move-object v1, p1

    .line 88
    .local v1, "it":Landroid/transition/Transition;
    nop

    .line 78
    .end local v0    # "$i$a$-addListener-TransitionKt$addListener$4":I
    .end local v1    # "it":Landroid/transition/Transition;
    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/transition/Transition;

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x0

    .local v0, "$i$a$-addListener-TransitionKt$addListener$2":I
    move-object v1, p1

    .line 90
    .local v1, "it":Landroid/transition/Transition;
    nop

    .line 81
    .end local v0    # "$i$a$-addListener-TransitionKt$addListener$2":I
    .end local v1    # "it":Landroid/transition/Transition;
    return-void
.end method

###### Class androidx.core.transition.TransitionKt$doOnResume$$inlined$addListener$default$1 (androidx.core.transition.TransitionKt$doOnResume$$inlined$addListener$default$1)
.class public final Landroidx/core/transition/TransitionKt$doOnResume$$inlined$addListener$default$1;
.super Ljava/lang/Object;
.source "Transition.kt"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/transition/TransitionKt;->doOnResume(Landroid/transition/Transition;Lkotlin/jvm/functions/Function1;)Landroid/transition/Transition$TransitionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Transition.kt\nandroidx/core/transition/TransitionKt$addListener$listener$1\n+ 2 Transition.kt\nandroidx/core/transition/TransitionKt$addListener$1\n+ 3 Transition.kt\nandroidx/core/transition/TransitionKt$addListener$5\n+ 4 Transition.kt\nandroidx/core/transition/TransitionKt$addListener$3\n+ 5 Transition.kt\nandroidx/core/transition/TransitionKt$addListener$2\n*L\n1#1,86:1\n70#2:87\n74#3:88\n72#4:89\n71#5:90\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\n\u00b8\u0006\u0000"
    }
    d2 = {
        "androidx/core/transition/TransitionKt$addListener$listener$1",
        "Landroid/transition/Transition$TransitionListener;",
        "onTransitionCancel",
        "",
        "transition",
        "Landroid/transition/Transition;",
        "onTransitionEnd",
        "onTransitionPause",
        "onTransitionResume",
        "onTransitionStart",
        "core-ktx_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0xb0
.end annotation


# instance fields
.field final synthetic $onResume:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .param p1, "$onResume"    # Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Landroidx/core/transition/TransitionKt$doOnResume$$inlined$addListener$default$1;->$onResume:Lkotlin/jvm/functions/Function1;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/transition/Transition;

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    const/4 v0, 0x0

    .local v0, "$i$a$-addListener-TransitionKt$addListener$3":I
    move-object v1, p1

    .line 89
    .local v1, "it":Landroid/transition/Transition;
    nop

    .line 80
    .end local v0    # "$i$a$-addListener-TransitionKt$addListener$3":I
    .end local v1    # "it":Landroid/transition/Transition;
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/transition/Transition;

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    const/4 v0, 0x0

    .local v0, "$i$a$-addListener-TransitionKt$addListener$1":I
    move-object v1, p1

    .line 87
    .local v1, "it":Landroid/transition/Transition;
    nop

    .line 77
    .end local v0    # "$i$a$-addListener-TransitionKt$addListener$1":I
    .end local v1    # "it":Landroid/transition/Transition;
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/transition/Transition;

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x0

    .local v0, "$i$a$-addListener-TransitionKt$addListener$5":I
    move-object v1, p1

    .line 88
    .local v1, "it":Landroid/transition/Transition;
    nop

    .line 79
    .end local v0    # "$i$a$-addListener-TransitionKt$addListener$5":I
    .end local v1    # "it":Landroid/transition/Transition;
    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .registers 3
    .param p1, "transition"    # Landroid/transition/Transition;

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Landroidx/core/transition/TransitionKt$doOnResume$$inlined$addListener$default$1;->$onResume:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/transition/Transition;

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x0

    .local v0, "$i$a$-addListener-TransitionKt$addListener$2":I
    move-object v1, p1

    .line 90
    .local v1, "it":Landroid/transition/Transition;
    nop

    .line 81
    .end local v0    # "$i$a$-addListener-TransitionKt$addListener$2":I
    .end local v1    # "it":Landroid/transition/Transition;
    return-void
.end method

###### Class androidx.core.transition.TransitionKt$doOnStart$$inlined$addListener$default$1 (androidx.core.transition.TransitionKt$doOnStart$$inlined$addListener$default$1)
.class public final Landroidx/core/transition/TransitionKt$doOnStart$$inlined$addListener$default$1;
.super Ljava/lang/Object;
.source "Transition.kt"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/transition/TransitionKt;->doOnStart(Landroid/transition/Transition;Lkotlin/jvm/functions/Function1;)Landroid/transition/Transition$TransitionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Transition.kt\nandroidx/core/transition/TransitionKt$addListener$listener$1\n+ 2 Transition.kt\nandroidx/core/transition/TransitionKt$addListener$1\n+ 3 Transition.kt\nandroidx/core/transition/TransitionKt$addListener$4\n+ 4 Transition.kt\nandroidx/core/transition/TransitionKt$addListener$5\n+ 5 Transition.kt\nandroidx/core/transition/TransitionKt$addListener$3\n*L\n1#1,86:1\n70#2:87\n73#3:88\n74#4:89\n72#5:90\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\n\u00b8\u0006\u0000"
    }
    d2 = {
        "androidx/core/transition/TransitionKt$addListener$listener$1",
        "Landroid/transition/Transition$TransitionListener;",
        "onTransitionCancel",
        "",
        "transition",
        "Landroid/transition/Transition;",
        "onTransitionEnd",
        "onTransitionPause",
        "onTransitionResume",
        "onTransitionStart",
        "core-ktx_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0xb0
.end annotation


# instance fields
.field final synthetic $onStart:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .param p1, "$onStart"    # Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Landroidx/core/transition/TransitionKt$doOnStart$$inlined$addListener$default$1;->$onStart:Lkotlin/jvm/functions/Function1;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/transition/Transition;

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    const/4 v0, 0x0

    .local v0, "$i$a$-addListener-TransitionKt$addListener$3":I
    move-object v1, p1

    .line 90
    .local v1, "it":Landroid/transition/Transition;
    nop

    .line 80
    .end local v0    # "$i$a$-addListener-TransitionKt$addListener$3":I
    .end local v1    # "it":Landroid/transition/Transition;
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/transition/Transition;

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    const/4 v0, 0x0

    .local v0, "$i$a$-addListener-TransitionKt$addListener$1":I
    move-object v1, p1

    .line 87
    .local v1, "it":Landroid/transition/Transition;
    nop

    .line 77
    .end local v0    # "$i$a$-addListener-TransitionKt$addListener$1":I
    .end local v1    # "it":Landroid/transition/Transition;
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/transition/Transition;

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x0

    .local v0, "$i$a$-addListener-TransitionKt$addListener$5":I
    move-object v1, p1

    .line 89
    .local v1, "it":Landroid/transition/Transition;
    nop

    .line 79
    .end local v0    # "$i$a$-addListener-TransitionKt$addListener$5":I
    .end local v1    # "it":Landroid/transition/Transition;
    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/transition/Transition;

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x0

    .local v0, "$i$a$-addListener-TransitionKt$addListener$4":I
    move-object v1, p1

    .line 88
    .local v1, "it":Landroid/transition/Transition;
    nop

    .line 78
    .end local v0    # "$i$a$-addListener-TransitionKt$addListener$4":I
    .end local v1    # "it":Landroid/transition/Transition;
    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .registers 3
    .param p1, "transition"    # Landroid/transition/Transition;

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Landroidx/core/transition/TransitionKt$doOnStart$$inlined$addListener$default$1;->$onStart:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
