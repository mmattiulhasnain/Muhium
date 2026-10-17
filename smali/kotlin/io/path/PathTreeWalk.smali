###### Class kotlin.io.path.PathTreeWalk (kotlin.io.path.PathTreeWalk)
.class public final Lkotlin/io/path/PathTreeWalk;
.super Ljava/lang/Object;
.source "PathTreeWalk.kt"

# interfaces
.implements Lkotlin/sequences/Sequence;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/sequences/Sequence<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010(\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0016H\u0096\u0002JB\u0010\u0017\u001a\u00020\u0018*\u0008\u0012\u0004\u0012\u00020\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0018\u0010\u001e\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001b0 \u0012\u0004\u0012\u00020\u00180\u001fH\u0082H\u00a2\u0006\u0002\u0010!J\u000e\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0016H\u0002J\u000e\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0016H\u0002R\u000e\u0010\u0003\u001a\u00020\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0004\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\tR\u0014\u0010\n\u001a\u00020\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\rR\u0014\u0010\u0014\u001a\u00020\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\r\u00a8\u0006$"
    }
    d2 = {
        "Lkotlin/io/path/PathTreeWalk;",
        "Lkotlin/sequences/Sequence;",
        "Ljava/nio/file/Path;",
        "start",
        "options",
        "",
        "Lkotlin/io/path/PathWalkOption;",
        "<init>",
        "(Ljava/nio/file/Path;[Lkotlin/io/path/PathWalkOption;)V",
        "[Lkotlin/io/path/PathWalkOption;",
        "followLinks",
        "",
        "getFollowLinks",
        "()Z",
        "linkOptions",
        "Ljava/nio/file/LinkOption;",
        "getLinkOptions",
        "()[Ljava/nio/file/LinkOption;",
        "includeDirectories",
        "getIncludeDirectories",
        "isBFS",
        "iterator",
        "",
        "yieldIfNeeded",
        "",
        "Lkotlin/sequences/SequenceScope;",
        "node",
        "Lkotlin/io/path/PathNode;",
        "entriesReader",
        "Lkotlin/io/path/DirectoryEntriesReader;",
        "entriesAction",
        "Lkotlin/Function1;",
        "",
        "(Lkotlin/sequences/SequenceScope;Lkotlin/io/path/PathNode;Lkotlin/io/path/DirectoryEntriesReader;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "dfsIterator",
        "bfsIterator",
        "kotlin-stdlib-jdk7"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final options:[Lkotlin/io/path/PathWalkOption;

.field private final start:Ljava/nio/file/Path;


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;[Lkotlin/io/path/PathWalkOption;)V
    .registers 4
    .param p1, "start"    # Ljava/nio/file/Path;
    .param p2, "options"    # [Lkotlin/io/path/PathWalkOption;

    const-string v0, "start"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lkotlin/io/path/PathTreeWalk;->start:Ljava/nio/file/Path;

    .line 22
    iput-object p2, p0, Lkotlin/io/path/PathTreeWalk;->options:[Lkotlin/io/path/PathWalkOption;

    .line 20
    return-void
.end method

.method public static final synthetic access$getFollowLinks(Lkotlin/io/path/PathTreeWalk;)Z
    .registers 2
    .param p0, "$this"    # Lkotlin/io/path/PathTreeWalk;

    .line 20
    invoke-direct {p0}, Lkotlin/io/path/PathTreeWalk;->getFollowLinks()Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$getIncludeDirectories(Lkotlin/io/path/PathTreeWalk;)Z
    .registers 2
    .param p0, "$this"    # Lkotlin/io/path/PathTreeWalk;

    .line 20
    invoke-direct {p0}, Lkotlin/io/path/PathTreeWalk;->getIncludeDirectories()Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$getLinkOptions(Lkotlin/io/path/PathTreeWalk;)[Ljava/nio/file/LinkOption;
    .registers 2
    .param p0, "$this"    # Lkotlin/io/path/PathTreeWalk;

    .line 20
    invoke-direct {p0}, Lkotlin/io/path/PathTreeWalk;->getLinkOptions()[Ljava/nio/file/LinkOption;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getStart$p(Lkotlin/io/path/PathTreeWalk;)Ljava/nio/file/Path;
    .registers 2
    .param p0, "$this"    # Lkotlin/io/path/PathTreeWalk;

    .line 20
    iget-object v0, p0, Lkotlin/io/path/PathTreeWalk;->start:Ljava/nio/file/Path;

    return-object v0
.end method

.method private final bfsIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;-><init>(Lkotlin/io/path/PathTreeWalk;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->iterator(Lkotlin/jvm/functions/Function2;)Ljava/util/Iterator;

    move-result-object v0

    .line 105
    return-object v0
.end method

.method private final dfsIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 64
    new-instance v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;-><init>(Lkotlin/io/path/PathTreeWalk;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->iterator(Lkotlin/jvm/functions/Function2;)Ljava/util/Iterator;

    move-result-object v0

    .line 90
    return-object v0
.end method

.method private final getFollowLinks()Z
    .registers 3

    .line 26
    iget-object v0, p0, Lkotlin/io/path/PathTreeWalk;->options:[Lkotlin/io/path/PathWalkOption;

    sget-object v1, Lkotlin/io/path/PathWalkOption;->FOLLOW_LINKS:Lkotlin/io/path/PathWalkOption;

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final getIncludeDirectories()Z
    .registers 3

    .line 32
    iget-object v0, p0, Lkotlin/io/path/PathTreeWalk;->options:[Lkotlin/io/path/PathWalkOption;

    sget-object v1, Lkotlin/io/path/PathWalkOption;->INCLUDE_DIRECTORIES:Lkotlin/io/path/PathWalkOption;

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final getLinkOptions()[Ljava/nio/file/LinkOption;
    .registers 3

    .line 29
    sget-object v0, Lkotlin/io/path/LinkFollowing;->INSTANCE:Lkotlin/io/path/LinkFollowing;

    invoke-direct {p0}, Lkotlin/io/path/PathTreeWalk;->getFollowLinks()Z

    move-result v1

    invoke-virtual {v0, v1}, Lkotlin/io/path/LinkFollowing;->toLinkOptions(Z)[Ljava/nio/file/LinkOption;

    move-result-object v0

    return-object v0
.end method

.method private final isBFS()Z
    .registers 3

    .line 35
    iget-object v0, p0, Lkotlin/io/path/PathTreeWalk;->options:[Lkotlin/io/path/PathWalkOption;

    sget-object v1, Lkotlin/io/path/PathWalkOption;->BREADTH_FIRST:Lkotlin/io/path/PathWalkOption;

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final yieldIfNeeded(Lkotlin/sequences/SequenceScope;Lkotlin/io/path/PathNode;Lkotlin/io/path/DirectoryEntriesReader;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 12
    .param p1, "$this$yieldIfNeeded"    # Lkotlin/sequences/SequenceScope;
    .param p2, "node"    # Lkotlin/io/path/PathNode;
    .param p3, "entriesReader"    # Lkotlin/io/path/DirectoryEntriesReader;
    .param p4, "entriesAction"    # Lkotlin/jvm/functions/Function1;
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/SequenceScope<",
            "-",
            "Ljava/nio/file/Path;",
            ">;",
            "Lkotlin/io/path/PathNode;",
            "Lkotlin/io/path/DirectoryEntriesReader;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lkotlin/io/path/PathNode;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 44
    .local v0, "$i$f$yieldIfNeeded":I
    invoke-virtual {p2}, Lkotlin/io/path/PathNode;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    .line 45
    .local v1, "path":Ljava/nio/file/Path;
    invoke-virtual {p2}, Lkotlin/io/path/PathNode;->getParent()Lkotlin/io/path/PathNode;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 47
    invoke-static {v1}, Lkotlin/io/path/PathsKt;->checkFileName(Ljava/nio/file/Path;)V

    .line 49
    :cond_e
    invoke-static {p0}, Lkotlin/io/path/PathTreeWalk;->access$getLinkOptions(Lkotlin/io/path/PathTreeWalk;)[Ljava/nio/file/LinkOption;

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/nio/file/LinkOption;

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 50
    invoke-static {p2}, Lkotlin/io/path/PathTreeWalkKt;->access$createsCycle(Lkotlin/io/path/PathNode;)Z

    move-result v2

    if-nez v2, :cond_55

    .line 53
    invoke-static {p0}, Lkotlin/io/path/PathTreeWalk;->access$getIncludeDirectories(Lkotlin/io/path/PathTreeWalk;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 54
    invoke-virtual {p1, v1, p5}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 56
    :cond_35
    invoke-static {p0}, Lkotlin/io/path/PathTreeWalk;->access$getLinkOptions(Lkotlin/io/path/PathTreeWalk;)[Ljava/nio/file/LinkOption;

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/nio/file/LinkOption;

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 57
    invoke-virtual {p3, p2}, Lkotlin/io/path/DirectoryEntriesReader;->readEntries(Lkotlin/io/path/PathNode;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p4, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_54
    goto :goto_79

    .line 51
    :cond_55
    new-instance v2, Ljava/nio/file/FileSystemLoopException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/nio/file/FileSystemLoopException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    :cond_5f
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/nio/file/LinkOption;

    const/4 v4, 0x0

    sget-object v5, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v5, v3, v4

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 60
    invoke-virtual {p1, v1, p5}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 62
    return-object v2

    :cond_79
    :goto_79
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lkotlin/io/path/PathTreeWalk;->isBFS()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lkotlin/io/path/PathTreeWalk;->bfsIterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_f

    :cond_b
    invoke-direct {p0}, Lkotlin/io/path/PathTreeWalk;->dfsIterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    return-object v0
.end method

###### Class kotlin.io.path.PathTreeWalk.AnonymousClass1 (kotlin.io.path.PathTreeWalk$bfsIterator$1)
.class final Lkotlin/io/path/PathTreeWalk$bfsIterator$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "PathTreeWalk.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/io/path/PathTreeWalk;->bfsIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/sequences/SequenceScope<",
        "-",
        "Ljava/nio/file/Path;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPathTreeWalk.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PathTreeWalk.kt\nkotlin/io/path/PathTreeWalk$bfsIterator$1\n+ 2 PathTreeWalk.kt\nkotlin/io/path/PathTreeWalk\n*L\n1#1,180:1\n44#2,19:181\n*S KotlinDebug\n*F\n+ 1 PathTreeWalk.kt\nkotlin/io/path/PathTreeWalk$bfsIterator$1\n*L\n101#1:181,19\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlin/sequences/SequenceScope;",
        "Ljava/nio/file/Path;"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlin.io.path.PathTreeWalk$bfsIterator$1"
    f = "PathTreeWalk.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1
    }
    l = {
        0xbf,
        0xc5
    }
    m = "invokeSuspend"
    n = {
        "$this$iterator",
        "queue",
        "entriesReader",
        "pathNode",
        "this_$iv",
        "$this$yieldIfNeeded$iv",
        "path$iv",
        "$i$f$yieldIfNeeded",
        "$this$iterator",
        "queue",
        "entriesReader",
        "pathNode",
        "this_$iv",
        "$this$yieldIfNeeded$iv",
        "path$iv",
        "$i$f$yieldIfNeeded"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "I$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "I$0"
    }
.end annotation


# instance fields
.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lkotlin/io/path/PathTreeWalk;


# direct methods
.method constructor <init>(Lkotlin/io/path/PathTreeWalk;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/io/path/PathTreeWalk;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/io/path/PathTreeWalk$bfsIterator$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->this$0:Lkotlin/io/path/PathTreeWalk;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;

    iget-object v1, p0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->this$0:Lkotlin/io/path/PathTreeWalk;

    invoke-direct {v0, v1, p2}, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;-><init>(Lkotlin/io/path/PathTreeWalk;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlin/sequences/SequenceScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->invoke(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/SequenceScope<",
            "-",
            "Ljava/nio/file/Path;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 19
    .param p1, "$result"    # Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v1, v0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlin/sequences/SequenceScope;

    .local v1, "$this$iterator":Lkotlin/sequences/SequenceScope;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 92
    iget v3, v0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->label:I

    packed-switch v3, :pswitch_data_18c

    .end local p0    # "this":Lkotlin/io/path/PathTreeWalk$bfsIterator$1;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .restart local p0    # "this":Lkotlin/io/path/PathTreeWalk$bfsIterator$1;
    :pswitch_17
    iget v3, v0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->I$0:I

    .local v3, "$i$f$yieldIfNeeded":I
    iget-object v4, v0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$6:Ljava/lang/Object;

    check-cast v4, Ljava/nio/file/Path;

    .local v4, "path$iv":Ljava/nio/file/Path;
    iget-object v5, v0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$5:Ljava/lang/Object;

    check-cast v5, Lkotlin/sequences/SequenceScope;

    .local v5, "$this$yieldIfNeeded$iv":Lkotlin/sequences/SequenceScope;
    iget-object v6, v0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$4:Ljava/lang/Object;

    check-cast v6, Lkotlin/io/path/PathTreeWalk;

    .local v6, "this_$iv":Lkotlin/io/path/PathTreeWalk;
    iget-object v7, v0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$3:Ljava/lang/Object;

    check-cast v7, Lkotlin/io/path/PathNode;

    .local v7, "pathNode":Lkotlin/io/path/PathNode;
    iget-object v8, v0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$2:Ljava/lang/Object;

    check-cast v8, Lkotlin/io/path/DirectoryEntriesReader;

    .local v8, "entriesReader":Lkotlin/io/path/DirectoryEntriesReader;
    iget-object v9, v0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$1:Ljava/lang/Object;

    check-cast v9, Lkotlin/collections/ArrayDeque;

    .local v9, "queue":Lkotlin/collections/ArrayDeque;
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v4

    move-object v10, v9

    move-object v4, v2

    move-object v9, v8

    move-object v2, v1

    move-object v8, v7

    move-object/from16 v1, p1

    move-object v7, v6

    move-object v6, v5

    move-object v5, v0

    goto/16 :goto_182

    .end local v3    # "$i$f$yieldIfNeeded":I
    .end local v4    # "path$iv":Ljava/nio/file/Path;
    .end local v5    # "$this$yieldIfNeeded$iv":Lkotlin/sequences/SequenceScope;
    .end local v6    # "this_$iv":Lkotlin/io/path/PathTreeWalk;
    .end local v7    # "pathNode":Lkotlin/io/path/PathNode;
    .end local v8    # "entriesReader":Lkotlin/io/path/DirectoryEntriesReader;
    .end local v9    # "queue":Lkotlin/collections/ArrayDeque;
    :pswitch_41
    iget v3, v0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->I$0:I

    .restart local v3    # "$i$f$yieldIfNeeded":I
    iget-object v4, v0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$6:Ljava/lang/Object;

    check-cast v4, Ljava/nio/file/Path;

    .restart local v4    # "path$iv":Ljava/nio/file/Path;
    iget-object v5, v0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$5:Ljava/lang/Object;

    check-cast v5, Lkotlin/sequences/SequenceScope;

    .restart local v5    # "$this$yieldIfNeeded$iv":Lkotlin/sequences/SequenceScope;
    iget-object v6, v0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$4:Ljava/lang/Object;

    check-cast v6, Lkotlin/io/path/PathTreeWalk;

    .restart local v6    # "this_$iv":Lkotlin/io/path/PathTreeWalk;
    iget-object v7, v0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$3:Ljava/lang/Object;

    check-cast v7, Lkotlin/io/path/PathNode;

    .restart local v7    # "pathNode":Lkotlin/io/path/PathNode;
    iget-object v8, v0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$2:Ljava/lang/Object;

    check-cast v8, Lkotlin/io/path/DirectoryEntriesReader;

    .restart local v8    # "entriesReader":Lkotlin/io/path/DirectoryEntriesReader;
    iget-object v9, v0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$1:Ljava/lang/Object;

    check-cast v9, Lkotlin/collections/ArrayDeque;

    .restart local v9    # "queue":Lkotlin/collections/ArrayDeque;
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v10, v3

    move-object v11, v4

    move-object v4, v0

    move-object v3, v2

    move-object v2, v1

    move-object/from16 v1, p1

    goto/16 :goto_106

    .end local v3    # "$i$f$yieldIfNeeded":I
    .end local v4    # "path$iv":Ljava/nio/file/Path;
    .end local v5    # "$this$yieldIfNeeded$iv":Lkotlin/sequences/SequenceScope;
    .end local v6    # "this_$iv":Lkotlin/io/path/PathTreeWalk;
    .end local v7    # "pathNode":Lkotlin/io/path/PathNode;
    .end local v8    # "entriesReader":Lkotlin/io/path/DirectoryEntriesReader;
    .end local v9    # "queue":Lkotlin/collections/ArrayDeque;
    :pswitch_67
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 94
    new-instance v3, Lkotlin/collections/ArrayDeque;

    invoke-direct {v3}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 95
    .local v3, "queue":Lkotlin/collections/ArrayDeque;
    new-instance v4, Lkotlin/io/path/DirectoryEntriesReader;

    iget-object v5, v0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->this$0:Lkotlin/io/path/PathTreeWalk;

    invoke-static {v5}, Lkotlin/io/path/PathTreeWalk;->access$getFollowLinks(Lkotlin/io/path/PathTreeWalk;)Z

    move-result v5

    invoke-direct {v4, v5}, Lkotlin/io/path/DirectoryEntriesReader;-><init>(Z)V

    .line 97
    .local v4, "entriesReader":Lkotlin/io/path/DirectoryEntriesReader;
    new-instance v5, Lkotlin/io/path/PathNode;

    iget-object v6, v0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->this$0:Lkotlin/io/path/PathTreeWalk;

    invoke-static {v6}, Lkotlin/io/path/PathTreeWalk;->access$getStart$p(Lkotlin/io/path/PathTreeWalk;)Ljava/nio/file/Path;

    move-result-object v6

    iget-object v7, v0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->this$0:Lkotlin/io/path/PathTreeWalk;

    invoke-static {v7}, Lkotlin/io/path/PathTreeWalk;->access$getStart$p(Lkotlin/io/path/PathTreeWalk;)Ljava/nio/file/Path;

    move-result-object v7

    iget-object v8, v0, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->this$0:Lkotlin/io/path/PathTreeWalk;

    invoke-static {v8}, Lkotlin/io/path/PathTreeWalk;->access$getLinkOptions(Lkotlin/io/path/PathTreeWalk;)[Ljava/nio/file/LinkOption;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/io/path/PathTreeWalkKt;->access$keyOf(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lkotlin/io/path/PathNode;-><init>(Ljava/nio/file/Path;Ljava/lang/Object;Lkotlin/io/path/PathNode;)V

    invoke-virtual {v3, v5}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    move-object v9, v3

    move-object v8, v4

    move-object v4, v0

    move-object v3, v2

    move-object v2, v1

    move-object/from16 v1, p1

    .line 99
    .end local v3    # "queue":Lkotlin/collections/ArrayDeque;
    .end local p0    # "this":Lkotlin/io/path/PathTreeWalk$bfsIterator$1;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    .local v2, "$this$iterator":Lkotlin/sequences/SequenceScope;
    .local v4, "this":Lkotlin/io/path/PathTreeWalk$bfsIterator$1;
    .restart local v8    # "entriesReader":Lkotlin/io/path/DirectoryEntriesReader;
    .restart local v9    # "queue":Lkotlin/collections/ArrayDeque;
    :cond_a0
    :goto_a0
    move-object v5, v9

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_188

    .line 100
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lkotlin/io/path/PathNode;

    .line 101
    .restart local v7    # "pathNode":Lkotlin/io/path/PathNode;
    iget-object v6, v4, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->this$0:Lkotlin/io/path/PathTreeWalk;

    .restart local v6    # "this_$iv":Lkotlin/io/path/PathTreeWalk;
    move-object v5, v2

    .restart local v5    # "$this$yieldIfNeeded$iv":Lkotlin/sequences/SequenceScope;
    const/4 v10, 0x0

    .line 181
    .local v10, "$i$f$yieldIfNeeded":I
    invoke-virtual {v7}, Lkotlin/io/path/PathNode;->getPath()Ljava/nio/file/Path;

    move-result-object v11

    .line 182
    .local v11, "path$iv":Ljava/nio/file/Path;
    invoke-virtual {v7}, Lkotlin/io/path/PathNode;->getParent()Lkotlin/io/path/PathNode;

    move-result-object v12

    if-eqz v12, :cond_c1

    .line 184
    invoke-static {v11}, Lkotlin/io/path/PathsKt;->checkFileName(Ljava/nio/file/Path;)V

    .line 186
    :cond_c1
    invoke-static {v6}, Lkotlin/io/path/PathTreeWalk;->access$getLinkOptions(Lkotlin/io/path/PathTreeWalk;)[Ljava/nio/file/LinkOption;

    move-result-object v12

    array-length v13, v12

    invoke-static {v12, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/nio/file/LinkOption;

    array-length v13, v12

    invoke-static {v12, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/nio/file/LinkOption;

    invoke-static {v11, v12}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v12

    const/4 v13, 0x1

    if-eqz v12, :cond_137

    .line 187
    invoke-static {v7}, Lkotlin/io/path/PathTreeWalkKt;->access$createsCycle(Lkotlin/io/path/PathNode;)Z

    move-result v12

    if-nez v12, :cond_12d

    .line 190
    invoke-static {v6}, Lkotlin/io/path/PathTreeWalk;->access$getIncludeDirectories(Lkotlin/io/path/PathTreeWalk;)Z

    move-result v12

    if-eqz v12, :cond_107

    .line 191
    move-object v12, v4

    check-cast v12, Lkotlin/coroutines/Continuation;

    iput-object v2, v4, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$0:Ljava/lang/Object;

    iput-object v9, v4, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$1:Ljava/lang/Object;

    iput-object v8, v4, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$2:Ljava/lang/Object;

    iput-object v7, v4, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$3:Ljava/lang/Object;

    iput-object v6, v4, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$4:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    iput-object v14, v4, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$5:Ljava/lang/Object;

    iput-object v11, v4, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$6:Ljava/lang/Object;

    iput v10, v4, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->I$0:I

    iput v13, v4, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->label:I

    invoke-virtual {v5, v11, v12}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v3, :cond_106

    .line 92
    return-object v3

    .line 193
    :cond_106
    :goto_106
    nop

    :cond_107
    invoke-static {v6}, Lkotlin/io/path/PathTreeWalk;->access$getLinkOptions(Lkotlin/io/path/PathTreeWalk;)[Ljava/nio/file/LinkOption;

    move-result-object v12

    array-length v13, v12

    invoke-static {v12, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/nio/file/LinkOption;

    array-length v13, v12

    invoke-static {v12, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/nio/file/LinkOption;

    invoke-static {v11, v12}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v12

    if-eqz v12, :cond_a0

    .line 194
    invoke-virtual {v8, v7}, Lkotlin/io/path/DirectoryEntriesReader;->readEntries(Lkotlin/io/path/PathNode;)Ljava/util/List;

    move-result-object v12

    .local v12, "entries":Ljava/util/List;
    const/4 v13, 0x0

    .line 102
    .local v13, "$i$a$-yieldIfNeeded-PathTreeWalk$bfsIterator$1$1":I
    move-object v14, v12

    check-cast v14, Ljava/util/Collection;

    invoke-virtual {v9, v14}, Lkotlin/collections/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 103
    nop

    .line 194
    .end local v12    # "entries":Ljava/util/List;
    .end local v13    # "$i$a$-yieldIfNeeded-PathTreeWalk$bfsIterator$1$1":I
    goto/16 :goto_a0

    .line 188
    :cond_12d
    new-instance v3, Ljava/nio/file/FileSystemLoopException;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/nio/file/FileSystemLoopException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 196
    :cond_137
    new-array v12, v13, [Ljava/nio/file/LinkOption;

    const/4 v14, 0x0

    sget-object v15, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v15, v12, v14

    invoke-static {v12, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/nio/file/LinkOption;

    invoke-static {v11, v12}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v12

    if-eqz v12, :cond_a0

    .line 197
    move-object v12, v4

    check-cast v12, Lkotlin/coroutines/Continuation;

    iput-object v2, v4, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$0:Ljava/lang/Object;

    iput-object v9, v4, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$1:Ljava/lang/Object;

    iput-object v8, v4, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$2:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iput-object v13, v4, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$3:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iput-object v13, v4, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$4:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iput-object v13, v4, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$5:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iput-object v13, v4, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->L$6:Ljava/lang/Object;

    iput v10, v4, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->I$0:I

    const/4 v13, 0x2

    iput v13, v4, Lkotlin/io/path/PathTreeWalk$bfsIterator$1;->label:I

    invoke-virtual {v5, v11, v12}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v3, :cond_177

    .line 92
    return-object v3

    .line 197
    :cond_177
    move-object/from16 v16, v4

    move-object v4, v3

    move v3, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object/from16 v5, v16

    .line 199
    .end local v4    # "this":Lkotlin/io/path/PathTreeWalk$bfsIterator$1;
    .local v3, "$i$f$yieldIfNeeded":I
    .local v5, "this":Lkotlin/io/path/PathTreeWalk$bfsIterator$1;
    .local v6, "$this$yieldIfNeeded$iv":Lkotlin/sequences/SequenceScope;
    .local v7, "this_$iv":Lkotlin/io/path/PathTreeWalk;
    .local v8, "pathNode":Lkotlin/io/path/PathNode;
    .local v9, "entriesReader":Lkotlin/io/path/DirectoryEntriesReader;
    .local v10, "queue":Lkotlin/collections/ArrayDeque;
    :goto_182
    move-object v3, v4

    move-object v4, v5

    move-object v8, v9

    move-object v9, v10

    goto/16 :goto_a0

    .line 105
    .end local v3    # "$i$f$yieldIfNeeded":I
    .end local v5    # "this":Lkotlin/io/path/PathTreeWalk$bfsIterator$1;
    .end local v6    # "$this$yieldIfNeeded$iv":Lkotlin/sequences/SequenceScope;
    .end local v7    # "this_$iv":Lkotlin/io/path/PathTreeWalk;
    .end local v10    # "queue":Lkotlin/collections/ArrayDeque;
    .end local v11    # "path$iv":Ljava/nio/file/Path;
    .restart local v4    # "this":Lkotlin/io/path/PathTreeWalk$bfsIterator$1;
    .local v8, "entriesReader":Lkotlin/io/path/DirectoryEntriesReader;
    .local v9, "queue":Lkotlin/collections/ArrayDeque;
    :cond_188
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v3

    nop

    :pswitch_data_18c
    .packed-switch 0x0
        :pswitch_67
        :pswitch_41
        :pswitch_17
    .end packed-switch
.end method

###### Class kotlin.io.path.PathTreeWalk.C00311 (kotlin.io.path.PathTreeWalk$dfsIterator$1)
.class final Lkotlin/io/path/PathTreeWalk$dfsIterator$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "PathTreeWalk.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/io/path/PathTreeWalk;->dfsIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/sequences/SequenceScope<",
        "-",
        "Ljava/nio/file/Path;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPathTreeWalk.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PathTreeWalk.kt\nkotlin/io/path/PathTreeWalk$dfsIterator$1\n+ 2 PathTreeWalk.kt\nkotlin/io/path/PathTreeWalk\n*L\n1#1,180:1\n44#2,19:181\n44#2,19:200\n*S KotlinDebug\n*F\n+ 1 PathTreeWalk.kt\nkotlin/io/path/PathTreeWalk$dfsIterator$1\n*L\n70#1:181,19\n81#1:200,19\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlin/sequences/SequenceScope;",
        "Ljava/nio/file/Path;"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlin.io.path.PathTreeWalk$dfsIterator$1"
    f = "PathTreeWalk.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3
    }
    l = {
        0xbf,
        0xc5,
        0xd2,
        0xd8
    }
    m = "invokeSuspend"
    n = {
        "$this$iterator",
        "stack",
        "entriesReader",
        "startNode",
        "this_$iv",
        "$this$yieldIfNeeded$iv",
        "path$iv",
        "$i$f$yieldIfNeeded",
        "$this$iterator",
        "stack",
        "entriesReader",
        "startNode",
        "this_$iv",
        "$this$yieldIfNeeded$iv",
        "path$iv",
        "$i$f$yieldIfNeeded",
        "$this$iterator",
        "stack",
        "entriesReader",
        "startNode",
        "topNode",
        "topIterator",
        "pathNode",
        "this_$iv",
        "$this$yieldIfNeeded$iv",
        "path$iv",
        "$i$f$yieldIfNeeded",
        "$this$iterator",
        "stack",
        "entriesReader",
        "startNode",
        "topNode",
        "topIterator",
        "pathNode",
        "this_$iv",
        "$this$yieldIfNeeded$iv",
        "path$iv",
        "$i$f$yieldIfNeeded"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "I$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "I$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "L$7",
        "L$8",
        "L$9",
        "I$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "L$7",
        "L$8",
        "L$9",
        "I$0"
    }
.end annotation


# instance fields
.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field L$8:Ljava/lang/Object;

.field L$9:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lkotlin/io/path/PathTreeWalk;


# direct methods
.method constructor <init>(Lkotlin/io/path/PathTreeWalk;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/io/path/PathTreeWalk;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/io/path/PathTreeWalk$dfsIterator$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->this$0:Lkotlin/io/path/PathTreeWalk;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;

    iget-object v1, p0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->this$0:Lkotlin/io/path/PathTreeWalk;

    invoke-direct {v0, v1, p2}, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;-><init>(Lkotlin/io/path/PathTreeWalk;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlin/sequences/SequenceScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->invoke(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/SequenceScope<",
            "-",
            "Ljava/nio/file/Path;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 20
    .param p1, "$result"    # Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v1, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlin/sequences/SequenceScope;

    .local v1, "$this$iterator":Lkotlin/sequences/SequenceScope;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 64
    iget v3, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->label:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v3, :pswitch_data_308

    .end local p0    # "this":Lkotlin/io/path/PathTreeWalk$dfsIterator$1;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local p0    # "this":Lkotlin/io/path/PathTreeWalk$dfsIterator$1;
    :pswitch_19
    iget v3, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->I$0:I

    .local v3, "$i$f$yieldIfNeeded":I
    iget-object v6, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$9:Ljava/lang/Object;

    check-cast v6, Ljava/nio/file/Path;

    .local v6, "path$iv":Ljava/nio/file/Path;
    iget-object v7, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$8:Ljava/lang/Object;

    check-cast v7, Lkotlin/sequences/SequenceScope;

    .local v7, "$this$yieldIfNeeded$iv":Lkotlin/sequences/SequenceScope;
    iget-object v8, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$7:Ljava/lang/Object;

    check-cast v8, Lkotlin/io/path/PathTreeWalk;

    .local v8, "this_$iv":Lkotlin/io/path/PathTreeWalk;
    iget-object v9, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$6:Ljava/lang/Object;

    check-cast v9, Lkotlin/io/path/PathNode;

    .local v9, "pathNode":Lkotlin/io/path/PathNode;
    iget-object v10, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$5:Ljava/lang/Object;

    check-cast v10, Ljava/util/Iterator;

    .local v10, "topIterator":Ljava/util/Iterator;
    iget-object v11, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$4:Ljava/lang/Object;

    check-cast v11, Lkotlin/io/path/PathNode;

    .local v11, "topNode":Lkotlin/io/path/PathNode;
    iget-object v12, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$3:Ljava/lang/Object;

    check-cast v12, Lkotlin/io/path/PathNode;

    .local v12, "startNode":Lkotlin/io/path/PathNode;
    iget-object v13, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$2:Ljava/lang/Object;

    check-cast v13, Lkotlin/io/path/DirectoryEntriesReader;

    .local v13, "entriesReader":Lkotlin/io/path/DirectoryEntriesReader;
    iget-object v14, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$1:Ljava/lang/Object;

    check-cast v14, Lkotlin/collections/ArrayDeque;

    .local v14, "stack":Lkotlin/collections/ArrayDeque;
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move/from16 v16, v4

    move-object v4, v0

    move-object v0, v2

    move-object v2, v1

    move-object/from16 v1, p1

    goto/16 :goto_2f5

    .end local v3    # "$i$f$yieldIfNeeded":I
    .end local v6    # "path$iv":Ljava/nio/file/Path;
    .end local v7    # "$this$yieldIfNeeded$iv":Lkotlin/sequences/SequenceScope;
    .end local v8    # "this_$iv":Lkotlin/io/path/PathTreeWalk;
    .end local v9    # "pathNode":Lkotlin/io/path/PathNode;
    .end local v10    # "topIterator":Ljava/util/Iterator;
    .end local v11    # "topNode":Lkotlin/io/path/PathNode;
    .end local v12    # "startNode":Lkotlin/io/path/PathNode;
    .end local v13    # "entriesReader":Lkotlin/io/path/DirectoryEntriesReader;
    .end local v14    # "stack":Lkotlin/collections/ArrayDeque;
    :pswitch_4b
    iget v3, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->I$0:I

    .restart local v3    # "$i$f$yieldIfNeeded":I
    iget-object v6, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$9:Ljava/lang/Object;

    check-cast v6, Ljava/nio/file/Path;

    .restart local v6    # "path$iv":Ljava/nio/file/Path;
    iget-object v7, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$8:Ljava/lang/Object;

    check-cast v7, Lkotlin/sequences/SequenceScope;

    .restart local v7    # "$this$yieldIfNeeded$iv":Lkotlin/sequences/SequenceScope;
    iget-object v8, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$7:Ljava/lang/Object;

    check-cast v8, Lkotlin/io/path/PathTreeWalk;

    .restart local v8    # "this_$iv":Lkotlin/io/path/PathTreeWalk;
    iget-object v9, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$6:Ljava/lang/Object;

    check-cast v9, Lkotlin/io/path/PathNode;

    .restart local v9    # "pathNode":Lkotlin/io/path/PathNode;
    iget-object v10, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$5:Ljava/lang/Object;

    check-cast v10, Ljava/util/Iterator;

    .restart local v10    # "topIterator":Ljava/util/Iterator;
    iget-object v11, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$4:Ljava/lang/Object;

    check-cast v11, Lkotlin/io/path/PathNode;

    .restart local v11    # "topNode":Lkotlin/io/path/PathNode;
    iget-object v12, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$3:Ljava/lang/Object;

    check-cast v12, Lkotlin/io/path/PathNode;

    .restart local v12    # "startNode":Lkotlin/io/path/PathNode;
    iget-object v13, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$2:Ljava/lang/Object;

    check-cast v13, Lkotlin/io/path/DirectoryEntriesReader;

    .restart local v13    # "entriesReader":Lkotlin/io/path/DirectoryEntriesReader;
    iget-object v14, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$1:Ljava/lang/Object;

    check-cast v14, Lkotlin/collections/ArrayDeque;

    .restart local v14    # "stack":Lkotlin/collections/ArrayDeque;
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v15, v3

    move/from16 v16, v4

    move-object v4, v6

    move-object v6, v0

    move-object v3, v2

    move-object v2, v1

    move-object/from16 v1, p1

    goto/16 :goto_261

    .end local v3    # "$i$f$yieldIfNeeded":I
    .end local v6    # "path$iv":Ljava/nio/file/Path;
    .end local v7    # "$this$yieldIfNeeded$iv":Lkotlin/sequences/SequenceScope;
    .end local v8    # "this_$iv":Lkotlin/io/path/PathTreeWalk;
    .end local v9    # "pathNode":Lkotlin/io/path/PathNode;
    .end local v10    # "topIterator":Ljava/util/Iterator;
    .end local v11    # "topNode":Lkotlin/io/path/PathNode;
    .end local v12    # "startNode":Lkotlin/io/path/PathNode;
    .end local v13    # "entriesReader":Lkotlin/io/path/DirectoryEntriesReader;
    .end local v14    # "stack":Lkotlin/collections/ArrayDeque;
    :pswitch_7f
    iget v3, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->I$0:I

    .restart local v3    # "$i$f$yieldIfNeeded":I
    iget-object v6, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$6:Ljava/lang/Object;

    check-cast v6, Ljava/nio/file/Path;

    .restart local v6    # "path$iv":Ljava/nio/file/Path;
    iget-object v7, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$5:Ljava/lang/Object;

    check-cast v7, Lkotlin/sequences/SequenceScope;

    .restart local v7    # "$this$yieldIfNeeded$iv":Lkotlin/sequences/SequenceScope;
    iget-object v8, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlin/io/path/PathTreeWalk;

    .restart local v8    # "this_$iv":Lkotlin/io/path/PathTreeWalk;
    iget-object v9, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlin/io/path/PathNode;

    .local v9, "startNode":Lkotlin/io/path/PathNode;
    iget-object v10, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlin/io/path/DirectoryEntriesReader;

    .local v10, "entriesReader":Lkotlin/io/path/DirectoryEntriesReader;
    iget-object v11, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlin/collections/ArrayDeque;

    .local v11, "stack":Lkotlin/collections/ArrayDeque;
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1c1

    .end local v3    # "$i$f$yieldIfNeeded":I
    .end local v6    # "path$iv":Ljava/nio/file/Path;
    .end local v7    # "$this$yieldIfNeeded$iv":Lkotlin/sequences/SequenceScope;
    .end local v8    # "this_$iv":Lkotlin/io/path/PathTreeWalk;
    .end local v9    # "startNode":Lkotlin/io/path/PathNode;
    .end local v10    # "entriesReader":Lkotlin/io/path/DirectoryEntriesReader;
    .end local v11    # "stack":Lkotlin/collections/ArrayDeque;
    :pswitch_9e
    iget v3, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->I$0:I

    .restart local v3    # "$i$f$yieldIfNeeded":I
    iget-object v6, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$6:Ljava/lang/Object;

    check-cast v6, Ljava/nio/file/Path;

    .restart local v6    # "path$iv":Ljava/nio/file/Path;
    iget-object v7, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$5:Ljava/lang/Object;

    check-cast v7, Lkotlin/sequences/SequenceScope;

    .restart local v7    # "$this$yieldIfNeeded$iv":Lkotlin/sequences/SequenceScope;
    iget-object v8, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlin/io/path/PathTreeWalk;

    .restart local v8    # "this_$iv":Lkotlin/io/path/PathTreeWalk;
    iget-object v9, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlin/io/path/PathNode;

    .restart local v9    # "startNode":Lkotlin/io/path/PathNode;
    iget-object v10, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlin/io/path/DirectoryEntriesReader;

    .restart local v10    # "entriesReader":Lkotlin/io/path/DirectoryEntriesReader;
    iget-object v11, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlin/collections/ArrayDeque;

    .restart local v11    # "stack":Lkotlin/collections/ArrayDeque;
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_145

    .end local v3    # "$i$f$yieldIfNeeded":I
    .end local v6    # "path$iv":Ljava/nio/file/Path;
    .end local v7    # "$this$yieldIfNeeded$iv":Lkotlin/sequences/SequenceScope;
    .end local v8    # "this_$iv":Lkotlin/io/path/PathTreeWalk;
    .end local v9    # "startNode":Lkotlin/io/path/PathNode;
    .end local v10    # "entriesReader":Lkotlin/io/path/DirectoryEntriesReader;
    .end local v11    # "stack":Lkotlin/collections/ArrayDeque;
    :pswitch_bd
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 66
    new-instance v3, Lkotlin/collections/ArrayDeque;

    invoke-direct {v3}, Lkotlin/collections/ArrayDeque;-><init>()V

    move-object v11, v3

    .line 67
    .restart local v11    # "stack":Lkotlin/collections/ArrayDeque;
    new-instance v3, Lkotlin/io/path/DirectoryEntriesReader;

    iget-object v6, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->this$0:Lkotlin/io/path/PathTreeWalk;

    invoke-static {v6}, Lkotlin/io/path/PathTreeWalk;->access$getFollowLinks(Lkotlin/io/path/PathTreeWalk;)Z

    move-result v6

    invoke-direct {v3, v6}, Lkotlin/io/path/DirectoryEntriesReader;-><init>(Z)V

    move-object v10, v3

    .line 69
    .restart local v10    # "entriesReader":Lkotlin/io/path/DirectoryEntriesReader;
    new-instance v3, Lkotlin/io/path/PathNode;

    iget-object v6, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->this$0:Lkotlin/io/path/PathTreeWalk;

    invoke-static {v6}, Lkotlin/io/path/PathTreeWalk;->access$getStart$p(Lkotlin/io/path/PathTreeWalk;)Ljava/nio/file/Path;

    move-result-object v6

    iget-object v7, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->this$0:Lkotlin/io/path/PathTreeWalk;

    invoke-static {v7}, Lkotlin/io/path/PathTreeWalk;->access$getStart$p(Lkotlin/io/path/PathTreeWalk;)Ljava/nio/file/Path;

    move-result-object v7

    iget-object v8, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->this$0:Lkotlin/io/path/PathTreeWalk;

    invoke-static {v8}, Lkotlin/io/path/PathTreeWalk;->access$getLinkOptions(Lkotlin/io/path/PathTreeWalk;)[Ljava/nio/file/LinkOption;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/io/path/PathTreeWalkKt;->access$keyOf(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v3, v6, v7, v8}, Lkotlin/io/path/PathNode;-><init>(Ljava/nio/file/Path;Ljava/lang/Object;Lkotlin/io/path/PathNode;)V

    move-object v9, v3

    .line 70
    .restart local v9    # "startNode":Lkotlin/io/path/PathNode;
    iget-object v8, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->this$0:Lkotlin/io/path/PathTreeWalk;

    .restart local v8    # "this_$iv":Lkotlin/io/path/PathTreeWalk;
    move-object v3, v1

    .local v3, "$this$yieldIfNeeded$iv":Lkotlin/sequences/SequenceScope;
    move-object v7, v3

    .end local v3    # "$this$yieldIfNeeded$iv":Lkotlin/sequences/SequenceScope;
    .restart local v7    # "$this$yieldIfNeeded$iv":Lkotlin/sequences/SequenceScope;
    const/4 v3, 0x0

    .line 181
    .local v3, "$i$f$yieldIfNeeded":I
    invoke-virtual {v9}, Lkotlin/io/path/PathNode;->getPath()Ljava/nio/file/Path;

    move-result-object v6

    .line 182
    .restart local v6    # "path$iv":Ljava/nio/file/Path;
    invoke-virtual {v9}, Lkotlin/io/path/PathNode;->getParent()Lkotlin/io/path/PathNode;

    move-result-object v12

    if-eqz v12, :cond_101

    .line 184
    invoke-static {v6}, Lkotlin/io/path/PathsKt;->checkFileName(Ljava/nio/file/Path;)V

    .line 186
    :cond_101
    invoke-static {v8}, Lkotlin/io/path/PathTreeWalk;->access$getLinkOptions(Lkotlin/io/path/PathTreeWalk;)[Ljava/nio/file/LinkOption;

    move-result-object v12

    array-length v13, v12

    invoke-static {v12, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/nio/file/LinkOption;

    array-length v13, v12

    invoke-static {v12, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/nio/file/LinkOption;

    invoke-static {v6, v12}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v12

    if-eqz v12, :cond_182

    .line 187
    invoke-static {v9}, Lkotlin/io/path/PathTreeWalkKt;->access$createsCycle(Lkotlin/io/path/PathNode;)Z

    move-result v12

    if-nez v12, :cond_178

    .line 190
    invoke-static {v8}, Lkotlin/io/path/PathTreeWalk;->access$getIncludeDirectories(Lkotlin/io/path/PathTreeWalk;)Z

    move-result v12

    if-eqz v12, :cond_146

    .line 191
    move-object v12, v0

    check-cast v12, Lkotlin/coroutines/Continuation;

    iput-object v1, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$0:Ljava/lang/Object;

    iput-object v11, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$1:Ljava/lang/Object;

    iput-object v10, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$2:Ljava/lang/Object;

    iput-object v9, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$3:Ljava/lang/Object;

    iput-object v8, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$4:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iput-object v13, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$5:Ljava/lang/Object;

    iput-object v6, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$6:Ljava/lang/Object;

    iput v3, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->I$0:I

    iput v5, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->label:I

    invoke-virtual {v7, v6, v12}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v2, :cond_145

    .line 64
    return-object v2

    .line 193
    :cond_145
    :goto_145
    nop

    :cond_146
    invoke-static {v8}, Lkotlin/io/path/PathTreeWalk;->access$getLinkOptions(Lkotlin/io/path/PathTreeWalk;)[Ljava/nio/file/LinkOption;

    move-result-object v12

    array-length v13, v12

    invoke-static {v12, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/nio/file/LinkOption;

    array-length v13, v12

    invoke-static {v12, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/nio/file/LinkOption;

    invoke-static {v6, v12}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v12

    if-eqz v12, :cond_16f

    .line 194
    invoke-virtual {v10, v9}, Lkotlin/io/path/DirectoryEntriesReader;->readEntries(Lkotlin/io/path/PathNode;)Ljava/util/List;

    move-result-object v12

    .local v12, "entries":Ljava/util/List;
    const/4 v13, 0x0

    .line 71
    .local v13, "$i$a$-yieldIfNeeded-PathTreeWalk$dfsIterator$1$1":I
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    invoke-virtual {v9, v14}, Lkotlin/io/path/PathNode;->setContentIterator(Ljava/util/Iterator;)V

    .line 72
    invoke-virtual {v11, v9}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 73
    nop

    .line 194
    .end local v12    # "entries":Ljava/util/List;
    .end local v13    # "$i$a$-yieldIfNeeded-PathTreeWalk$dfsIterator$1$1":I
    nop

    .line 75
    .end local v3    # "$i$f$yieldIfNeeded":I
    .end local v6    # "path$iv":Ljava/nio/file/Path;
    .end local v7    # "$this$yieldIfNeeded$iv":Lkotlin/sequences/SequenceScope;
    .end local v8    # "this_$iv":Lkotlin/io/path/PathTreeWalk;
    :cond_16f
    move-object v6, v0

    move-object v3, v2

    move-object v12, v9

    move-object v13, v10

    move-object v14, v11

    move-object v2, v1

    move-object/from16 v1, p1

    goto :goto_1d2

    .line 188
    .restart local v3    # "$i$f$yieldIfNeeded":I
    .restart local v6    # "path$iv":Ljava/nio/file/Path;
    .restart local v7    # "$this$yieldIfNeeded$iv":Lkotlin/sequences/SequenceScope;
    .restart local v8    # "this_$iv":Lkotlin/io/path/PathTreeWalk;
    :cond_178
    new-instance v2, Ljava/nio/file/FileSystemLoopException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/nio/file/FileSystemLoopException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 196
    :cond_182
    new-array v12, v5, [Ljava/nio/file/LinkOption;

    sget-object v13, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v13, v12, v4

    invoke-static {v12, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/nio/file/LinkOption;

    invoke-static {v6, v12}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v12

    if-eqz v12, :cond_1ca

    .line 197
    move-object v12, v0

    check-cast v12, Lkotlin/coroutines/Continuation;

    iput-object v1, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$0:Ljava/lang/Object;

    iput-object v11, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$1:Ljava/lang/Object;

    iput-object v10, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$2:Ljava/lang/Object;

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iput-object v13, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$3:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iput-object v13, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$4:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iput-object v13, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$5:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iput-object v13, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$6:Ljava/lang/Object;

    iput v3, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->I$0:I

    const/4 v13, 0x2

    iput v13, v0, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->label:I

    invoke-virtual {v7, v6, v12}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v2, :cond_1c1

    .line 64
    return-object v2

    .line 199
    :cond_1c1
    :goto_1c1
    move-object v6, v0

    move-object v3, v2

    move-object v12, v9

    move-object v13, v10

    move-object v14, v11

    move-object v2, v1

    move-object/from16 v1, p1

    goto :goto_1d2

    .line 196
    :cond_1ca
    move-object v6, v0

    move-object v3, v2

    move-object v12, v9

    move-object v13, v10

    move-object v14, v11

    move-object v2, v1

    move-object/from16 v1, p1

    .line 75
    .end local v3    # "$i$f$yieldIfNeeded":I
    .end local v7    # "$this$yieldIfNeeded$iv":Lkotlin/sequences/SequenceScope;
    .end local v8    # "this_$iv":Lkotlin/io/path/PathTreeWalk;
    .end local v9    # "startNode":Lkotlin/io/path/PathNode;
    .end local v10    # "entriesReader":Lkotlin/io/path/DirectoryEntriesReader;
    .end local v11    # "stack":Lkotlin/collections/ArrayDeque;
    .end local p0    # "this":Lkotlin/io/path/PathTreeWalk$dfsIterator$1;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    .local v2, "$this$iterator":Lkotlin/sequences/SequenceScope;
    .local v6, "this":Lkotlin/io/path/PathTreeWalk$dfsIterator$1;
    .local v12, "startNode":Lkotlin/io/path/PathNode;
    .local v13, "entriesReader":Lkotlin/io/path/DirectoryEntriesReader;
    .restart local v14    # "stack":Lkotlin/collections/ArrayDeque;
    :goto_1d2
    move-object v7, v14

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_304

    .line 76
    invoke-virtual {v14}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Lkotlin/io/path/PathNode;

    .line 77
    .local v11, "topNode":Lkotlin/io/path/PathNode;
    invoke-virtual {v11}, Lkotlin/io/path/PathNode;->getContentIterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v10, v7

    .line 79
    .local v10, "topIterator":Ljava/util/Iterator;
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2fe

    .line 80
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Lkotlin/io/path/PathNode;

    .line 81
    .local v9, "pathNode":Lkotlin/io/path/PathNode;
    iget-object v8, v6, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->this$0:Lkotlin/io/path/PathTreeWalk;

    .restart local v8    # "this_$iv":Lkotlin/io/path/PathTreeWalk;
    move-object v7, v2

    .restart local v7    # "$this$yieldIfNeeded$iv":Lkotlin/sequences/SequenceScope;
    const/4 v15, 0x0

    .line 200
    .local v15, "$i$f$yieldIfNeeded":I
    move/from16 v16, v4

    invoke-virtual {v9}, Lkotlin/io/path/PathNode;->getPath()Ljava/nio/file/Path;

    move-result-object v4

    .line 201
    .local v4, "path$iv":Ljava/nio/file/Path;
    invoke-virtual {v9}, Lkotlin/io/path/PathNode;->getParent()Lkotlin/io/path/PathNode;

    move-result-object v17

    if-eqz v17, :cond_20a

    .line 203
    invoke-static {v4}, Lkotlin/io/path/PathsKt;->checkFileName(Ljava/nio/file/Path;)V

    .line 205
    :cond_20a
    invoke-static {v8}, Lkotlin/io/path/PathTreeWalk;->access$getLinkOptions(Lkotlin/io/path/PathTreeWalk;)[Ljava/nio/file/LinkOption;

    move-result-object v5

    .restart local p0    # "this":Lkotlin/io/path/PathTreeWalk$dfsIterator$1;
    array-length v0, v5

    invoke-static {v5, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/file/LinkOption;

    array-length v5, v0

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/file/LinkOption;

    invoke-static {v4, v0}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_29e

    .line 206
    .end local p0    # "this":Lkotlin/io/path/PathTreeWalk$dfsIterator$1;
    invoke-static {v9}, Lkotlin/io/path/PathTreeWalkKt;->access$createsCycle(Lkotlin/io/path/PathNode;)Z

    move-result v0

    if-nez v0, :cond_294

    .line 209
    invoke-static {v8}, Lkotlin/io/path/PathTreeWalk;->access$getIncludeDirectories(Lkotlin/io/path/PathTreeWalk;)Z

    move-result v0

    if-eqz v0, :cond_262

    .line 210
    move-object v0, v6

    check-cast v0, Lkotlin/coroutines/Continuation;

    iput-object v2, v6, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$0:Ljava/lang/Object;

    iput-object v14, v6, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$1:Ljava/lang/Object;

    iput-object v13, v6, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$2:Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v6, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$3:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v6, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$4:Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v6, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$5:Ljava/lang/Object;

    iput-object v9, v6, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$6:Ljava/lang/Object;

    iput-object v8, v6, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$7:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v6, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$8:Ljava/lang/Object;

    iput-object v4, v6, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$9:Ljava/lang/Object;

    iput v15, v6, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->I$0:I

    const/4 v5, 0x3

    iput v5, v6, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->label:I

    invoke-virtual {v7, v4, v0}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_261

    .line 64
    return-object v3

    .line 212
    :cond_261
    :goto_261
    nop

    :cond_262
    invoke-static {v8}, Lkotlin/io/path/PathTreeWalk;->access$getLinkOptions(Lkotlin/io/path/PathTreeWalk;)[Ljava/nio/file/LinkOption;

    move-result-object v0

    array-length v5, v0

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/file/LinkOption;

    array-length v5, v0

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/file/LinkOption;

    invoke-static {v4, v0}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_28d

    .line 213
    invoke-virtual {v13, v9}, Lkotlin/io/path/DirectoryEntriesReader;->readEntries(Lkotlin/io/path/PathNode;)Ljava/util/List;

    move-result-object v0

    .local v0, "entries":Ljava/util/List;
    const/4 v5, 0x0

    .line 82
    .local v5, "$i$a$-yieldIfNeeded-PathTreeWalk$dfsIterator$1$2":I
    move-object/from16 p1, v0

    .end local v0    # "entries":Ljava/util/List;
    .local p1, "entries":Ljava/util/List;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {v9, v0}, Lkotlin/io/path/PathNode;->setContentIterator(Ljava/util/Iterator;)V

    .line 83
    invoke-virtual {v14, v9}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 84
    nop

    .line 213
    .end local v5    # "$i$a$-yieldIfNeeded-PathTreeWalk$dfsIterator$1$2":I
    .end local p1    # "entries":Ljava/util/List;
    nop

    .line 75
    .end local v4    # "path$iv":Ljava/nio/file/Path;
    .end local v7    # "$this$yieldIfNeeded$iv":Lkotlin/sequences/SequenceScope;
    .end local v8    # "this_$iv":Lkotlin/io/path/PathTreeWalk;
    .end local v9    # "pathNode":Lkotlin/io/path/PathNode;
    .end local v10    # "topIterator":Ljava/util/Iterator;
    .end local v11    # "topNode":Lkotlin/io/path/PathNode;
    .end local v15    # "$i$f$yieldIfNeeded":I
    :cond_28d
    :goto_28d
    move-object/from16 v0, p0

    move/from16 v4, v16

    const/4 v5, 0x1

    goto/16 :goto_1d2

    .line 207
    .restart local v4    # "path$iv":Ljava/nio/file/Path;
    .restart local v7    # "$this$yieldIfNeeded$iv":Lkotlin/sequences/SequenceScope;
    .restart local v8    # "this_$iv":Lkotlin/io/path/PathTreeWalk;
    .restart local v9    # "pathNode":Lkotlin/io/path/PathNode;
    .restart local v10    # "topIterator":Ljava/util/Iterator;
    .restart local v11    # "topNode":Lkotlin/io/path/PathNode;
    .restart local v15    # "$i$f$yieldIfNeeded":I
    :cond_294
    new-instance v0, Ljava/nio/file/FileSystemLoopException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/nio/file/FileSystemLoopException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_29e
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/nio/file/LinkOption;

    sget-object v17, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v17, v5, v16

    invoke-static {v5, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/nio/file/LinkOption;

    invoke-static {v4, v5}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5

    if-eqz v5, :cond_28d

    .line 216
    move-object v5, v6

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v2, v6, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$0:Ljava/lang/Object;

    iput-object v14, v6, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$1:Ljava/lang/Object;

    iput-object v13, v6, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$2:Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v6, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$3:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v6, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$4:Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v6, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$5:Ljava/lang/Object;

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v6, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$6:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v6, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$7:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v6, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$8:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v6, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->L$9:Ljava/lang/Object;

    iput v15, v6, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->I$0:I

    const/4 v0, 0x4

    iput v0, v6, Lkotlin/io/path/PathTreeWalk$dfsIterator$1;->label:I

    invoke-virtual {v7, v4, v5}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_2f0

    .line 64
    return-object v3

    .line 216
    :cond_2f0
    move-object v0, v6

    move-object v6, v4

    move-object v4, v0

    move-object v0, v3

    move v3, v15

    .line 218
    .end local v15    # "$i$f$yieldIfNeeded":I
    .restart local v3    # "$i$f$yieldIfNeeded":I
    .local v4, "this":Lkotlin/io/path/PathTreeWalk$dfsIterator$1;
    .local v6, "path$iv":Ljava/nio/file/Path;
    :goto_2f5
    move-object v3, v0

    move-object v6, v4

    move/from16 v4, v16

    const/4 v5, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_1d2

    .line 87
    .end local v3    # "$i$f$yieldIfNeeded":I
    .end local v4    # "this":Lkotlin/io/path/PathTreeWalk$dfsIterator$1;
    .end local v7    # "$this$yieldIfNeeded$iv":Lkotlin/sequences/SequenceScope;
    .end local v8    # "this_$iv":Lkotlin/io/path/PathTreeWalk;
    .end local v9    # "pathNode":Lkotlin/io/path/PathNode;
    .local v6, "this":Lkotlin/io/path/PathTreeWalk$dfsIterator$1;
    :cond_2fe
    move/from16 v16, v4

    invoke-virtual {v14}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    goto :goto_28d

    .line 90
    .end local v10    # "topIterator":Ljava/util/Iterator;
    .end local v11    # "topNode":Lkotlin/io/path/PathNode;
    :cond_304
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_308
    .packed-switch 0x0
        :pswitch_bd
        :pswitch_9e
        :pswitch_7f
        :pswitch_4b
        :pswitch_19
    .end packed-switch
.end method
