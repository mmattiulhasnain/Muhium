###### Class androidx.constraintlayout.motion.widget.TimeCycleSplineSet (androidx.constraintlayout.motion.widget.TimeCycleSplineSet)
.class public abstract Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
.super Ljava/lang/Object;
.source "TimeCycleSplineSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$Sort;,
        Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ProgressSet;,
        Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;,
        Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$TranslationZset;,
        Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$TranslationYset;,
        Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$TranslationXset;,
        Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ScaleYset;,
        Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ScaleXset;,
        Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$PathRotate;,
        Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$RotationYset;,
        Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$RotationXset;,
        Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$RotationSet;,
        Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$AlphaSet;,
        Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ElevationSet;
    }
.end annotation


# static fields
.field private static final CURVE_OFFSET:I = 0x2

.field private static final CURVE_PERIOD:I = 0x1

.field private static final CURVE_VALUE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SplineSet"

.field private static VAL_2PI:F


# instance fields
.field private count:I

.field last_cycle:F

.field last_time:J

.field private mCache:[F

.field protected mContinue:Z

.field protected mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

.field protected mTimePoints:[I

.field private mType:Ljava/lang/String;

.field protected mValues:[[F

.field protected mWaveShape:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    const v0, 0x40c90fdb

    sput v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->VAL_2PI:F

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mWaveShape:I

    .line 40
    const/16 v1, 0xa

    new-array v2, v1, [I

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mTimePoints:[I

    .line 41
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    const/4 v4, 0x3

    aput v4, v2, v3

    aput v1, v2, v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mValues:[[F

    .line 44
    new-array v1, v4, [F

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mCache:[F

    .line 49
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mContinue:Z

    .line 51
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->last_cycle:F

    return-void
.end method

.method static makeCustomSpline(Ljava/lang/String;Landroid/util/SparseArray;)Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;)",
            "Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;"
        }
    .end annotation

    .line 125
    .local p1, "attrList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/constraintlayout/widget/ConstraintAttribute;>;"
    new-instance v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;

    invoke-direct {v0, p0, p1}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;-><init>(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-object v0
.end method

.method static makeSpline(Ljava/lang/String;J)Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "currentTime"    # J

    .line 130
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_de

    :cond_7
    goto/16 :goto_8b

    :sswitch_9
    const-string v0, "alpha"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto/16 :goto_8c

    :sswitch_14
    const-string/jumbo v0, "transitionPathRotate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto/16 :goto_8c

    :sswitch_20
    const-string v0, "elevation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8c

    :sswitch_2a
    const-string v0, "rotation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_8c

    :sswitch_34
    const-string v0, "scaleY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    goto :goto_8c

    :sswitch_3e
    const-string v0, "scaleX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_8c

    :sswitch_48
    const-string v0, "progress"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xb

    goto :goto_8c

    :sswitch_53
    const-string/jumbo v0, "translationZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xa

    goto :goto_8c

    :sswitch_5f
    const-string/jumbo v0, "translationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    goto :goto_8c

    :sswitch_6b
    const-string/jumbo v0, "translationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    goto :goto_8c

    :sswitch_77
    const-string v0, "rotationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_8c

    :sswitch_81
    const-string v0, "rotationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_8c

    :goto_8b
    const/4 v0, -0x1

    :goto_8c
    packed-switch v0, :pswitch_data_110

    .line 168
    const/4 v0, 0x0

    return-object v0

    .line 165
    :pswitch_91
    new-instance v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ProgressSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ProgressSet;-><init>()V

    .line 166
    .local v0, "timeCycle":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
    goto :goto_d9

    .line 162
    .end local v0    # "timeCycle":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
    :pswitch_97
    new-instance v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$TranslationZset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$TranslationZset;-><init>()V

    .line 163
    .restart local v0    # "timeCycle":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
    goto :goto_d9

    .line 159
    .end local v0    # "timeCycle":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
    :pswitch_9d
    new-instance v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$TranslationYset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$TranslationYset;-><init>()V

    .line 160
    .restart local v0    # "timeCycle":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
    goto :goto_d9

    .line 156
    .end local v0    # "timeCycle":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
    :pswitch_a3
    new-instance v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$TranslationXset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$TranslationXset;-><init>()V

    .line 157
    .restart local v0    # "timeCycle":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
    goto :goto_d9

    .line 153
    .end local v0    # "timeCycle":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
    :pswitch_a9
    new-instance v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ScaleYset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ScaleYset;-><init>()V

    .line 154
    .restart local v0    # "timeCycle":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
    goto :goto_d9

    .line 150
    .end local v0    # "timeCycle":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
    :pswitch_af
    new-instance v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ScaleXset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ScaleXset;-><init>()V

    .line 151
    .restart local v0    # "timeCycle":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
    goto :goto_d9

    .line 147
    .end local v0    # "timeCycle":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
    :pswitch_b5
    new-instance v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$PathRotate;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$PathRotate;-><init>()V

    .line 148
    .restart local v0    # "timeCycle":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
    goto :goto_d9

    .line 144
    .end local v0    # "timeCycle":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
    :pswitch_bb
    new-instance v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$RotationYset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$RotationYset;-><init>()V

    .line 145
    .restart local v0    # "timeCycle":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
    goto :goto_d9

    .line 141
    .end local v0    # "timeCycle":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
    :pswitch_c1
    new-instance v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$RotationXset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$RotationXset;-><init>()V

    .line 142
    .restart local v0    # "timeCycle":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
    goto :goto_d9

    .line 138
    .end local v0    # "timeCycle":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
    :pswitch_c7
    new-instance v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$RotationSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$RotationSet;-><init>()V

    .line 139
    .restart local v0    # "timeCycle":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
    goto :goto_d9

    .line 135
    .end local v0    # "timeCycle":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
    :pswitch_cd
    new-instance v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ElevationSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ElevationSet;-><init>()V

    .line 136
    .restart local v0    # "timeCycle":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
    goto :goto_d9

    .line 132
    .end local v0    # "timeCycle":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
    :pswitch_d3
    new-instance v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$AlphaSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$AlphaSet;-><init>()V

    .line 133
    .restart local v0    # "timeCycle":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
    nop

    .line 170
    :goto_d9
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->setStartTime(J)V

    .line 171
    return-object v0

    nop

    :sswitch_data_de
    .sparse-switch
        -0x4a771f66 -> :sswitch_81
        -0x4a771f65 -> :sswitch_77
        -0x490b9c39 -> :sswitch_6b
        -0x490b9c38 -> :sswitch_5f
        -0x490b9c37 -> :sswitch_53
        -0x3bab3dd3 -> :sswitch_48
        -0x3621dfb2 -> :sswitch_3e
        -0x3621dfb1 -> :sswitch_34
        -0x266f082 -> :sswitch_2a
        -0x42d1a3 -> :sswitch_20
        0x2382115 -> :sswitch_14
        0x589b15e -> :sswitch_9
    .end sparse-switch

    :pswitch_data_110
    .packed-switch 0x0
        :pswitch_d3
        :pswitch_cd
        :pswitch_c7
        :pswitch_c1
        :pswitch_bb
        :pswitch_b5
        :pswitch_af
        :pswitch_a9
        :pswitch_a3
        :pswitch_9d
        :pswitch_97
        :pswitch_91
    .end packed-switch
.end method


# virtual methods
.method protected calcWave(F)F
    .registers 7
    .param p1, "period"    # F

    .line 99
    move v0, p1

    .line 100
    .local v0, "p":F
    iget v1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mWaveShape:I

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    packed-switch v1, :pswitch_data_48

    .line 103
    sget v1, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->VAL_2PI:F

    mul-float/2addr v1, v0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    return v1

    .line 115
    :pswitch_14
    const/high16 v1, 0x40800000    # 4.0f

    mul-float v4, v0, v1

    rem-float/2addr v4, v1

    sub-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v1, v3, v1

    .line 116
    .local v1, "x":F
    mul-float v2, v1, v1

    sub-float/2addr v3, v2

    return v3

    .line 113
    .end local v1    # "x":F
    :pswitch_24
    sget v1, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->VAL_2PI:F

    mul-float/2addr v1, v0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    return v1

    .line 111
    :pswitch_2e
    mul-float v1, v0, v2

    add-float/2addr v1, v3

    rem-float/2addr v1, v2

    sub-float/2addr v3, v1

    return v3

    .line 109
    :pswitch_34
    mul-float v1, v0, v2

    add-float/2addr v1, v3

    rem-float/2addr v1, v2

    sub-float/2addr v1, v3

    return v1

    .line 107
    :pswitch_3a
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float/2addr v3, v1

    return v3

    .line 105
    :pswitch_40
    sget v1, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->VAL_2PI:F

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    return v1

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_40
        :pswitch_3a
        :pswitch_34
        :pswitch_2e
        :pswitch_24
        :pswitch_14
    .end packed-switch
.end method

.method public get(FJLandroid/view/View;Landroidx/constraintlayout/motion/widget/KeyCache;)F
    .registers 25
    .param p1, "pos"    # F
    .param p2, "time"    # J
    .param p4, "view"    # Landroid/view/View;
    .param p5, "cache"    # Landroidx/constraintlayout/motion/widget/KeyCache;

    .line 70
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    move/from16 v6, p1

    float-to-double v7, v6

    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mCache:[F

    invoke-virtual {v5, v7, v8, v9}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[F)V

    .line 71
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mCache:[F

    const/4 v7, 0x1

    aget v5, v5, v7

    .line 72
    .local v5, "period":F
    const/4 v8, 0x0

    cmpl-float v9, v5, v8

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-nez v9, :cond_25

    .line 73
    iput-boolean v11, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mContinue:Z

    .line 74
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mCache:[F

    aget v7, v7, v10

    return v7

    .line 76
    :cond_25
    iget v9, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->last_cycle:F

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-eqz v9, :cond_3f

    .line 77
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mType:Ljava/lang/String;

    invoke-virtual {v4, v3, v9, v11}, Landroidx/constraintlayout/motion/widget/KeyCache;->getFloatValue(Ljava/lang/Object;Ljava/lang/String;I)F

    move-result v9

    iput v9, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->last_cycle:F

    .line 78
    iget v9, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->last_cycle:F

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-eqz v9, :cond_3f

    .line 79
    iput v8, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->last_cycle:F

    .line 82
    :cond_3f
    iget-wide v12, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->last_time:J

    sub-long v12, v1, v12

    .line 83
    .local v12, "delta_time":J
    iget v9, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->last_cycle:F

    float-to-double v14, v9

    move/from16 v16, v8

    long-to-double v7, v12

    const-wide v17, 0x3e112e0be826d695L    # 1.0E-9

    mul-double v7, v7, v17

    move/from16 v17, v10

    float-to-double v9, v5

    mul-double/2addr v7, v9

    add-double/2addr v14, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    rem-double/2addr v14, v7

    double-to-float v7, v14

    iput v7, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->last_cycle:F

    .line 84
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mType:Ljava/lang/String;

    iget v8, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->last_cycle:F

    invoke-virtual {v4, v3, v7, v11, v8}, Landroidx/constraintlayout/motion/widget/KeyCache;->setFloatValue(Ljava/lang/Object;Ljava/lang/String;IF)V

    .line 85
    iput-wide v1, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->last_time:J

    .line 86
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mCache:[F

    aget v7, v7, v11

    .line 87
    .local v7, "v":F
    iget v8, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->last_cycle:F

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->calcWave(F)F

    move-result v8

    .line 88
    .local v8, "wave":F
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mCache:[F

    aget v9, v9, v17

    .line 89
    .local v9, "offset":F
    mul-float v10, v7, v8

    add-float/2addr v10, v9

    .line 90
    .local v10, "value":F
    cmpl-float v14, v7, v16

    if-nez v14, :cond_7d

    cmpl-float v14, v5, v16

    if-eqz v14, :cond_7e

    :cond_7d
    const/4 v11, 0x1

    :cond_7e
    iput-boolean v11, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mContinue:Z

    .line 91
    return v10
.end method

.method public getCurveFit()Landroidx/constraintlayout/motion/utils/CurveFit;
    .registers 2

    .line 121
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    return-object v0
.end method

.method public setPoint(IFFIF)V
    .registers 9
    .param p1, "position"    # I
    .param p2, "value"    # F
    .param p3, "period"    # F
    .param p4, "shape"    # I
    .param p5, "offset"    # F

    .line 179
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mTimePoints:[I

    iget v1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->count:I

    aput p1, v0, v1

    .line 180
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mValues:[[F

    iget v1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->count:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 181
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mValues:[[F

    iget v1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->count:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    .line 182
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mValues:[[F

    iget v2, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->count:I

    aget-object v0, v0, v2

    const/4 v2, 0x2

    aput p5, v0, v2

    .line 183
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mWaveShape:I

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mWaveShape:I

    .line 184
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->count:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->count:I

    .line 185
    return-void
.end method

.method public abstract setProperty(Landroid/view/View;FJLandroidx/constraintlayout/motion/widget/KeyCache;)Z
.end method

.method protected setStartTime(J)V
    .registers 3
    .param p1, "currentTime"    # J

    .line 175
    iput-wide p1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->last_time:J

    .line 176
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2
    .param p1, "type"    # Ljava/lang/String;

    .line 64
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mType:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setup(I)V
    .registers 14
    .param p1, "curveType"    # I

    .line 188
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->count:I

    if-nez v0, :cond_1f

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error no points added to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplineSet"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return-void

    .line 192
    :cond_1f
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mTimePoints:[I

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mValues:[[F

    iget v2, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->count:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$Sort;->doubleQuickSort([I[[FII)V

    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, "unique":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_2d
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mTimePoints:[I

    array-length v2, v2

    if-ge v1, v2, :cond_43

    .line 195
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mTimePoints:[I

    aget v2, v2, v1

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mTimePoints:[I

    add-int/lit8 v6, v1, -0x1

    aget v5, v5, v6

    if-eq v2, v5, :cond_40

    .line 196
    add-int/lit8 v0, v0, 0x1

    .line 194
    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 199
    .end local v1    # "i":I
    :cond_43
    if-nez v0, :cond_46

    .line 200
    const/4 v0, 0x1

    .line 202
    :cond_46
    new-array v1, v0, [D

    .line 203
    .local v1, "time":[D
    const/4 v2, 0x2

    new-array v5, v2, [I

    const/4 v6, 0x3

    aput v6, v5, v3

    aput v0, v5, v4

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    .line 204
    .local v5, "values":[[D
    const/4 v6, 0x0

    .line 206
    .local v6, "k":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_5a
    iget v8, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->count:I

    if-ge v7, v8, :cond_a0

    .line 207
    if-lez v7, :cond_6d

    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mTimePoints:[I

    aget v8, v8, v7

    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mTimePoints:[I

    add-int/lit8 v10, v7, -0x1

    aget v9, v9, v10

    if-ne v8, v9, :cond_6d

    .line 208
    goto :goto_9d

    .line 210
    :cond_6d
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mTimePoints:[I

    aget v8, v8, v7

    int-to-double v8, v8

    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v8, v10

    aput-wide v8, v1, v6

    .line 211
    aget-object v8, v5, v6

    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mValues:[[F

    aget-object v9, v9, v7

    aget v9, v9, v4

    float-to-double v9, v9

    aput-wide v9, v8, v4

    .line 212
    aget-object v8, v5, v6

    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mValues:[[F

    aget-object v9, v9, v7

    aget v9, v9, v3

    float-to-double v9, v9

    aput-wide v9, v8, v3

    .line 213
    aget-object v8, v5, v6

    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mValues:[[F

    aget-object v9, v9, v7

    aget v9, v9, v2

    float-to-double v9, v9

    aput-wide v9, v8, v2

    .line 214
    add-int/lit8 v6, v6, 0x1

    .line 206
    :goto_9d
    add-int/lit8 v7, v7, 0x1

    goto :goto_5a

    .line 216
    .end local v7    # "i":I
    :cond_a0
    invoke-static {p1, v1, v5}, Landroidx/constraintlayout/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/motion/utils/CurveFit;

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    .line 217
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 55
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mType:Ljava/lang/String;

    .line 56
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "##.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 57
    .local v1, "df":Ljava/text/DecimalFormat;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    iget v3, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->count:I

    if-ge v2, v3, :cond_44

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mTimePoints:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mValues:[[F

    aget-object v4, v4, v2

    invoke-virtual {v1, v4}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 60
    .end local v2    # "i":I
    :cond_44
    return-object v0
.end method

###### Class androidx.constraintlayout.motion.widget.TimeCycleSplineSet.AlphaSet (androidx.constraintlayout.motion.widget.TimeCycleSplineSet$AlphaSet)
.class Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$AlphaSet;
.super Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
.source "TimeCycleSplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AlphaSet"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 229
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;FJLandroidx/constraintlayout/motion/widget/KeyCache;)Z
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F
    .param p3, "time"    # J
    .param p5, "cache"    # Landroidx/constraintlayout/motion/widget/KeyCache;

    .line 232
    move-object v0, p0

    move-object v4, p1

    move v1, p2

    move-wide v2, p3

    move-object v5, p5

    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "t":F
    .end local p3    # "time":J
    .end local p5    # "cache":Landroidx/constraintlayout/motion/widget/KeyCache;
    .local v1, "t":F
    .local v2, "time":J
    .local v4, "view":Landroid/view/View;
    .local v5, "cache":Landroidx/constraintlayout/motion/widget/KeyCache;
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$AlphaSet;->get(FJLandroid/view/View;Landroidx/constraintlayout/motion/widget/KeyCache;)F

    move-result p1

    invoke-virtual {v4, p1}, Landroid/view/View;->setAlpha(F)V

    .line 233
    iget-boolean p1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$AlphaSet;->mContinue:Z

    return p1
.end method

###### Class androidx.constraintlayout.motion.widget.TimeCycleSplineSet.CustomSet (androidx.constraintlayout.motion.widget.TimeCycleSplineSet$CustomSet)
.class Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;
.super Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
.source "TimeCycleSplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CustomSet"
.end annotation


# instance fields
.field mAttributeName:Ljava/lang/String;

.field mCache:[F

.field mConstraintAttributeList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;"
        }
    .end annotation
.end field

.field mTempValues:[F

.field mWaveProperties:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/util/SparseArray;)V
    .registers 5
    .param p1, "attribute"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;)V"
        }
    .end annotation

    .line 322
    .local p2, "attrList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/constraintlayout/widget/ConstraintAttribute;>;"
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;-><init>()V

    .line 318
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mWaveProperties:Landroid/util/SparseArray;

    .line 323
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mAttributeName:Ljava/lang/String;

    .line 324
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    .line 325
    return-void
.end method


# virtual methods
.method public setPoint(IFFIF)V
    .registers 8
    .param p1, "position"    # I
    .param p2, "value"    # F
    .param p3, "period"    # F
    .param p4, "shape"    # I
    .param p5, "offset"    # F

    .line 350
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "don\'t call for custom attribute call setPoint(pos, ConstraintAttribute,...)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPoint(ILandroidx/constraintlayout/widget/ConstraintAttribute;FIF)V
    .registers 9
    .param p1, "position"    # I
    .param p2, "value"    # Landroidx/constraintlayout/widget/ConstraintAttribute;
    .param p3, "period"    # F
    .param p4, "shape"    # I
    .param p5, "offset"    # F

    .line 354
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 355
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mWaveProperties:Landroid/util/SparseArray;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p3, v1, v2

    const/4 v2, 0x1

    aput p5, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 356
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mWaveShape:I

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mWaveShape:I

    .line 357
    return-void
.end method

.method public setProperty(Landroid/view/View;FJLandroidx/constraintlayout/motion/widget/KeyCache;)Z
    .registers 23
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F
    .param p3, "time"    # J
    .param p5, "cache"    # Landroidx/constraintlayout/motion/widget/KeyCache;

    .line 361
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    move/from16 v4, p2

    float-to-double v5, v4

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mTempValues:[F

    invoke-virtual {v3, v5, v6, v7}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[F)V

    .line 362
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mTempValues:[F

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mTempValues:[F

    array-length v5, v5

    add-int/lit8 v5, v5, -0x2

    aget v3, v3, v5

    .line 363
    .local v3, "period":F
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mTempValues:[F

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mTempValues:[F

    array-length v6, v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    aget v5, v5, v6

    .line 364
    .local v5, "offset":F
    iget-wide v8, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->last_time:J

    sub-long v8, v1, v8

    .line 365
    .local v8, "delta_time":J
    iget v6, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->last_cycle:F

    float-to-double v10, v6

    long-to-double v12, v8

    const-wide v14, 0x3e112e0be826d695L    # 1.0E-9

    mul-double/2addr v12, v14

    float-to-double v14, v3

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    rem-double/2addr v10, v12

    double-to-float v6, v10

    iput v6, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->last_cycle:F

    .line 366
    iput-wide v1, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->last_time:J

    .line 367
    iget v6, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->last_cycle:F

    invoke-virtual {v0, v6}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->calcWave(F)F

    move-result v6

    .line 368
    .local v6, "wave":F
    const/4 v10, 0x0

    iput-boolean v10, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mContinue:Z

    .line 369
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_43
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mCache:[F

    array-length v12, v12

    if-ge v11, v12, :cond_68

    .line 370
    iget-boolean v12, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mContinue:Z

    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mTempValues:[F

    aget v13, v13, v11

    float-to-double v13, v13

    const-wide/16 v15, 0x0

    cmpl-double v13, v13, v15

    if-eqz v13, :cond_57

    move v13, v7

    goto :goto_58

    :cond_57
    move v13, v10

    :goto_58
    or-int/2addr v12, v13

    iput-boolean v12, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mContinue:Z

    .line 371
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mCache:[F

    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mTempValues:[F

    aget v13, v13, v11

    mul-float/2addr v13, v6

    add-float/2addr v13, v5

    aput v13, v12, v11

    .line 369
    add-int/lit8 v11, v11, 0x1

    goto :goto_43

    .line 373
    .end local v11    # "i":I
    :cond_68
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintAttribute;

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mCache:[F

    move-object/from16 v12, p1

    invoke-virtual {v10, v12, v11}, Landroidx/constraintlayout/widget/ConstraintAttribute;->setInterpolatedValue(Landroid/view/View;[F)V

    .line 374
    const/4 v10, 0x0

    cmpl-float v10, v3, v10

    if-eqz v10, :cond_7e

    .line 375
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mContinue:Z

    .line 377
    :cond_7e
    iget-boolean v7, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mContinue:Z

    return v7
.end method

.method public setup(I)V
    .registers 16
    .param p1, "curveType"    # I

    .line 328
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 329
    .local v0, "size":I
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintAttribute;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintAttribute;->noOfInterpValues()I

    move-result v1

    .line 330
    .local v1, "dimensionality":I
    new-array v3, v0, [D

    .line 331
    .local v3, "time":[D
    add-int/lit8 v4, v1, 0x2

    new-array v4, v4, [F

    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mTempValues:[F

    .line 332
    new-array v4, v1, [F

    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mCache:[F

    .line 333
    add-int/lit8 v4, v1, 0x2

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x1

    aput v4, v5, v6

    aput v0, v5, v2

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    .line 334
    .local v4, "values":[[D
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_32
    if-ge v5, v0, :cond_7d

    .line 335
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 336
    .local v7, "key":I
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 337
    .local v8, "ca":Landroidx/constraintlayout/widget/ConstraintAttribute;
    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mWaveProperties:Landroid/util/SparseArray;

    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [F

    .line 338
    .local v9, "waveProp":[F
    int-to-double v10, v7

    const-wide v12, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v10, v12

    aput-wide v10, v3, v5

    .line 339
    iget-object v10, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mTempValues:[F

    invoke-virtual {v8, v10}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValuesToInterpolate([F)V

    .line 340
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_59
    iget-object v11, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mTempValues:[F

    array-length v11, v11

    if-ge v10, v11, :cond_6a

    .line 341
    aget-object v11, v4, v5

    iget-object v12, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mTempValues:[F

    aget v12, v12, v10

    float-to-double v12, v12

    aput-wide v12, v11, v10

    .line 340
    add-int/lit8 v10, v10, 0x1

    goto :goto_59

    .line 343
    .end local v10    # "k":I
    :cond_6a
    aget-object v10, v4, v5

    aget v11, v9, v2

    float-to-double v11, v11

    aput-wide v11, v10, v1

    .line 344
    aget-object v10, v4, v5

    add-int/lit8 v11, v1, 0x1

    aget v12, v9, v6

    float-to-double v12, v12

    aput-wide v12, v10, v11

    .line 334
    .end local v7    # "key":I
    .end local v8    # "ca":Landroidx/constraintlayout/widget/ConstraintAttribute;
    .end local v9    # "waveProp":[F
    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    .line 346
    .end local v5    # "i":I
    :cond_7d
    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/motion/utils/CurveFit;

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    .line 347
    return-void
.end method

###### Class androidx.constraintlayout.motion.widget.TimeCycleSplineSet.ElevationSet (androidx.constraintlayout.motion.widget.TimeCycleSplineSet$ElevationSet)
.class Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ElevationSet;
.super Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
.source "TimeCycleSplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ElevationSet"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 219
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;FJLandroidx/constraintlayout/motion/widget/KeyCache;)Z
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F
    .param p3, "time"    # J
    .param p5, "cache"    # Landroidx/constraintlayout/motion/widget/KeyCache;

    .line 222
    nop

    .line 223
    move-object v0, p0

    move-object v4, p1

    move v1, p2

    move-wide v2, p3

    move-object v5, p5

    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "t":F
    .end local p3    # "time":J
    .end local p5    # "cache":Landroidx/constraintlayout/motion/widget/KeyCache;
    .local v1, "t":F
    .local v2, "time":J
    .local v4, "view":Landroid/view/View;
    .local v5, "cache":Landroidx/constraintlayout/motion/widget/KeyCache;
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ElevationSet;->get(FJLandroid/view/View;Landroidx/constraintlayout/motion/widget/KeyCache;)F

    move-result p1

    invoke-virtual {v4, p1}, Landroid/view/View;->setElevation(F)V

    .line 225
    iget-boolean p1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ElevationSet;->mContinue:Z

    return p1
.end method

###### Class androidx.constraintlayout.motion.widget.TimeCycleSplineSet.PathRotate (androidx.constraintlayout.motion.widget.TimeCycleSplineSet$PathRotate)
.class Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$PathRotate;
.super Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
.source "TimeCycleSplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PathRotate"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 261
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;-><init>()V

    return-void
.end method


# virtual methods
.method public setPathRotate(Landroid/view/View;Landroidx/constraintlayout/motion/widget/KeyCache;FJDD)Z
    .registers 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cache"    # Landroidx/constraintlayout/motion/widget/KeyCache;
    .param p3, "t"    # F
    .param p4, "time"    # J
    .param p6, "dx"    # D
    .param p8, "dy"    # D

    .line 268
    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move v1, p3

    move-wide v2, p4

    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "cache":Landroidx/constraintlayout/motion/widget/KeyCache;
    .end local p3    # "t":F
    .end local p4    # "time":J
    .local v1, "t":F
    .local v2, "time":J
    .local v4, "view":Landroid/view/View;
    .local v5, "cache":Landroidx/constraintlayout/motion/widget/KeyCache;
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$PathRotate;->get(FJLandroid/view/View;Landroidx/constraintlayout/motion/widget/KeyCache;)F

    move-result p1

    invoke-static {p8, p9, p6, p7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p2

    double-to-float p2, p2

    add-float/2addr p1, p2

    invoke-virtual {v4, p1}, Landroid/view/View;->setRotation(F)V

    .line 269
    iget-boolean p1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$PathRotate;->mContinue:Z

    return p1
.end method

.method public setProperty(Landroid/view/View;FJLandroidx/constraintlayout/motion/widget/KeyCache;)Z
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F
    .param p3, "time"    # J
    .param p5, "cache"    # Landroidx/constraintlayout/motion/widget/KeyCache;

    .line 264
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$PathRotate;->mContinue:Z

    return v0
.end method

###### Class androidx.constraintlayout.motion.widget.TimeCycleSplineSet.ProgressSet (androidx.constraintlayout.motion.widget.TimeCycleSplineSet$ProgressSet)
.class Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ProgressSet;
.super Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
.source "TimeCycleSplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProgressSet"
.end annotation


# instance fields
.field mNoMethod:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .line 381
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;-><init>()V

    .line 382
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ProgressSet;->mNoMethod:Z

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;FJLandroidx/constraintlayout/motion/widget/KeyCache;)Z
    .registers 18
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F
    .param p3, "time"    # J
    .param p5, "cache"    # Landroidx/constraintlayout/motion/widget/KeyCache;

    .line 386
    const-string/jumbo v1, "unable to setProgress"

    const-string v2, "SplineSet"

    instance-of v0, p1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-eqz v0, :cond_1a

    .line 387
    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-object v1, p0

    move-object v5, p1

    move v2, p2

    move-wide v3, p3

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ProgressSet;->get(FJLandroid/view/View;Landroidx/constraintlayout/motion/widget/KeyCache;)F

    move-result v7

    invoke-virtual {v0, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    goto :goto_5b

    .line 389
    :cond_1a
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ProgressSet;->mNoMethod:Z

    const/4 v9, 0x0

    if-eqz v0, :cond_20

    .line 390
    return v9

    .line 392
    :cond_20
    const/4 v4, 0x0

    .line 394
    .local v4, "method":Ljava/lang/reflect/Method;
    const/4 v10, 0x1

    :try_start_22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v5, "setProgress"

    new-array v6, v10, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v9

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_32
    .catch Ljava/lang/NoSuchMethodException; {:try_start_22 .. :try_end_32} :catch_35

    move-object v4, v0

    .line 397
    move-object v11, v4

    goto :goto_39

    .line 395
    :catch_35
    move-exception v0

    .line 396
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    iput-boolean v10, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ProgressSet;->mNoMethod:Z

    move-object v11, v4

    .line 398
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .local v11, "method":Ljava/lang/reflect/Method;
    :goto_39
    if-eqz v11, :cond_5b

    .line 400
    move-object v3, p0

    move-object v7, p1

    move v4, p2

    move-wide v5, p3

    move-object/from16 v8, p5

    :try_start_41
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ProgressSet;->get(FJLandroid/view/View;Landroidx/constraintlayout/motion/widget/KeyCache;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v0, v4, v9

    invoke-virtual {v11, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_50
    .catch Ljava/lang/IllegalAccessException; {:try_start_41 .. :try_end_50} :catch_56
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_41 .. :try_end_50} :catch_51

    goto :goto_5a

    .line 403
    :catch_51
    move-exception v0

    .line 404
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5b

    .line 401
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_56
    move-exception v0

    .line 402
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 405
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :goto_5a
    nop

    .line 408
    .end local v11    # "method":Ljava/lang/reflect/Method;
    :cond_5b
    :goto_5b
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ProgressSet;->mContinue:Z

    return v0
.end method

###### Class androidx.constraintlayout.motion.widget.TimeCycleSplineSet.RotationSet (androidx.constraintlayout.motion.widget.TimeCycleSplineSet$RotationSet)
.class Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$RotationSet;
.super Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
.source "TimeCycleSplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RotationSet"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 237
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;FJLandroidx/constraintlayout/motion/widget/KeyCache;)Z
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F
    .param p3, "time"    # J
    .param p5, "cache"    # Landroidx/constraintlayout/motion/widget/KeyCache;

    .line 240
    move-object v0, p0

    move-object v4, p1

    move v1, p2

    move-wide v2, p3

    move-object v5, p5

    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "t":F
    .end local p3    # "time":J
    .end local p5    # "cache":Landroidx/constraintlayout/motion/widget/KeyCache;
    .local v1, "t":F
    .local v2, "time":J
    .local v4, "view":Landroid/view/View;
    .local v5, "cache":Landroidx/constraintlayout/motion/widget/KeyCache;
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$RotationSet;->get(FJLandroid/view/View;Landroidx/constraintlayout/motion/widget/KeyCache;)F

    move-result p1

    invoke-virtual {v4, p1}, Landroid/view/View;->setRotation(F)V

    .line 241
    iget-boolean p1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$RotationSet;->mContinue:Z

    return p1
.end method

###### Class androidx.constraintlayout.motion.widget.TimeCycleSplineSet.RotationXset (androidx.constraintlayout.motion.widget.TimeCycleSplineSet$RotationXset)
.class Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$RotationXset;
.super Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
.source "TimeCycleSplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RotationXset"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 245
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;FJLandroidx/constraintlayout/motion/widget/KeyCache;)Z
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F
    .param p3, "time"    # J
    .param p5, "cache"    # Landroidx/constraintlayout/motion/widget/KeyCache;

    .line 248
    move-object v0, p0

    move-object v4, p1

    move v1, p2

    move-wide v2, p3

    move-object v5, p5

    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "t":F
    .end local p3    # "time":J
    .end local p5    # "cache":Landroidx/constraintlayout/motion/widget/KeyCache;
    .local v1, "t":F
    .local v2, "time":J
    .local v4, "view":Landroid/view/View;
    .local v5, "cache":Landroidx/constraintlayout/motion/widget/KeyCache;
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$RotationXset;->get(FJLandroid/view/View;Landroidx/constraintlayout/motion/widget/KeyCache;)F

    move-result p1

    invoke-virtual {v4, p1}, Landroid/view/View;->setRotationX(F)V

    .line 249
    iget-boolean p1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$RotationXset;->mContinue:Z

    return p1
.end method

###### Class androidx.constraintlayout.motion.widget.TimeCycleSplineSet.RotationYset (androidx.constraintlayout.motion.widget.TimeCycleSplineSet$RotationYset)
.class Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$RotationYset;
.super Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
.source "TimeCycleSplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RotationYset"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 253
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;FJLandroidx/constraintlayout/motion/widget/KeyCache;)Z
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F
    .param p3, "time"    # J
    .param p5, "cache"    # Landroidx/constraintlayout/motion/widget/KeyCache;

    .line 256
    move-object v0, p0

    move-object v4, p1

    move v1, p2

    move-wide v2, p3

    move-object v5, p5

    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "t":F
    .end local p3    # "time":J
    .end local p5    # "cache":Landroidx/constraintlayout/motion/widget/KeyCache;
    .local v1, "t":F
    .local v2, "time":J
    .local v4, "view":Landroid/view/View;
    .local v5, "cache":Landroidx/constraintlayout/motion/widget/KeyCache;
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$RotationYset;->get(FJLandroid/view/View;Landroidx/constraintlayout/motion/widget/KeyCache;)F

    move-result p1

    invoke-virtual {v4, p1}, Landroid/view/View;->setRotationY(F)V

    .line 257
    iget-boolean p1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$RotationYset;->mContinue:Z

    return p1
.end method

###### Class androidx.constraintlayout.motion.widget.TimeCycleSplineSet.ScaleXset (androidx.constraintlayout.motion.widget.TimeCycleSplineSet$ScaleXset)
.class Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ScaleXset;
.super Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
.source "TimeCycleSplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScaleXset"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 273
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;FJLandroidx/constraintlayout/motion/widget/KeyCache;)Z
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F
    .param p3, "time"    # J
    .param p5, "cache"    # Landroidx/constraintlayout/motion/widget/KeyCache;

    .line 276
    move-object v0, p0

    move-object v4, p1

    move v1, p2

    move-wide v2, p3

    move-object v5, p5

    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "t":F
    .end local p3    # "time":J
    .end local p5    # "cache":Landroidx/constraintlayout/motion/widget/KeyCache;
    .local v1, "t":F
    .local v2, "time":J
    .local v4, "view":Landroid/view/View;
    .local v5, "cache":Landroidx/constraintlayout/motion/widget/KeyCache;
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ScaleXset;->get(FJLandroid/view/View;Landroidx/constraintlayout/motion/widget/KeyCache;)F

    move-result p1

    invoke-virtual {v4, p1}, Landroid/view/View;->setScaleX(F)V

    .line 277
    iget-boolean p1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ScaleXset;->mContinue:Z

    return p1
.end method

###### Class androidx.constraintlayout.motion.widget.TimeCycleSplineSet.ScaleYset (androidx.constraintlayout.motion.widget.TimeCycleSplineSet$ScaleYset)
.class Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ScaleYset;
.super Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
.source "TimeCycleSplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScaleYset"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 281
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;FJLandroidx/constraintlayout/motion/widget/KeyCache;)Z
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F
    .param p3, "time"    # J
    .param p5, "cache"    # Landroidx/constraintlayout/motion/widget/KeyCache;

    .line 284
    move-object v0, p0

    move-object v4, p1

    move v1, p2

    move-wide v2, p3

    move-object v5, p5

    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "t":F
    .end local p3    # "time":J
    .end local p5    # "cache":Landroidx/constraintlayout/motion/widget/KeyCache;
    .local v1, "t":F
    .local v2, "time":J
    .local v4, "view":Landroid/view/View;
    .local v5, "cache":Landroidx/constraintlayout/motion/widget/KeyCache;
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ScaleYset;->get(FJLandroid/view/View;Landroidx/constraintlayout/motion/widget/KeyCache;)F

    move-result p1

    invoke-virtual {v4, p1}, Landroid/view/View;->setScaleY(F)V

    .line 285
    iget-boolean p1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ScaleYset;->mContinue:Z

    return p1
.end method

###### Class androidx.constraintlayout.motion.widget.TimeCycleSplineSet.Sort (androidx.constraintlayout.motion.widget.TimeCycleSplineSet$Sort)
.class Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$Sort;
.super Ljava/lang/Object;
.source "TimeCycleSplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Sort"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static doubleQuickSort([I[[FII)V
    .registers 9
    .param p0, "key"    # [I
    .param p1, "value"    # [[F
    .param p2, "low"    # I
    .param p3, "hi"    # I

    .line 414
    array-length v0, p0

    add-int/lit8 v0, v0, 0xa

    new-array v0, v0, [I

    .line 415
    .local v0, "stack":[I
    const/4 v1, 0x0

    .line 416
    .local v1, "count":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .local v2, "count":I
    aput p3, v0, v1

    .line 417
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    aput p2, v0, v2

    .line 418
    :cond_e
    :goto_e
    if-lez v1, :cond_33

    .line 419
    add-int/lit8 v1, v1, -0x1

    aget p2, v0, v1

    .line 420
    add-int/lit8 v1, v1, -0x1

    aget p3, v0, v1

    .line 421
    if-ge p2, p3, :cond_e

    .line 422
    invoke-static {p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$Sort;->partition([I[[FII)I

    move-result v2

    .line 423
    .local v2, "p":I
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "count":I
    .local v3, "count":I
    add-int/lit8 v4, v2, -0x1

    aput v4, v0, v1

    .line 424
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "count":I
    .restart local v1    # "count":I
    aput p2, v0, v3

    .line 425
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "count":I
    .restart local v3    # "count":I
    aput p3, v0, v1

    .line 426
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "count":I
    .restart local v1    # "count":I
    add-int/lit8 v4, v2, 0x1

    aput v4, v0, v3

    .line 427
    .end local v2    # "p":I
    goto :goto_e

    .line 429
    :cond_33
    return-void
.end method

.method private static partition([I[[FII)I
    .registers 8
    .param p0, "array"    # [I
    .param p1, "value"    # [[F
    .param p2, "low"    # I
    .param p3, "hi"    # I

    .line 432
    aget v0, p0, p3

    .line 433
    .local v0, "pivot":I
    move v1, p2

    .line 434
    .local v1, "i":I
    move v2, p2

    .local v2, "j":I
    :goto_4
    if-ge v2, p3, :cond_12

    .line 435
    aget v3, p0, v2

    if-gt v3, v0, :cond_f

    .line 436
    invoke-static {p0, p1, v1, v2}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$Sort;->swap([I[[FII)V

    .line 437
    add-int/lit8 v1, v1, 0x1

    .line 434
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 440
    .end local v2    # "j":I
    :cond_12
    invoke-static {p0, p1, v1, p3}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$Sort;->swap([I[[FII)V

    .line 441
    return v1
.end method

.method private static swap([I[[FII)V
    .registers 7
    .param p0, "array"    # [I
    .param p1, "value"    # [[F
    .param p2, "a"    # I
    .param p3, "b"    # I

    .line 445
    aget v0, p0, p2

    .line 446
    .local v0, "tmp":I
    aget v1, p0, p3

    aput v1, p0, p2

    .line 447
    aput v0, p0, p3

    .line 448
    aget-object v1, p1, p2

    .line 449
    .local v1, "tmpv":[F
    aget-object v2, p1, p3

    aput-object v2, p1, p2

    .line 450
    aput-object v1, p1, p3

    .line 451
    return-void
.end method

###### Class androidx.constraintlayout.motion.widget.TimeCycleSplineSet.TranslationXset (androidx.constraintlayout.motion.widget.TimeCycleSplineSet$TranslationXset)
.class Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$TranslationXset;
.super Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
.source "TimeCycleSplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TranslationXset"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 289
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;FJLandroidx/constraintlayout/motion/widget/KeyCache;)Z
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F
    .param p3, "time"    # J
    .param p5, "cache"    # Landroidx/constraintlayout/motion/widget/KeyCache;

    .line 292
    move-object v0, p0

    move-object v4, p1

    move v1, p2

    move-wide v2, p3

    move-object v5, p5

    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "t":F
    .end local p3    # "time":J
    .end local p5    # "cache":Landroidx/constraintlayout/motion/widget/KeyCache;
    .local v1, "t":F
    .local v2, "time":J
    .local v4, "view":Landroid/view/View;
    .local v5, "cache":Landroidx/constraintlayout/motion/widget/KeyCache;
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$TranslationXset;->get(FJLandroid/view/View;Landroidx/constraintlayout/motion/widget/KeyCache;)F

    move-result p1

    invoke-virtual {v4, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 293
    iget-boolean p1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$TranslationXset;->mContinue:Z

    return p1
.end method

###### Class androidx.constraintlayout.motion.widget.TimeCycleSplineSet.TranslationYset (androidx.constraintlayout.motion.widget.TimeCycleSplineSet$TranslationYset)
.class Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$TranslationYset;
.super Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
.source "TimeCycleSplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TranslationYset"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 297
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;FJLandroidx/constraintlayout/motion/widget/KeyCache;)Z
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F
    .param p3, "time"    # J
    .param p5, "cache"    # Landroidx/constraintlayout/motion/widget/KeyCache;

    .line 300
    move-object v0, p0

    move-object v4, p1

    move v1, p2

    move-wide v2, p3

    move-object v5, p5

    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "t":F
    .end local p3    # "time":J
    .end local p5    # "cache":Landroidx/constraintlayout/motion/widget/KeyCache;
    .local v1, "t":F
    .local v2, "time":J
    .local v4, "view":Landroid/view/View;
    .local v5, "cache":Landroidx/constraintlayout/motion/widget/KeyCache;
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$TranslationYset;->get(FJLandroid/view/View;Landroidx/constraintlayout/motion/widget/KeyCache;)F

    move-result p1

    invoke-virtual {v4, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 301
    iget-boolean p1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$TranslationYset;->mContinue:Z

    return p1
.end method

###### Class androidx.constraintlayout.motion.widget.TimeCycleSplineSet.TranslationZset (androidx.constraintlayout.motion.widget.TimeCycleSplineSet$TranslationZset)
.class Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$TranslationZset;
.super Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
.source "TimeCycleSplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TranslationZset"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 305
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;FJLandroidx/constraintlayout/motion/widget/KeyCache;)Z
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F
    .param p3, "time"    # J
    .param p5, "cache"    # Landroidx/constraintlayout/motion/widget/KeyCache;

    .line 308
    nop

    .line 309
    move-object v0, p0

    move-object v4, p1

    move v1, p2

    move-wide v2, p3

    move-object v5, p5

    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "t":F
    .end local p3    # "time":J
    .end local p5    # "cache":Landroidx/constraintlayout/motion/widget/KeyCache;
    .local v1, "t":F
    .local v2, "time":J
    .local v4, "view":Landroid/view/View;
    .local v5, "cache":Landroidx/constraintlayout/motion/widget/KeyCache;
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$TranslationZset;->get(FJLandroid/view/View;Landroidx/constraintlayout/motion/widget/KeyCache;)F

    move-result p1

    invoke-virtual {v4, p1}, Landroid/view/View;->setTranslationZ(F)V

    .line 311
    iget-boolean p1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$TranslationZset;->mContinue:Z

    return p1
.end method
