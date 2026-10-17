###### Class kotlinx.coroutines.android.HandlerDispatcherKt (kotlinx.coroutines.android.HandlerDispatcherKt)
.class public final Lkotlinx/coroutines/android/HandlerDispatcherKt;
.super Ljava/lang/Object;
.source "HandlerDispatcher.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHandlerDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HandlerDispatcher.kt\nkotlinx/coroutines/android/HandlerDispatcherKt\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 Runnable.kt\nkotlinx/coroutines/RunnableKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,212:1\n314#2,11:213\n314#2,9:224\n323#2,2:234\n17#3:233\n1#4:236\n*S KotlinDebug\n*F\n+ 1 HandlerDispatcher.kt\nkotlinx/coroutines/android/HandlerDispatcherKt\n*L\n189#1:213,11\n194#1:224,9\n194#1:234,2\n195#1:233\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u001a\u0011\u0010\u0008\u001a\u00020\u0001H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\t\u001a\u001e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00072\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00010\rH\u0002\u001a\u0016\u0010\u000e\u001a\u00020\u000b2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00010\rH\u0002\u001a\u001d\u0010\u000f\u001a\u00020\u0003*\u00020\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0007\u00a2\u0006\u0002\u0008\u0013\u001a\u0014\u0010\u0014\u001a\u00020\u0010*\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0001\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0000X\u0081\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0004\u0010\u0005\"\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0018"
    }
    d2 = {
        "MAX_DELAY",
        "",
        "Main",
        "Lkotlinx/coroutines/android/HandlerDispatcher;",
        "getMain$annotations",
        "()V",
        "choreographer",
        "Landroid/view/Choreographer;",
        "awaitFrame",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "postFrameCallback",
        "",
        "cont",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "updateChoreographerAndPostFrameCallback",
        "asCoroutineDispatcher",
        "Landroid/os/Handler;",
        "name",
        "",
        "from",
        "asHandler",
        "Landroid/os/Looper;",
        "async",
        "",
        "kotlinx-coroutines-android"
    }
    k = 0x2
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final MAX_DELAY:J = 0x3fffffffffffffffL

.field public static final Main:Lkotlinx/coroutines/android/HandlerDispatcher;

.field private static volatile choreographer:Landroid/view/Choreographer;


# direct methods
.method public static synthetic $r8$lambda$gp6JLGBkWOxUeE1_JLllkAXyyxM(Lkotlinx/coroutines/CancellableContinuation;J)V
    .registers 3

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/android/HandlerDispatcherKt;->postFrameCallback$lambda-6(Lkotlinx/coroutines/CancellableContinuation;J)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 109
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 236
    const/4 v1, 0x0

    .line 109
    .local v1, "$i$a$-runCatching-HandlerDispatcherKt$Main$1":I
    new-instance v2, Lkotlinx/coroutines/android/HandlerContext;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lkotlinx/coroutines/android/HandlerDispatcherKt;->asHandler(Landroid/os/Looper;Z)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v3, v0, v4, v0}, Lkotlinx/coroutines/android/HandlerContext;-><init>(Landroid/os/Handler;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .end local v1    # "$i$a$-runCatching-HandlerDispatcherKt$Main$1":I
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_18

    goto :goto_23

    :catchall_18
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_23
    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    goto :goto_2b

    :cond_2a
    move-object v0, v1

    :goto_2b
    check-cast v0, Lkotlinx/coroutines/android/HandlerDispatcher;

    sput-object v0, Lkotlinx/coroutines/android/HandlerDispatcherKt;->Main:Lkotlinx/coroutines/android/HandlerDispatcher;

    return-void
.end method

.method public static final synthetic access$postFrameCallback(Landroid/view/Choreographer;Lkotlinx/coroutines/CancellableContinuation;)V
    .registers 2
    .param p0, "choreographer"    # Landroid/view/Choreographer;
    .param p1, "cont"    # Lkotlinx/coroutines/CancellableContinuation;

    .line 1
    invoke-static {p0, p1}, Lkotlinx/coroutines/android/HandlerDispatcherKt;->postFrameCallback(Landroid/view/Choreographer;Lkotlinx/coroutines/CancellableContinuation;)V

    return-void
.end method

.method public static final synthetic access$updateChoreographerAndPostFrameCallback(Lkotlinx/coroutines/CancellableContinuation;)V
    .registers 1
    .param p0, "cont"    # Lkotlinx/coroutines/CancellableContinuation;

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/android/HandlerDispatcherKt;->updateChoreographerAndPostFrameCallback(Lkotlinx/coroutines/CancellableContinuation;)V

    return-void
.end method

.method public static final asHandler(Landroid/os/Looper;Z)Landroid/os/Handler;
    .registers 11
    .param p0, "$this$asHandler"    # Landroid/os/Looper;
    .param p1, "async"    # Z

    .line 86
    if-eqz p1, :cond_5e

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x0

    const-class v3, Landroid/os/Handler;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lt v0, v1, :cond_2e

    .line 92
    new-array v0, v5, [Ljava/lang/Class;

    const-class v1, Landroid/os/Looper;

    aput-object v1, v0, v4

    const-string v1, "createAsync"

    invoke-virtual {v3, v1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 93
    .local v0, "factoryMethod":Ljava/lang/reflect/Method;
    new-array v1, v5, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_26

    check-cast v1, Landroid/os/Handler;

    return-object v1

    :cond_26
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type android.os.Handler"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0    # "factoryMethod":Ljava/lang/reflect/Method;
    :cond_2e
    const/4 v0, 0x0

    .line 97
    .local v0, "constructor":Ljava/lang/reflect/Constructor;
    nop

    .line 98
    const/4 v1, 0x3

    :try_start_31
    new-array v6, v1, [Ljava/lang/Class;

    const-class v7, Landroid/os/Looper;

    aput-object v7, v6, v4

    const-class v7, Landroid/os/Handler$Callback;

    aput-object v7, v6, v5

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3
    :try_end_44
    .catch Ljava/lang/NoSuchMethodException; {:try_start_31 .. :try_end_44} :catch_57

    .line 104
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;
    .local v3, "constructor":Ljava/lang/reflect/Constructor;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    aput-object v2, v1, v5

    aput-object v0, v1, v8

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0

    .line 100
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;
    .restart local v0    # "constructor":Ljava/lang/reflect/Constructor;
    :catch_57
    move-exception v1

    .line 102
    .local v1, "ignored":Ljava/lang/NoSuchMethodException;
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v2

    .line 87
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v1    # "ignored":Ljava/lang/NoSuchMethodException;
    :cond_5e
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public static final awaitFrame(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 12
    .param p0, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 187
    sget-object v0, Lkotlinx/coroutines/android/HandlerDispatcherKt;->choreographer:Landroid/view/Choreographer;

    .line 188
    .local v0, "choreographer":Landroid/view/Choreographer;
    const/4 v1, 0x1

    if-eqz v0, :cond_2b

    .line 189
    const/4 v2, 0x0

    .line 213
    .local v2, "$i$f$suspendCancellableCoroutine":I
    move-object v3, p0

    .local v3, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v4, 0x0

    .line 214
    .local v4, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    new-instance v5, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 220
    .local v5, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-virtual {v5}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 221
    move-object v1, v5

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    .local v1, "cont":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v6, 0x0

    .line 190
    .local v6, "$i$a$-suspendCancellableCoroutine-HandlerDispatcherKt$awaitFrame$2":I
    invoke-static {v0, v1}, Lkotlinx/coroutines/android/HandlerDispatcherKt;->access$postFrameCallback(Landroid/view/Choreographer;Lkotlinx/coroutines/CancellableContinuation;)V

    .line 191
    nop

    .line 222
    .end local v1    # "cont":Lkotlinx/coroutines/CancellableContinuation;
    .end local v6    # "$i$a$-suspendCancellableCoroutine-HandlerDispatcherKt$awaitFrame$2":I
    invoke-virtual {v5}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v1

    .line 213
    .end local v3    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v4    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    .end local v5    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_29

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 223
    :cond_29
    nop

    .line 189
    .end local v2    # "$i$f$suspendCancellableCoroutine":I
    return-object v1

    .line 194
    :cond_2b
    const/4 v2, 0x0

    .line 224
    .restart local v2    # "$i$f$suspendCancellableCoroutine":I
    move-object v3, p0

    .restart local v3    # "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v4, 0x0

    .line 225
    .restart local v4    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    new-instance v5, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 231
    .restart local v5    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-virtual {v5}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 232
    move-object v1, v5

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    .restart local v1    # "cont":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v6, 0x0

    .line 195
    .local v6, "$i$a$-suspendCancellableCoroutine-HandlerDispatcherKt$awaitFrame$3":I
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v7

    sget-object v8, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    check-cast v8, Lkotlin/coroutines/CoroutineContext;

    const/4 v9, 0x0

    .line 233
    .local v9, "$i$f$Runnable":I
    new-instance v10, Lkotlinx/coroutines/android/HandlerDispatcherKt$awaitFrame$lambda-3$$inlined$Runnable$1;

    invoke-direct {v10, v1}, Lkotlinx/coroutines/android/HandlerDispatcherKt$awaitFrame$lambda-3$$inlined$Runnable$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    check-cast v10, Ljava/lang/Runnable;

    .line 195
    .end local v9    # "$i$f$Runnable":I
    invoke-virtual {v7, v8, v10}, Lkotlinx/coroutines/MainCoroutineDispatcher;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    .line 198
    nop

    .line 234
    .end local v1    # "cont":Lkotlinx/coroutines/CancellableContinuation;
    .end local v6    # "$i$a$-suspendCancellableCoroutine-HandlerDispatcherKt$awaitFrame$3":I
    invoke-virtual {v5}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v1

    .line 224
    .end local v3    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v4    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    .end local v5    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_5f

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 235
    :cond_5f
    nop

    .line 194
    .end local v2    # "$i$f$suspendCancellableCoroutine":I
    return-object v1
.end method

.method public static final from(Landroid/os/Handler;)Lkotlinx/coroutines/android/HandlerDispatcher;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lkotlinx/coroutines/android/HandlerDispatcherKt;->from$default(Landroid/os/Handler;Ljava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/android/HandlerDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public static final from(Landroid/os/Handler;Ljava/lang/String;)Lkotlinx/coroutines/android/HandlerDispatcher;
    .registers 3
    .param p0, "$this$asCoroutineDispatcher"    # Landroid/os/Handler;
    .param p1, "name"    # Ljava/lang/String;

    .line 79
    new-instance v0, Lkotlinx/coroutines/android/HandlerContext;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/android/HandlerContext;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    check-cast v0, Lkotlinx/coroutines/android/HandlerDispatcher;

    return-object v0
.end method

.method public static synthetic from$default(Landroid/os/Handler;Ljava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/android/HandlerDispatcher;
    .registers 4

    .line 78
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    :cond_5
    invoke-static {p0, p1}, Lkotlinx/coroutines/android/HandlerDispatcherKt;->from(Landroid/os/Handler;Ljava/lang/String;)Lkotlinx/coroutines/android/HandlerDispatcher;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getMain$annotations()V
    .registers 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Use Dispatchers.Main instead"
    .end annotation

    return-void
.end method

.method private static final postFrameCallback(Landroid/view/Choreographer;Lkotlinx/coroutines/CancellableContinuation;)V
    .registers 3
    .param p0, "choreographer"    # Landroid/view/Choreographer;
    .param p1, "cont"    # Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Choreographer;",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 208
    new-instance v0, Lkotlinx/coroutines/android/HandlerDispatcherKt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/android/HandlerDispatcherKt$$ExternalSyntheticLambda0;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    invoke-virtual {p0, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 211
    return-void
.end method

.method private static final postFrameCallback$lambda-6(Lkotlinx/coroutines/CancellableContinuation;J)V
    .registers 7
    .param p0, "$cont"    # Lkotlinx/coroutines/CancellableContinuation;
    .param p1, "nanos"    # J

    .line 209
    move-object v0, p0

    .line 236
    .local v0, "$this$postFrameCallback_u24lambda_u2d6_u24lambda_u2d5":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v1, 0x0

    .line 209
    .local v1, "$i$a$-with-HandlerDispatcherKt$postFrameCallback$1$1":I
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lkotlinx/coroutines/CancellableContinuation;->resumeUndispatched(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Object;)V

    .line 210
    .end local v0    # "$this$postFrameCallback_u24lambda_u2d6_u24lambda_u2d5":Lkotlinx/coroutines/CancellableContinuation;
    .end local v1    # "$i$a$-with-HandlerDispatcherKt$postFrameCallback$1$1":I
    return-void
.end method

.method private static final updateChoreographerAndPostFrameCallback(Lkotlinx/coroutines/CancellableContinuation;)V
    .registers 4
    .param p0, "cont"    # Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 202
    sget-object v0, Lkotlinx/coroutines/android/HandlerDispatcherKt;->choreographer:Landroid/view/Choreographer;

    if-nez v0, :cond_f

    .line 203
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v0

    .line 236
    .local v1, "it":Landroid/view/Choreographer;
    const/4 v2, 0x0

    .line 203
    .local v2, "$i$a$-also-HandlerDispatcherKt$updateChoreographerAndPostFrameCallback$choreographer$1":I
    sput-object v1, Lkotlinx/coroutines/android/HandlerDispatcherKt;->choreographer:Landroid/view/Choreographer;

    .line 202
    .end local v1    # "it":Landroid/view/Choreographer;
    .end local v2    # "$i$a$-also-HandlerDispatcherKt$updateChoreographerAndPostFrameCallback$choreographer$1":I
    :cond_f
    nop

    .line 204
    .local v0, "choreographer":Landroid/view/Choreographer;
    invoke-static {v0, p0}, Lkotlinx/coroutines/android/HandlerDispatcherKt;->postFrameCallback(Landroid/view/Choreographer;Lkotlinx/coroutines/CancellableContinuation;)V

    .line 205
    return-void
.end method

###### Class kotlinx.coroutines.android.HandlerDispatcherKt$$ExternalSyntheticLambda0 (kotlinx.coroutines.android.HandlerDispatcherKt$$ExternalSyntheticLambda0)
.class public final synthetic Lkotlinx/coroutines/android/HandlerDispatcherKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lkotlinx/coroutines/android/HandlerDispatcherKt;"
    method = "postFrameCallback$lambda-6"
    proto = "(Lkotlinx/coroutines/CancellableContinuation;J)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x1c
    versionHash = "3b119036505a817327d30bbe4a430e8676906c2ab0a3363856806bcd3b289007"
.end annotation


# instance fields
.field public final synthetic f$0:Lkotlinx/coroutines/CancellableContinuation;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/CancellableContinuation;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/android/HandlerDispatcherKt$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/CancellableContinuation;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .registers 4

    .line 0
    iget-object v0, p0, Lkotlinx/coroutines/android/HandlerDispatcherKt$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/CancellableContinuation;

    invoke-static {v0, p1, p2}, Lkotlinx/coroutines/android/HandlerDispatcherKt;->$r8$lambda$gp6JLGBkWOxUeE1_JLllkAXyyxM(Lkotlinx/coroutines/CancellableContinuation;J)V

    return-void
.end method

###### Class kotlinx.coroutines.android.HandlerDispatcherKt$awaitFrame$lambda3$$inlined$Runnable$1 (kotlinx.coroutines.android.HandlerDispatcherKt$awaitFrame$lambda-3$$inlined$Runnable$1)
.class public final Lkotlinx/coroutines/android/HandlerDispatcherKt$awaitFrame$lambda-3$$inlined$Runnable$1;
.super Ljava/lang/Object;
.source "Runnable.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/android/HandlerDispatcherKt;->awaitFrame(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRunnable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Runnable.kt\nkotlinx/coroutines/RunnableKt$Runnable$1\n+ 2 HandlerDispatcher.kt\nkotlinx/coroutines/android/HandlerDispatcherKt\n*L\n1#1,18:1\n196#2,2:19\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "kotlinx/coroutines/RunnableKt$Runnable$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $cont$inlined:Lkotlinx/coroutines/CancellableContinuation;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CancellableContinuation;)V
    .registers 2

    iput-object p1, p0, Lkotlinx/coroutines/android/HandlerDispatcherKt$awaitFrame$lambda-3$$inlined$Runnable$1;->$cont$inlined:Lkotlinx/coroutines/CancellableContinuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 17
    const/4 v0, 0x0

    .line 19
    .local v0, "$i$a$-Runnable-HandlerDispatcherKt$awaitFrame$3$1":I
    iget-object v1, p0, Lkotlinx/coroutines/android/HandlerDispatcherKt$awaitFrame$lambda-3$$inlined$Runnable$1;->$cont$inlined:Lkotlinx/coroutines/CancellableContinuation;

    invoke-static {v1}, Lkotlinx/coroutines/android/HandlerDispatcherKt;->access$updateChoreographerAndPostFrameCallback(Lkotlinx/coroutines/CancellableContinuation;)V

    .line 20
    nop

    .end local v0    # "$i$a$-Runnable-HandlerDispatcherKt$awaitFrame$3$1":I
    return-void
.end method
