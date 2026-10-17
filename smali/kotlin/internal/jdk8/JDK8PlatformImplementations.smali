###### Class kotlin.internal.jdk8.JDK8PlatformImplementations (kotlin.internal.jdk8.JDK8PlatformImplementations)
.class public Lkotlin/internal/jdk8/JDK8PlatformImplementations;
.super Lkotlin/internal/jdk7/JDK7PlatformImplementations;
.source "JDK8PlatformImplementations.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/internal/jdk8/JDK8PlatformImplementations$ReflectSdkVersion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0010\u0018\u00002\u00020\u0001:\u0001\u0012B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u001a\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u0011H\u0017\u00a8\u0006\u0013"
    }
    d2 = {
        "Lkotlin/internal/jdk8/JDK8PlatformImplementations;",
        "Lkotlin/internal/jdk7/JDK7PlatformImplementations;",
        "<init>",
        "()V",
        "sdkIsNullOrAtLeast",
        "",
        "version",
        "",
        "getMatchResultNamedGroup",
        "Lkotlin/text/MatchGroup;",
        "matchResult",
        "Ljava/util/regex/MatchResult;",
        "name",
        "",
        "defaultPlatformRandom",
        "Lkotlin/random/Random;",
        "getSystemClock",
        "Lkotlin/time/Clock;",
        "ReflectSdkVersion",
        "kotlin-stdlib-jdk8"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lkotlin/internal/jdk7/JDK7PlatformImplementations;-><init>()V

    return-void
.end method

.method private final sdkIsNullOrAtLeast(I)Z
    .registers 3
    .param p1, "version"    # I

    .line 40
    sget-object v0, Lkotlin/internal/jdk8/JDK8PlatformImplementations$ReflectSdkVersion;->sdkVersion:Ljava/lang/Integer;

    if-eqz v0, :cond_f

    sget-object v0, Lkotlin/internal/jdk8/JDK8PlatformImplementations$ReflectSdkVersion;->sdkVersion:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method


# virtual methods
.method public defaultPlatformRandom()Lkotlin/random/Random;
    .registers 2

    .line 58
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lkotlin/internal/jdk8/JDK8PlatformImplementations;->sdkIsNullOrAtLeast(I)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Lkotlin/random/jdk8/PlatformThreadLocalRandom;

    invoke-direct {v0}, Lkotlin/random/jdk8/PlatformThreadLocalRandom;-><init>()V

    check-cast v0, Lkotlin/random/Random;

    goto :goto_14

    :cond_10
    invoke-super {p0}, Lkotlin/internal/jdk7/JDK7PlatformImplementations;->defaultPlatformRandom()Lkotlin/random/Random;

    move-result-object v0

    :goto_14
    return-object v0
.end method

.method public getMatchResultNamedGroup(Ljava/util/regex/MatchResult;Ljava/lang/String;)Lkotlin/text/MatchGroup;
    .registers 8
    .param p1, "matchResult"    # Ljava/util/regex/MatchResult;
    .param p2, "name"    # Ljava/lang/String;

    const-string v0, "matchResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    instance-of v0, p1, Ljava/util/regex/Matcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Ljava/util/regex/Matcher;

    goto :goto_14

    :cond_13
    move-object v0, v1

    :goto_14
    if-eqz v0, :cond_40

    .line 45
    .local v0, "matcher":Ljava/util/regex/Matcher;
    new-instance v2, Lkotlin/ranges/IntRange;

    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->start(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->end(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v2, v3, v4}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 46
    .local v2, "range":Lkotlin/ranges/IntRange;
    invoke-virtual {v2}, Lkotlin/ranges/IntRange;->getStart()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_3e

    .line 47
    new-instance v1, Lkotlin/text/MatchGroup;

    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "group(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v3, v2}, Lkotlin/text/MatchGroup;-><init>(Ljava/lang/String;Lkotlin/ranges/IntRange;)V

    goto :goto_3f

    .line 49
    :cond_3e
    nop

    .line 46
    :goto_3f
    return-object v1

    .line 43
    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    .end local v2    # "range":Lkotlin/ranges/IntRange;
    :cond_40
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Retrieving groups by name is not supported on this platform."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSystemClock()Lkotlin/time/Clock;
    .registers 2

    .line 63
    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lkotlin/internal/jdk8/JDK8PlatformImplementations;->sdkIsNullOrAtLeast(I)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Lkotlin/internal/jdk8/JDK8PlatformImplementations$getSystemClock$1;

    invoke-direct {v0}, Lkotlin/internal/jdk8/JDK8PlatformImplementations$getSystemClock$1;-><init>()V

    check-cast v0, Lkotlin/time/Clock;

    goto :goto_17

    .line 66
    :cond_10
    new-instance v0, Lkotlin/internal/jdk8/JDK8PlatformImplementations$getSystemClock$2;

    invoke-direct {v0}, Lkotlin/internal/jdk8/JDK8PlatformImplementations$getSystemClock$2;-><init>()V

    check-cast v0, Lkotlin/time/Clock;

    .line 63
    :goto_17
    return-object v0
.end method

###### Class kotlin.internal.jdk8.JDK8PlatformImplementations.ReflectSdkVersion (kotlin.internal.jdk8.JDK8PlatformImplementations$ReflectSdkVersion)
.class final Lkotlin/internal/jdk8/JDK8PlatformImplementations$ReflectSdkVersion;
.super Ljava/lang/Object;
.source "JDK8PlatformImplementations.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/internal/jdk8/JDK8PlatformImplementations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReflectSdkVersion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJDK8PlatformImplementations.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JDK8PlatformImplementations.kt\nkotlin/internal/jdk8/JDK8PlatformImplementations$ReflectSdkVersion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,76:1\n1#2:77\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lkotlin/internal/jdk8/JDK8PlatformImplementations$ReflectSdkVersion;",
        "",
        "<init>",
        "()V",
        "sdkVersion",
        "",
        "Ljava/lang/Integer;",
        "kotlin-stdlib-jdk8"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/internal/jdk8/JDK8PlatformImplementations$ReflectSdkVersion;

.field public static final sdkVersion:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lkotlin/internal/jdk8/JDK8PlatformImplementations$ReflectSdkVersion;

    invoke-direct {v0}, Lkotlin/internal/jdk8/JDK8PlatformImplementations$ReflectSdkVersion;-><init>()V

    sput-object v0, Lkotlin/internal/jdk8/JDK8PlatformImplementations$ReflectSdkVersion;->INSTANCE:Lkotlin/internal/jdk8/JDK8PlatformImplementations$ReflectSdkVersion;

    .line 37
    nop

    .line 33
    nop

    .line 34
    const/4 v0, 0x0

    :try_start_a
    const-string v1, "android.os.Build$VERSION"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "SDK_INT"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_21

    check-cast v1, Ljava/lang/Integer;
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_23

    goto :goto_25

    :cond_21
    move-object v1, v0

    goto :goto_25

    .line 35
    :catchall_23
    move-exception v1

    .line 36
    .local v1, "e":Ljava/lang/Throwable;
    move-object v1, v0

    .line 33
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_25
    nop

    .line 37
    if-eqz v1, :cond_39

    .line 33
    nop

    .line 37
    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 77
    .local v2, "it":I
    const/4 v3, 0x0

    .line 37
    .local v3, "$i$a$-takeIf-JDK8PlatformImplementations$ReflectSdkVersion$sdkVersion$1":I
    if-lez v2, :cond_35

    const/4 v4, 0x1

    goto :goto_36

    :cond_35
    const/4 v4, 0x0

    .end local v2    # "it":I
    .end local v3    # "$i$a$-takeIf-JDK8PlatformImplementations$ReflectSdkVersion$sdkVersion$1":I
    :goto_36
    if-eqz v4, :cond_39

    move-object v0, v1

    :cond_39
    sput-object v0, Lkotlin/internal/jdk8/JDK8PlatformImplementations$ReflectSdkVersion;->sdkVersion:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class kotlin.internal.jdk8.JDK8PlatformImplementations.AnonymousClass1 (kotlin.internal.jdk8.JDK8PlatformImplementations$getSystemClock$1)
.class public final Lkotlin/internal/jdk8/JDK8PlatformImplementations$getSystemClock$1;
.super Ljava/lang/Object;
.source "JDK8PlatformImplementations.kt"

# interfaces
.implements Lkotlin/time/Clock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/internal/jdk8/JDK8PlatformImplementations;->getSystemClock()Lkotlin/time/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "kotlin/internal/jdk8/JDK8PlatformImplementations$getSystemClock$1",
        "Lkotlin/time/Clock;",
        "now",
        "Lkotlin/time/Instant;",
        "kotlin-stdlib-jdk8"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public now()Lkotlin/time/Instant;
    .registers 3

    .line 65
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    const-string v1, "now(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/time/jdk8/InstantConversionsJDK8Kt;->toKotlinInstant(Ljava/time/Instant;)Lkotlin/time/Instant;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.internal.jdk8.JDK8PlatformImplementations.AnonymousClass2 (kotlin.internal.jdk8.JDK8PlatformImplementations$getSystemClock$2)
.class public final Lkotlin/internal/jdk8/JDK8PlatformImplementations$getSystemClock$2;
.super Ljava/lang/Object;
.source "JDK8PlatformImplementations.kt"

# interfaces
.implements Lkotlin/time/Clock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/internal/jdk8/JDK8PlatformImplementations;->getSystemClock()Lkotlin/time/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "kotlin/internal/jdk8/JDK8PlatformImplementations$getSystemClock$2",
        "Lkotlin/time/Clock;",
        "now",
        "Lkotlin/time/Instant;",
        "kotlin-stdlib-jdk8"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public now()Lkotlin/time/Instant;
    .registers 4

    .line 72
    sget-object v0, Lkotlin/time/Instant;->Companion:Lkotlin/time/Instant$Companion;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lkotlin/time/Instant$Companion;->fromEpochMilliseconds(J)Lkotlin/time/Instant;

    move-result-object v0

    return-object v0
.end method
