###### Class kotlin.UByte$$ExternalSyntheticBackport2 (kotlin.UByte$$ExternalSyntheticBackport2)
.class public final synthetic Lkotlin/UByte$$ExternalSyntheticBackport2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic m(JJ)J
    .registers 11

    .line 0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const-wide/high16 v3, -0x8000000000000000L

    if-gez v2, :cond_12

    xor-long v0, p0, v3

    xor-long/2addr v3, p2

    cmp-long v0, v0, v3

    if-gez v0, :cond_10

    return-wide p0

    :cond_10
    sub-long/2addr p0, p2

    return-wide p0

    :cond_12
    cmp-long v2, p0, v0

    if-ltz v2, :cond_18

    rem-long/2addr p0, p2

    return-wide p0

    :cond_18
    const/4 v2, 0x1

    ushr-long v5, p0, v2

    div-long/2addr v5, p2

    shl-long/2addr v5, v2

    mul-long/2addr v5, p2

    sub-long/2addr p0, v5

    xor-long v5, p0, v3

    xor-long/2addr v3, p2

    cmp-long v2, v5, v3

    if-ltz v2, :cond_27

    goto :goto_28

    :cond_27
    move-wide p2, v0

    :goto_28
    sub-long/2addr p0, p2

    return-wide p0
.end method
