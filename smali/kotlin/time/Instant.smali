###### Class kotlin.time.Instant (kotlin.time.Instant)
.class public final Lkotlin/time/Instant;
.super Ljava/lang/Object;
.source "Instant.kt"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/time/Instant$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lkotlin/time/Instant;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInstant.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Instant.kt\nkotlin/time/Instant\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Instant.kt\nkotlin/time/InstantKt\n+ 4 Duration.kt\nkotlin/time/Duration\n*L\n1#1,864:1\n1#2:865\n803#3,14:866\n786#3,6:880\n803#3,14:886\n786#3,6:900\n786#3,6:907\n548#4:906\n*S KotlinDebug\n*F\n+ 1 Instant.kt\nkotlin/time/Instant\n*L\n150#1:866,14\n153#1:880,6\n161#1:886,14\n164#1:900,6\n188#1:907,6\n184#1:906\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \'2\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00060\u0002j\u0002`\u0003:\u0001\'B\u0019\u0008\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0006\u0010\u000e\u001a\u00020\u0005J\u0018\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0011H\u0086\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0018\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0011H\u0086\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0013J\u0018\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0000H\u0086\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0011\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0000H\u0096\u0002J\u0013\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u001cH\u0096\u0002J\u0008\u0010\u001d\u001a\u00020\u0007H\u0016J\u0008\u0010\u001e\u001a\u00020\u001fH\u0016J\u0008\u0010 \u001a\u00020\u001cH\u0002J\u0019\u0010!\u001a\u00020\"2\n\u0010#\u001a\u00060$j\u0002`%H\u0002\u00a2\u0006\u0002\u0010&R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006("
    }
    d2 = {
        "Lkotlin/time/Instant;",
        "",
        "Ljava/io/Serializable;",
        "Lkotlin/io/Serializable;",
        "epochSeconds",
        "",
        "nanosecondsOfSecond",
        "",
        "<init>",
        "(JI)V",
        "getEpochSeconds",
        "()J",
        "getNanosecondsOfSecond",
        "()I",
        "toEpochMilliseconds",
        "plus",
        "duration",
        "Lkotlin/time/Duration;",
        "plus-LRDsOJo",
        "(J)Lkotlin/time/Instant;",
        "minus",
        "minus-LRDsOJo",
        "other",
        "minus-UwyO8pc",
        "(Lkotlin/time/Instant;)J",
        "compareTo",
        "equals",
        "",
        "",
        "hashCode",
        "toString",
        "",
        "writeReplace",
        "readObject",
        "",
        "input",
        "Ljava/io/ObjectInputStream;",
        "Lkotlin/internal/ReadObjectParameterType;",
        "(Ljava/io/ObjectInputStream;)V",
        "Companion",
        "kotlin-stdlib"
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
.field public static final Companion:Lkotlin/time/Instant$Companion;

.field private static final MAX:Lkotlin/time/Instant;

.field private static final MIN:Lkotlin/time/Instant;


# instance fields
.field private final epochSeconds:J

.field private final nanosecondsOfSecond:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lkotlin/time/Instant$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/time/Instant$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/time/Instant;->Companion:Lkotlin/time/Instant$Companion;

    .line 423
    new-instance v0, Lkotlin/time/Instant;

    const-wide v1, -0x701cefeb9bec00L

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lkotlin/time/Instant;-><init>(JI)V

    sput-object v0, Lkotlin/time/Instant;->MIN:Lkotlin/time/Instant;

    .line 424
    new-instance v0, Lkotlin/time/Instant;

    const-wide v1, 0x701cd2fa9578ffL

    const v3, 0x3b9ac9ff

    invoke-direct {v0, v1, v2, v3}, Lkotlin/time/Instant;-><init>(JI)V

    sput-object v0, Lkotlin/time/Instant;->MAX:Lkotlin/time/Instant;

    return-void
.end method

.method public constructor <init>(JI)V
    .registers 10
    .param p1, "epochSeconds"    # J
    .param p3, "nanosecondsOfSecond"    # I

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-wide p1, p0, Lkotlin/time/Instant;->epochSeconds:J

    .line 130
    iput p3, p0, Lkotlin/time/Instant;->nanosecondsOfSecond:I

    .line 133
    nop

    .line 134
    iget-wide v0, p0, Lkotlin/time/Instant;->epochSeconds:J

    const-wide v2, -0x701cefeb9bec00L

    cmp-long v2, v2, v0

    const/4 v3, 0x0

    if-gtz v2, :cond_1e

    const-wide v4, 0x701cd2fa957900L

    cmp-long v0, v0, v4

    if-gez v0, :cond_1e

    const/4 v3, 0x1

    :cond_1e
    if-eqz v3, :cond_22

    .line 135
    nop

    .line 107
    return-void

    .line 865
    :cond_22
    const/4 v0, 0x0

    .line 134
    .local v0, "$i$a$-require-Instant$1":I
    nop

    .end local v0    # "$i$a$-require-Instant$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Instant exceeds minimum or maximum instant"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final synthetic access$getMAX$cp()Lkotlin/time/Instant;
    .registers 1

    .line 105
    sget-object v0, Lkotlin/time/Instant;->MAX:Lkotlin/time/Instant;

    return-object v0
.end method

.method public static final synthetic access$getMIN$cp()Lkotlin/time/Instant;
    .registers 1

    .line 105
    sget-object v0, Lkotlin/time/Instant;->MIN:Lkotlin/time/Instant;

    return-object v0
.end method

.method private final readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "input"    # Ljava/io/ObjectInputStream;

    .line 271
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization is supported via proxy only"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final writeReplace()Ljava/lang/Object;
    .registers 2

    .line 269
    invoke-static {p0}, Lkotlin/time/InstantJvmKt;->serializedInstant(Lkotlin/time/Instant;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 105
    move-object v0, p1

    check-cast v0, Lkotlin/time/Instant;

    invoke-virtual {p0, v0}, Lkotlin/time/Instant;->compareTo(Lkotlin/time/Instant;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lkotlin/time/Instant;)I
    .registers 6
    .param p1, "other"    # Lkotlin/time/Instant;

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    iget-wide v0, p0, Lkotlin/time/Instant;->epochSeconds:J

    iget-wide v2, p1, Lkotlin/time/Instant;->epochSeconds:J

    invoke-static {v0, v1, v2, v3}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    move-result v0

    .line 243
    .local v0, "s":I
    if-eqz v0, :cond_10

    .line 244
    return v0

    .line 246
    :cond_10
    iget v1, p0, Lkotlin/time/Instant;->nanosecondsOfSecond:I

    iget v2, p1, Lkotlin/time/Instant;->nanosecondsOfSecond:I

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v1

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 250
    if-eq p0, p1, :cond_1d

    instance-of v0, p1, Lkotlin/time/Instant;

    if-eqz v0, :cond_1b

    iget-wide v0, p0, Lkotlin/time/Instant;->epochSeconds:J

    move-object v2, p1

    check-cast v2, Lkotlin/time/Instant;

    iget-wide v2, v2, Lkotlin/time/Instant;->epochSeconds:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    .line 251
    iget v0, p0, Lkotlin/time/Instant;->nanosecondsOfSecond:I

    move-object v1, p1

    check-cast v1, Lkotlin/time/Instant;

    iget v1, v1, Lkotlin/time/Instant;->nanosecondsOfSecond:I

    if-ne v0, v1, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    :goto_1e
    return v0
.end method

.method public final getEpochSeconds()J
    .registers 3

    .line 120
    iget-wide v0, p0, Lkotlin/time/Instant;->epochSeconds:J

    return-wide v0
.end method

.method public final getNanosecondsOfSecond()I
    .registers 2

    .line 130
    iget v0, p0, Lkotlin/time/Instant;->nanosecondsOfSecond:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 254
    iget-wide v0, p0, Lkotlin/time/Instant;->epochSeconds:J

    invoke-static {v0, v1}, Lkotlin/ULong$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    iget v1, p0, Lkotlin/time/Instant;->nanosecondsOfSecond:I

    mul-int/lit8 v1, v1, 0x33

    add-int/2addr v0, v1

    return v0
.end method

.method public final minus-LRDsOJo(J)Lkotlin/time/Instant;
    .registers 5
    .param p1, "duration"    # J

    .line 210
    invoke-static {p1, p2}, Lkotlin/time/Duration;->unaryMinus-UwyO8pc(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lkotlin/time/Instant;->plus-LRDsOJo(J)Lkotlin/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public final minus-UwyO8pc(Lkotlin/time/Instant;)J
    .registers 6
    .param p1, "other"    # Lkotlin/time/Instant;

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-wide v0, p0, Lkotlin/time/Instant;->epochSeconds:J

    iget-wide v2, p1, Lkotlin/time/Instant;->epochSeconds:J

    sub-long/2addr v0, v2

    sget-object v2, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1, v2}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v0

    .line 230
    sget-object v2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget v2, p0, Lkotlin/time/Instant;->nanosecondsOfSecond:I

    iget v3, p1, Lkotlin/time/Instant;->nanosecondsOfSecond:I

    sub-int/2addr v2, v3

    sget-object v3, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v2, v3}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v2

    .line 229
    invoke-static {v0, v1, v2, v3}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v0

    .line 230
    return-wide v0
.end method

.method public final plus-LRDsOJo(J)Lkotlin/time/Instant;
    .registers 17
    .param p1, "duration"    # J

    .line 184
    const/4 v0, 0x0

    .line 906
    .local v0, "$i$f$toComponents-impl":I
    invoke-static/range {p1 .. p2}, Lkotlin/time/Duration;->getInWholeSeconds-impl(J)J

    move-result-wide v1

    .local v1, "secondsToAdd":J
    invoke-static/range {p1 .. p2}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(J)I

    move-result v3

    .local v3, "nanosecondsToAdd":I
    const/4 v4, 0x0

    .line 185
    .local v4, "$i$a$-toComponents-impl-Instant$plus$1":I
    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-nez v7, :cond_13

    if-nez v3, :cond_13

    .line 186
    return-object p0

    .line 188
    :cond_13
    iget-wide v7, p0, Lkotlin/time/Instant;->epochSeconds:J

    .local v7, "a$iv":J
    const/4 v9, 0x0

    .line 907
    .local v9, "$i$f$safeAddOrElse":I
    add-long v10, v7, v1

    .line 909
    .local v10, "sum$iv":J
    xor-long v12, v7, v10

    cmp-long v12, v12, v5

    if-gez v12, :cond_31

    xor-long v12, v7, v1

    cmp-long v5, v12, v5

    if-ltz v5, :cond_31

    .line 910
    const/4 v5, 0x0

    .line 189
    .local v5, "$i$a$-safeAddOrElse-Instant$plus$1$newEpochSeconds$1":I
    invoke-static/range {p1 .. p2}, Lkotlin/time/Duration;->isPositive-impl(J)Z

    move-result v6

    if-eqz v6, :cond_2e

    sget-object v6, Lkotlin/time/Instant;->MAX:Lkotlin/time/Instant;

    goto :goto_30

    :cond_2e
    sget-object v6, Lkotlin/time/Instant;->MIN:Lkotlin/time/Instant;

    :goto_30
    return-object v6

    .line 912
    .end local v5    # "$i$a$-safeAddOrElse-Instant$plus$1$newEpochSeconds$1":I
    :cond_31
    nop

    .line 188
    .end local v7    # "a$iv":J
    .end local v9    # "$i$f$safeAddOrElse":I
    .end local v10    # "sum$iv":J
    nop

    .line 192
    .local v10, "newEpochSeconds":J
    iget v5, p0, Lkotlin/time/Instant;->nanosecondsOfSecond:I

    add-int/2addr v5, v3

    .line 193
    .local v5, "nanoAdjustment":I
    sget-object v6, Lkotlin/time/Instant;->Companion:Lkotlin/time/Instant$Companion;

    invoke-virtual {v6, v10, v11, v5}, Lkotlin/time/Instant$Companion;->fromEpochSeconds(JI)Lkotlin/time/Instant;

    move-result-object v6

    return-object v6
.end method

.method public final toEpochMilliseconds()J
    .registers 21

    .line 149
    move-object/from16 v0, p0

    iget-wide v1, v0, Lkotlin/time/Instant;->epochSeconds:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const v2, 0xf4240

    const-wide/16 v5, -0x1

    const-wide/16 v7, 0x1

    const-wide/high16 v9, -0x8000000000000000L

    if-ltz v1, :cond_67

    .line 150
    iget-wide v11, v0, Lkotlin/time/Instant;->epochSeconds:J

    .local v11, "a$iv":J
    const-wide/16 v13, 0x3e8

    .local v13, "b$iv":J
    const/4 v1, 0x0

    .line 866
    .local v1, "$i$f$safeMultiplyOrElse":I
    cmp-long v15, v13, v7

    const-wide v16, 0x7fffffffffffffffL

    if-nez v15, :cond_22

    .line 867
    goto :goto_4f

    .line 869
    :cond_22
    cmp-long v7, v11, v7

    if-nez v7, :cond_28

    .line 870
    move-wide v11, v13

    goto :goto_4f

    .line 872
    :cond_28
    cmp-long v7, v11, v3

    if-eqz v7, :cond_4e

    cmp-long v7, v13, v3

    if-nez v7, :cond_31

    goto :goto_4e

    .line 875
    :cond_31
    mul-long v7, v11, v13

    .line 876
    .local v7, "total$iv":J
    div-long v18, v7, v13

    cmp-long v15, v18, v11

    if-nez v15, :cond_4c

    cmp-long v15, v11, v9

    if-nez v15, :cond_41

    cmp-long v15, v13, v5

    if-eqz v15, :cond_4c

    :cond_41
    cmp-long v9, v13, v9

    if-nez v9, :cond_4a

    cmp-long v5, v11, v5

    if-nez v5, :cond_4a

    goto :goto_4c

    .line 879
    :cond_4a
    move-wide v11, v7

    goto :goto_4f

    .line 877
    :cond_4c
    :goto_4c
    const/4 v2, 0x0

    .line 151
    .local v2, "$i$a$-safeMultiplyOrElse-Instant$toEpochMilliseconds$millis$1":I
    return-wide v16

    .line 873
    .end local v2    # "$i$a$-safeMultiplyOrElse-Instant$toEpochMilliseconds$millis$1":I
    .end local v7    # "total$iv":J
    :cond_4e
    :goto_4e
    move-wide v11, v3

    .line 150
    .end local v1    # "$i$f$safeMultiplyOrElse":I
    .end local v11    # "a$iv":J
    .end local v13    # "b$iv":J
    :goto_4f
    nop

    .line 153
    .local v11, "millis":J
    iget v1, v0, Lkotlin/time/Instant;->nanosecondsOfSecond:I

    div-int/2addr v1, v2

    int-to-long v1, v1

    .local v1, "b$iv":J
    const/4 v5, 0x0

    .line 880
    .local v5, "$i$f$safeAddOrElse":I
    add-long v6, v11, v1

    .line 882
    .local v6, "sum$iv":J
    xor-long v8, v11, v6

    cmp-long v8, v8, v3

    if-gez v8, :cond_65

    xor-long v8, v11, v1

    cmp-long v3, v8, v3

    if-ltz v3, :cond_65

    .line 883
    const/4 v3, 0x0

    .line 154
    .local v3, "$i$a$-safeAddOrElse-Instant$toEpochMilliseconds$1":I
    return-wide v16

    .line 885
    .end local v3    # "$i$a$-safeAddOrElse-Instant$toEpochMilliseconds$1":I
    :cond_65
    nop

    .line 153
    .end local v1    # "b$iv":J
    .end local v5    # "$i$f$safeAddOrElse":I
    .end local v6    # "sum$iv":J
    return-wide v6

    .line 161
    .end local v11    # "millis":J
    :cond_67
    iget-wide v11, v0, Lkotlin/time/Instant;->epochSeconds:J

    add-long/2addr v11, v7

    .local v11, "a$iv":J
    const-wide/16 v13, 0x3e8

    .restart local v13    # "b$iv":J
    const/4 v1, 0x0

    .line 886
    .local v1, "$i$f$safeMultiplyOrElse":I
    cmp-long v15, v13, v7

    if-nez v15, :cond_72

    .line 887
    goto :goto_9f

    .line 889
    :cond_72
    cmp-long v7, v11, v7

    if-nez v7, :cond_78

    .line 890
    move-wide v11, v13

    goto :goto_9f

    .line 892
    :cond_78
    cmp-long v7, v11, v3

    if-eqz v7, :cond_9e

    cmp-long v7, v13, v3

    if-nez v7, :cond_81

    goto :goto_9e

    .line 895
    :cond_81
    mul-long v7, v11, v13

    .line 896
    .restart local v7    # "total$iv":J
    div-long v15, v7, v13

    cmp-long v15, v15, v11

    if-nez v15, :cond_9c

    cmp-long v15, v11, v9

    if-nez v15, :cond_91

    cmp-long v15, v13, v5

    if-eqz v15, :cond_9c

    :cond_91
    cmp-long v15, v13, v9

    if-nez v15, :cond_9a

    cmp-long v5, v11, v5

    if-nez v5, :cond_9a

    goto :goto_9c

    .line 899
    :cond_9a
    move-wide v11, v7

    goto :goto_9f

    .line 897
    :cond_9c
    :goto_9c
    const/4 v2, 0x0

    .line 162
    .local v2, "$i$a$-safeMultiplyOrElse-Instant$toEpochMilliseconds$millis$2":I
    return-wide v9

    .line 893
    .end local v2    # "$i$a$-safeMultiplyOrElse-Instant$toEpochMilliseconds$millis$2":I
    .end local v7    # "total$iv":J
    :cond_9e
    :goto_9e
    move-wide v11, v3

    .line 161
    .end local v1    # "$i$f$safeMultiplyOrElse":I
    .end local v11    # "a$iv":J
    .end local v13    # "b$iv":J
    :goto_9f
    nop

    .line 164
    .local v11, "millis":J
    iget v1, v0, Lkotlin/time/Instant;->nanosecondsOfSecond:I

    div-int/2addr v1, v2

    add-int/lit16 v1, v1, -0x3e8

    int-to-long v1, v1

    .local v1, "b$iv":J
    const/4 v5, 0x0

    .line 900
    .restart local v5    # "$i$f$safeAddOrElse":I
    add-long v6, v11, v1

    .line 902
    .restart local v6    # "sum$iv":J
    xor-long v13, v11, v6

    cmp-long v8, v13, v3

    if-gez v8, :cond_b7

    xor-long v13, v11, v1

    cmp-long v3, v13, v3

    if-ltz v3, :cond_b7

    .line 903
    const/4 v3, 0x0

    .line 165
    .local v3, "$i$a$-safeAddOrElse-Instant$toEpochMilliseconds$2":I
    return-wide v9

    .line 905
    .end local v3    # "$i$a$-safeAddOrElse-Instant$toEpochMilliseconds$2":I
    :cond_b7
    nop

    .line 164
    .end local v1    # "b$iv":J
    .end local v5    # "$i$f$safeAddOrElse":I
    .end local v6    # "sum$iv":J
    return-wide v6
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 267
    invoke-static {p0}, Lkotlin/time/InstantKt;->access$formatIso(Lkotlin/time/Instant;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.time.Instant.Companion (kotlin.time.Instant$Companion)
.class public final Lkotlin/time/Instant$Companion;
.super Ljava/lang/Object;
.source "Instant.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/time/Instant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInstant.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Instant.kt\nkotlin/time/Instant$Companion\n+ 2 Instant.kt\nkotlin/time/InstantKt\n*L\n1#1,864:1\n786#2,6:865\n*S KotlinDebug\n*F\n+ 1 Instant.kt\nkotlin/time/Instant$Companion\n*L\n312#1:865,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0002\u0008\u000b\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0007J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008J\u0018\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0008J\u0016\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000fJ\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000e\u001a\u00020\u000fH\u0007R\u0011\u0010\u0011\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0014\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0013R\u0014\u0010\u0016\u001a\u00020\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0013\u00a8\u0006\u001a"
    }
    d2 = {
        "Lkotlin/time/Instant$Companion;",
        "",
        "<init>",
        "()V",
        "now",
        "Lkotlin/time/Instant;",
        "fromEpochMilliseconds",
        "epochMilliseconds",
        "",
        "fromEpochSeconds",
        "epochSeconds",
        "nanosecondAdjustment",
        "",
        "parse",
        "input",
        "",
        "parseOrNull",
        "DISTANT_PAST",
        "getDISTANT_PAST",
        "()Lkotlin/time/Instant;",
        "DISTANT_FUTURE",
        "getDISTANT_FUTURE",
        "MIN",
        "getMIN$kotlin_stdlib",
        "MAX",
        "getMAX$kotlin_stdlib",
        "kotlin-stdlib"
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
.method private constructor <init>()V
    .registers 1

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/time/Instant$Companion;-><init>()V

    return-void
.end method

.method public static synthetic fromEpochSeconds$default(Lkotlin/time/Instant$Companion;JJILjava/lang/Object;)Lkotlin/time/Instant;
    .registers 7

    .line 311
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_6

    const-wide/16 p3, 0x0

    :cond_6
    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlin/time/Instant$Companion;->fromEpochSeconds(JJ)Lkotlin/time/Instant;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final fromEpochMilliseconds(J)Lkotlin/time/Instant;
    .registers 13
    .param p1, "epochMilliseconds"    # J

    .line 288
    const-wide/16 v0, 0x3e8

    div-long v2, p1, v0

    xor-long v4, p1, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_15

    mul-long v4, v2, v0

    cmp-long v4, v4, p1

    if-eqz v4, :cond_15

    const-wide/16 v4, -0x1

    add-long/2addr v2, v4

    .line 289
    .local v2, "epochSeconds":J
    :cond_15
    rem-long v4, p1, v0

    xor-long v6, v4, v0

    neg-long v8, v4

    or-long/2addr v8, v4

    and-long/2addr v6, v8

    const/16 v8, 0x3f

    shr-long/2addr v6, v8

    and-long/2addr v0, v6

    add-long/2addr v4, v0

    const-wide/32 v0, 0xf4240

    mul-long/2addr v4, v0

    long-to-int v0, v4

    .line 290
    .local v0, "nanosecondsOfSecond":I
    nop

    .line 291
    const-wide v4, -0x701cefeb9bec00L

    cmp-long v1, v2, v4

    if-gez v1, :cond_35

    invoke-virtual {p0}, Lkotlin/time/Instant$Companion;->getMIN$kotlin_stdlib()Lkotlin/time/Instant;

    move-result-object v1

    goto :goto_47

    .line 292
    :cond_35
    const-wide v4, 0x701cd2fa9578ffL

    cmp-long v1, v2, v4

    if-lez v1, :cond_43

    invoke-virtual {p0}, Lkotlin/time/Instant$Companion;->getMAX$kotlin_stdlib()Lkotlin/time/Instant;

    move-result-object v1

    goto :goto_47

    .line 293
    :cond_43
    invoke-virtual {p0, v2, v3, v0}, Lkotlin/time/Instant$Companion;->fromEpochSeconds(JI)Lkotlin/time/Instant;

    move-result-object v1

    .line 290
    :goto_47
    return-object v1
.end method

.method public final fromEpochSeconds(JI)Lkotlin/time/Instant;
    .registers 6
    .param p1, "epochSeconds"    # J
    .param p3, "nanosecondAdjustment"    # I

    .line 340
    int-to-long v0, p3

    invoke-virtual {p0, p1, p2, v0, v1}, Lkotlin/time/Instant$Companion;->fromEpochSeconds(JJ)Lkotlin/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public final fromEpochSeconds(JJ)Lkotlin/time/Instant;
    .registers 17
    .param p1, "epochSeconds"    # J
    .param p3, "nanosecondAdjustment"    # J

    .line 312
    const-wide/32 v0, 0x3b9aca00

    div-long v2, p3, v0

    xor-long v4, p3, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_16

    mul-long v4, v2, v0

    cmp-long v4, v4, p3

    if-eqz v4, :cond_16

    const-wide/16 v4, -0x1

    add-long/2addr v2, v4

    .local v2, "b$iv":J
    :cond_16
    const/4 v4, 0x0

    .line 865
    .local v4, "$i$f$safeAddOrElse":I
    add-long v8, p1, v2

    .line 867
    .local v8, "sum$iv":J
    xor-long v10, p1, v8

    cmp-long v5, v10, v6

    if-gez v5, :cond_38

    xor-long v10, p1, v2

    cmp-long v5, v10, v6

    if-ltz v5, :cond_38

    .line 868
    const/4 v0, 0x0

    .line 313
    .local v0, "$i$a$-safeAddOrElse-Instant$Companion$fromEpochSeconds$seconds$1":I
    cmp-long v1, p1, v6

    if-lez v1, :cond_31

    sget-object v1, Lkotlin/time/Instant;->Companion:Lkotlin/time/Instant$Companion;

    invoke-virtual {v1}, Lkotlin/time/Instant$Companion;->getMAX$kotlin_stdlib()Lkotlin/time/Instant;

    move-result-object v1

    goto :goto_37

    :cond_31
    sget-object v1, Lkotlin/time/Instant;->Companion:Lkotlin/time/Instant$Companion;

    invoke-virtual {v1}, Lkotlin/time/Instant$Companion;->getMIN$kotlin_stdlib()Lkotlin/time/Instant;

    move-result-object v1

    :goto_37
    return-object v1

    .line 870
    .end local v0    # "$i$a$-safeAddOrElse-Instant$Companion$fromEpochSeconds$seconds$1":I
    :cond_38
    nop

    .line 312
    .end local v2    # "b$iv":J
    .end local v4    # "$i$f$safeAddOrElse":I
    .end local v8    # "sum$iv":J
    nop

    .line 315
    .local v8, "seconds":J
    nop

    .line 316
    const-wide v2, -0x701cefeb9bec00L

    cmp-long v2, v8, v2

    if-gez v2, :cond_49

    invoke-virtual {p0}, Lkotlin/time/Instant$Companion;->getMIN$kotlin_stdlib()Lkotlin/time/Instant;

    move-result-object v0

    goto :goto_6a

    .line 317
    :cond_49
    const-wide v2, 0x701cd2fa9578ffL

    cmp-long v2, v8, v2

    if-lez v2, :cond_57

    invoke-virtual {p0}, Lkotlin/time/Instant$Companion;->getMAX$kotlin_stdlib()Lkotlin/time/Instant;

    move-result-object v0

    goto :goto_6a

    .line 319
    :cond_57
    rem-long v2, p3, v0

    xor-long v4, v2, v0

    neg-long v6, v2

    or-long/2addr v6, v2

    and-long/2addr v4, v6

    const/16 v6, 0x3f

    shr-long/2addr v4, v6

    and-long/2addr v0, v4

    add-long/2addr v2, v0

    long-to-int v0, v2

    .line 320
    .local v0, "nanoseconds":I
    new-instance v1, Lkotlin/time/Instant;

    invoke-direct {v1, v8, v9, v0}, Lkotlin/time/Instant;-><init>(JI)V

    move-object v0, v1

    .line 315
    .end local v0    # "nanoseconds":I
    :goto_6a
    return-object v0
.end method

.method public final getDISTANT_FUTURE()Lkotlin/time/Instant;
    .registers 4

    .line 421
    const-wide v0, 0x2d044a2eb00L

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lkotlin/time/Instant$Companion;->fromEpochSeconds(JI)Lkotlin/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public final getDISTANT_PAST()Lkotlin/time/Instant;
    .registers 4

    .line 411
    const-wide v0, -0x2ed378be301L

    const v2, 0x3b9ac9ff

    invoke-virtual {p0, v0, v1, v2}, Lkotlin/time/Instant$Companion;->fromEpochSeconds(JI)Lkotlin/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public final getMAX$kotlin_stdlib()Lkotlin/time/Instant;
    .registers 2

    .line 424
    invoke-static {}, Lkotlin/time/Instant;->access$getMAX$cp()Lkotlin/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public final getMIN$kotlin_stdlib()Lkotlin/time/Instant;
    .registers 2

    .line 423
    invoke-static {}, Lkotlin/time/Instant;->access$getMIN$cp()Lkotlin/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public final now()Lkotlin/time/Instant;
    .registers 4
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Use Clock.System.now() instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Clock.System.now()"
            imports = {
                "kotlin.time.Clock"
            }
        .end subannotation
    .end annotation

    .line 275
    new-instance v0, Lkotlin/NotImplementedError;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method public final parse(Ljava/lang/CharSequence;)Lkotlin/time/Instant;
    .registers 3
    .param p1, "input"    # Ljava/lang/CharSequence;

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    invoke-static {p1}, Lkotlin/time/InstantKt;->access$parseIso(Ljava/lang/CharSequence;)Lkotlin/time/InstantParseResult;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/time/InstantParseResult;->toInstant()Lkotlin/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public final parseOrNull(Ljava/lang/CharSequence;)Lkotlin/time/Instant;
    .registers 3
    .param p1, "input"    # Ljava/lang/CharSequence;

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    invoke-static {p1}, Lkotlin/time/InstantKt;->access$parseIso(Ljava/lang/CharSequence;)Lkotlin/time/InstantParseResult;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/time/InstantParseResult;->toInstantOrNull()Lkotlin/time/Instant;

    move-result-object v0

    return-object v0
.end method
