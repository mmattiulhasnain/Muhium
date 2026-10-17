###### Class kotlin.jdk7.AutoCloseableKt (kotlin.jdk7.AutoCloseableKt)
.class public final Lkotlin/jdk7/AutoCloseableKt;
.super Ljava/lang/Object;
.source "AutoCloseableJVM.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0000\u001a \u0010\u0000\u001a\u00060\u0001j\u0002`\u00052\u000e\u0008\u0004\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0087\u0008\u00f8\u0001\u0000\u001aN\u0010\t\u001a\u0002H\n\"\u0010\u0008\u0000\u0010\u000b*\n\u0018\u00010\u0001j\u0004\u0018\u0001`\u0005\"\u0004\u0008\u0001\u0010\n*\u0002H\u000b2\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u0002H\u000b\u0012\u0004\u0012\u0002H\n0\rH\u0087\u0008\u00f8\u0001\u0000\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u00a2\u0006\u0002\u0010\u000e\u001a\u001e\u0010\u000f\u001a\u00020\u0008*\n\u0018\u00010\u0001j\u0004\u0018\u0001`\u00052\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0001*\u001a\u0008\u0007\u0010\u0000\"\u00020\u00012\u00020\u0001B\u000c\u0008\u0002\u0012\u0008\u0008\u0003\u0012\u0004\u0008\u0008(\u0004\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0012"
    }
    d2 = {
        "AutoCloseable",
        "Ljava/lang/AutoCloseable;",
        "Lkotlin/SinceKotlin;",
        "version",
        "2.0",
        "Lkotlin/AutoCloseable;",
        "closeAction",
        "Lkotlin/Function0;",
        "",
        "use",
        "R",
        "T",
        "block",
        "Lkotlin/Function1;",
        "(Ljava/lang/AutoCloseable;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "closeFinally",
        "cause",
        "",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    pn = "kotlin"
    xi = 0x30
.end annotation


# direct methods
.method private static final AutoCloseable(Lkotlin/jvm/functions/Function0;)Ljava/lang/AutoCloseable;
    .registers 2
    .param p0, "closeAction"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/AutoCloseable;"
        }
    .end annotation

    const-string v0, "closeAction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Lkotlin/jdk7/AutoCloseableKt$AutoCloseable$1;

    invoke-direct {v0, p0}, Lkotlin/jdk7/AutoCloseableKt$AutoCloseable$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Ljava/lang/AutoCloseable;

    return-object v0
.end method

.method public static synthetic AutoCloseable$annotations()V
    .registers 0

    return-void
.end method

.method public static final closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "$this$closeFinally"    # Ljava/lang/AutoCloseable;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 40
    nop

    .line 41
    if-eqz p0, :cond_13

    .line 42
    if-nez p1, :cond_a

    .line 45
    nop

    .line 42
    invoke-static {p0}, Landroidx/documentfile/provider/DocumentsContractApi19$$ExternalSyntheticAutoCloseableDispatcher0;->m(Ljava/lang/Object;)V

    goto :goto_13

    .line 44
    :cond_a
    nop

    .line 45
    :try_start_b
    invoke-static {p0}, Landroidx/documentfile/provider/DocumentsContractApi19$$ExternalSyntheticAutoCloseableDispatcher0;->m(Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_f

    goto :goto_13

    .line 46
    :catchall_f
    move-exception v0

    .line 47
    .local v0, "closeException":Ljava/lang/Throwable;
    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 49
    .end local v0    # "closeException":Ljava/lang/Throwable;
    :cond_13
    :goto_13
    return-void
.end method

.method private static final use(Ljava/lang/AutoCloseable;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .registers 4
    .param p0, "$this$use"    # Ljava/lang/AutoCloseable;
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/AutoCloseable;",
            "R:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, "exception":Ljava/lang/Throwable;
    nop

    .line 29
    :try_start_7
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 34
    invoke-static {p0, v0}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 29
    return-object v1

    .line 30
    :catchall_f
    move-exception v1

    .line 31
    .local v1, "e":Ljava/lang/Throwable;
    move-object v0, v1

    .line 32
    nop

    .end local v0    # "exception":Ljava/lang/Throwable;
    .end local p0    # "$this$use":Ljava/lang/AutoCloseable;
    .end local p1    # "block":Lkotlin/jvm/functions/Function1;
    :try_start_12
    throw v1
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_13

    .line 34
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "exception":Ljava/lang/Throwable;
    .restart local p0    # "$this$use":Ljava/lang/AutoCloseable;
    .restart local p1    # "block":Lkotlin/jvm/functions/Function1;
    :catchall_13
    move-exception v1

    invoke-static {p0, v0}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v1
.end method

###### Class kotlin.jdk7.AutoCloseableKt.AnonymousClass1 (kotlin.jdk7.AutoCloseableKt$AutoCloseable$1)
.class public final Lkotlin/jdk7/AutoCloseableKt$AutoCloseable$1;
.super Ljava/lang/Object;
.source "AutoCloseableJVM.kt"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/jdk7/AutoCloseableKt;->AutoCloseable(Lkotlin/jvm/functions/Function0;)Ljava/lang/AutoCloseable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAutoCloseableJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AutoCloseableJVM.kt\nkotlin/jdk7/AutoCloseableKt$AutoCloseable$1\n*L\n1#1,49:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0xb0
.end annotation


# instance fields
.field final synthetic $closeAction:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/jdk7/AutoCloseableKt$AutoCloseable$1;->$closeAction:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 2

    .line 19
    iget-object v0, p0, Lkotlin/jdk7/AutoCloseableKt$AutoCloseable$1;->$closeAction:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
