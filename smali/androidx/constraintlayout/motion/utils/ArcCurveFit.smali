###### Class androidx.constraintlayout.motion.utils.ArcCurveFit (androidx.constraintlayout.motion.utils.ArcCurveFit)
.class Landroidx/constraintlayout/motion/utils/ArcCurveFit;
.super Landroidx/constraintlayout/motion/utils/CurveFit;
.source "ArcCurveFit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;
    }
.end annotation


# static fields
.field public static final ARC_START_FLIP:I = 0x3

.field public static final ARC_START_HORIZONTAL:I = 0x2

.field public static final ARC_START_LINEAR:I = 0x0

.field public static final ARC_START_VERTICAL:I = 0x1

.field private static final START_HORIZONTAL:I = 0x2

.field private static final START_LINEAR:I = 0x3

.field private static final START_VERTICAL:I = 0x1


# instance fields
.field mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

.field private final mTime:[D


# direct methods
.method public constructor <init>([I[D[[D)V
    .registers 26
    .param p1, "arcModes"    # [I
    .param p2, "time"    # [D
    .param p3, "y"    # [[D

    .line 168
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/CurveFit;-><init>()V

    .line 169
    iput-object v1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mTime:[D

    .line 170
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    new-array v2, v2, [Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    iput-object v2, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    .line 171
    const/4 v2, 0x1

    .line 172
    .local v2, "mode":I
    const/4 v4, 0x1

    .line 173
    .local v4, "last":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_13
    iget-object v6, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    array-length v6, v6

    if-ge v5, v6, :cond_5f

    .line 174
    aget v6, p1, v5

    const/4 v7, 0x2

    packed-switch v6, :pswitch_data_60

    move v7, v2

    goto :goto_30

    .line 182
    :pswitch_20
    if-ne v4, v3, :cond_23

    goto :goto_24

    :cond_23
    move v7, v3

    :goto_24
    move v2, v7

    .line 183
    move v4, v2

    .line 184
    goto :goto_30

    .line 179
    :pswitch_27
    move v2, v7

    .line 180
    .end local v4    # "last":I
    .local v7, "last":I
    move v4, v7

    goto :goto_30

    .line 176
    .end local v7    # "last":I
    .restart local v4    # "last":I
    :pswitch_2a
    move v2, v3

    move v4, v3

    .line 177
    move v7, v2

    goto :goto_30

    .line 186
    :pswitch_2e
    const/4 v2, 0x3

    move v7, v2

    .line 188
    .end local v2    # "mode":I
    .local v7, "mode":I
    :goto_30
    iget-object v2, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    new-instance v6, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-wide v8, v1, v5

    add-int/lit8 v10, v5, 0x1

    aget-wide v10, v1, v10

    aget-object v12, p3, v5

    const/4 v13, 0x0

    aget-wide v14, v12, v13

    aget-object v12, p3, v5

    aget-wide v16, v12, v3

    add-int/lit8 v12, v5, 0x1

    aget-object v12, p3, v12

    aget-wide v18, v12, v13

    add-int/lit8 v12, v5, 0x1

    aget-object v12, p3, v12

    aget-wide v20, v12, v3

    move-wide v12, v14

    move-wide/from16 v14, v16

    move-wide/from16 v16, v18

    move-wide/from16 v18, v20

    invoke-direct/range {v6 .. v19}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;-><init>(IDDDDDD)V

    aput-object v6, v2, v5

    .line 173
    add-int/lit8 v5, v5, 0x1

    move v2, v7

    goto :goto_13

    .line 190
    .end local v5    # "i":I
    .end local v7    # "mode":I
    .restart local v2    # "mode":I
    :cond_5f
    return-void

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_2a
        :pswitch_27
        :pswitch_20
    .end packed-switch
.end method


# virtual methods
.method public getPos(DI)D
    .registers 8
    .param p1, "t"    # D
    .param p3, "j"    # I

    .line 110
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-wide v2, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime1:D

    cmpg-double v0, p1, v2

    .line 112
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    .line 110
    if-gez v0, :cond_12

    .line 111
    aget-object v0, v2, v1

    iget-wide p1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime1:D

    goto :goto_2a

    .line 112
    :cond_12
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v2, v0

    iget-wide v0, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpl-double v0, p1, v0

    if-lez v0, :cond_2a

    .line 113
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget-wide p1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime2:D

    .line 116
    :cond_2a
    :goto_2a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2b
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    array-length v1, v1

    if-ge v0, v1, :cond_72

    .line 117
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    iget-wide v1, v1, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpg-double v1, p1, v1

    if-gtz v1, :cond_6f

    .line 119
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->linear:Z

    if-eqz v1, :cond_55

    .line 120
    nop

    .line 123
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    .line 120
    if-nez p3, :cond_4e

    .line 121
    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    move-result-wide v1

    return-wide v1

    .line 123
    :cond_4e
    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    move-result-wide v1

    return-wide v1

    .line 125
    :cond_55
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    .line 127
    nop

    .line 130
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    .line 127
    if-nez p3, :cond_68

    .line 128
    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->getX()D

    move-result-wide v1

    return-wide v1

    .line 130
    :cond_68
    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->getY()D

    move-result-wide v1

    return-wide v1

    .line 116
    :cond_6f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 133
    .end local v0    # "i":I
    :cond_72
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public getPos(D[D)V
    .registers 10
    .param p1, "t"    # D
    .param p3, "v"    # [D

    .line 40
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-wide v2, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime1:D

    cmpg-double v0, p1, v2

    if-gez v0, :cond_11

    .line 41
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v0, v1

    iget-wide p1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime1:D

    .line 43
    :cond_11
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v0, v0, v2

    iget-wide v4, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpl-double v0, p1, v4

    if-lez v0, :cond_2a

    .line 44
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    array-length v2, v2

    sub-int/2addr v2, v3

    aget-object v0, v0, v2

    iget-wide p1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime2:D

    .line 47
    :cond_2a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2b
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    array-length v2, v2

    if-ge v0, v2, :cond_74

    .line 48
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v2, v2, v0

    iget-wide v4, v2, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpg-double v2, p1, v4

    if-gtz v2, :cond_71

    .line 49
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->linear:Z

    .line 54
    iget-object v4, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    .line 49
    if-eqz v2, :cond_57

    .line 50
    aget-object v2, v4, v0

    invoke-virtual {v2, p1, p2}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    move-result-wide v4

    aput-wide v4, p3, v1

    .line 51
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    move-result-wide v1

    aput-wide v1, p3, v3

    .line 52
    return-void

    .line 54
    :cond_57
    aget-object v2, v4, v0

    invoke-virtual {v2, p1, p2}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    .line 55
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->getX()D

    move-result-wide v4

    aput-wide v4, p3, v1

    .line 56
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->getY()D

    move-result-wide v1

    aput-wide v1, p3, v3

    .line 57
    return-void

    .line 47
    :cond_71
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 60
    .end local v0    # "i":I
    :cond_74
    return-void
.end method

.method public getPos(D[F)V
    .registers 10
    .param p1, "t"    # D
    .param p3, "v"    # [F

    .line 64
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-wide v2, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime1:D

    cmpg-double v0, p1, v2

    .line 66
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    .line 64
    const/4 v3, 0x1

    if-gez v0, :cond_13

    .line 65
    aget-object v0, v2, v1

    iget-wide p1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime1:D

    goto :goto_29

    .line 66
    :cond_13
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    array-length v0, v0

    sub-int/2addr v0, v3

    aget-object v0, v2, v0

    iget-wide v4, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpl-double v0, p1, v4

    if-lez v0, :cond_29

    .line 67
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    array-length v2, v2

    sub-int/2addr v2, v3

    aget-object v0, v0, v2

    iget-wide p1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime2:D

    .line 70
    :cond_29
    :goto_29
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2a
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    array-length v2, v2

    if-ge v0, v2, :cond_77

    .line 71
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v2, v2, v0

    iget-wide v4, v2, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpg-double v2, p1, v4

    if-gtz v2, :cond_74

    .line 72
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->linear:Z

    .line 77
    iget-object v4, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    .line 72
    if-eqz v2, :cond_58

    .line 73
    aget-object v2, v4, v0

    invoke-virtual {v2, p1, p2}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    move-result-wide v4

    double-to-float v2, v4

    aput v2, p3, v1

    .line 74
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, p3, v3

    .line 75
    return-void

    .line 77
    :cond_58
    aget-object v2, v4, v0

    invoke-virtual {v2, p1, p2}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    .line 78
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->getX()D

    move-result-wide v4

    double-to-float v2, v4

    aput v2, p3, v1

    .line 79
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->getY()D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, p3, v3

    .line 80
    return-void

    .line 70
    :cond_74
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 83
    .end local v0    # "i":I
    :cond_77
    return-void
.end method

.method public getSlope(DI)D
    .registers 8
    .param p1, "t"    # D
    .param p3, "j"    # I

    .line 138
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-wide v2, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime1:D

    cmpg-double v0, p1, v2

    if-gez v0, :cond_11

    .line 139
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v0, v1

    iget-wide p1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime1:D

    .line 141
    :cond_11
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget-wide v0, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpl-double v0, p1, v0

    if-lez v0, :cond_2b

    .line 142
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget-wide p1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime2:D

    .line 145
    :cond_2b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2c
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    array-length v1, v1

    if-ge v0, v1, :cond_73

    .line 146
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    iget-wide v1, v1, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpg-double v1, p1, v1

    if-gtz v1, :cond_70

    .line 147
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->linear:Z

    if-eqz v1, :cond_56

    .line 148
    nop

    .line 151
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    .line 148
    if-nez p3, :cond_4f

    .line 149
    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->getLinearDX(D)D

    move-result-wide v1

    return-wide v1

    .line 151
    :cond_4f
    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->getLinearDY(D)D

    move-result-wide v1

    return-wide v1

    .line 153
    :cond_56
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    .line 154
    nop

    .line 157
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    .line 154
    if-nez p3, :cond_69

    .line 155
    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->getDX()D

    move-result-wide v1

    return-wide v1

    .line 157
    :cond_69
    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->getDY()D

    move-result-wide v1

    return-wide v1

    .line 145
    :cond_70
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 160
    .end local v0    # "i":I
    :cond_73
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public getSlope(D[D)V
    .registers 10
    .param p1, "t"    # D
    .param p3, "v"    # [D

    .line 87
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-wide v2, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime1:D

    cmpg-double v0, p1, v2

    .line 89
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    .line 87
    const/4 v3, 0x1

    if-gez v0, :cond_13

    .line 88
    aget-object v0, v2, v1

    iget-wide p1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime1:D

    goto :goto_29

    .line 89
    :cond_13
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    array-length v0, v0

    sub-int/2addr v0, v3

    aget-object v0, v2, v0

    iget-wide v4, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpl-double v0, p1, v4

    if-lez v0, :cond_29

    .line 90
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    array-length v2, v2

    sub-int/2addr v2, v3

    aget-object v0, v0, v2

    iget-wide p1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime2:D

    .line 93
    :cond_29
    :goto_29
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2a
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    array-length v2, v2

    if-ge v0, v2, :cond_73

    .line 94
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v2, v2, v0

    iget-wide v4, v2, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpg-double v2, p1, v4

    if-gtz v2, :cond_70

    .line 95
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->linear:Z

    .line 100
    iget-object v4, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    .line 95
    if-eqz v2, :cond_56

    .line 96
    aget-object v2, v4, v0

    invoke-virtual {v2, p1, p2}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->getLinearDX(D)D

    move-result-wide v4

    aput-wide v4, p3, v1

    .line 97
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->getLinearDY(D)D

    move-result-wide v1

    aput-wide v1, p3, v3

    .line 98
    return-void

    .line 100
    :cond_56
    aget-object v2, v4, v0

    invoke-virtual {v2, p1, p2}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    .line 101
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->getDX()D

    move-result-wide v4

    aput-wide v4, p3, v1

    .line 102
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->getDY()D

    move-result-wide v1

    aput-wide v1, p3, v3

    .line 103
    return-void

    .line 93
    :cond_70
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 106
    .end local v0    # "i":I
    :cond_73
    return-void
.end method

.method public getTimePoints()[D
    .registers 2

    .line 165
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mTime:[D

    return-object v0
.end method

###### Class androidx.constraintlayout.motion.utils.ArcCurveFit.Arc (androidx.constraintlayout.motion.utils.ArcCurveFit$Arc)
.class Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;
.super Ljava/lang/Object;
.source "ArcCurveFit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/utils/ArcCurveFit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Arc"
.end annotation


# static fields
.field private static final EPSILON:D = 0.001

.field private static final TAG:Ljava/lang/String; = "Arc"

.field private static ourPercent:[D


# instance fields
.field linear:Z

.field mArcDistance:D

.field mArcVelocity:D

.field mEllipseA:D

.field mEllipseB:D

.field mEllipseCenterX:D

.field mEllipseCenterY:D

.field mLut:[D

.field mOneOverDeltaTime:D

.field mTime1:D

.field mTime2:D

.field mTmpCosAngle:D

.field mTmpSinAngle:D

.field mVertical:Z

.field mX1:D

.field mX2:D

.field mY1:D

.field mY2:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 194
    const/16 v0, 0x5b

    new-array v0, v0, [D

    sput-object v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    return-void
.end method

.method constructor <init>(IDDDDDD)V
    .registers 32
    .param p1, "mode"    # I
    .param p2, "t1"    # D
    .param p4, "t2"    # D
    .param p6, "x1"    # D
    .param p8, "y1"    # D
    .param p10, "x2"    # D
    .param p12, "y2"    # D

    .line 212
    move-object/from16 v0, p0

    move/from16 v9, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 209
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->linear:Z

    .line 213
    const/4 v2, 0x1

    if-ne v9, v2, :cond_e

    move v1, v2

    :cond_e
    iput-boolean v1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    .line 214
    move-wide/from16 v10, p2

    iput-wide v10, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime1:D

    .line 215
    move-wide/from16 v12, p4

    iput-wide v12, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime2:D

    .line 216
    iget-wide v3, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime2:D

    iget-wide v5, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime1:D

    sub-double/2addr v3, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    div-double/2addr v5, v3

    iput-wide v5, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    .line 217
    const/4 v1, 0x3

    if-ne v1, v9, :cond_27

    .line 218
    iput-boolean v2, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->linear:Z

    .line 220
    :cond_27
    sub-double v14, p10, p6

    .line 221
    .local v14, "dx":D
    sub-double v3, p12, p8

    .line 222
    .local v3, "dy":D
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->linear:Z

    if-nez v1, :cond_98

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v7, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v1, v5, v7

    if-ltz v1, :cond_98

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v1, v5, v7

    if-gez v1, :cond_4c

    move-wide/from16 v5, p8

    move-wide/from16 v7, p10

    move-wide v9, v3

    move-wide/from16 v3, p6

    goto :goto_9f

    .line 234
    :cond_4c
    const/16 v1, 0x65

    new-array v1, v1, [D

    iput-object v1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mLut:[D

    .line 235
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    const/4 v5, -0x1

    if-eqz v1, :cond_59

    move v1, v5

    goto :goto_5a

    :cond_59
    move v1, v2

    :goto_5a
    int-to-double v6, v1

    mul-double/2addr v6, v14

    iput-wide v6, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mEllipseA:D

    .line 236
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    if-eqz v1, :cond_63

    goto :goto_64

    :cond_63
    move v2, v5

    :goto_64
    int-to-double v1, v2

    mul-double/2addr v1, v3

    iput-wide v1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mEllipseB:D

    .line 237
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    if-eqz v1, :cond_6f

    move-wide/from16 v1, p10

    goto :goto_71

    :cond_6f
    move-wide/from16 v1, p6

    :goto_71
    iput-wide v1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mEllipseCenterX:D

    .line 238
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    if-eqz v1, :cond_7a

    move-wide/from16 v1, p8

    goto :goto_7c

    :cond_7a
    move-wide/from16 v1, p12

    :goto_7c
    iput-wide v1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mEllipseCenterY:D

    .line 239
    move-wide/from16 v1, p6

    move-wide/from16 v5, p10

    move-wide/from16 v7, p12

    move-wide v9, v3

    move-wide/from16 v3, p8

    .end local v3    # "dy":D
    .local v9, "dy":D
    invoke-direct/range {v0 .. v8}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->buildTable(DDDD)V

    .line 240
    move-wide v7, v5

    move-wide v5, v3

    move-wide v3, v1

    iget-wide v1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mArcDistance:D

    move-wide/from16 v16, v1

    iget-wide v1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    mul-double v1, v1, v16

    iput-wide v1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mArcVelocity:D

    .line 241
    return-void

    .line 222
    .end local v9    # "dy":D
    .restart local v3    # "dy":D
    :cond_98
    move-wide/from16 v5, p8

    move-wide/from16 v7, p10

    move-wide v9, v3

    move-wide/from16 v3, p6

    .line 223
    .end local v3    # "dy":D
    .restart local v9    # "dy":D
    :goto_9f
    iput-boolean v2, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->linear:Z

    .line 224
    iput-wide v3, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mX1:D

    .line 225
    iput-wide v7, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mX2:D

    .line 226
    iput-wide v5, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mY1:D

    .line 227
    move-wide/from16 v1, p12

    iput-wide v1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mY2:D

    .line 228
    invoke-static {v9, v10, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    iput-wide v1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mArcDistance:D

    .line 229
    iget-wide v1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mArcDistance:D

    move-wide/from16 v16, v1

    iget-wide v1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    mul-double v1, v1, v16

    iput-wide v1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mArcVelocity:D

    .line 230
    iget-wide v1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime2:D

    move-wide/from16 v16, v1

    iget-wide v1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime1:D

    sub-double v1, v16, v1

    div-double v1, v14, v1

    iput-wide v1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mEllipseCenterX:D

    .line 231
    iget-wide v1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime2:D

    move-wide/from16 v16, v1

    iget-wide v1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime1:D

    sub-double v1, v16, v1

    div-double v1, v9, v1

    iput-wide v1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mEllipseCenterY:D

    .line 232
    return-void
.end method

.method private buildTable(DDDD)V
    .registers 35
    .param p1, "x1"    # D
    .param p3, "y1"    # D
    .param p5, "x2"    # D
    .param p7, "y2"    # D

    .line 307
    move-object/from16 v0, p0

    sub-double v1, p5, p1

    .line 308
    .local v1, "a":D
    sub-double v3, p3, p7

    .line 309
    .local v3, "b":D
    const-wide/16 v5, 0x0

    .local v5, "lx":D
    const-wide/16 v7, 0x0

    .line 310
    .local v7, "ly":D
    const-wide/16 v9, 0x0

    .line 311
    .local v9, "dist":D
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_d
    sget-object v12, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    array-length v12, v12

    if-ge v11, v12, :cond_53

    .line 312
    const-wide v12, 0x4056800000000000L    # 90.0

    int-to-double v14, v11

    mul-double/2addr v14, v12

    sget-object v12, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    array-length v12, v12

    add-int/lit8 v12, v12, -0x1

    int-to-double v12, v12

    div-double/2addr v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    .line 313
    .local v12, "angle":D
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    .line 314
    .local v14, "s":D
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    .line 315
    .local v16, "c":D
    mul-double v18, v1, v14

    .line 316
    .local v18, "px":D
    mul-double v20, v3, v16

    .line 317
    .local v20, "py":D
    if-lez v11, :cond_44

    .line 318
    move-wide/from16 v22, v1

    .end local v1    # "a":D
    .local v22, "a":D
    sub-double v1, v18, v5

    move-wide/from16 v24, v3

    .end local v3    # "b":D
    .local v24, "b":D
    sub-double v3, v20, v7

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    add-double/2addr v9, v1

    .line 319
    sget-object v1, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    aput-wide v9, v1, v11

    goto :goto_48

    .line 317
    .end local v22    # "a":D
    .end local v24    # "b":D
    .restart local v1    # "a":D
    .restart local v3    # "b":D
    :cond_44
    move-wide/from16 v22, v1

    move-wide/from16 v24, v3

    .line 321
    .end local v1    # "a":D
    .end local v3    # "b":D
    .restart local v22    # "a":D
    .restart local v24    # "b":D
    :goto_48
    move-wide/from16 v5, v18

    .line 322
    move-wide/from16 v7, v20

    .line 311
    .end local v12    # "angle":D
    .end local v14    # "s":D
    .end local v16    # "c":D
    .end local v18    # "px":D
    .end local v20    # "py":D
    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v1, v22

    move-wide/from16 v3, v24

    goto :goto_d

    .end local v22    # "a":D
    .end local v24    # "b":D
    .restart local v1    # "a":D
    .restart local v3    # "b":D
    :cond_53
    move-wide/from16 v22, v1

    move-wide/from16 v24, v3

    .line 325
    .end local v1    # "a":D
    .end local v3    # "b":D
    .end local v11    # "i":I
    .restart local v22    # "a":D
    .restart local v24    # "b":D
    iput-wide v9, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mArcDistance:D

    .line 327
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5a
    sget-object v2, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    array-length v2, v2

    if-ge v1, v2, :cond_69

    .line 328
    sget-object v2, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    aget-wide v3, v2, v1

    div-double/2addr v3, v9

    aput-wide v3, v2, v1

    .line 327
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 330
    .end local v1    # "i":I
    :cond_69
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6a
    iget-object v2, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mLut:[D

    array-length v2, v2

    if-ge v1, v2, :cond_c6

    .line 331
    int-to-double v2, v1

    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mLut:[D

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    int-to-double v11, v4

    div-double/2addr v2, v11

    .line 332
    .local v2, "pos":D
    sget-object v4, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    invoke-static {v4, v2, v3}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v4

    .line 333
    .local v4, "index":I
    if-ltz v4, :cond_8e

    .line 334
    iget-object v11, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mLut:[D

    sget-object v12, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    array-length v12, v12

    add-int/lit8 v12, v12, -0x1

    div-int v12, v4, v12

    int-to-double v12, v12

    aput-wide v12, v11, v1

    move/from16 v16, v1

    goto :goto_c3

    .line 335
    :cond_8e
    const/4 v11, -0x1

    if-ne v4, v11, :cond_9a

    .line 336
    iget-object v11, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mLut:[D

    const-wide/16 v12, 0x0

    aput-wide v12, v11, v1

    move/from16 v16, v1

    goto :goto_c3

    .line 338
    :cond_9a
    neg-int v11, v4

    add-int/lit8 v11, v11, -0x2

    .line 339
    .local v11, "p1":I
    neg-int v12, v4

    add-int/lit8 v12, v12, -0x1

    .line 341
    .local v12, "p2":I
    int-to-double v13, v11

    sget-object v15, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    aget-wide v16, v15, v11

    sub-double v15, v2, v16

    sget-object v17, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    aget-wide v18, v17, v12

    sget-object v17, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    aget-wide v20, v17, v11

    sub-double v18, v18, v20

    div-double v15, v15, v18

    add-double/2addr v13, v15

    sget-object v15, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    array-length v15, v15

    add-int/lit8 v15, v15, -0x1

    move/from16 v16, v1

    move-wide/from16 v17, v2

    .end local v1    # "i":I
    .end local v2    # "pos":D
    .local v16, "i":I
    .local v17, "pos":D
    int-to-double v1, v15

    div-double/2addr v13, v1

    .line 343
    .local v13, "ans":D
    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mLut:[D

    aput-wide v13, v1, v16

    .line 330
    .end local v4    # "index":I
    .end local v11    # "p1":I
    .end local v12    # "p2":I
    .end local v13    # "ans":D
    .end local v17    # "pos":D
    :goto_c3
    add-int/lit8 v1, v16, 0x1

    .end local v16    # "i":I
    .restart local v1    # "i":I
    goto :goto_6a

    .line 346
    .end local v1    # "i":I
    :cond_c6
    return-void
.end method


# virtual methods
.method getDX()D
    .registers 9

    .line 260
    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mEllipseA:D

    iget-wide v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTmpCosAngle:D

    mul-double/2addr v0, v2

    .line 261
    .local v0, "vx":D
    iget-wide v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mEllipseB:D

    neg-double v2, v2

    iget-wide v4, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTmpSinAngle:D

    mul-double/2addr v2, v4

    .line 262
    .local v2, "vy":D
    iget-wide v4, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mArcVelocity:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    div-double/2addr v4, v6

    .line 263
    .local v4, "norm":D
    iget-boolean v6, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    if-eqz v6, :cond_19

    neg-double v6, v0

    mul-double/2addr v6, v4

    goto :goto_1b

    :cond_19
    mul-double v6, v0, v4

    :goto_1b
    return-wide v6
.end method

.method getDY()D
    .registers 9

    .line 267
    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mEllipseA:D

    iget-wide v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTmpCosAngle:D

    mul-double/2addr v0, v2

    .line 268
    .local v0, "vx":D
    iget-wide v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mEllipseB:D

    neg-double v2, v2

    iget-wide v4, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTmpSinAngle:D

    mul-double/2addr v2, v4

    .line 269
    .local v2, "vy":D
    iget-wide v4, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mArcVelocity:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    div-double/2addr v4, v6

    .line 270
    .local v4, "norm":D
    iget-boolean v6, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    if-eqz v6, :cond_19

    neg-double v6, v2

    mul-double/2addr v6, v4

    goto :goto_1b

    :cond_19
    mul-double v6, v2, v4

    :goto_1b
    return-wide v6
.end method

.method public getLinearDX(D)D
    .registers 5
    .param p1, "t"    # D

    .line 284
    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mEllipseCenterX:D

    return-wide v0
.end method

.method public getLinearDY(D)D
    .registers 5
    .param p1, "t"    # D

    .line 288
    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mEllipseCenterY:D

    return-wide v0
.end method

.method public getLinearX(D)D
    .registers 9
    .param p1, "t"    # D

    .line 274
    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime1:D

    sub-double v0, p1, v0

    iget-wide v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    mul-double/2addr v0, v2

    .line 275
    .end local p1    # "t":D
    .local v0, "t":D
    iget-wide p1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mX1:D

    iget-wide v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mX2:D

    iget-wide v4, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mX1:D

    sub-double/2addr v2, v4

    mul-double/2addr v2, v0

    add-double/2addr p1, v2

    return-wide p1
.end method

.method public getLinearY(D)D
    .registers 9
    .param p1, "t"    # D

    .line 279
    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime1:D

    sub-double v0, p1, v0

    iget-wide v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    mul-double/2addr v0, v2

    .line 280
    .end local p1    # "t":D
    .local v0, "t":D
    iget-wide p1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mY1:D

    iget-wide v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mY2:D

    iget-wide v4, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mY1:D

    sub-double/2addr v2, v4

    mul-double/2addr v2, v0

    add-double/2addr p1, v2

    return-wide p1
.end method

.method getX()D
    .registers 7

    .line 252
    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mEllipseCenterX:D

    iget-wide v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mEllipseA:D

    iget-wide v4, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTmpSinAngle:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method getY()D
    .registers 7

    .line 256
    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mEllipseCenterY:D

    iget-wide v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mEllipseB:D

    iget-wide v4, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTmpCosAngle:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method lookup(D)D
    .registers 15
    .param p1, "v"    # D

    .line 292
    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_7

    .line 293
    return-wide v0

    .line 295
    :cond_7
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_e

    .line 296
    return-wide v0

    .line 298
    :cond_e
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mLut:[D

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    int-to-double v0, v0

    mul-double/2addr v0, p1

    .line 299
    .local v0, "pos":D
    double-to-int v2, v0

    .line 301
    .local v2, "iv":I
    double-to-int v3, v0

    int-to-double v3, v3

    sub-double v3, v0, v3

    .line 303
    .local v3, "off":D
    iget-object v5, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mLut:[D

    aget-wide v6, v5, v2

    iget-object v5, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mLut:[D

    add-int/lit8 v8, v2, 0x1

    aget-wide v8, v5, v8

    iget-object v5, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mLut:[D

    aget-wide v10, v5, v2

    sub-double/2addr v8, v10

    mul-double/2addr v8, v3

    add-double/2addr v6, v8

    return-wide v6
.end method

.method setPoint(D)V
    .registers 9
    .param p1, "time"    # D

    .line 244
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    if-eqz v0, :cond_8

    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime2:D

    sub-double/2addr v0, p1

    goto :goto_c

    :cond_8
    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime1:D

    sub-double v0, p1, v0

    :goto_c
    iget-wide v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    mul-double/2addr v0, v2

    .line 245
    .local v0, "percent":D
    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->lookup(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    .line 247
    .local v4, "angle":D
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iput-wide v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTmpSinAngle:D

    .line 248
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iput-wide v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTmpCosAngle:D

    .line 249
    return-void
.end method
