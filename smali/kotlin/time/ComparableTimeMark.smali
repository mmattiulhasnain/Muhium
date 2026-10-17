###### Class kotlin.time.ComparableTimeMark (kotlin.time.ComparableTimeMark)
.class public interface abstract Lkotlin/time/ComparableTimeMark;
.super Ljava/lang/Object;
.source "TimeSource.kt"

# interfaces
.implements Lkotlin/time/TimeMark;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/time/ComparableTimeMark$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/time/TimeMark;",
        "Ljava/lang/Comparable<",
        "Lkotlin/time/ComparableTimeMark;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008g\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002J\u0018\u0010\u0003\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005H\u00a6\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0018\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005H\u0096\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0007J\u0018\u0010\u0008\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0000H\u00a6\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0011\u0010\r\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\u0000H\u0096\u0002J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\n\u001a\u0004\u0018\u00010\u0011H\u00a6\u0002J\u0008\u0010\u0012\u001a\u00020\u000eH&\u00a8\u0006\u0013"
    }
    d2 = {
        "Lkotlin/time/ComparableTimeMark;",
        "Lkotlin/time/TimeMark;",
        "",
        "plus",
        "duration",
        "Lkotlin/time/Duration;",
        "plus-LRDsOJo",
        "(J)Lkotlin/time/ComparableTimeMark;",
        "minus",
        "minus-LRDsOJo",
        "other",
        "minus-UwyO8pc",
        "(Lkotlin/time/ComparableTimeMark;)J",
        "compareTo",
        "",
        "equals",
        "",
        "",
        "hashCode",
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


# virtual methods
.method public abstract compareTo(Lkotlin/time/ComparableTimeMark;)I
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract hashCode()I
.end method

.method public abstract minus-LRDsOJo(J)Lkotlin/time/ComparableTimeMark;
.end method

.method public abstract minus-UwyO8pc(Lkotlin/time/ComparableTimeMark;)J
.end method

.method public abstract plus-LRDsOJo(J)Lkotlin/time/ComparableTimeMark;
.end method

###### Class kotlin.time.ComparableTimeMark.DefaultImpls (kotlin.time.ComparableTimeMark$DefaultImpls)
.class public final Lkotlin/time/ComparableTimeMark$DefaultImpls;
.super Ljava/lang/Object;
.source "TimeSource.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/time/ComparableTimeMark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
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


# direct methods
.method public static compareTo(Lkotlin/time/ComparableTimeMark;Lkotlin/time/ComparableTimeMark;)I
    .registers 6
    .param p0, "$this"    # Lkotlin/time/ComparableTimeMark;
    .param p1, "other"    # Lkotlin/time/ComparableTimeMark;

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    invoke-interface {p0, p1}, Lkotlin/time/ComparableTimeMark;->minus-UwyO8pc(Lkotlin/time/ComparableTimeMark;)J

    move-result-wide v0

    sget-object v2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v2}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v0

    return v0
.end method

.method public static hasNotPassedNow(Lkotlin/time/ComparableTimeMark;)Z
    .registers 2
    .param p0, "$this"    # Lkotlin/time/ComparableTimeMark;

    .line 178
    move-object v0, p0

    check-cast v0, Lkotlin/time/TimeMark;

    invoke-static {v0}, Lkotlin/time/TimeMark$DefaultImpls;->hasNotPassedNow(Lkotlin/time/TimeMark;)Z

    move-result v0

    .line 221
    return v0
.end method

.method public static hasPassedNow(Lkotlin/time/ComparableTimeMark;)Z
    .registers 2
    .param p0, "$this"    # Lkotlin/time/ComparableTimeMark;

    .line 178
    move-object v0, p0

    check-cast v0, Lkotlin/time/TimeMark;

    invoke-static {v0}, Lkotlin/time/TimeMark$DefaultImpls;->hasPassedNow(Lkotlin/time/TimeMark;)Z

    move-result v0

    .line 221
    return v0
.end method

.method public static minus-LRDsOJo(Lkotlin/time/ComparableTimeMark;J)Lkotlin/time/ComparableTimeMark;
    .registers 5
    .param p0, "$this"    # Lkotlin/time/ComparableTimeMark;
    .param p1, "duration"    # J

    .line 182
    invoke-static {p1, p2}, Lkotlin/time/Duration;->unaryMinus-UwyO8pc(J)J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lkotlin/time/ComparableTimeMark;->plus-LRDsOJo(J)Lkotlin/time/ComparableTimeMark;

    move-result-object v0

    return-object v0
.end method
