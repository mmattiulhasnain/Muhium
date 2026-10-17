###### Class kotlin.time.UnboundLocalDateTime (kotlin.time.UnboundLocalDateTime)
.class final Lkotlin/time/UnboundLocalDateTime;
.super Ljava/lang/Object;
.source "Instant.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/time/UnboundLocalDateTime$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0003\u0018\u0000 !2\u00020\u0001:\u0001!B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\n\u0010\u000bJW\u0010\u0014\u001a\u0002H\u0015\"\u0004\u0008\u0000\u0010\u00152\u0006\u0010\u0016\u001a\u00020\u000326\u0010\u0017\u001a2\u0012\u0013\u0012\u00110\u0019\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u001c\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u001d\u0012\u0004\u0012\u0002H\u00150\u0018H\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001eJ\u0008\u0010\u001f\u001a\u00020 H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\rR\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\rR\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\r\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\""
    }
    d2 = {
        "Lkotlin/time/UnboundLocalDateTime;",
        "",
        "year",
        "",
        "month",
        "day",
        "hour",
        "minute",
        "second",
        "nanosecond",
        "<init>",
        "(IIIIIII)V",
        "getYear",
        "()I",
        "getMonth",
        "getDay",
        "getHour",
        "getMinute",
        "getSecond",
        "getNanosecond",
        "toInstant",
        "T",
        "offsetSeconds",
        "buildInstant",
        "Lkotlin/Function2;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "epochSeconds",
        "nanosecondOfSecond",
        "(ILkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "toString",
        "",
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
.field public static final Companion:Lkotlin/time/UnboundLocalDateTime$Companion;


# instance fields
.field private final day:I

.field private final hour:I

.field private final minute:I

.field private final month:I

.field private final nanosecond:I

.field private final second:I

.field private final year:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlin/time/UnboundLocalDateTime$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/time/UnboundLocalDateTime$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/time/UnboundLocalDateTime;->Companion:Lkotlin/time/UnboundLocalDateTime$Companion;

    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .registers 8
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I
    .param p7, "nanosecond"    # I

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    iput p1, p0, Lkotlin/time/UnboundLocalDateTime;->year:I

    .line 471
    iput p2, p0, Lkotlin/time/UnboundLocalDateTime;->month:I

    .line 472
    iput p3, p0, Lkotlin/time/UnboundLocalDateTime;->day:I

    .line 473
    iput p4, p0, Lkotlin/time/UnboundLocalDateTime;->hour:I

    .line 474
    iput p5, p0, Lkotlin/time/UnboundLocalDateTime;->minute:I

    .line 475
    iput p6, p0, Lkotlin/time/UnboundLocalDateTime;->second:I

    .line 476
    iput p7, p0, Lkotlin/time/UnboundLocalDateTime;->nanosecond:I

    .line 469
    return-void
.end method


# virtual methods
.method public final getDay()I
    .registers 2

    .line 472
    iget v0, p0, Lkotlin/time/UnboundLocalDateTime;->day:I

    return v0
.end method

.method public final getHour()I
    .registers 2

    .line 473
    iget v0, p0, Lkotlin/time/UnboundLocalDateTime;->hour:I

    return v0
.end method

.method public final getMinute()I
    .registers 2

    .line 474
    iget v0, p0, Lkotlin/time/UnboundLocalDateTime;->minute:I

    return v0
.end method

.method public final getMonth()I
    .registers 2

    .line 471
    iget v0, p0, Lkotlin/time/UnboundLocalDateTime;->month:I

    return v0
.end method

.method public final getNanosecond()I
    .registers 2

    .line 476
    iget v0, p0, Lkotlin/time/UnboundLocalDateTime;->nanosecond:I

    return v0
.end method

.method public final getSecond()I
    .registers 2

    .line 475
    iget v0, p0, Lkotlin/time/UnboundLocalDateTime;->second:I

    return v0
.end method

.method public final getYear()I
    .registers 2

    .line 470
    iget v0, p0, Lkotlin/time/UnboundLocalDateTime;->year:I

    return v0
.end method

.method public final toInstant(ILkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .registers 19
    .param p1, "offsetSeconds"    # I
    .param p2, "buildInstant"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;)TT;"
        }
    .end annotation

    move-object/from16 v0, p2

    const-string v1, "buildInstant"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 479
    .local v1, "$i$f$toInstant":I
    move-object/from16 v2, p0

    check-cast v2, Lkotlin/time/UnboundLocalDateTime;

    .local v2, "$this$toInstant_u24lambda_u241":Lkotlin/time/UnboundLocalDateTime;
    const/4 v3, 0x0

    .line 481
    .local v3, "$i$a$-run-UnboundLocalDateTime$toInstant$epochSeconds$1":I
    move-object v4, v2

    .local v4, "$this$toInstant_u24lambda_u241_u24lambda_u240":Lkotlin/time/UnboundLocalDateTime;
    const/4 v5, 0x0

    .line 482
    .local v5, "$i$a$-run-UnboundLocalDateTime$toInstant$epochSeconds$1$epochDays$1":I
    invoke-virtual {v4}, Lkotlin/time/UnboundLocalDateTime;->getYear()I

    move-result v6

    int-to-long v6, v6

    .line 483
    .local v6, "y":J
    const-wide/16 v8, 0x16d

    mul-long/2addr v8, v6

    .line 484
    .local v8, "total":J
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-ltz v10, :cond_33

    .line 486
    const-wide/16 v10, 0x3

    add-long/2addr v10, v6

    const-wide/16 v12, 0x4

    div-long/2addr v10, v12

    const-wide/16 v12, 0x63

    add-long/2addr v12, v6

    const-wide/16 v14, 0x64

    div-long/2addr v12, v14

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x18f

    add-long/2addr v12, v6

    const-wide/16 v14, 0x190

    div-long/2addr v12, v14

    add-long/2addr v10, v12

    add-long/2addr v8, v10

    goto :goto_42

    .line 489
    :cond_33
    const-wide/16 v10, -0x4

    div-long v10, v6, v10

    const-wide/16 v12, -0x64

    div-long v12, v6, v12

    sub-long/2addr v10, v12

    const-wide/16 v12, -0x190

    div-long v12, v6, v12

    add-long/2addr v10, v12

    sub-long/2addr v8, v10

    .line 493
    :goto_42
    invoke-virtual {v4}, Lkotlin/time/UnboundLocalDateTime;->getMonth()I

    move-result v10

    mul-int/lit16 v10, v10, 0x16f

    add-int/lit16 v10, v10, -0x16a

    div-int/lit8 v10, v10, 0xc

    int-to-long v10, v10

    add-long/2addr v8, v10

    .line 494
    invoke-virtual {v4}, Lkotlin/time/UnboundLocalDateTime;->getDay()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    int-to-long v10, v10

    add-long/2addr v8, v10

    .line 495
    invoke-virtual {v4}, Lkotlin/time/UnboundLocalDateTime;->getMonth()I

    move-result v10

    const/4 v11, 0x2

    if-le v10, v11, :cond_6b

    .line 496
    const-wide/16 v10, -0x1

    add-long/2addr v8, v10

    .line 497
    invoke-virtual {v4}, Lkotlin/time/UnboundLocalDateTime;->getYear()I

    move-result v12

    invoke-static {v12}, Lkotlin/time/InstantKt;->isLeapYear(I)Z

    move-result v12

    if-nez v12, :cond_6b

    .line 498
    add-long/2addr v8, v10

    .line 501
    :cond_6b
    const-wide/32 v10, 0xafaa8

    sub-long/2addr v8, v10

    .line 481
    .end local v4    # "$this$toInstant_u24lambda_u241_u24lambda_u240":Lkotlin/time/UnboundLocalDateTime;
    .end local v5    # "$i$a$-run-UnboundLocalDateTime$toInstant$epochSeconds$1$epochDays$1":I
    .end local v6    # "y":J
    .end local v8    # "total":J
    nop

    .line 503
    .local v8, "epochDays":J
    invoke-virtual {v2}, Lkotlin/time/UnboundLocalDateTime;->getHour()I

    move-result v4

    mul-int/lit16 v4, v4, 0xe10

    invoke-virtual {v2}, Lkotlin/time/UnboundLocalDateTime;->getMinute()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3c

    add-int/2addr v4, v5

    invoke-virtual {v2}, Lkotlin/time/UnboundLocalDateTime;->getSecond()I

    move-result v5

    add-int/2addr v4, v5

    .line 504
    .local v4, "daySeconds":I
    const-wide/32 v5, 0x15180

    mul-long/2addr v5, v8

    int-to-long v10, v4

    add-long/2addr v5, v10

    move/from16 v7, p1

    int-to-long v10, v7

    sub-long/2addr v5, v10

    .line 479
    .end local v2    # "$this$toInstant_u24lambda_u241":Lkotlin/time/UnboundLocalDateTime;
    .end local v3    # "$i$a$-run-UnboundLocalDateTime$toInstant$epochSeconds$1":I
    .end local v4    # "daySeconds":I
    .end local v8    # "epochDays":J
    nop

    .line 506
    .local v5, "epochSeconds":J
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lkotlin/time/UnboundLocalDateTime;->getNanosecond()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnboundLocalDateTime("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lkotlin/time/UnboundLocalDateTime;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lkotlin/time/UnboundLocalDateTime;->month:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lkotlin/time/UnboundLocalDateTime;->day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lkotlin/time/UnboundLocalDateTime;->hour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lkotlin/time/UnboundLocalDateTime;->minute:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lkotlin/time/UnboundLocalDateTime;->second:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lkotlin/time/UnboundLocalDateTime;->nanosecond:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.time.UnboundLocalDateTime.Companion (kotlin.time.UnboundLocalDateTime$Companion)
.class public final Lkotlin/time/UnboundLocalDateTime$Companion;
.super Ljava/lang/Object;
.source "Instant.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/time/UnboundLocalDateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lkotlin/time/UnboundLocalDateTime$Companion;",
        "",
        "<init>",
        "()V",
        "fromInstant",
        "Lkotlin/time/UnboundLocalDateTime;",
        "instant",
        "Lkotlin/time/Instant;",
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

    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/time/UnboundLocalDateTime$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromInstant(Lkotlin/time/Instant;)Lkotlin/time/UnboundLocalDateTime;
    .registers 36
    .param p1, "instant"    # Lkotlin/time/Instant;

    const-string v0, "instant"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 513
    invoke-virtual {v1}, Lkotlin/time/Instant;->getEpochSeconds()J

    move-result-wide v2

    .line 514
    .local v2, "localSecond":J
    const-wide/32 v4, 0x15180

    div-long v6, v2, v4

    xor-long v8, v2, v4

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    const-wide/16 v8, -0x1

    if-gez v0, :cond_21

    mul-long v12, v6, v4

    cmp-long v0, v12, v2

    if-eqz v0, :cond_21

    add-long/2addr v6, v8

    .line 515
    .local v6, "epochDays":J
    :cond_21
    rem-long v12, v2, v4

    xor-long v14, v12, v4

    move-wide/from16 v16, v4

    neg-long v4, v12

    or-long/2addr v4, v12

    and-long/2addr v4, v14

    const/16 v0, 0x3f

    shr-long/2addr v4, v0

    and-long v4, v4, v16

    add-long/2addr v12, v4

    long-to-int v0, v12

    .line 516
    .local v0, "secsOfDay":I
    const/4 v4, 0x0

    .line 517
    .local v4, "year":I
    const/4 v5, 0x0

    .line 518
    .local v5, "month":I
    const/4 v12, 0x0

    .line 520
    .local v12, "day":I
    move-object/from16 v13, p0

    check-cast v13, Lkotlin/time/UnboundLocalDateTime$Companion;

    .local v13, "$this$fromInstant_u24lambda_u240":Lkotlin/time/UnboundLocalDateTime$Companion;
    const/4 v14, 0x0

    .line 521
    .local v14, "$i$a$-run-UnboundLocalDateTime$Companion$fromInstant$1":I
    const-wide/32 v15, 0xafaa8

    add-long/2addr v15, v6

    .line 523
    .local v15, "zeroDay":J
    const-wide/16 v17, 0x3c

    sub-long v15, v15, v17

    .line 525
    const-wide/16 v17, 0x0

    .line 526
    .local v17, "adjust":J
    cmp-long v19, v15, v10

    const-wide/32 v20, 0x23ab1

    const-wide/16 v22, 0x190

    if-gez v19, :cond_5f

    .line 527
    const-wide/16 v24, 0x1

    add-long v26, v15, v24

    div-long v26, v26, v20

    move-wide/from16 v28, v8

    sub-long v8, v26, v24

    .line 528
    .local v8, "adjustCycles":J
    mul-long v17, v8, v22

    .line 529
    move-wide/from16 v24, v10

    neg-long v10, v8

    mul-long v10, v10, v20

    add-long/2addr v15, v10

    goto :goto_63

    .line 526
    .end local v8    # "adjustCycles":J
    :cond_5f
    move-wide/from16 v28, v8

    move-wide/from16 v24, v10

    .line 531
    :goto_63
    mul-long v8, v22, v15

    const-wide/16 v10, 0x24f

    add-long/2addr v8, v10

    div-long v8, v8, v20

    .line 532
    .local v8, "yearEst":J
    const-wide/16 v10, 0x16d

    mul-long v19, v10, v8

    const-wide/16 v26, 0x4

    div-long v30, v8, v26

    add-long v19, v19, v30

    const-wide/16 v30, 0x64

    div-long v32, v8, v30

    sub-long v19, v19, v32

    div-long v32, v8, v22

    add-long v19, v19, v32

    sub-long v19, v15, v19

    .line 533
    .local v19, "doyEst":J
    cmp-long v21, v19, v24

    if-gez v21, :cond_98

    .line 534
    add-long v8, v8, v28

    .line 535
    mul-long/2addr v10, v8

    div-long v24, v8, v26

    add-long v10, v10, v24

    div-long v24, v8, v30

    sub-long v10, v10, v24

    div-long v21, v8, v22

    add-long v10, v10, v21

    sub-long v19, v15, v10

    move-wide/from16 v10, v19

    goto :goto_9a

    .line 533
    :cond_98
    move-wide/from16 v10, v19

    .line 537
    .end local v19    # "doyEst":J
    .local v10, "doyEst":J
    :goto_9a
    add-long v8, v8, v17

    .line 539
    long-to-int v1, v10

    .line 542
    .local v1, "marchDoy0":I
    mul-int/lit8 v19, v1, 0x5

    move/from16 v20, v1

    .end local v1    # "marchDoy0":I
    .local v20, "marchDoy0":I
    add-int/lit8 v1, v19, 0x2

    div-int/lit16 v1, v1, 0x99

    .line 543
    .local v1, "marchMonth0":I
    add-int/lit8 v19, v1, 0x2

    rem-int/lit8 v19, v19, 0xc

    add-int/lit8 v23, v19, 0x1

    .line 544
    .end local v5    # "month":I
    .local v23, "month":I
    mul-int/lit16 v5, v1, 0x132

    add-int/lit8 v5, v5, 0x5

    div-int/lit8 v5, v5, 0xa

    sub-int v5, v20, v5

    add-int/lit8 v24, v5, 0x1

    .line 545
    .end local v12    # "day":I
    .local v24, "day":I
    div-int/lit8 v5, v1, 0xa

    move-wide/from16 v29, v2

    move v3, v1

    .end local v1    # "marchMonth0":I
    .end local v2    # "localSecond":J
    .local v3, "marchMonth0":I
    .local v29, "localSecond":J
    int-to-long v1, v5

    add-long/2addr v1, v8

    long-to-int v1, v1

    .line 546
    .end local v4    # "year":I
    .local v1, "year":I
    nop

    .line 520
    .end local v3    # "marchMonth0":I
    .end local v8    # "yearEst":J
    .end local v10    # "doyEst":J
    .end local v13    # "$this$fromInstant_u24lambda_u240":Lkotlin/time/UnboundLocalDateTime$Companion;
    .end local v14    # "$i$a$-run-UnboundLocalDateTime$Companion$fromInstant$1":I
    .end local v15    # "zeroDay":J
    .end local v17    # "adjust":J
    .end local v20    # "marchDoy0":I
    nop

    .line 547
    div-int/lit16 v2, v0, 0xe10

    .line 548
    .local v2, "hours":I
    mul-int/lit16 v3, v2, 0xe10

    sub-int v3, v0, v3

    .line 549
    .local v3, "secondWithoutHours":I
    div-int/lit8 v26, v3, 0x3c

    .line 550
    .local v26, "minutes":I
    mul-int/lit8 v4, v26, 0x3c

    sub-int v27, v3, v4

    .line 551
    .local v27, "second":I
    new-instance v21, Lkotlin/time/UnboundLocalDateTime;

    invoke-virtual/range {p1 .. p1}, Lkotlin/time/Instant;->getNanosecondsOfSecond()I

    move-result v28

    move/from16 v22, v1

    move/from16 v25, v2

    .end local v1    # "year":I
    .end local v2    # "hours":I
    .local v22, "year":I
    .local v25, "hours":I
    invoke-direct/range {v21 .. v28}, Lkotlin/time/UnboundLocalDateTime;-><init>(IIIIIII)V

    return-object v21
.end method
