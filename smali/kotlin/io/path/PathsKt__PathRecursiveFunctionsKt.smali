###### Class kotlin.io.path.PathsKt__PathRecursiveFunctionsKt (kotlin.io.path.PathsKt__PathRecursiveFunctionsKt)
.class Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;
.super Lkotlin/io/path/PathsKt__PathReadWriteKt;
.source "PathRecursiveFunctions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPathRecursiveFunctions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PathRecursiveFunctions.kt\nkotlin/io/path/PathsKt__PathRecursiveFunctionsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,532:1\n378#1,2:536\n386#1:538\n386#1:539\n380#1,4:540\n378#1,2:544\n386#1:546\n380#1,4:547\n386#1:551\n378#1,6:552\n378#1,2:558\n386#1:560\n380#1,4:561\n1#2:533\n1869#3,2:534\n*S KotlinDebug\n*F\n+ 1 PathRecursiveFunctions.kt\nkotlin/io/path/PathsKt__PathRecursiveFunctionsKt\n*L\n394#1:536,2\n409#1:538\n412#1:539\n394#1:540,4\n420#1:544,2\n421#1:546\n420#1:547,4\n432#1:551\n440#1:552,6\n463#1:558,2\n464#1:560\n463#1:561,4\n314#1:534,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u001aw\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012Q\u0008\u0002\u0010\u0003\u001aK\u0012\u0013\u0012\u00110\u0001\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0007\u0012\u0013\u0012\u00110\u0001\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0002\u0012\u0017\u0012\u00150\u0008j\u0002`\n\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\u000b0\u00042\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0007\u001a\u00b4\u0001\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012Q\u0008\u0002\u0010\u0003\u001aK\u0012\u0013\u0012\u00110\u0001\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0007\u0012\u0013\u0012\u00110\u0001\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0002\u0012\u0017\u0012\u00150\u0008j\u0002`\n\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\u000b0\u00042\u0006\u0010\u000c\u001a\u00020\r2C\u0008\u0002\u0010\u000f\u001a=\u0012\u0004\u0012\u00020\u0010\u0012\u0013\u0012\u00110\u0001\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0007\u0012\u0013\u0012\u00110\u0001\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0002\u0012\u0004\u0012\u00020\u00110\u0004\u00a2\u0006\u0002\u0008\u0012H\u0007\u001a\u0011\u0010\u0013\u001a\u00020\u0014*\u00020\u0011H\u0003\u00a2\u0006\u0002\u0008\u0015\u001a\u0011\u0010\u0013\u001a\u00020\u0014*\u00020\u000bH\u0003\u00a2\u0006\u0002\u0008\u0015\u001a\u000c\u0010\u0016\u001a\u00020\u0017*\u00020\u0001H\u0007\u001a\u001b\u0010\u0018\u001a\u000c\u0012\u0008\u0012\u00060\u0008j\u0002`\n0\u0019*\u00020\u0001H\u0002\u00a2\u0006\u0002\u0008\u001a\u001a$\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u001d2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u001fH\u0082\u0008\u00a2\u0006\u0002\u0008 \u001a&\u0010!\u001a\u0004\u0018\u0001H\"\"\u0004\u0008\u0000\u0010\"2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u0002H\"0\u001fH\u0082\u0008\u00a2\u0006\u0004\u0008#\u0010$\u001a1\u0010%\u001a\u00020\u0017*\u0008\u0012\u0004\u0012\u00020\u00010&2\u0006\u0010\u0006\u001a\u00020\u00012\u0008\u0010\'\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u001c\u001a\u00020\u001dH\u0002\u00a2\u0006\u0002\u0008(\u001a\'\u0010)\u001a\u00020\u0017*\u0008\u0012\u0004\u0012\u00020\u00010&2\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u001c\u001a\u00020\u001dH\u0002\u00a2\u0006\u0002\u0008*\u001a5\u0010+\u001a\u00020\r*\u0008\u0012\u0004\u0012\u00020\u00010&2\u0006\u0010,\u001a\u00020\u00012\u0012\u0010-\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020/0.\"\u00020/H\u0002\u00a2\u0006\u0004\u00080\u00101\u001a\'\u00102\u001a\u00020\u00172\u0006\u00103\u001a\u00020\u00012\u0008\u0010\'\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u001c\u001a\u00020\u001dH\u0002\u00a2\u0006\u0002\u00084\u001a\u001d\u00105\u001a\u00020\u00172\u0006\u00106\u001a\u00020\u00012\u0006\u0010\u001c\u001a\u00020\u001dH\u0002\u00a2\u0006\u0002\u00087\u001a\u000c\u00108\u001a\u00020\u0017*\u00020\u0001H\u0000\u001a\u0019\u00109\u001a\u00020\u0017*\u00020\u00012\u0006\u0010\'\u001a\u00020\u0001H\u0002\u00a2\u0006\u0002\u0008:\u00a8\u0006;"
    }
    d2 = {
        "copyToRecursively",
        "Ljava/nio/file/Path;",
        "target",
        "onError",
        "Lkotlin/Function3;",
        "Lkotlin/ParameterName;",
        "name",
        "source",
        "Ljava/lang/Exception;",
        "exception",
        "Lkotlin/Exception;",
        "Lkotlin/io/path/OnErrorResult;",
        "followLinks",
        "",
        "overwrite",
        "copyAction",
        "Lkotlin/io/path/CopyActionContext;",
        "Lkotlin/io/path/CopyActionResult;",
        "Lkotlin/ExtensionFunctionType;",
        "toFileVisitResult",
        "Ljava/nio/file/FileVisitResult;",
        "toFileVisitResult$PathsKt__PathRecursiveFunctionsKt",
        "deleteRecursively",
        "",
        "deleteRecursivelyImpl",
        "",
        "deleteRecursivelyImpl$PathsKt__PathRecursiveFunctionsKt",
        "collectIfThrows",
        "collector",
        "Lkotlin/io/path/ExceptionsCollector;",
        "function",
        "Lkotlin/Function0;",
        "collectIfThrows$PathsKt__PathRecursiveFunctionsKt",
        "tryIgnoreNoSuchFileException",
        "R",
        "tryIgnoreNoSuchFileException$PathsKt__PathRecursiveFunctionsKt",
        "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "handleEntry",
        "Ljava/nio/file/SecureDirectoryStream;",
        "parent",
        "handleEntry$PathsKt__PathRecursiveFunctionsKt",
        "enterDirectory",
        "enterDirectory$PathsKt__PathRecursiveFunctionsKt",
        "isDirectory",
        "entryName",
        "options",
        "",
        "Ljava/nio/file/LinkOption;",
        "isDirectory$PathsKt__PathRecursiveFunctionsKt",
        "(Ljava/nio/file/SecureDirectoryStream;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z",
        "insecureHandleEntry",
        "entry",
        "insecureHandleEntry$PathsKt__PathRecursiveFunctionsKt",
        "insecureEnterDirectory",
        "path",
        "insecureEnterDirectory$PathsKt__PathRecursiveFunctionsKt",
        "checkFileName",
        "checkNotSameAs",
        "checkNotSameAs$PathsKt__PathRecursiveFunctionsKt",
        "kotlin-stdlib-jdk7"
    }
    k = 0x5
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x31
    xs = "kotlin/io/path/PathsKt"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$3VYkoVP17knpGuiVw5BoXBQ_zc8(ZLkotlin/io/path/CopyActionContext;Ljava/nio/file/Path;Ljava/nio/file/Path;)Lkotlin/io/path/CopyActionResult;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->copyToRecursively$lambda$1$PathsKt__PathRecursiveFunctionsKt(ZLkotlin/io/path/CopyActionContext;Ljava/nio/file/Path;Ljava/nio/file/Path;)Lkotlin/io/path/CopyActionResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Dn4FOAPbjNDFACiW2KdbJH8lJzc(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .registers 7

    invoke-static/range {p0 .. p6}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->copyToRecursively$lambda$6$lambda$5$PathsKt__PathRecursiveFunctionsKt(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QF8Uhuq7fTQtpHX-cuQgT1yM3No(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;Lkotlin/io/path/FileVisitorBuilder;)Lkotlin/Unit;
    .registers 7

    invoke-static/range {p0 .. p6}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->copyToRecursively$lambda$6$PathsKt__PathRecursiveFunctionsKt(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;Lkotlin/io/path/FileVisitorBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$r0l1pONWwls6V3X1jucrTqZKxjo(ZLkotlin/io/path/CopyActionContext;Ljava/nio/file/Path;Ljava/nio/file/Path;)Lkotlin/io/path/CopyActionResult;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->copyToRecursively$lambda$0$PathsKt__PathRecursiveFunctionsKt(ZLkotlin/io/path/CopyActionContext;Ljava/nio/file/Path;Ljava/nio/file/Path;)Lkotlin/io/path/CopyActionResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vrBef6cHhs3oA22HfQBDeNxsJGA(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .registers 8

    invoke-static/range {p0 .. p7}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->copyToRecursively$lambda$6$lambda$4$PathsKt__PathRecursiveFunctionsKt(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lkotlin/io/path/PathsKt__PathReadWriteKt;-><init>()V

    return-void
.end method

.method public static final synthetic access$copyToRecursively$copy(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .registers 9
    .param p0, "stack"    # Ljava/util/ArrayList;
    .param p1, "$copyAction"    # Lkotlin/jvm/functions/Function3;
    .param p2, "$this_copyToRecursively"    # Ljava/nio/file/Path;
    .param p3, "$target"    # Ljava/nio/file/Path;
    .param p4, "normalizedTarget"    # Ljava/nio/file/Path;
    .param p5, "$onError"    # Lkotlin/jvm/functions/Function3;
    .param p6, "source"    # Ljava/nio/file/Path;
    .param p7, "attributes"    # Ljava/nio/file/attribute/BasicFileAttributes;

    .line 1
    invoke-static/range {p0 .. p7}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->copyToRecursively$copy$PathsKt__PathRecursiveFunctionsKt(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$copyToRecursively$error(Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/lang/Exception;)Ljava/nio/file/FileVisitResult;
    .registers 7
    .param p0, "$onError"    # Lkotlin/jvm/functions/Function3;
    .param p1, "$this_copyToRecursively"    # Ljava/nio/file/Path;
    .param p2, "$target"    # Ljava/nio/file/Path;
    .param p3, "normalizedTarget"    # Ljava/nio/file/Path;
    .param p4, "source"    # Ljava/nio/file/Path;
    .param p5, "exception"    # Ljava/lang/Exception;

    .line 1
    invoke-static/range {p0 .. p5}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->copyToRecursively$error$PathsKt__PathRecursiveFunctionsKt(Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/lang/Exception;)Ljava/nio/file/FileVisitResult;

    move-result-object v0

    return-object v0
.end method

.method public static final checkFileName(Ljava/nio/file/Path;)V
    .registers 3
    .param p0, "$this$checkFileName"    # Ljava/nio/file/Path;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 491
    invoke-static {p0}, Lkotlin/io/path/PathsKt;->getName(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, "fileName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_4e

    :goto_10
    goto :goto_4d

    :sswitch_11
    const-string v1, "..\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    goto :goto_10

    :sswitch_1a
    const-string v1, "../"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    goto :goto_10

    :sswitch_23
    const-string v1, ".\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    goto :goto_10

    :sswitch_2c
    const-string v1, "./"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    goto :goto_10

    :sswitch_35
    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    goto :goto_10

    :sswitch_3e
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    goto :goto_10

    .line 493
    :cond_47
    new-instance v1, Lkotlin/io/path/IllegalFileNameException;

    invoke-direct {v1, p0}, Lkotlin/io/path/IllegalFileNameException;-><init>(Ljava/nio/file/Path;)V

    throw v1

    .line 494
    :goto_4d
    return-void

    :sswitch_data_4e
    .sparse-switch
        0x2e -> :sswitch_3e
        0x5c0 -> :sswitch_35
        0x5c1 -> :sswitch_2c
        0x5ee -> :sswitch_23
        0xb26f -> :sswitch_1a
        0xb29c -> :sswitch_11
    .end sparse-switch
.end method

.method private static final checkNotSameAs$PathsKt__PathRecursiveFunctionsKt(Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    .registers 4
    .param p0, "$this$checkNotSameAs"    # Ljava/nio/file/Path;
    .param p1, "parent"    # Ljava/nio/file/Path;

    .line 521
    invoke-static {p0}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {p0, p1}, Ljava/nio/file/Files;->isSameFile(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_17

    .line 522
    :cond_d
    new-instance v0, Ljava/nio/file/FileSystemLoopException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/nio/file/FileSystemLoopException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    :cond_17
    :goto_17
    return-void
.end method

.method private static final collectIfThrows$PathsKt__PathRecursiveFunctionsKt(Lkotlin/io/path/ExceptionsCollector;Lkotlin/jvm/functions/Function0;)V
    .registers 4
    .param p0, "collector"    # Lkotlin/io/path/ExceptionsCollector;
    .param p1, "function"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/io/path/ExceptionsCollector;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 378
    .local v0, "$i$f$collectIfThrows":I
    nop

    .line 379
    :try_start_2
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_a

    .line 380
    :catch_6
    move-exception v1

    .line 381
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lkotlin/io/path/ExceptionsCollector;->collect(Ljava/lang/Exception;)V

    .line 383
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_a
    return-void
.end method

.method public static final copyToRecursively(Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;ZLkotlin/jvm/functions/Function3;)Ljava/nio/file/Path;
    .registers 17
    .param p0, "$this$copyToRecursively"    # Ljava/nio/file/Path;
    .param p1, "target"    # Ljava/nio/file/Path;
    .param p2, "onError"    # Lkotlin/jvm/functions/Function3;
    .param p3, "followLinks"    # Z
    .param p4, "copyAction"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/nio/file/Path;",
            "-",
            "Ljava/nio/file/Path;",
            "-",
            "Ljava/lang/Exception;",
            "+",
            "Lkotlin/io/path/OnErrorResult;",
            ">;Z",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlin/io/path/CopyActionContext;",
            "-",
            "Ljava/nio/file/Path;",
            "-",
            "Ljava/nio/file/Path;",
            "+",
            "Lkotlin/io/path/CopyActionResult;",
            ">;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    move v7, p3

    const-string v1, "<this>"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "target"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onError"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "copyAction"

    move-object/from16 v2, p4

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    sget-object v1, Lkotlin/io/path/LinkFollowing;->INSTANCE:Lkotlin/io/path/LinkFollowing;

    invoke-virtual {v1, p3}, Lkotlin/io/path/LinkFollowing;->toLinkOptions(Z)[Ljava/nio/file/LinkOption;

    move-result-object v1

    array-length v3, v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/nio/file/LinkOption;

    array-length v3, v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_e6

    .line 170
    const/4 v1, 0x0

    new-array v3, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v3}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v3

    if-eqz v3, :cond_c8

    if-nez v7, :cond_48

    invoke-static {p0}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v3

    if-nez v3, :cond_c8

    .line 176
    :cond_48
    new-array v3, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v3}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_5f

    invoke-static {p1}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v3

    if-nez v3, :cond_5f

    move v3, v5

    goto :goto_60

    :cond_5f
    move v3, v1

    .line 178
    .local v3, "targetExistsAndNotSymlink":Z
    :goto_60
    if-eqz v3, :cond_68

    invoke-static/range {p0 .. p1}, Ljava/nio/file/Files;->isSameFile(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z

    move-result v8

    if-nez v8, :cond_c8

    .line 182
    :cond_68
    nop

    .line 183
    invoke-interface {p0}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v8

    invoke-interface {p1}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_78

    .line 184
    goto :goto_b3

    .line 185
    :cond_78
    if-eqz v3, :cond_8b

    .line 186
    new-array v5, v1, [Ljava/nio/file/LinkOption;

    invoke-interface {p1, v5}, Ljava/nio/file/Path;->toRealPath([Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    move-result-object v5

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-interface {p0, v1}, Ljava/nio/file/Path;->toRealPath([Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/nio/file/Path;->startsWith(Ljava/nio/file/Path;)Z

    move-result v1

    goto :goto_b3

    .line 188
    :cond_8b
    invoke-interface {p1}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v8

    if-eqz v8, :cond_b3

    .line 533
    .local v8, "it":Ljava/nio/file/Path;
    const/4 v9, 0x0

    .line 188
    .local v9, "$i$a$-let-PathsKt__PathRecursiveFunctionsKt$copyToRecursively$isSubdirectory$1":I
    new-array v10, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v10, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/nio/file/LinkOption;

    invoke-static {v8, v10}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v10

    if-eqz v10, :cond_b3

    new-array v10, v1, [Ljava/nio/file/LinkOption;

    invoke-interface {v8, v10}, Ljava/nio/file/Path;->toRealPath([Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    move-result-object v10

    new-array v11, v1, [Ljava/nio/file/LinkOption;

    invoke-interface {p0, v11}, Ljava/nio/file/Path;->toRealPath([Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/nio/file/Path;->startsWith(Ljava/nio/file/Path;)Z

    move-result v10

    if-eqz v10, :cond_b3

    move v1, v5

    .line 182
    .end local v8    # "it":Ljava/nio/file/Path;
    .end local v9    # "$i$a$-let-PathsKt__PathRecursiveFunctionsKt$copyToRecursively$isSubdirectory$1":I
    :cond_b3
    :goto_b3
    nop

    .line 190
    .local v1, "isSubdirectory":Z
    if-nez v1, :cond_b7

    goto :goto_c8

    .line 191
    :cond_b7
    new-instance v5, Ljava/nio/file/FileSystemException;

    .line 192
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 193
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 194
    nop

    .line 191
    const-string v10, "Recursively copying a directory into its subdirectory is prohibited."

    invoke-direct {v5, v8, v9, v10}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v5

    .line 199
    .end local v1    # "isSubdirectory":Z
    .end local v3    # "targetExistsAndNotSymlink":Z
    :cond_c8
    :goto_c8
    invoke-interface {p1}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v5

    .line 218
    .local v5, "normalizedTarget":Ljava/nio/file/Path;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v1, "stack":Ljava/util/ArrayList;
    new-instance v3, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda2;

    move-object v4, p1

    move-object v6, p2

    move-object v0, v3

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda2;-><init>(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;)V

    move-object v8, v1

    move-object v6, v5

    .end local v1    # "stack":Ljava/util/ArrayList;
    .end local v5    # "normalizedTarget":Ljava/nio/file/Path;
    .local v6, "normalizedTarget":Ljava/nio/file/Path;
    .local v8, "stack":Ljava/util/ArrayList;
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    move v2, v7

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlin/io/path/PathsKt;->visitFileTree$default(Ljava/nio/file/Path;IZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 252
    return-object p1

    .line 168
    .end local v6    # "normalizedTarget":Ljava/nio/file/Path;
    .end local v8    # "stack":Ljava/util/ArrayList;
    :cond_e6
    new-instance v0, Ljava/nio/file/NoSuchFileException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "The source file doesn\'t exist."

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/file/NoSuchFileException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public static final copyToRecursively(Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;ZZ)Ljava/nio/file/Path;
    .registers 13
    .param p0, "$this$copyToRecursively"    # Ljava/nio/file/Path;
    .param p1, "target"    # Ljava/nio/file/Path;
    .param p2, "onError"    # Lkotlin/jvm/functions/Function3;
    .param p3, "followLinks"    # Z
    .param p4, "overwrite"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/nio/file/Path;",
            "-",
            "Ljava/nio/file/Path;",
            "-",
            "Ljava/lang/Exception;",
            "+",
            "Lkotlin/io/path/OnErrorResult;",
            ">;ZZ)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    if-eqz p4, :cond_1f

    .line 81
    new-instance v0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda1;

    invoke-direct {v0, p3}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda1;-><init>(Z)V

    invoke-static {p0, p1, p2, p3, v0}, Lkotlin/io/path/PathsKt;->copyToRecursively(Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;ZLkotlin/jvm/functions/Function3;)Ljava/nio/file/Path;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    goto :goto_2b

    .line 96
    :cond_1f
    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .end local p0    # "$this$copyToRecursively":Ljava/nio/file/Path;
    .end local p1    # "target":Ljava/nio/file/Path;
    .end local p2    # "onError":Lkotlin/jvm/functions/Function3;
    .end local p3    # "followLinks":Z
    .local v1, "$this$copyToRecursively":Ljava/nio/file/Path;
    .local v2, "target":Ljava/nio/file/Path;
    .local v3, "onError":Lkotlin/jvm/functions/Function3;
    .local v4, "followLinks":Z
    invoke-static/range {v1 .. v7}, Lkotlin/io/path/PathsKt;->copyToRecursively$default(Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;ZLkotlin/jvm/functions/Function3;ILjava/lang/Object;)Ljava/nio/file/Path;

    move-result-object v0

    .line 80
    :goto_2b
    return-object v0
.end method

.method private static final copyToRecursively$copy$PathsKt__PathRecursiveFunctionsKt(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .registers 15
    .param p0, "stack"    # Ljava/util/ArrayList;
    .param p1, "$copyAction"    # Lkotlin/jvm/functions/Function3;
    .param p2, "$this_copyToRecursively"    # Ljava/nio/file/Path;
    .param p3, "$target"    # Ljava/nio/file/Path;
    .param p4, "normalizedTarget"    # Ljava/nio/file/Path;
    .param p5, "$onError"    # Lkotlin/jvm/functions/Function3;
    .param p6, "source"    # Ljava/nio/file/Path;
    .param p7, "attributes"    # Ljava/nio/file/attribute/BasicFileAttributes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/nio/file/Path;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlin/io/path/CopyActionContext;",
            "-",
            "Ljava/nio/file/Path;",
            "-",
            "Ljava/nio/file/Path;",
            "+",
            "Lkotlin/io/path/CopyActionResult;",
            ">;",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/nio/file/Path;",
            "-",
            "Ljava/nio/file/Path;",
            "-",
            "Ljava/lang/Exception;",
            "+",
            "Lkotlin/io/path/OnErrorResult;",
            ">;",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/attribute/BasicFileAttributes;",
            ")",
            "Ljava/nio/file/FileVisitResult;"
        }
    .end annotation

    .line 222
    nop

    .line 223
    :try_start_1
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 225
    invoke-static {p6}, Lkotlin/io/path/PathsKt;->checkFileName(Ljava/nio/file/Path;)V

    .line 226
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "last(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/nio/file/Path;

    invoke-static {p6, v0}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->checkNotSameAs$PathsKt__PathRecursiveFunctionsKt(Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    .line 228
    :cond_1e
    sget-object v0, Lkotlin/io/path/DefaultCopyActionContext;->INSTANCE:Lkotlin/io/path/DefaultCopyActionContext;

    invoke-static {p2, p3, p4, p6}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->copyToRecursively$destination$PathsKt__PathRecursiveFunctionsKt(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {p1, v0, p6, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/io/path/CopyActionResult;

    invoke-static {v0}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->toFileVisitResult$PathsKt__PathRecursiveFunctionsKt(Lkotlin/io/path/CopyActionResult;)Ljava/nio/file/FileVisitResult;

    move-result-object v0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2e} :catch_34

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v1, p5

    move-object v5, p6

    goto :goto_3f

    .line 229
    :catch_34
    move-exception v0

    move-object v6, v0

    .line 230
    .local v6, "exception":Ljava/lang/Exception;
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v1, p5

    move-object v5, p6

    .end local p2    # "$this_copyToRecursively":Ljava/nio/file/Path;
    .end local p3    # "$target":Ljava/nio/file/Path;
    .end local p4    # "normalizedTarget":Ljava/nio/file/Path;
    .end local p5    # "$onError":Lkotlin/jvm/functions/Function3;
    .end local p6    # "source":Ljava/nio/file/Path;
    .local v1, "$onError":Lkotlin/jvm/functions/Function3;
    .local v2, "$this_copyToRecursively":Ljava/nio/file/Path;
    .local v3, "$target":Ljava/nio/file/Path;
    .local v4, "normalizedTarget":Ljava/nio/file/Path;
    .local v5, "source":Ljava/nio/file/Path;
    invoke-static/range {v1 .. v6}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->copyToRecursively$error$PathsKt__PathRecursiveFunctionsKt(Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/lang/Exception;)Ljava/nio/file/FileVisitResult;

    move-result-object v0

    .line 222
    .end local v6    # "exception":Ljava/lang/Exception;
    :goto_3f
    return-object v0
.end method

.method public static synthetic copyToRecursively$default(Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;ZLkotlin/jvm/functions/Function3;ILjava/lang/Object;)Ljava/nio/file/Path;
    .registers 7

    .line 157
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_8

    .line 161
    sget-object p2, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$3;->INSTANCE:Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$3;

    check-cast p2, Lkotlin/jvm/functions/Function3;

    .line 157
    :cond_8
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_11

    .line 163
    new-instance p4, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda0;

    invoke-direct {p4, p3}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda0;-><init>(Z)V

    .line 157
    :cond_11
    invoke-static {p0, p1, p2, p3, p4}, Lkotlin/io/path/PathsKt;->copyToRecursively(Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;ZLkotlin/jvm/functions/Function3;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic copyToRecursively$default(Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;ZZILjava/lang/Object;)Ljava/nio/file/Path;
    .registers 7

    .line 72
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_8

    .line 76
    sget-object p2, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$1;->INSTANCE:Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$1;

    check-cast p2, Lkotlin/jvm/functions/Function3;

    .line 72
    :cond_8
    invoke-static {p0, p1, p2, p3, p4}, Lkotlin/io/path/PathsKt;->copyToRecursively(Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;ZZ)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method private static final copyToRecursively$destination$PathsKt__PathRecursiveFunctionsKt(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .registers 8
    .param p0, "$this_copyToRecursively"    # Ljava/nio/file/Path;
    .param p1, "$target"    # Ljava/nio/file/Path;
    .param p2, "normalizedTarget"    # Ljava/nio/file/Path;
    .param p3, "source"    # Ljava/nio/file/Path;

    .line 202
    invoke-static {p3, p0}, Lkotlin/io/path/PathsKt;->relativeTo(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    .line 203
    .local v0, "relativePath":Ljava/nio/file/Path;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    .line 204
    .local v1, "destination":Ljava/nio/file/Path;
    invoke-interface {v1}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/nio/file/Path;->startsWith(Ljava/nio/file/Path;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 211
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v1

    .line 205
    :cond_1a
    new-instance v2, Lkotlin/io/path/IllegalFileNameException;

    .line 206
    nop

    .line 207
    nop

    .line 208
    nop

    .line 205
    const-string v3, "Copying files to outside the specified target directory is prohibited. The directory being recursively copied might contain an entry with an illegal name."

    invoke-direct {v2, p3, v1, v3}, Lkotlin/io/path/IllegalFileNameException;-><init>(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/lang/String;)V

    throw v2
.end method

.method private static final copyToRecursively$error$PathsKt__PathRecursiveFunctionsKt(Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/lang/Exception;)Ljava/nio/file/FileVisitResult;
    .registers 7
    .param p0, "$onError"    # Lkotlin/jvm/functions/Function3;
    .param p1, "$this_copyToRecursively"    # Ljava/nio/file/Path;
    .param p2, "$target"    # Ljava/nio/file/Path;
    .param p3, "normalizedTarget"    # Ljava/nio/file/Path;
    .param p4, "source"    # Ljava/nio/file/Path;
    .param p5, "exception"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/nio/file/Path;",
            "-",
            "Ljava/nio/file/Path;",
            "-",
            "Ljava/lang/Exception;",
            "+",
            "Lkotlin/io/path/OnErrorResult;",
            ">;",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "Ljava/lang/Exception;",
            ")",
            "Ljava/nio/file/FileVisitResult;"
        }
    .end annotation

    .line 215
    invoke-static {p1, p2, p3, p4}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->copyToRecursively$destination$PathsKt__PathRecursiveFunctionsKt(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {p0, p4, v0, p5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/io/path/OnErrorResult;

    invoke-static {v0}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->toFileVisitResult$PathsKt__PathRecursiveFunctionsKt(Lkotlin/io/path/OnErrorResult;)Ljava/nio/file/FileVisitResult;

    move-result-object v0

    return-object v0
.end method

.method private static final copyToRecursively$lambda$0$PathsKt__PathRecursiveFunctionsKt(ZLkotlin/io/path/CopyActionContext;Ljava/nio/file/Path;Ljava/nio/file/Path;)Lkotlin/io/path/CopyActionResult;
    .registers 9
    .param p0, "$followLinks"    # Z
    .param p1, "$this$copyToRecursively"    # Lkotlin/io/path/CopyActionContext;
    .param p2, "src"    # Ljava/nio/file/Path;
    .param p3, "dst"    # Ljava/nio/file/Path;

    const-string v0, "$this$copyToRecursively"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "src"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    sget-object v0, Lkotlin/io/path/LinkFollowing;->INSTANCE:Lkotlin/io/path/LinkFollowing;

    invoke-virtual {v0, p0}, Lkotlin/io/path/LinkFollowing;->toLinkOptions(Z)[Ljava/nio/file/LinkOption;

    move-result-object v0

    .line 83
    .local v0, "options":[Ljava/nio/file/LinkOption;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/nio/file/LinkOption;

    const/4 v3, 0x0

    sget-object v4, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v4, v2, v3

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/nio/file/LinkOption;

    invoke-static {p3, v1}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    .line 84
    .local v1, "dstIsDirectory":Z
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/nio/file/LinkOption;

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/nio/file/LinkOption;

    invoke-static {p2, v2}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    .line 85
    .local v2, "srcIsDirectory":Z
    if-eqz v2, :cond_3d

    if-nez v1, :cond_6c

    .line 86
    :cond_3d
    if-eqz v1, :cond_42

    .line 87
    invoke-static {p3}, Lkotlin/io/path/PathsKt;->deleteRecursively(Ljava/nio/file/Path;)V

    .line 89
    :cond_42
    new-instance v3, Lkotlin/jvm/internal/SpreadBuilder;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    sget-object v4, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    invoke-virtual {v3, v4}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    move-result v4

    new-array v4, v4, [Ljava/nio/file/CopyOption;

    invoke-virtual {v3, v4}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/nio/file/CopyOption;

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/nio/file/CopyOption;

    invoke-static {p2, p3, v3}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    move-result-object v3

    const-string v4, "copy(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    :cond_6c
    sget-object v3, Lkotlin/io/path/CopyActionResult;->CONTINUE:Lkotlin/io/path/CopyActionResult;

    return-object v3
.end method

.method private static final copyToRecursively$lambda$1$PathsKt__PathRecursiveFunctionsKt(ZLkotlin/io/path/CopyActionContext;Ljava/nio/file/Path;Ljava/nio/file/Path;)Lkotlin/io/path/CopyActionResult;
    .registers 5
    .param p0, "$followLinks"    # Z
    .param p1, "<this>"    # Lkotlin/io/path/CopyActionContext;
    .param p2, "src"    # Ljava/nio/file/Path;
    .param p3, "dst"    # Ljava/nio/file/Path;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "src"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    invoke-interface {p1, p2, p3, p0}, Lkotlin/io/path/CopyActionContext;->copyToIgnoringExistingDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;Z)Lkotlin/io/path/CopyActionResult;

    move-result-object v0

    return-object v0
.end method

.method private static final copyToRecursively$lambda$6$PathsKt__PathRecursiveFunctionsKt(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;Lkotlin/io/path/FileVisitorBuilder;)Lkotlin/Unit;
    .registers 16
    .param p0, "$stack"    # Ljava/util/ArrayList;
    .param p1, "$copyAction"    # Lkotlin/jvm/functions/Function3;
    .param p2, "$this_copyToRecursively"    # Ljava/nio/file/Path;
    .param p3, "$target"    # Ljava/nio/file/Path;
    .param p4, "$normalizedTarget"    # Ljava/nio/file/Path;
    .param p5, "$onError"    # Lkotlin/jvm/functions/Function3;
    .param p6, "$this$visitFileTree"    # Lkotlin/io/path/FileVisitorBuilder;

    const-string v0, "$this$visitFileTree"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    new-instance v1, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda3;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .end local p0    # "$stack":Ljava/util/ArrayList;
    .end local p1    # "$copyAction":Lkotlin/jvm/functions/Function3;
    .end local p2    # "$this_copyToRecursively":Ljava/nio/file/Path;
    .end local p3    # "$target":Ljava/nio/file/Path;
    .end local p4    # "$normalizedTarget":Ljava/nio/file/Path;
    .end local p5    # "$onError":Lkotlin/jvm/functions/Function3;
    .local v2, "$stack":Ljava/util/ArrayList;
    .local v3, "$copyAction":Lkotlin/jvm/functions/Function3;
    .local v4, "$this_copyToRecursively":Ljava/nio/file/Path;
    .local v5, "$target":Ljava/nio/file/Path;
    .local v6, "$normalizedTarget":Ljava/nio/file/Path;
    .local v7, "$onError":Lkotlin/jvm/functions/Function3;
    invoke-direct/range {v1 .. v7}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda3;-><init>(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;)V

    move-object p1, v2

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object p2, v7

    .end local v2    # "$stack":Ljava/util/ArrayList;
    .end local v4    # "$this_copyToRecursively":Ljava/nio/file/Path;
    .end local v5    # "$target":Ljava/nio/file/Path;
    .end local v6    # "$normalizedTarget":Ljava/nio/file/Path;
    .end local v7    # "$onError":Lkotlin/jvm/functions/Function3;
    .local p1, "$stack":Ljava/util/ArrayList;
    .local p2, "$onError":Lkotlin/jvm/functions/Function3;
    .local p3, "$this_copyToRecursively":Ljava/nio/file/Path;
    .local p4, "$target":Ljava/nio/file/Path;
    .local p5, "$normalizedTarget":Ljava/nio/file/Path;
    invoke-interface {p6, v1}, Lkotlin/io/path/FileVisitorBuilder;->onPreVisitDirectory(Lkotlin/jvm/functions/Function2;)V

    .line 240
    new-instance v2, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$2;

    move-object v8, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v4, v3

    move-object v3, p1

    .end local p1    # "$stack":Ljava/util/ArrayList;
    .end local p2    # "$onError":Lkotlin/jvm/functions/Function3;
    .end local p3    # "$this_copyToRecursively":Ljava/nio/file/Path;
    .end local p4    # "$target":Ljava/nio/file/Path;
    .end local p5    # "$normalizedTarget":Ljava/nio/file/Path;
    .local v3, "$stack":Ljava/util/ArrayList;
    .local v4, "$copyAction":Lkotlin/jvm/functions/Function3;
    .local v5, "$this_copyToRecursively":Ljava/nio/file/Path;
    .local v6, "$target":Ljava/nio/file/Path;
    .local v7, "$normalizedTarget":Ljava/nio/file/Path;
    .local v8, "$onError":Lkotlin/jvm/functions/Function3;
    invoke-direct/range {v2 .. v8}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$2;-><init>(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;)V

    move-object v3, v4

    .end local v4    # "$copyAction":Lkotlin/jvm/functions/Function3;
    .end local v5    # "$this_copyToRecursively":Ljava/nio/file/Path;
    .end local v6    # "$target":Ljava/nio/file/Path;
    .end local v7    # "$normalizedTarget":Ljava/nio/file/Path;
    .end local v8    # "$onError":Lkotlin/jvm/functions/Function3;
    .local v3, "$copyAction":Lkotlin/jvm/functions/Function3;
    .restart local p1    # "$stack":Ljava/util/ArrayList;
    .restart local p2    # "$onError":Lkotlin/jvm/functions/Function3;
    .restart local p3    # "$this_copyToRecursively":Ljava/nio/file/Path;
    .restart local p4    # "$target":Ljava/nio/file/Path;
    .restart local p5    # "$normalizedTarget":Ljava/nio/file/Path;
    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-interface {p6, v2}, Lkotlin/io/path/FileVisitorBuilder;->onVisitFile(Lkotlin/jvm/functions/Function2;)V

    .line 241
    new-instance p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$3;

    invoke-direct {p0, p2, p3, p4, p5}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$3;-><init>(Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    check-cast p0, Lkotlin/jvm/functions/Function2;

    invoke-interface {p6, p0}, Lkotlin/io/path/FileVisitorBuilder;->onVisitFileFailed(Lkotlin/jvm/functions/Function2;)V

    .line 242
    new-instance p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda4;

    invoke-direct/range {p0 .. p5}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda4;-><init>(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    invoke-interface {p6, p0}, Lkotlin/io/path/FileVisitorBuilder;->onPostVisitDirectory(Lkotlin/jvm/functions/Function2;)V

    .line 250
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final copyToRecursively$lambda$6$lambda$4$PathsKt__PathRecursiveFunctionsKt(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .registers 12
    .param p0, "$stack"    # Ljava/util/ArrayList;
    .param p1, "$copyAction"    # Lkotlin/jvm/functions/Function3;
    .param p2, "$this_copyToRecursively"    # Ljava/nio/file/Path;
    .param p3, "$target"    # Ljava/nio/file/Path;
    .param p4, "$normalizedTarget"    # Ljava/nio/file/Path;
    .param p5, "$onError"    # Lkotlin/jvm/functions/Function3;
    .param p6, "directory"    # Ljava/nio/file/Path;
    .param p7, "attributes"    # Ljava/nio/file/attribute/BasicFileAttributes;

    const-string v0, "directory"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    invoke-static/range {p0 .. p7}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->copyToRecursively$copy$PathsKt__PathRecursiveFunctionsKt(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object v0

    move-object v1, v0

    .local v1, "it":Ljava/nio/file/FileVisitResult;
    const/4 v2, 0x0

    .line 237
    .local v2, "$i$a$-also-PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$1$1":I
    sget-object v3, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    if-ne v1, v3, :cond_17

    invoke-virtual {p0, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_17
    nop

    .line 236
    .end local v1    # "it":Ljava/nio/file/FileVisitResult;
    .end local v2    # "$i$a$-also-PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$1$1":I
    nop

    .line 238
    return-object v0
.end method

.method private static final copyToRecursively$lambda$6$lambda$5$PathsKt__PathRecursiveFunctionsKt(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .registers 14
    .param p0, "$stack"    # Ljava/util/ArrayList;
    .param p1, "$onError"    # Lkotlin/jvm/functions/Function3;
    .param p2, "$this_copyToRecursively"    # Ljava/nio/file/Path;
    .param p3, "$target"    # Ljava/nio/file/Path;
    .param p4, "$normalizedTarget"    # Ljava/nio/file/Path;
    .param p5, "directory"    # Ljava/nio/file/Path;
    .param p6, "exception"    # Ljava/io/IOException;

    const-string v0, "directory"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    .line 244
    if-nez p6, :cond_15

    .line 245
    sget-object v0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    goto :goto_21

    .line 247
    :cond_15
    move-object v6, p6

    check-cast v6, Ljava/lang/Exception;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "$onError":Lkotlin/jvm/functions/Function3;
    .end local p2    # "$this_copyToRecursively":Ljava/nio/file/Path;
    .end local p3    # "$target":Ljava/nio/file/Path;
    .end local p4    # "$normalizedTarget":Ljava/nio/file/Path;
    .end local p5    # "directory":Ljava/nio/file/Path;
    .local v1, "$onError":Lkotlin/jvm/functions/Function3;
    .local v2, "$this_copyToRecursively":Ljava/nio/file/Path;
    .local v3, "$target":Ljava/nio/file/Path;
    .local v4, "$normalizedTarget":Ljava/nio/file/Path;
    .local v5, "directory":Ljava/nio/file/Path;
    invoke-static/range {v1 .. v6}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->copyToRecursively$error$PathsKt__PathRecursiveFunctionsKt(Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/lang/Exception;)Ljava/nio/file/FileVisitResult;

    move-result-object v0

    .line 248
    :goto_21
    return-object v0
.end method

.method public static final deleteRecursively(Ljava/nio/file/Path;)V
    .registers 13
    .param p0, "$this$deleteRecursively"    # Ljava/nio/file/Path;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    invoke-static {p0}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->deleteRecursivelyImpl$PathsKt__PathRecursiveFunctionsKt(Ljava/nio/file/Path;)Ljava/util/List;

    move-result-object v0

    .line 312
    .local v0, "suppressedExceptions":Ljava/util/List;
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_41

    .line 313
    new-instance v1, Ljava/nio/file/FileSystemException;

    const-string v2, "Failed to delete one or more files. See suppressed exceptions for details."

    invoke-direct {v1, v2}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    .local v2, "$this$deleteRecursively_u24lambda_u248":Ljava/nio/file/FileSystemException;
    const/4 v3, 0x0

    .line 314
    .local v3, "$i$a$-apply-PathsKt__PathRecursiveFunctionsKt$deleteRecursively$1":I
    move-object v4, v0

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 534
    .local v5, "$i$f$forEach":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_23
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Ljava/lang/Exception;

    .local v8, "it":Ljava/lang/Exception;
    const/4 v9, 0x0

    .line 314
    .local v9, "$i$a$-forEach-PathsKt__PathRecursiveFunctionsKt$deleteRecursively$1$1":I
    move-object v10, v2

    check-cast v10, Ljava/lang/Throwable;

    move-object v11, v8

    check-cast v11, Ljava/lang/Throwable;

    invoke-static {v10, v11}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 534
    .end local v8    # "it":Ljava/lang/Exception;
    .end local v9    # "$i$a$-forEach-PathsKt__PathRecursiveFunctionsKt$deleteRecursively$1$1":I
    nop

    .end local v7    # "element$iv":Ljava/lang/Object;
    goto :goto_23

    .line 535
    :cond_3c
    nop

    .line 315
    .end local v4    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$forEach":I
    nop

    .line 313
    .end local v2    # "$this$deleteRecursively_u24lambda_u248":Ljava/nio/file/FileSystemException;
    .end local v3    # "$i$a$-apply-PathsKt__PathRecursiveFunctionsKt$deleteRecursively$1":I
    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 317
    :cond_41
    return-void
.end method

.method private static final deleteRecursivelyImpl$PathsKt__PathRecursiveFunctionsKt(Ljava/nio/file/Path;)Ljava/util/List;
    .registers 12
    .param p0, "$this$deleteRecursivelyImpl"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    .line 353
    new-instance v0, Lkotlin/io/path/ExceptionsCollector;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lkotlin/io/path/ExceptionsCollector;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 354
    .local v0, "collector":Lkotlin/io/path/ExceptionsCollector;
    const/4 v2, 0x0

    .local v2, "useInsecure":Z
    const/4 v2, 0x1

    .line 357
    invoke-interface {p0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v4

    if-eqz v4, :cond_52

    .local v4, "fileName":Ljava/nio/file/Path;
    const/4 v5, 0x0

    .line 358
    .local v5, "$i$a$-let-PathsKt__PathRecursiveFunctionsKt$deleteRecursivelyImpl$1":I
    invoke-interface {p0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v6

    if-nez v6, :cond_23

    .line 359
    invoke-interface {p0}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v6

    const-string v7, ""

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v6, v7, v1}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v6

    .line 358
    :cond_23
    nop

    .line 360
    .local v6, "parent":Ljava/nio/file/Path;
    :try_start_24
    invoke-static {v6}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v1
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_29

    goto :goto_2b

    :catchall_29
    move-exception v1

    move-object v1, v3

    .line 361
    .local v1, "directoryStream":Ljava/nio/file/DirectoryStream;
    :goto_2b
    if-eqz v1, :cond_50

    move-object v7, v1

    check-cast v7, Ljava/io/Closeable;

    :try_start_30
    move-object v8, v7

    check-cast v8, Ljava/nio/file/DirectoryStream;

    .local v8, "stream":Ljava/nio/file/DirectoryStream;
    const/4 v9, 0x0

    .line 362
    .local v9, "$i$a$-use-PathsKt__PathRecursiveFunctionsKt$deleteRecursivelyImpl$1$1":I
    instance-of v10, v8, Ljava/nio/file/SecureDirectoryStream;

    if-eqz v10, :cond_42

    .line 363
    const/4 v2, 0x0

    .line 364
    invoke-virtual {v0, v6}, Lkotlin/io/path/ExceptionsCollector;->setPath(Ljava/nio/file/Path;)V

    .line 365
    move-object v10, v8

    check-cast v10, Ljava/nio/file/SecureDirectoryStream;

    invoke-static {v10, v4, v3, v0}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->handleEntry$PathsKt__PathRecursiveFunctionsKt(Ljava/nio/file/SecureDirectoryStream;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/io/path/ExceptionsCollector;)V

    .line 367
    :cond_42
    nop

    .end local v8    # "stream":Ljava/nio/file/DirectoryStream;
    .end local v9    # "$i$a$-use-PathsKt__PathRecursiveFunctionsKt$deleteRecursivelyImpl$1$1":I
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_45
    .catchall {:try_start_30 .. :try_end_45} :catchall_49

    .line 361
    invoke-static {v7, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_50

    :catchall_49
    move-exception v3

    .end local v0    # "collector":Lkotlin/io/path/ExceptionsCollector;
    .end local v1    # "directoryStream":Ljava/nio/file/DirectoryStream;
    .end local v2    # "useInsecure":Z
    .end local v4    # "fileName":Ljava/nio/file/Path;
    .end local v5    # "$i$a$-let-PathsKt__PathRecursiveFunctionsKt$deleteRecursivelyImpl$1":I
    .end local v6    # "parent":Ljava/nio/file/Path;
    .end local p0    # "$this$deleteRecursivelyImpl":Ljava/nio/file/Path;
    :try_start_4a
    throw v3
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_4b

    .restart local v0    # "collector":Lkotlin/io/path/ExceptionsCollector;
    .restart local v1    # "directoryStream":Ljava/nio/file/DirectoryStream;
    .restart local v2    # "useInsecure":Z
    .restart local v4    # "fileName":Ljava/nio/file/Path;
    .restart local v5    # "$i$a$-let-PathsKt__PathRecursiveFunctionsKt$deleteRecursivelyImpl$1":I
    .restart local v6    # "parent":Ljava/nio/file/Path;
    .restart local p0    # "$this$deleteRecursivelyImpl":Ljava/nio/file/Path;
    :catchall_4b
    move-exception v8

    invoke-static {v7, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v8

    .line 367
    :cond_50
    :goto_50
    nop

    .line 357
    .end local v1    # "directoryStream":Ljava/nio/file/DirectoryStream;
    .end local v4    # "fileName":Ljava/nio/file/Path;
    .end local v5    # "$i$a$-let-PathsKt__PathRecursiveFunctionsKt$deleteRecursivelyImpl$1":I
    .end local v6    # "parent":Ljava/nio/file/Path;
    nop

    .line 370
    :cond_52
    if-eqz v2, :cond_57

    .line 371
    invoke-static {p0, v3, v0}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->insecureHandleEntry$PathsKt__PathRecursiveFunctionsKt(Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/io/path/ExceptionsCollector;)V

    .line 374
    :cond_57
    invoke-virtual {v0}, Lkotlin/io/path/ExceptionsCollector;->getCollectedExceptions()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static final enterDirectory$PathsKt__PathRecursiveFunctionsKt(Ljava/nio/file/SecureDirectoryStream;Ljava/nio/file/Path;Lkotlin/io/path/ExceptionsCollector;)V
    .registers 13
    .param p0, "$this$enterDirectory"    # Ljava/nio/file/SecureDirectoryStream;
    .param p1, "name"    # Ljava/nio/file/Path;
    .param p2, "collector"    # Lkotlin/io/path/ExceptionsCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/SecureDirectoryStream<",
            "Ljava/nio/file/Path;",
            ">;",
            "Ljava/nio/file/Path;",
            "Lkotlin/io/path/ExceptionsCollector;",
            ")V"
        }
    .end annotation

    .line 420
    const/4 v0, 0x0

    .line 544
    .local v0, "$i$f$collectIfThrows":I
    nop

    .line 545
    const/4 v1, 0x0

    .line 423
    .local v1, "$i$a$-collectIfThrows-PathsKt__PathRecursiveFunctionsKt$enterDirectory$1":I
    nop

    .line 421
    const/4 v2, 0x0

    .line 546
    .local v2, "$i$f$tryIgnoreNoSuchFileException":I
    const/4 v3, 0x0

    .line 422
    .local v3, "$i$a$-tryIgnoreNoSuchFileException-PathsKt__PathRecursiveFunctionsKt$enterDirectory$1$1":I
    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_8
    new-array v4, v4, [Ljava/nio/file/LinkOption;

    sget-object v6, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    const/4 v7, 0x0

    aput-object v6, v4, v7

    invoke-interface {p0, p1, v4}, Ljava/nio/file/SecureDirectoryStream;->newDirectoryStream(Ljava/lang/Object;[Ljava/nio/file/LinkOption;)Ljava/nio/file/SecureDirectoryStream;

    move-result-object v4
    :try_end_13
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_8 .. :try_end_13} :catch_16
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_13} :catch_14

    .line 546
    .end local v3    # "$i$a$-tryIgnoreNoSuchFileException-PathsKt__PathRecursiveFunctionsKt$enterDirectory$1$1":I
    goto :goto_18

    .line 547
    .end local v1    # "$i$a$-collectIfThrows-PathsKt__PathRecursiveFunctionsKt$enterDirectory$1":I
    .end local v2    # "$i$f$tryIgnoreNoSuchFileException":I
    :catch_14
    move-exception v1

    goto :goto_55

    .line 546
    .restart local v1    # "$i$a$-collectIfThrows-PathsKt__PathRecursiveFunctionsKt$enterDirectory$1":I
    .restart local v2    # "$i$f$tryIgnoreNoSuchFileException":I
    :catch_16
    move-exception v3

    move-object v4, v5

    .line 421
    .end local v2    # "$i$f$tryIgnoreNoSuchFileException":I
    :goto_18
    nop

    .line 423
    if-eqz v4, :cond_59

    .line 421
    :try_start_1b
    check-cast v4, Ljava/io/Closeable;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1d} :catch_14

    .line 423
    :try_start_1d
    move-object v2, v4

    check-cast v2, Ljava/nio/file/SecureDirectoryStream;

    .local v2, "directoryStream":Ljava/nio/file/SecureDirectoryStream;
    const/4 v3, 0x0

    .line 424
    .local v3, "$i$a$-use-PathsKt__PathRecursiveFunctionsKt$enterDirectory$1$2":I
    invoke-interface {v2}, Ljava/nio/file/SecureDirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const-string v7, "iterator(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_47

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/nio/file/Path;

    .line 425
    .local v7, "entry":Ljava/nio/file/Path;
    invoke-interface {v7}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v8

    const-string v9, "getFileName(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lkotlin/io/path/ExceptionsCollector;->getPath()Ljava/nio/file/Path;

    move-result-object v9

    invoke-static {v2, v8, v9, p2}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->handleEntry$PathsKt__PathRecursiveFunctionsKt(Ljava/nio/file/SecureDirectoryStream;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/io/path/ExceptionsCollector;)V

    .end local v7    # "entry":Ljava/nio/file/Path;
    goto :goto_2a

    .line 427
    :cond_47
    nop

    .end local v2    # "directoryStream":Ljava/nio/file/SecureDirectoryStream;
    .end local v3    # "$i$a$-use-PathsKt__PathRecursiveFunctionsKt$enterDirectory$1$2":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4a
    .catchall {:try_start_1d .. :try_end_4a} :catchall_4e

    .line 423
    :try_start_4a
    invoke-static {v4, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_14

    goto :goto_59

    :catchall_4e
    move-exception v2

    .end local v0    # "$i$f$collectIfThrows":I
    .end local v1    # "$i$a$-collectIfThrows-PathsKt__PathRecursiveFunctionsKt$enterDirectory$1":I
    .end local p0    # "$this$enterDirectory":Ljava/nio/file/SecureDirectoryStream;
    .end local p1    # "name":Ljava/nio/file/Path;
    .end local p2    # "collector":Lkotlin/io/path/ExceptionsCollector;
    :try_start_4f
    throw v2
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_50

    .restart local v0    # "$i$f$collectIfThrows":I
    .restart local v1    # "$i$a$-collectIfThrows-PathsKt__PathRecursiveFunctionsKt$enterDirectory$1":I
    .restart local p0    # "$this$enterDirectory":Ljava/nio/file/SecureDirectoryStream;
    .restart local p1    # "name":Ljava/nio/file/Path;
    .restart local p2    # "collector":Lkotlin/io/path/ExceptionsCollector;
    :catchall_50
    move-exception v3

    :try_start_51
    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v0    # "$i$f$collectIfThrows":I
    .end local p0    # "$this$enterDirectory":Ljava/nio/file/SecureDirectoryStream;
    .end local p1    # "name":Ljava/nio/file/Path;
    .end local p2    # "collector":Lkotlin/io/path/ExceptionsCollector;
    throw v3
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_55} :catch_14

    .line 548
    .restart local v0    # "$i$f$collectIfThrows":I
    .local v1, "exception$iv":Ljava/lang/Exception;
    .restart local p0    # "$this$enterDirectory":Ljava/nio/file/SecureDirectoryStream;
    .restart local p1    # "name":Ljava/nio/file/Path;
    .restart local p2    # "collector":Lkotlin/io/path/ExceptionsCollector;
    :goto_55
    invoke-virtual {p2, v1}, Lkotlin/io/path/ExceptionsCollector;->collect(Ljava/lang/Exception;)V

    goto :goto_5b

    .line 428
    .local v1, "$i$a$-collectIfThrows-PathsKt__PathRecursiveFunctionsKt$enterDirectory$1":I
    :cond_59
    :goto_59
    nop

    .line 545
    .end local v1    # "$i$a$-collectIfThrows-PathsKt__PathRecursiveFunctionsKt$enterDirectory$1":I
    nop

    .line 550
    :goto_5b
    nop

    .line 429
    .end local v0    # "$i$f$collectIfThrows":I
    return-void
.end method

.method private static final handleEntry$PathsKt__PathRecursiveFunctionsKt(Ljava/nio/file/SecureDirectoryStream;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/io/path/ExceptionsCollector;)V
    .registers 9
    .param p0, "$this$handleEntry"    # Ljava/nio/file/SecureDirectoryStream;
    .param p1, "name"    # Ljava/nio/file/Path;
    .param p2, "parent"    # Ljava/nio/file/Path;
    .param p3, "collector"    # Lkotlin/io/path/ExceptionsCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/SecureDirectoryStream<",
            "Ljava/nio/file/Path;",
            ">;",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "Lkotlin/io/path/ExceptionsCollector;",
            ")V"
        }
    .end annotation

    .line 392
    invoke-virtual {p3, p1}, Lkotlin/io/path/ExceptionsCollector;->enterEntry(Ljava/nio/file/Path;)V

    .line 394
    const/4 v0, 0x0

    .line 536
    .local v0, "$i$f$collectIfThrows":I
    nop

    .line 537
    const/4 v1, 0x0

    .line 395
    .local v1, "$i$a$-collectIfThrows-PathsKt__PathRecursiveFunctionsKt$handleEntry$1":I
    if-eqz p2, :cond_15

    .line 397
    :try_start_8
    invoke-virtual {p3}, Lkotlin/io/path/ExceptionsCollector;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 398
    .local v2, "entry":Ljava/nio/file/Path;
    invoke-static {v2}, Lkotlin/io/path/PathsKt;->checkFileName(Ljava/nio/file/Path;)V

    .line 399
    invoke-static {v2, p2}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->checkNotSameAs$PathsKt__PathRecursiveFunctionsKt(Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    .line 401
    .end local v2    # "entry":Ljava/nio/file/Path;
    :cond_15
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/nio/file/LinkOption;

    sget-object v3, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p0, p1, v2}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->isDirectory$PathsKt__PathRecursiveFunctionsKt(Ljava/nio/file/SecureDirectoryStream;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 402
    invoke-virtual {p3}, Lkotlin/io/path/ExceptionsCollector;->getTotalExceptions()I

    move-result v2

    .line 404
    .local v2, "preEnterTotalExceptions":I
    invoke-static {p0, p1, p3}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->enterDirectory$PathsKt__PathRecursiveFunctionsKt(Ljava/nio/file/SecureDirectoryStream;Ljava/nio/file/Path;Lkotlin/io/path/ExceptionsCollector;)V

    .line 408
    invoke-virtual {p3}, Lkotlin/io/path/ExceptionsCollector;->getTotalExceptions()I

    move-result v3
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2e} :catch_45

    if-ne v2, v3, :cond_43

    .line 409
    const/4 v3, 0x0

    .line 538
    .local v3, "$i$f$tryIgnoreNoSuchFileException":I
    const/4 v4, 0x0

    .line 409
    .local v4, "$i$a$-tryIgnoreNoSuchFileException-PathsKt__PathRecursiveFunctionsKt$handleEntry$1$1":I
    :try_start_32
    invoke-interface {p0, p1}, Ljava/nio/file/SecureDirectoryStream;->deleteDirectory(Ljava/lang/Object;)V

    .end local v4    # "$i$a$-tryIgnoreNoSuchFileException-PathsKt__PathRecursiveFunctionsKt$handleEntry$1$1":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_37
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_32 .. :try_end_37} :catch_38
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_37} :catch_45

    .line 538
    goto :goto_43

    :catch_38
    move-exception v4

    .end local v2    # "preEnterTotalExceptions":I
    .end local v3    # "$i$f$tryIgnoreNoSuchFileException":I
    goto :goto_43

    .line 412
    :cond_3a
    const/4 v2, 0x0

    .line 539
    .local v2, "$i$f$tryIgnoreNoSuchFileException":I
    const/4 v3, 0x0

    .line 412
    .local v3, "$i$a$-tryIgnoreNoSuchFileException-PathsKt__PathRecursiveFunctionsKt$handleEntry$1$2":I
    :try_start_3c
    invoke-interface {p0, p1}, Ljava/nio/file/SecureDirectoryStream;->deleteFile(Ljava/lang/Object;)V

    .end local v3    # "$i$a$-tryIgnoreNoSuchFileException-PathsKt__PathRecursiveFunctionsKt$handleEntry$1$2":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_41
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_3c .. :try_end_41} :catch_42
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_41} :catch_45

    .line 539
    goto :goto_43

    :catch_42
    move-exception v3

    .line 414
    .end local v2    # "$i$f$tryIgnoreNoSuchFileException":I
    :cond_43
    :goto_43
    nop

    .line 537
    .end local v1    # "$i$a$-collectIfThrows-PathsKt__PathRecursiveFunctionsKt$handleEntry$1":I
    goto :goto_49

    .line 540
    :catch_45
    move-exception v1

    .line 541
    .local v1, "exception$iv":Ljava/lang/Exception;
    invoke-virtual {p3, v1}, Lkotlin/io/path/ExceptionsCollector;->collect(Ljava/lang/Exception;)V

    .line 543
    .end local v1    # "exception$iv":Ljava/lang/Exception;
    :goto_49
    nop

    .line 416
    .end local v0    # "$i$f$collectIfThrows":I
    invoke-virtual {p3, p1}, Lkotlin/io/path/ExceptionsCollector;->exitEntry(Ljava/nio/file/Path;)V

    .line 417
    return-void
.end method

.method private static final insecureEnterDirectory$PathsKt__PathRecursiveFunctionsKt(Ljava/nio/file/Path;Lkotlin/io/path/ExceptionsCollector;)V
    .registers 10
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "collector"    # Lkotlin/io/path/ExceptionsCollector;

    .line 463
    const/4 v0, 0x0

    .line 558
    .local v0, "$i$f$collectIfThrows":I
    nop

    .line 559
    const/4 v1, 0x0

    .line 466
    .local v1, "$i$a$-collectIfThrows-PathsKt__PathRecursiveFunctionsKt$insecureEnterDirectory$1":I
    nop

    .line 464
    const/4 v2, 0x0

    .line 560
    .local v2, "$i$f$tryIgnoreNoSuchFileException":I
    const/4 v3, 0x0

    .line 465
    .local v3, "$i$a$-tryIgnoreNoSuchFileException-PathsKt__PathRecursiveFunctionsKt$insecureEnterDirectory$1$1":I
    const/4 v4, 0x0

    :try_start_7
    invoke-static {p0}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v5
    :try_end_b
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_7 .. :try_end_b} :catch_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_b} :catch_c

    .line 560
    .end local v3    # "$i$a$-tryIgnoreNoSuchFileException-PathsKt__PathRecursiveFunctionsKt$insecureEnterDirectory$1$1":I
    goto :goto_10

    .line 561
    .end local v1    # "$i$a$-collectIfThrows-PathsKt__PathRecursiveFunctionsKt$insecureEnterDirectory$1":I
    .end local v2    # "$i$f$tryIgnoreNoSuchFileException":I
    :catch_c
    move-exception v1

    goto :goto_43

    .line 560
    .restart local v1    # "$i$a$-collectIfThrows-PathsKt__PathRecursiveFunctionsKt$insecureEnterDirectory$1":I
    .restart local v2    # "$i$f$tryIgnoreNoSuchFileException":I
    :catch_e
    move-exception v3

    move-object v5, v4

    .line 464
    .end local v2    # "$i$f$tryIgnoreNoSuchFileException":I
    :goto_10
    nop

    .line 466
    if-eqz v5, :cond_47

    .line 464
    :try_start_13
    check-cast v5, Ljava/io/Closeable;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_15} :catch_c

    .line 466
    :try_start_15
    move-object v2, v5

    check-cast v2, Ljava/nio/file/DirectoryStream;

    .local v2, "directoryStream":Ljava/nio/file/DirectoryStream;
    const/4 v3, 0x0

    .line 467
    .local v3, "$i$a$-use-PathsKt__PathRecursiveFunctionsKt$insecureEnterDirectory$1$2":I
    invoke-interface {v2}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const-string v7, "iterator(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_22
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_35

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/nio/file/Path;

    .line 468
    .local v7, "entry":Ljava/nio/file/Path;
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v7, p0, p1}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->insecureHandleEntry$PathsKt__PathRecursiveFunctionsKt(Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/io/path/ExceptionsCollector;)V

    .end local v7    # "entry":Ljava/nio/file/Path;
    goto :goto_22

    .line 470
    :cond_35
    nop

    .end local v2    # "directoryStream":Ljava/nio/file/DirectoryStream;
    .end local v3    # "$i$a$-use-PathsKt__PathRecursiveFunctionsKt$insecureEnterDirectory$1$2":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_38
    .catchall {:try_start_15 .. :try_end_38} :catchall_3c

    .line 466
    :try_start_38
    invoke-static {v5, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_c

    goto :goto_47

    :catchall_3c
    move-exception v2

    .end local v0    # "$i$f$collectIfThrows":I
    .end local v1    # "$i$a$-collectIfThrows-PathsKt__PathRecursiveFunctionsKt$insecureEnterDirectory$1":I
    .end local p0    # "path":Ljava/nio/file/Path;
    .end local p1    # "collector":Lkotlin/io/path/ExceptionsCollector;
    :try_start_3d
    throw v2
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3e

    .restart local v0    # "$i$f$collectIfThrows":I
    .restart local v1    # "$i$a$-collectIfThrows-PathsKt__PathRecursiveFunctionsKt$insecureEnterDirectory$1":I
    .restart local p0    # "path":Ljava/nio/file/Path;
    .restart local p1    # "collector":Lkotlin/io/path/ExceptionsCollector;
    :catchall_3e
    move-exception v3

    :try_start_3f
    invoke-static {v5, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v0    # "$i$f$collectIfThrows":I
    .end local p0    # "path":Ljava/nio/file/Path;
    .end local p1    # "collector":Lkotlin/io/path/ExceptionsCollector;
    throw v3
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_43} :catch_c

    .line 562
    .restart local v0    # "$i$f$collectIfThrows":I
    .local v1, "exception$iv":Ljava/lang/Exception;
    .restart local p0    # "path":Ljava/nio/file/Path;
    .restart local p1    # "collector":Lkotlin/io/path/ExceptionsCollector;
    :goto_43
    invoke-virtual {p1, v1}, Lkotlin/io/path/ExceptionsCollector;->collect(Ljava/lang/Exception;)V

    goto :goto_49

    .line 471
    .local v1, "$i$a$-collectIfThrows-PathsKt__PathRecursiveFunctionsKt$insecureEnterDirectory$1":I
    :cond_47
    :goto_47
    nop

    .line 559
    .end local v1    # "$i$a$-collectIfThrows-PathsKt__PathRecursiveFunctionsKt$insecureEnterDirectory$1":I
    nop

    .line 564
    :goto_49
    nop

    .line 472
    .end local v0    # "$i$f$collectIfThrows":I
    return-void
.end method

.method private static final insecureHandleEntry$PathsKt__PathRecursiveFunctionsKt(Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/io/path/ExceptionsCollector;)V
    .registers 9
    .param p0, "entry"    # Ljava/nio/file/Path;
    .param p1, "parent"    # Ljava/nio/file/Path;
    .param p2, "collector"    # Lkotlin/io/path/ExceptionsCollector;

    .line 440
    const/4 v0, 0x0

    .line 552
    .local v0, "$i$f$collectIfThrows":I
    nop

    .line 553
    const/4 v1, 0x0

    .line 441
    .local v1, "$i$a$-collectIfThrows-PathsKt__PathRecursiveFunctionsKt$insecureHandleEntry$1":I
    if-eqz p1, :cond_b

    .line 443
    :try_start_5
    invoke-static {p0}, Lkotlin/io/path/PathsKt;->checkFileName(Ljava/nio/file/Path;)V

    .line 444
    invoke-static {p0, p1}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->checkNotSameAs$PathsKt__PathRecursiveFunctionsKt(Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    .line 446
    :cond_b
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/nio/file/LinkOption;

    sget-object v4, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v2}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 447
    invoke-virtual {p2}, Lkotlin/io/path/ExceptionsCollector;->getTotalExceptions()I

    move-result v2

    .line 449
    .local v2, "preEnterTotalExceptions":I
    invoke-static {p0, p2}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->insecureEnterDirectory$PathsKt__PathRecursiveFunctionsKt(Ljava/nio/file/Path;Lkotlin/io/path/ExceptionsCollector;)V

    .line 453
    invoke-virtual {p2}, Lkotlin/io/path/ExceptionsCollector;->getTotalExceptions()I

    move-result v3

    if-ne v2, v3, :cond_33

    .line 454
    invoke-static {p0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    goto :goto_33

    .line 457
    .end local v2    # "preEnterTotalExceptions":I
    :cond_30
    invoke-static {p0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_33} :catch_35

    .line 459
    :cond_33
    :goto_33
    nop

    .line 553
    .end local v1    # "$i$a$-collectIfThrows-PathsKt__PathRecursiveFunctionsKt$insecureHandleEntry$1":I
    goto :goto_39

    .line 554
    :catch_35
    move-exception v1

    .line 555
    .local v1, "exception$iv":Ljava/lang/Exception;
    invoke-virtual {p2, v1}, Lkotlin/io/path/ExceptionsCollector;->collect(Ljava/lang/Exception;)V

    .line 557
    .end local v1    # "exception$iv":Ljava/lang/Exception;
    :goto_39
    nop

    .line 460
    .end local v0    # "$i$f$collectIfThrows":I
    return-void
.end method

.method private static final varargs isDirectory$PathsKt__PathRecursiveFunctionsKt(Ljava/nio/file/SecureDirectoryStream;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z
    .registers 7
    .param p0, "$this$isDirectory"    # Ljava/nio/file/SecureDirectoryStream;
    .param p1, "entryName"    # Ljava/nio/file/Path;
    .param p2, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/SecureDirectoryStream<",
            "Ljava/nio/file/Path;",
            ">;",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/LinkOption;",
            ")Z"
        }
    .end annotation

    .line 432
    const/4 v0, 0x0

    .line 551
    .local v0, "$i$f$tryIgnoreNoSuchFileException":I
    const/4 v1, 0x0

    .line 433
    .local v1, "$i$a$-tryIgnoreNoSuchFileException-PathsKt__PathRecursiveFunctionsKt$isDirectory$1":I
    :try_start_2
    const-class v2, Ljava/nio/file/attribute/BasicFileAttributeView;

    array-length v3, p2

    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/nio/file/LinkOption;

    invoke-interface {p0, p1, v2, v3}, Ljava/nio/file/SecureDirectoryStream;->getFileAttributeView(Ljava/lang/Object;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v2

    check-cast v2, Ljava/nio/file/attribute/BasicFileAttributeView;

    invoke-interface {v2}, Ljava/nio/file/attribute/BasicFileAttributeView;->readAttributes()Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v2

    .end local v1    # "$i$a$-tryIgnoreNoSuchFileException-PathsKt__PathRecursiveFunctionsKt$isDirectory$1":I
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_1d
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_2 .. :try_end_1d} :catch_1e

    .line 551
    goto :goto_21

    :catch_1e
    move-exception v1

    .local v1, "<unused var>$iv":Ljava/nio/file/NoSuchFileException;
    const/4 v2, 0x0

    move-object v1, v2

    .line 432
    .end local v0    # "$i$f$tryIgnoreNoSuchFileException":I
    .end local v1    # "<unused var>$iv":Ljava/nio/file/NoSuchFileException;
    :goto_21
    if-eqz v1, :cond_28

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_29

    .line 434
    :cond_28
    const/4 v0, 0x0

    .line 432
    :goto_29
    return v0
.end method

.method private static final toFileVisitResult$PathsKt__PathRecursiveFunctionsKt(Lkotlin/io/path/CopyActionResult;)Ljava/nio/file/FileVisitResult;
    .registers 3
    .param p0, "$this$toFileVisitResult"    # Lkotlin/io/path/CopyActionResult;

    .line 271
    sget-object v0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lkotlin/io/path/CopyActionResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 274
    :pswitch_11
    sget-object v0, Ljava/nio/file/FileVisitResult;->SKIP_SUBTREE:Ljava/nio/file/FileVisitResult;

    goto :goto_19

    .line 273
    :pswitch_14
    sget-object v0, Ljava/nio/file/FileVisitResult;->TERMINATE:Ljava/nio/file/FileVisitResult;

    goto :goto_19

    .line 272
    :pswitch_17
    sget-object v0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    .line 275
    :goto_19
    return-object v0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch
.end method

.method private static final toFileVisitResult$PathsKt__PathRecursiveFunctionsKt(Lkotlin/io/path/OnErrorResult;)Ljava/nio/file/FileVisitResult;
    .registers 3
    .param p0, "$this$toFileVisitResult"    # Lkotlin/io/path/OnErrorResult;

    .line 278
    sget-object v0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p0}, Lkotlin/io/path/OnErrorResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_18

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 280
    :pswitch_11
    sget-object v0, Ljava/nio/file/FileVisitResult;->SKIP_SUBTREE:Ljava/nio/file/FileVisitResult;

    goto :goto_16

    .line 279
    :pswitch_14
    sget-object v0, Ljava/nio/file/FileVisitResult;->TERMINATE:Ljava/nio/file/FileVisitResult;

    .line 281
    :goto_16
    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14
        :pswitch_11
    .end packed-switch
.end method

.method private static final tryIgnoreNoSuchFileException$PathsKt__PathRecursiveFunctionsKt(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .registers 4
    .param p0, "function"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;)TR;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 386
    .local v0, "$i$f$tryIgnoreNoSuchFileException":I
    :try_start_1
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1
    :try_end_5
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_1 .. :try_end_5} :catch_6

    goto :goto_9

    :catch_6
    move-exception v1

    .local v1, "<unused var>":Ljava/nio/file/NoSuchFileException;
    const/4 v2, 0x0

    move-object v1, v2

    .end local v1    # "<unused var>":Ljava/nio/file/NoSuchFileException;
    :goto_9
    return-object v1
.end method

###### Class kotlin.io.path.PathsKt__PathRecursiveFunctionsKt.WhenMappings (kotlin.io.path.PathsKt__PathRecursiveFunctionsKt$WhenMappings)
.class public final synthetic Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$WhenMappings;
.super Ljava/lang/Object;
.source "PathRecursiveFunctions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    invoke-static {}, Lkotlin/io/path/CopyActionResult;->values()[Lkotlin/io/path/CopyActionResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_8
    sget-object v2, Lkotlin/io/path/CopyActionResult;->CONTINUE:Lkotlin/io/path/CopyActionResult;

    invoke-virtual {v2}, Lkotlin/io/path/CopyActionResult;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_10} :catch_11

    goto :goto_12

    :catch_11
    move-exception v2

    :goto_12
    const/4 v2, 0x2

    :try_start_13
    sget-object v3, Lkotlin/io/path/CopyActionResult;->TERMINATE:Lkotlin/io/path/CopyActionResult;

    invoke-virtual {v3}, Lkotlin/io/path/CopyActionResult;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1b} :catch_1c

    goto :goto_1d

    :catch_1c
    move-exception v3

    :goto_1d
    :try_start_1d
    sget-object v3, Lkotlin/io/path/CopyActionResult;->SKIP_SUBTREE:Lkotlin/io/path/CopyActionResult;

    invoke-virtual {v3}, Lkotlin/io/path/CopyActionResult;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v0, v3
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_26} :catch_27

    goto :goto_28

    :catch_27
    move-exception v3

    :goto_28
    sput-object v0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lkotlin/io/path/OnErrorResult;->values()[Lkotlin/io/path/OnErrorResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_31
    sget-object v3, Lkotlin/io/path/OnErrorResult;->TERMINATE:Lkotlin/io/path/OnErrorResult;

    invoke-virtual {v3}, Lkotlin/io/path/OnErrorResult;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_39} :catch_3a

    goto :goto_3b

    :catch_3a
    move-exception v1

    :goto_3b
    :try_start_3b
    sget-object v1, Lkotlin/io/path/OnErrorResult;->SKIP_SUBTREE:Lkotlin/io/path/OnErrorResult;

    invoke-virtual {v1}, Lkotlin/io/path/OnErrorResult;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_43} :catch_44

    goto :goto_45

    :catch_44
    move-exception v1

    :goto_45
    sput-object v0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$WhenMappings;->$EnumSwitchMapping$1:[I

    return-void
.end method

###### Class kotlin.io.path.PathsKt__PathRecursiveFunctionsKt.AnonymousClass1 (kotlin.io.path.PathsKt__PathRecursiveFunctionsKt$copyToRecursively$1)
.class final Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$1;
.super Ljava/lang/Object;
.source "PathRecursiveFunctions.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->copyToRecursively$default(Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;ZZILjava/lang/Object;)Ljava/nio/file/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$1;

    invoke-direct {v0}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$1;-><init>()V

    sput-object v0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$1;->INSTANCE:Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$1;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;

    .line 76
    move-object v0, p1

    check-cast v0, Ljava/nio/file/Path;

    move-object v1, p2

    check-cast v1, Ljava/nio/file/Path;

    move-object v2, p3

    check-cast v2, Ljava/lang/Exception;

    invoke-virtual {p0, v0, v1, v2}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$1;->invoke(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/lang/Exception;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/lang/Exception;)Ljava/lang/Void;
    .registers 5
    .param p3, "exception"    # Ljava/lang/Exception;

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "exception"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    throw p3
.end method

###### Class kotlin.io.path.PathsKt__PathRecursiveFunctionsKt.AnonymousClass3 (kotlin.io.path.PathsKt__PathRecursiveFunctionsKt$copyToRecursively$3)
.class final Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$3;
.super Ljava/lang/Object;
.source "PathRecursiveFunctions.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->copyToRecursively$default(Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;ZLkotlin/jvm/functions/Function3;ILjava/lang/Object;)Ljava/nio/file/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$3;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$3;

    invoke-direct {v0}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$3;-><init>()V

    sput-object v0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$3;->INSTANCE:Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$3;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;

    .line 161
    move-object v0, p1

    check-cast v0, Ljava/nio/file/Path;

    move-object v1, p2

    check-cast v1, Ljava/nio/file/Path;

    move-object v2, p3

    check-cast v2, Ljava/lang/Exception;

    invoke-virtual {p0, v0, v1, v2}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$3;->invoke(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/lang/Exception;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/lang/Exception;)Ljava/lang/Void;
    .registers 5
    .param p3, "exception"    # Ljava/lang/Exception;

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "exception"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    throw p3
.end method

###### Class kotlin.io.path.PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda0 (kotlin.io.path.PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda0)
.class public final synthetic Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;"
    method = "copyToRecursively$lambda$1$PathsKt__PathRecursiveFunctionsKt"
    proto = "(ZLkotlin/io/path/CopyActionContext;Ljava/nio/file/Path;Ljava/nio/file/Path;)Lkotlin/io/path/CopyActionResult;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x1c
    versionHash = "3b119036505a817327d30bbe4a430e8676906c2ab0a3363856806bcd3b289007"
.end annotation


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda0;->f$0:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 0
    iget-boolean v0, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda0;->f$0:Z

    check-cast p1, Lkotlin/io/path/CopyActionContext;

    check-cast p2, Ljava/nio/file/Path;

    check-cast p3, Ljava/nio/file/Path;

    invoke-static {v0, p1, p2, p3}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->$r8$lambda$3VYkoVP17knpGuiVw5BoXBQ_zc8(ZLkotlin/io/path/CopyActionContext;Ljava/nio/file/Path;Ljava/nio/file/Path;)Lkotlin/io/path/CopyActionResult;

    move-result-object p1

    return-object p1
.end method

###### Class kotlin.io.path.PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda1 (kotlin.io.path.PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda1)
.class public final synthetic Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;"
    method = "copyToRecursively$lambda$0$PathsKt__PathRecursiveFunctionsKt"
    proto = "(ZLkotlin/io/path/CopyActionContext;Ljava/nio/file/Path;Ljava/nio/file/Path;)Lkotlin/io/path/CopyActionResult;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x1c
    versionHash = "3b119036505a817327d30bbe4a430e8676906c2ab0a3363856806bcd3b289007"
.end annotation


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda1;->f$0:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 0
    iget-boolean v0, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda1;->f$0:Z

    check-cast p1, Lkotlin/io/path/CopyActionContext;

    check-cast p2, Ljava/nio/file/Path;

    check-cast p3, Ljava/nio/file/Path;

    invoke-static {v0, p1, p2, p3}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->$r8$lambda$r0l1pONWwls6V3X1jucrTqZKxjo(ZLkotlin/io/path/CopyActionContext;Ljava/nio/file/Path;Ljava/nio/file/Path;)Lkotlin/io/path/CopyActionResult;

    move-result-object p1

    return-object p1
.end method

###### Class kotlin.io.path.PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda2 (kotlin.io.path.PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda2)
.class public final synthetic Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;"
    method = "copyToRecursively$lambda$6$PathsKt__PathRecursiveFunctionsKt"
    proto = "(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;Lkotlin/io/path/FileVisitorBuilder;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x1c
    versionHash = "3b119036505a817327d30bbe4a430e8676906c2ab0a3363856806bcd3b289007"
.end annotation


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function3;

.field public final synthetic f$2:Ljava/nio/file/Path;

.field public final synthetic f$3:Ljava/nio/file/Path;

.field public final synthetic f$4:Ljava/nio/file/Path;

.field public final synthetic f$5:Lkotlin/jvm/functions/Function3;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda2;->f$0:Ljava/util/ArrayList;

    iput-object p2, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda2;->f$1:Lkotlin/jvm/functions/Function3;

    iput-object p3, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda2;->f$2:Ljava/nio/file/Path;

    iput-object p4, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda2;->f$3:Ljava/nio/file/Path;

    iput-object p5, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda2;->f$4:Ljava/nio/file/Path;

    iput-object p6, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda2;->f$5:Lkotlin/jvm/functions/Function3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 0
    iget-object v0, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda2;->f$0:Ljava/util/ArrayList;

    iget-object v1, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda2;->f$1:Lkotlin/jvm/functions/Function3;

    iget-object v2, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda2;->f$2:Ljava/nio/file/Path;

    iget-object v3, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda2;->f$3:Ljava/nio/file/Path;

    iget-object v4, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda2;->f$4:Ljava/nio/file/Path;

    iget-object v5, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda2;->f$5:Lkotlin/jvm/functions/Function3;

    move-object v6, p1

    check-cast v6, Lkotlin/io/path/FileVisitorBuilder;

    invoke-static/range {v0 .. v6}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->$r8$lambda$QF8Uhuq7fTQtpHX-cuQgT1yM3No(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;Lkotlin/io/path/FileVisitorBuilder;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class kotlin.io.path.PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda3 (kotlin.io.path.PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda3)
.class public final synthetic Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;"
    method = "copyToRecursively$lambda$6$lambda$4$PathsKt__PathRecursiveFunctionsKt"
    proto = "(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x1c
    versionHash = "3b119036505a817327d30bbe4a430e8676906c2ab0a3363856806bcd3b289007"
.end annotation


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function3;

.field public final synthetic f$2:Ljava/nio/file/Path;

.field public final synthetic f$3:Ljava/nio/file/Path;

.field public final synthetic f$4:Ljava/nio/file/Path;

.field public final synthetic f$5:Lkotlin/jvm/functions/Function3;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda3;->f$0:Ljava/util/ArrayList;

    iput-object p2, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda3;->f$1:Lkotlin/jvm/functions/Function3;

    iput-object p3, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda3;->f$2:Ljava/nio/file/Path;

    iput-object p4, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda3;->f$3:Ljava/nio/file/Path;

    iput-object p5, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda3;->f$4:Ljava/nio/file/Path;

    iput-object p6, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda3;->f$5:Lkotlin/jvm/functions/Function3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    .line 0
    iget-object v0, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda3;->f$0:Ljava/util/ArrayList;

    iget-object v1, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda3;->f$1:Lkotlin/jvm/functions/Function3;

    iget-object v2, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda3;->f$2:Ljava/nio/file/Path;

    iget-object v3, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda3;->f$3:Ljava/nio/file/Path;

    iget-object v4, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda3;->f$4:Ljava/nio/file/Path;

    iget-object v5, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda3;->f$5:Lkotlin/jvm/functions/Function3;

    move-object v6, p1

    check-cast v6, Ljava/nio/file/Path;

    move-object v7, p2

    check-cast v7, Ljava/nio/file/attribute/BasicFileAttributes;

    invoke-static/range {v0 .. v7}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->$r8$lambda$vrBef6cHhs3oA22HfQBDeNxsJGA(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

###### Class kotlin.io.path.PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda4 (kotlin.io.path.PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda4)
.class public final synthetic Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;"
    method = "copyToRecursively$lambda$6$lambda$5$PathsKt__PathRecursiveFunctionsKt"
    proto = "(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x1c
    versionHash = "3b119036505a817327d30bbe4a430e8676906c2ab0a3363856806bcd3b289007"
.end annotation


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function3;

.field public final synthetic f$2:Ljava/nio/file/Path;

.field public final synthetic f$3:Ljava/nio/file/Path;

.field public final synthetic f$4:Ljava/nio/file/Path;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda4;->f$0:Ljava/util/ArrayList;

    iput-object p2, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda4;->f$1:Lkotlin/jvm/functions/Function3;

    iput-object p3, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda4;->f$2:Ljava/nio/file/Path;

    iput-object p4, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda4;->f$3:Ljava/nio/file/Path;

    iput-object p5, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda4;->f$4:Ljava/nio/file/Path;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 0
    iget-object v0, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda4;->f$0:Ljava/util/ArrayList;

    iget-object v1, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda4;->f$1:Lkotlin/jvm/functions/Function3;

    iget-object v2, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda4;->f$2:Ljava/nio/file/Path;

    iget-object v3, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda4;->f$3:Ljava/nio/file/Path;

    iget-object v4, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda4;->f$4:Ljava/nio/file/Path;

    move-object v5, p1

    check-cast v5, Ljava/nio/file/Path;

    move-object v6, p2

    check-cast v6, Ljava/io/IOException;

    invoke-static/range {v0 .. v6}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->$r8$lambda$Dn4FOAPbjNDFACiW2KdbJH8lJzc(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method
