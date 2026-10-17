###### Class androidx.constraintlayout.motion.utils.CurveFit (androidx.constraintlayout.motion.utils.CurveFit)
.class public abstract Landroidx/constraintlayout/motion/utils/CurveFit;
.super Ljava/lang/Object;
.source "CurveFit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/utils/CurveFit$Constant;
    }
.end annotation


# static fields
.field public static final CONSTANT:I = 0x2

.field public static final LINEAR:I = 0x1

.field public static final SPLINE:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(I[D[[D)Landroidx/constraintlayout/motion/utils/CurveFit;
    .registers 7
    .param p0, "type"    # I
    .param p1, "time"    # [D
    .param p2, "y"    # [[D

    .line 30
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 31
    const/4 p0, 0x2

    .line 33
    :cond_5
    packed-switch p0, :pswitch_data_20

    .line 39
    :pswitch_8
    new-instance v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;

    invoke-direct {v0, p1, p2}, Landroidx/constraintlayout/motion/utils/LinearCurveFit;-><init>([D[[D)V

    return-object v0

    .line 37
    :pswitch_e
    new-instance v0, Landroidx/constraintlayout/motion/utils/CurveFit$Constant;

    const/4 v1, 0x0

    aget-wide v2, p1, v1

    aget-object v1, p2, v1

    invoke-direct {v0, v2, v3, v1}, Landroidx/constraintlayout/motion/utils/CurveFit$Constant;-><init>(D[D)V

    return-object v0

    .line 35
    :pswitch_19
    new-instance v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;

    invoke-direct {v0, p1, p2}, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;-><init>([D[[D)V

    return-object v0

    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_19
        :pswitch_8
        :pswitch_e
    .end packed-switch
.end method

.method public static getArc([I[D[[D)Landroidx/constraintlayout/motion/utils/CurveFit;
    .registers 4
    .param p0, "arcModes"    # [I
    .param p1, "time"    # [D
    .param p2, "y"    # [[D

    .line 44
    new-instance v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;

    invoke-direct {v0, p0, p1, p2}, Landroidx/constraintlayout/motion/utils/ArcCurveFit;-><init>([I[D[[D)V

    return-object v0
.end method


# virtual methods
.method public abstract getPos(DI)D
.end method

.method public abstract getPos(D[D)V
.end method

.method public abstract getPos(D[F)V
.end method

.method public abstract getSlope(DI)D
.end method

.method public abstract getSlope(D[D)V
.end method

.method public abstract getTimePoints()[D
.end method

###### Class androidx.constraintlayout.motion.utils.CurveFit.Constant (androidx.constraintlayout.motion.utils.CurveFit$Constant)
.class Landroidx/constraintlayout/motion/utils/CurveFit$Constant;
.super Landroidx/constraintlayout/motion/utils/CurveFit;
.source "CurveFit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/utils/CurveFit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Constant"
.end annotation


# instance fields
.field mTime:D

.field mValue:[D


# direct methods
.method constructor <init>(D[D)V
    .registers 4
    .param p1, "time"    # D
    .param p3, "value"    # [D

    .line 63
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/CurveFit;-><init>()V

    .line 64
    iput-wide p1, p0, Landroidx/constraintlayout/motion/utils/CurveFit$Constant;->mTime:D

    .line 65
    iput-object p3, p0, Landroidx/constraintlayout/motion/utils/CurveFit$Constant;->mValue:[D

    .line 66
    return-void
.end method


# virtual methods
.method public getPos(DI)D
    .registers 7
    .param p1, "t"    # D
    .param p3, "j"    # I

    .line 82
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/CurveFit$Constant;->mValue:[D

    aget-wide v1, v0, p3

    return-wide v1
.end method

.method public getPos(D[D)V
    .registers 7
    .param p1, "t"    # D
    .param p3, "v"    # [D

    .line 70
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/CurveFit$Constant;->mValue:[D

    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/CurveFit$Constant;->mValue:[D

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    return-void
.end method

.method public getPos(D[F)V
    .registers 8
    .param p1, "t"    # D
    .param p3, "v"    # [F

    .line 75
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/CurveFit$Constant;->mValue:[D

    array-length v1, v1

    if-ge v0, v1, :cond_10

    .line 76
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/CurveFit$Constant;->mValue:[D

    aget-wide v2, v1, v0

    double-to-float v1, v2

    aput v1, p3, v0

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 78
    .end local v0    # "i":I
    :cond_10
    return-void
.end method

.method public getSlope(DI)D
    .registers 6
    .param p1, "t"    # D
    .param p3, "j"    # I

    .line 94
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSlope(D[D)V
    .registers 7
    .param p1, "t"    # D
    .param p3, "v"    # [D

    .line 87
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/CurveFit$Constant;->mValue:[D

    array-length v1, v1

    if-ge v0, v1, :cond_d

    .line 88
    const-wide/16 v1, 0x0

    aput-wide v1, p3, v0

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 90
    .end local v0    # "i":I
    :cond_d
    return-void
.end method

.method public getTimePoints()[D
    .registers 5

    .line 99
    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/CurveFit$Constant;->mTime:D

    const/4 v2, 0x1

    new-array v2, v2, [D

    const/4 v3, 0x0

    aput-wide v0, v2, v3

    return-object v2
.end method
