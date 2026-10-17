###### Class androidx.constraintlayout.motion.utils.LinearCurveFit (androidx.constraintlayout.motion.utils.LinearCurveFit)
.class public Landroidx/constraintlayout/motion/utils/LinearCurveFit;
.super Landroidx/constraintlayout/motion/utils/CurveFit;
.source "LinearCurveFit.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LinearCurveFit"


# instance fields
.field private mT:[D

.field private mTotalLength:D

.field private mY:[[D


# direct methods
.method public constructor <init>([D[[D)V
    .registers 24
    .param p1, "time"    # [D
    .param p2, "y"    # [[D

    .line 30
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/CurveFit;-><init>()V

    .line 28
    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    iput-wide v3, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mTotalLength:D

    .line 31
    array-length v3, v1

    .line 32
    .local v3, "N":I
    const/4 v4, 0x0

    aget-object v5, v2, v4

    array-length v5, v5

    .line 33
    .local v5, "dim":I
    iput-object v1, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    .line 34
    iput-object v2, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    .line 35
    const/4 v6, 0x2

    if-le v5, v6, :cond_50

    .line 36
    const-wide/16 v6, 0x0

    .line 37
    .local v6, "sum":D
    const-wide/16 v8, 0x0

    .local v8, "lastx":D
    const-wide/16 v10, 0x0

    .line 38
    .local v10, "lasty":D
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_20
    array-length v13, v1

    if-ge v12, v13, :cond_49

    .line 39
    aget-object v13, v2, v12

    aget-wide v14, v13, v4

    .line 40
    .local v14, "px":D
    aget-object v13, v2, v12

    aget-wide v16, v13, v4

    .line 41
    .local v16, "py":D
    if-lez v12, :cond_3b

    .line 42
    move/from16 v18, v5

    .end local v5    # "dim":I
    .local v18, "dim":I
    sub-double v4, v14, v8

    move-wide/from16 v19, v14

    .end local v14    # "px":D
    .local v19, "px":D
    sub-double v13, v16, v10

    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    add-double/2addr v6, v4

    goto :goto_3f

    .line 41
    .end local v18    # "dim":I
    .end local v19    # "px":D
    .restart local v5    # "dim":I
    .restart local v14    # "px":D
    :cond_3b
    move/from16 v18, v5

    move-wide/from16 v19, v14

    .line 44
    .end local v5    # "dim":I
    .end local v14    # "px":D
    .restart local v18    # "dim":I
    .restart local v19    # "px":D
    :goto_3f
    move-wide/from16 v8, v19

    .line 45
    move-wide/from16 v10, v16

    .line 38
    .end local v16    # "py":D
    .end local v19    # "px":D
    add-int/lit8 v12, v12, 0x1

    move/from16 v5, v18

    const/4 v4, 0x0

    goto :goto_20

    .end local v18    # "dim":I
    .restart local v5    # "dim":I
    :cond_49
    move/from16 v18, v5

    .line 47
    .end local v5    # "dim":I
    .end local v12    # "i":I
    .restart local v18    # "dim":I
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mTotalLength:D

    goto :goto_52

    .line 35
    .end local v6    # "sum":D
    .end local v8    # "lastx":D
    .end local v10    # "lasty":D
    .end local v18    # "dim":I
    .restart local v5    # "dim":I
    :cond_50
    move/from16 v18, v5

    .line 49
    .end local v5    # "dim":I
    .restart local v18    # "dim":I
    :goto_52
    return-void
.end method

.method private getLength2D(D)D
    .registers 37
    .param p1, "t"    # D

    .line 58
    move-object/from16 v0, p0

    iget-wide v1, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mTotalLength:D

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_d

    .line 59
    return-wide v2

    .line 61
    :cond_d
    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    array-length v1, v1

    .line 62
    .local v1, "n":I
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    const/4 v5, 0x0

    aget-wide v6, v4, v5

    cmpg-double v4, p1, v6

    if-gtz v4, :cond_1a

    .line 63
    return-wide v2

    .line 65
    :cond_1a
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v6, v1, -0x1

    aget-wide v6, v4, v6

    cmpl-double v4, p1, v6

    if-ltz v4, :cond_27

    .line 66
    iget-wide v2, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mTotalLength:D

    return-wide v2

    .line 68
    :cond_27
    const-wide/16 v6, 0x0

    .line 69
    .local v6, "sum":D
    const-wide/16 v8, 0x0

    .local v8, "last_x":D
    const-wide/16 v10, 0x0

    .line 71
    .local v10, "last_y":D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2e
    add-int/lit8 v12, v1, -0x1

    if-ge v4, v12, :cond_c3

    .line 72
    iget-object v12, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v12, v12, v4

    aget-wide v13, v12, v5

    .line 73
    .local v13, "px":D
    iget-object v12, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v12, v12, v4

    const/4 v15, 0x1

    aget-wide v16, v12, v15

    .line 74
    .local v16, "py":D
    if-lez v4, :cond_51

    .line 75
    move-wide/from16 v18, v2

    sub-double v2, v13, v8

    move v12, v5

    move-wide/from16 v20, v6

    .end local v6    # "sum":D
    .local v20, "sum":D
    sub-double v5, v16, v10

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    add-double v6, v20, v2

    .end local v20    # "sum":D
    .restart local v6    # "sum":D
    goto :goto_56

    .line 74
    :cond_51
    move-wide/from16 v18, v2

    move v12, v5

    move-wide/from16 v20, v6

    .line 77
    :goto_56
    move-wide v8, v13

    .line 78
    move-wide/from16 v10, v16

    .line 79
    iget-object v2, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v20, v2, v4

    cmpl-double v2, p1, v20

    if-nez v2, :cond_62

    .line 80
    return-wide v6

    .line 82
    :cond_62
    iget-object v2, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v3, v4, 0x1

    aget-wide v20, v2, v3

    cmpg-double v2, p1, v20

    if-gez v2, :cond_b9

    .line 83
    iget-object v2, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v3, v4, 0x1

    aget-wide v18, v2, v3

    iget-object v2, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v20, v2, v4

    sub-double v18, v18, v20

    .line 84
    .local v18, "h":D
    iget-object v2, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v20, v2, v4

    sub-double v2, p1, v20

    div-double v2, v2, v18

    .line 85
    .local v2, "x":D
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v5, v5, v4

    aget-wide v20, v5, v12

    .line 86
    .local v20, "x1":D
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    add-int/lit8 v22, v4, 0x1

    aget-object v5, v5, v22

    aget-wide v22, v5, v12

    .line 87
    .local v22, "x2":D
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v5, v5, v4

    aget-wide v24, v5, v15

    .line 88
    .local v24, "y1":D
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    add-int/lit8 v12, v4, 0x1

    aget-object v5, v5, v12

    aget-wide v26, v5, v15

    .line 90
    .local v26, "y2":D
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    sub-double v30, v28, v2

    mul-double v30, v30, v24

    mul-double v32, v26, v2

    add-double v30, v30, v32

    move v5, v1

    .end local v1    # "n":I
    .local v5, "n":I
    sub-double v0, v16, v30

    .line 91
    .end local v16    # "py":D
    .local v0, "py":D
    sub-double v28, v28, v2

    mul-double v28, v28, v20

    mul-double v15, v22, v2

    add-double v28, v28, v15

    sub-double v13, v13, v28

    .line 92
    invoke-static {v0, v1, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v15

    add-double/2addr v6, v15

    .line 94
    return-wide v6

    .line 82
    .end local v0    # "py":D
    .end local v2    # "x":D
    .end local v5    # "n":I
    .end local v18    # "h":D
    .end local v20    # "x1":D
    .end local v22    # "x2":D
    .end local v24    # "y1":D
    .end local v26    # "y2":D
    .restart local v1    # "n":I
    .restart local v16    # "py":D
    :cond_b9
    move v5, v1

    .line 71
    .end local v1    # "n":I
    .end local v13    # "px":D
    .end local v16    # "py":D
    .restart local v5    # "n":I
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move v5, v12

    move-wide/from16 v2, v18

    goto/16 :goto_2e

    .end local v5    # "n":I
    .restart local v1    # "n":I
    :cond_c3
    move-wide/from16 v18, v2

    .line 97
    .end local v4    # "i":I
    return-wide v18
.end method


# virtual methods
.method public getPos(DI)D
    .registers 20
    .param p1, "t"    # D
    .param p3, "j"    # I

    .line 173
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    array-length v1, v1

    .line 174
    .local v1, "n":I
    iget-object v2, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    cmpg-double v2, p1, v4

    if-gtz v2, :cond_15

    .line 175
    iget-object v2, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v2, v2, v3

    aget-wide v3, v2, p3

    return-wide v3

    .line 177
    :cond_15
    iget-object v2, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v3, v1, -0x1

    aget-wide v3, v2, v3

    cmpl-double v2, p1, v3

    if-ltz v2, :cond_28

    .line 178
    iget-object v2, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    aget-wide v3, v2, p3

    return-wide v3

    .line 181
    :cond_28
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_29
    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_71

    .line 182
    iget-object v3, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v4, v3, v2

    cmpl-double v3, p1, v4

    if-nez v3, :cond_3c

    .line 183
    iget-object v3, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v3, v3, v2

    aget-wide v4, v3, p3

    return-wide v4

    .line 185
    :cond_3c
    iget-object v3, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v4, v2, 0x1

    aget-wide v4, v3, v4

    cmpg-double v3, p1, v4

    if-gez v3, :cond_6e

    .line 186
    iget-object v3, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v4, v2, 0x1

    aget-wide v4, v3, v4

    iget-object v3, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v6, v3, v2

    sub-double/2addr v4, v6

    .line 187
    .local v4, "h":D
    iget-object v3, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v6, v3, v2

    sub-double v6, p1, v6

    div-double/2addr v6, v4

    .line 188
    .local v6, "x":D
    iget-object v3, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v3, v3, v2

    aget-wide v8, v3, p3

    .line 189
    .local v8, "y1":D
    iget-object v3, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    add-int/lit8 v10, v2, 0x1

    aget-object v3, v3, v10

    aget-wide v10, v3, p3

    .line 190
    .local v10, "y2":D
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v12, v6

    mul-double/2addr v12, v8

    mul-double v14, v10, v6

    add-double/2addr v12, v14

    return-wide v12

    .line 181
    .end local v4    # "h":D
    .end local v6    # "x":D
    .end local v8    # "y1":D
    .end local v10    # "y2":D
    :cond_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 194
    .end local v2    # "i":I
    :cond_71
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public getPos(D[D)V
    .registers 22
    .param p1, "t"    # D
    .param p3, "v"    # [D

    .line 101
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    array-length v1, v1

    .line 102
    .local v1, "n":I
    iget-object v2, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v2, v2

    .line 103
    .local v2, "dim":I
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v5, v4, v3

    cmpg-double v4, p1, v5

    if-gtz v4, :cond_22

    .line 104
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_14
    if-ge v4, v2, :cond_21

    .line 105
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v5, v5, v3

    aget-wide v6, v5, v4

    aput-wide v6, p3, v4

    .line 104
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 107
    .end local v4    # "j":I
    :cond_21
    return-void

    .line 109
    :cond_22
    iget-object v3, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v4, v1, -0x1

    aget-wide v4, v3, v4

    cmpl-double v3, p1, v4

    if-ltz v3, :cond_3d

    .line 110
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2d
    if-ge v3, v2, :cond_3c

    .line 111
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    add-int/lit8 v5, v1, -0x1

    aget-object v4, v4, v5

    aget-wide v5, v4, v3

    aput-wide v5, p3, v3

    .line 110
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 113
    .end local v3    # "j":I
    :cond_3c
    return-void

    .line 116
    :cond_3d
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3e
    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_96

    .line 117
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v5, v4, v3

    cmpl-double v4, p1, v5

    if-nez v4, :cond_58

    .line 118
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_4b
    if-ge v4, v2, :cond_58

    .line 119
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v5, v5, v3

    aget-wide v6, v5, v4

    aput-wide v6, p3, v4

    .line 118
    add-int/lit8 v4, v4, 0x1

    goto :goto_4b

    .line 122
    .end local v4    # "j":I
    :cond_58
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v5, v3, 0x1

    aget-wide v5, v4, v5

    cmpg-double v4, p1, v5

    if-gez v4, :cond_93

    .line 123
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v5, v3, 0x1

    aget-wide v5, v4, v5

    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v7, v4, v3

    sub-double/2addr v5, v7

    .line 124
    .local v5, "h":D
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v7, v4, v3

    sub-double v7, p1, v7

    div-double/2addr v7, v5

    .line 125
    .local v7, "x":D
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_75
    if-ge v4, v2, :cond_92

    .line 126
    iget-object v9, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v9, v9, v3

    aget-wide v10, v9, v4

    .line 127
    .local v10, "y1":D
    iget-object v9, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    add-int/lit8 v12, v3, 0x1

    aget-object v9, v9, v12

    aget-wide v12, v9, v4

    .line 129
    .local v12, "y2":D
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v14, v7

    mul-double/2addr v14, v10

    mul-double v16, v12, v7

    add-double v14, v14, v16

    aput-wide v14, p3, v4

    .line 125
    .end local v10    # "y1":D
    .end local v12    # "y2":D
    add-int/lit8 v4, v4, 0x1

    goto :goto_75

    .line 131
    .end local v4    # "j":I
    :cond_92
    return-void

    .line 116
    .end local v5    # "h":D
    .end local v7    # "x":D
    :cond_93
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .line 134
    .end local v3    # "i":I
    :cond_96
    return-void
.end method

.method public getPos(D[F)V
    .registers 22
    .param p1, "t"    # D
    .param p3, "v"    # [F

    .line 137
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    array-length v1, v1

    .line 138
    .local v1, "n":I
    iget-object v2, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v2, v2

    .line 139
    .local v2, "dim":I
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v5, v4, v3

    cmpg-double v4, p1, v5

    if-gtz v4, :cond_23

    .line 140
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_14
    if-ge v4, v2, :cond_22

    .line 141
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v5, v5, v3

    aget-wide v6, v5, v4

    double-to-float v5, v6

    aput v5, p3, v4

    .line 140
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 143
    .end local v4    # "j":I
    :cond_22
    return-void

    .line 145
    :cond_23
    iget-object v3, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v4, v1, -0x1

    aget-wide v4, v3, v4

    cmpl-double v3, p1, v4

    if-ltz v3, :cond_3f

    .line 146
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2e
    if-ge v3, v2, :cond_3e

    .line 147
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    add-int/lit8 v5, v1, -0x1

    aget-object v4, v4, v5

    aget-wide v5, v4, v3

    double-to-float v4, v5

    aput v4, p3, v3

    .line 146
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 149
    .end local v3    # "j":I
    :cond_3e
    return-void

    .line 152
    :cond_3f
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_40
    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_9a

    .line 153
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v5, v4, v3

    cmpl-double v4, p1, v5

    if-nez v4, :cond_5b

    .line 154
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_4d
    if-ge v4, v2, :cond_5b

    .line 155
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v5, v5, v3

    aget-wide v6, v5, v4

    double-to-float v5, v6

    aput v5, p3, v4

    .line 154
    add-int/lit8 v4, v4, 0x1

    goto :goto_4d

    .line 158
    .end local v4    # "j":I
    :cond_5b
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v5, v3, 0x1

    aget-wide v5, v4, v5

    cmpg-double v4, p1, v5

    if-gez v4, :cond_97

    .line 159
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v5, v3, 0x1

    aget-wide v5, v4, v5

    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v7, v4, v3

    sub-double/2addr v5, v7

    .line 160
    .local v5, "h":D
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v7, v4, v3

    sub-double v7, p1, v7

    div-double/2addr v7, v5

    .line 161
    .local v7, "x":D
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_78
    if-ge v4, v2, :cond_96

    .line 162
    iget-object v9, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v9, v9, v3

    aget-wide v10, v9, v4

    .line 163
    .local v10, "y1":D
    iget-object v9, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    add-int/lit8 v12, v3, 0x1

    aget-object v9, v9, v12

    aget-wide v12, v9, v4

    .line 165
    .local v12, "y2":D
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v14, v7

    mul-double/2addr v14, v10

    mul-double v16, v12, v7

    add-double v14, v14, v16

    double-to-float v9, v14

    aput v9, p3, v4

    .line 161
    .end local v10    # "y1":D
    .end local v12    # "y2":D
    add-int/lit8 v4, v4, 0x1

    goto :goto_78

    .line 167
    .end local v4    # "j":I
    :cond_96
    return-void

    .line 152
    .end local v5    # "h":D
    .end local v7    # "x":D
    :cond_97
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    .line 170
    .end local v3    # "i":I
    :cond_9a
    return-void
.end method

.method public getSlope(DI)D
    .registers 20
    .param p1, "t"    # D
    .param p3, "j"    # I

    .line 223
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    array-length v1, v1

    .line 225
    .local v1, "n":I
    iget-object v2, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    cmpg-double v2, p1, v4

    .line 227
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    .line 225
    if-gez v2, :cond_13

    .line 226
    aget-wide v2, v4, v3

    .end local p1    # "t":D
    .local v2, "t":D
    goto :goto_25

    .line 227
    .end local v2    # "t":D
    .restart local p1    # "t":D
    :cond_13
    add-int/lit8 v2, v1, -0x1

    aget-wide v2, v4, v2

    cmpl-double v2, p1, v2

    if-ltz v2, :cond_23

    .line 228
    iget-object v2, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v3, v1, -0x1

    aget-wide v3, v2, v3

    move-wide v2, v3

    .end local p1    # "t":D
    .local v3, "t":D
    goto :goto_25

    .line 227
    .end local v3    # "t":D
    .restart local p1    # "t":D
    :cond_23
    move-wide/from16 v2, p1

    .line 230
    .end local p1    # "t":D
    .restart local v2    # "t":D
    :goto_25
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_26
    add-int/lit8 v5, v1, -0x1

    if-ge v4, v5, :cond_5b

    .line 231
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v6, v4, 0x1

    aget-wide v6, v5, v6

    cmpg-double v5, v2, v6

    if-gtz v5, :cond_58

    .line 232
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v6, v4, 0x1

    aget-wide v6, v5, v6

    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v8, v5, v4

    sub-double/2addr v6, v8

    .line 233
    .local v6, "h":D
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v8, v5, v4

    sub-double v8, v2, v8

    div-double/2addr v8, v6

    .line 234
    .local v8, "x":D
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v5, v5, v4

    aget-wide v10, v5, p3

    .line 235
    .local v10, "y1":D
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    add-int/lit8 v12, v4, 0x1

    aget-object v5, v5, v12

    aget-wide v12, v5, p3

    .line 236
    .local v12, "y2":D
    sub-double v14, v12, v10

    div-double/2addr v14, v6

    return-wide v14

    .line 230
    .end local v6    # "h":D
    .end local v8    # "x":D
    .end local v10    # "y1":D
    .end local v12    # "y2":D
    :cond_58
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 239
    .end local v4    # "i":I
    :cond_5b
    const-wide/16 v4, 0x0

    return-wide v4
.end method

.method public getSlope(D[D)V
    .registers 22
    .param p1, "t"    # D
    .param p3, "v"    # [D

    .line 198
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    array-length v1, v1

    .line 199
    .local v1, "n":I
    iget-object v2, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v2, v2

    .line 200
    .local v2, "dim":I
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v5, v4, v3

    cmpg-double v4, p1, v5

    .line 202
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    .line 200
    if-gtz v4, :cond_18

    .line 201
    aget-wide v3, v5, v3

    .end local p1    # "t":D
    .local v3, "t":D
    goto :goto_2a

    .line 202
    .end local v3    # "t":D
    .restart local p1    # "t":D
    :cond_18
    add-int/lit8 v3, v1, -0x1

    aget-wide v3, v5, v3

    cmpl-double v3, p1, v3

    if-ltz v3, :cond_28

    .line 203
    iget-object v3, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v4, v1, -0x1

    aget-wide v4, v3, v4

    move-wide v3, v4

    .end local p1    # "t":D
    .local v4, "t":D
    goto :goto_2a

    .line 202
    .end local v4    # "t":D
    .restart local p1    # "t":D
    :cond_28
    move-wide/from16 v3, p1

    .line 206
    .end local p1    # "t":D
    .restart local v3    # "t":D
    :goto_2a
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2b
    add-int/lit8 v6, v1, -0x1

    if-ge v5, v6, :cond_69

    .line 207
    iget-object v6, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v7, v5, 0x1

    aget-wide v7, v6, v7

    cmpg-double v6, v3, v7

    if-gtz v6, :cond_66

    .line 208
    iget-object v6, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v7, v5, 0x1

    aget-wide v7, v6, v7

    iget-object v6, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v9, v6, v5

    sub-double/2addr v7, v9

    .line 209
    .local v7, "h":D
    iget-object v6, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v9, v6, v5

    sub-double v9, v3, v9

    div-double/2addr v9, v7

    .line 210
    .local v9, "x":D
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_4c
    if-ge v6, v2, :cond_65

    .line 211
    iget-object v11, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v11, v11, v5

    aget-wide v12, v11, v6

    .line 212
    .local v12, "y1":D
    iget-object v11, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    add-int/lit8 v14, v5, 0x1

    aget-object v11, v11, v14

    aget-wide v14, v11, v6

    .line 214
    .local v14, "y2":D
    sub-double v16, v14, v12

    div-double v16, v16, v7

    aput-wide v16, p3, v6

    .line 210
    .end local v12    # "y1":D
    .end local v14    # "y2":D
    add-int/lit8 v6, v6, 0x1

    goto :goto_4c

    .line 216
    .end local v6    # "j":I
    :cond_65
    goto :goto_69

    .line 206
    .end local v7    # "h":D
    .end local v9    # "x":D
    :cond_66
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    .line 219
    .end local v5    # "i":I
    :cond_69
    :goto_69
    return-void
.end method

.method public getTimePoints()[D
    .registers 2

    .line 244
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    return-object v0
.end method
