###### Class androidx.constraintlayout.motion.widget.SplineSet (androidx.constraintlayout.motion.widget.SplineSet)
.class public abstract Landroidx/constraintlayout/motion/widget/SplineSet;
.super Ljava/lang/Object;
.source "SplineSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/SplineSet$Sort;,
        Landroidx/constraintlayout/motion/widget/SplineSet$ProgressSet;,
        Landroidx/constraintlayout/motion/widget/SplineSet$CustomSet;,
        Landroidx/constraintlayout/motion/widget/SplineSet$TranslationZset;,
        Landroidx/constraintlayout/motion/widget/SplineSet$TranslationYset;,
        Landroidx/constraintlayout/motion/widget/SplineSet$TranslationXset;,
        Landroidx/constraintlayout/motion/widget/SplineSet$ScaleYset;,
        Landroidx/constraintlayout/motion/widget/SplineSet$ScaleXset;,
        Landroidx/constraintlayout/motion/widget/SplineSet$PathRotate;,
        Landroidx/constraintlayout/motion/widget/SplineSet$PivotYset;,
        Landroidx/constraintlayout/motion/widget/SplineSet$PivotXset;,
        Landroidx/constraintlayout/motion/widget/SplineSet$RotationYset;,
        Landroidx/constraintlayout/motion/widget/SplineSet$RotationXset;,
        Landroidx/constraintlayout/motion/widget/SplineSet$RotationSet;,
        Landroidx/constraintlayout/motion/widget/SplineSet$AlphaSet;,
        Landroidx/constraintlayout/motion/widget/SplineSet$ElevationSet;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SplineSet"


# instance fields
.field private count:I

.field protected mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

.field protected mTimePoints:[I

.field private mType:Ljava/lang/String;

.field protected mValues:[F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/16 v0, 0xa

    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mTimePoints:[I

    .line 41
    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mValues:[F

    return-void
.end method

.method static makeCustomSpline(Ljava/lang/String;Landroid/util/SparseArray;)Landroidx/constraintlayout/motion/widget/SplineSet;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;)",
            "Landroidx/constraintlayout/motion/widget/SplineSet;"
        }
    .end annotation

    .line 75
    .local p1, "attrList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/constraintlayout/widget/ConstraintAttribute;>;"
    new-instance v0, Landroidx/constraintlayout/motion/widget/SplineSet$CustomSet;

    invoke-direct {v0, p0, p1}, Landroidx/constraintlayout/motion/widget/SplineSet$CustomSet;-><init>(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-object v0
.end method

.method static makeSpline(Ljava/lang/String;)Landroidx/constraintlayout/motion/widget/SplineSet;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_126

    :cond_7
    goto/16 :goto_c0

    :sswitch_9
    const-string/jumbo v0, "waveOffset"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xa

    goto/16 :goto_c1

    :sswitch_16
    const-string v0, "alpha"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto/16 :goto_c1

    :sswitch_21
    const-string/jumbo v0, "transitionPathRotate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    goto/16 :goto_c1

    :sswitch_2d
    const-string v0, "elevation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto/16 :goto_c1

    :sswitch_38
    const-string v0, "rotation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto/16 :goto_c1

    :sswitch_43
    const-string/jumbo v0, "transformPivotY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto/16 :goto_c1

    :sswitch_4f
    const-string/jumbo v0, "transformPivotX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto/16 :goto_c1

    :sswitch_5b
    const-string/jumbo v0, "waveVariesBy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xb

    goto :goto_c1

    :sswitch_67
    const-string v0, "scaleY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    goto :goto_c1

    :sswitch_72
    const-string v0, "scaleX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    goto :goto_c1

    :sswitch_7d
    const-string v0, "progress"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xf

    goto :goto_c1

    :sswitch_88
    const-string/jumbo v0, "translationZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xe

    goto :goto_c1

    :sswitch_94
    const-string/jumbo v0, "translationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xd

    goto :goto_c1

    :sswitch_a0
    const-string/jumbo v0, "translationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xc

    goto :goto_c1

    :sswitch_ac
    const-string v0, "rotationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_c1

    :sswitch_b6
    const-string v0, "rotationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_c1

    :goto_c0
    const/4 v0, -0x1

    :goto_c1
    packed-switch v0, :pswitch_data_168

    .line 114
    const/4 v0, 0x0

    return-object v0

    .line 111
    :pswitch_c6
    new-instance v0, Landroidx/constraintlayout/motion/widget/SplineSet$ProgressSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/SplineSet$ProgressSet;-><init>()V

    return-object v0

    .line 109
    :pswitch_cc
    new-instance v0, Landroidx/constraintlayout/motion/widget/SplineSet$TranslationZset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/SplineSet$TranslationZset;-><init>()V

    return-object v0

    .line 107
    :pswitch_d2
    new-instance v0, Landroidx/constraintlayout/motion/widget/SplineSet$TranslationYset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/SplineSet$TranslationYset;-><init>()V

    return-object v0

    .line 105
    :pswitch_d8
    new-instance v0, Landroidx/constraintlayout/motion/widget/SplineSet$TranslationXset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/SplineSet$TranslationXset;-><init>()V

    return-object v0

    .line 103
    :pswitch_de
    new-instance v0, Landroidx/constraintlayout/motion/widget/SplineSet$AlphaSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/SplineSet$AlphaSet;-><init>()V

    return-object v0

    .line 101
    :pswitch_e4
    new-instance v0, Landroidx/constraintlayout/motion/widget/SplineSet$AlphaSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/SplineSet$AlphaSet;-><init>()V

    return-object v0

    .line 99
    :pswitch_ea
    new-instance v0, Landroidx/constraintlayout/motion/widget/SplineSet$ScaleYset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/SplineSet$ScaleYset;-><init>()V

    return-object v0

    .line 97
    :pswitch_f0
    new-instance v0, Landroidx/constraintlayout/motion/widget/SplineSet$ScaleXset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/SplineSet$ScaleXset;-><init>()V

    return-object v0

    .line 95
    :pswitch_f6
    new-instance v0, Landroidx/constraintlayout/motion/widget/SplineSet$PathRotate;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/SplineSet$PathRotate;-><init>()V

    return-object v0

    .line 93
    :pswitch_fc
    new-instance v0, Landroidx/constraintlayout/motion/widget/SplineSet$PivotYset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/SplineSet$PivotYset;-><init>()V

    return-object v0

    .line 91
    :pswitch_102
    new-instance v0, Landroidx/constraintlayout/motion/widget/SplineSet$PivotXset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/SplineSet$PivotXset;-><init>()V

    return-object v0

    .line 89
    :pswitch_108
    new-instance v0, Landroidx/constraintlayout/motion/widget/SplineSet$RotationYset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/SplineSet$RotationYset;-><init>()V

    return-object v0

    .line 87
    :pswitch_10e
    new-instance v0, Landroidx/constraintlayout/motion/widget/SplineSet$RotationXset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/SplineSet$RotationXset;-><init>()V

    return-object v0

    .line 85
    :pswitch_114
    new-instance v0, Landroidx/constraintlayout/motion/widget/SplineSet$RotationSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/SplineSet$RotationSet;-><init>()V

    return-object v0

    .line 83
    :pswitch_11a
    new-instance v0, Landroidx/constraintlayout/motion/widget/SplineSet$ElevationSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/SplineSet$ElevationSet;-><init>()V

    return-object v0

    .line 81
    :pswitch_120
    new-instance v0, Landroidx/constraintlayout/motion/widget/SplineSet$AlphaSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/SplineSet$AlphaSet;-><init>()V

    return-object v0

    :sswitch_data_126
    .sparse-switch
        -0x4a771f66 -> :sswitch_b6
        -0x4a771f65 -> :sswitch_ac
        -0x490b9c39 -> :sswitch_a0
        -0x490b9c38 -> :sswitch_94
        -0x490b9c37 -> :sswitch_88
        -0x3bab3dd3 -> :sswitch_7d
        -0x3621dfb2 -> :sswitch_72
        -0x3621dfb1 -> :sswitch_67
        -0x2f893320 -> :sswitch_5b
        -0x2d5a2d1e -> :sswitch_4f
        -0x2d5a2d1d -> :sswitch_43
        -0x266f082 -> :sswitch_38
        -0x42d1a3 -> :sswitch_2d
        0x2382115 -> :sswitch_21
        0x589b15e -> :sswitch_16
        0x94e04ec -> :sswitch_9
    .end sparse-switch

    :pswitch_data_168
    .packed-switch 0x0
        :pswitch_120
        :pswitch_11a
        :pswitch_114
        :pswitch_10e
        :pswitch_108
        :pswitch_102
        :pswitch_fc
        :pswitch_f6
        :pswitch_f0
        :pswitch_ea
        :pswitch_e4
        :pswitch_de
        :pswitch_d8
        :pswitch_d2
        :pswitch_cc
        :pswitch_c6
    .end packed-switch
.end method


# virtual methods
.method public get(F)F
    .registers 6
    .param p1, "t"    # F

    .line 63
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    float-to-double v1, p1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(DI)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getCurveFit()Landroidx/constraintlayout/motion/utils/CurveFit;
    .registers 2

    .line 71
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    return-object v0
.end method

.method public getSlope(F)F
    .registers 6
    .param p1, "t"    # F

    .line 67
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    float-to-double v1, p1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroidx/constraintlayout/motion/utils/CurveFit;->getSlope(DI)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public setPoint(IF)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "value"    # F

    .line 120
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mTimePoints:[I

    array-length v0, v0

    iget v1, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->count:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_23

    .line 121
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mTimePoints:[I

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mTimePoints:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mTimePoints:[I

    .line 122
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mValues:[F

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mValues:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mValues:[F

    .line 124
    :cond_23
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mTimePoints:[I

    iget v1, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->count:I

    aput p1, v0, v1

    .line 125
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mValues:[F

    iget v1, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->count:I

    aput p2, v0, v1

    .line 126
    iget v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->count:I

    .line 127
    return-void
.end method

.method public abstract setProperty(Landroid/view/View;F)V
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2
    .param p1, "type"    # Ljava/lang/String;

    .line 57
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mType:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setup(I)V
    .registers 12
    .param p1, "curveType"    # I

    .line 130
    iget v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->count:I

    if-nez v0, :cond_5

    .line 131
    return-void

    .line 134
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mTimePoints:[I

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mValues:[F

    iget v2, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->count:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2}, Landroidx/constraintlayout/motion/widget/SplineSet$Sort;->doubleQuickSort([I[FII)V

    .line 136
    const/4 v0, 0x1

    .line 138
    .local v0, "unique":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_13
    iget v2, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->count:I

    if-ge v1, v2, :cond_28

    .line 139
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mTimePoints:[I

    add-int/lit8 v5, v1, -0x1

    aget v2, v2, v5

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mTimePoints:[I

    aget v5, v5, v1

    if-eq v2, v5, :cond_25

    .line 140
    add-int/lit8 v0, v0, 0x1

    .line 138
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 144
    .end local v1    # "i":I
    :cond_28
    new-array v1, v0, [D

    .line 145
    .local v1, "time":[D
    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v3, v2, v3

    aput v0, v2, v4

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 146
    .local v2, "values":[[D
    const/4 v3, 0x0

    .line 147
    .local v3, "k":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3b
    iget v6, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->count:I

    if-ge v5, v6, :cond_69

    .line 148
    if-lez v5, :cond_4e

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mTimePoints:[I

    aget v6, v6, v5

    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mTimePoints:[I

    add-int/lit8 v8, v5, -0x1

    aget v7, v7, v8

    if-ne v6, v7, :cond_4e

    .line 149
    goto :goto_66

    .line 152
    :cond_4e
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mTimePoints:[I

    aget v6, v6, v5

    int-to-double v6, v6

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v6, v8

    aput-wide v6, v1, v3

    .line 153
    aget-object v6, v2, v3

    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mValues:[F

    aget v7, v7, v5

    float-to-double v7, v7

    aput-wide v7, v6, v4

    .line 154
    add-int/lit8 v3, v3, 0x1

    .line 147
    :goto_66
    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    .line 156
    .end local v5    # "i":I
    :cond_69
    invoke-static {p1, v1, v2}, Landroidx/constraintlayout/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/motion/utils/CurveFit;

    move-result-object v4

    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    .line 157
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 47
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mType:Ljava/lang/String;

    .line 48
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "##.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 49
    .local v1, "df":Ljava/text/DecimalFormat;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    iget v3, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->count:I

    if-ge v2, v3, :cond_45

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mTimePoints:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mValues:[F

    aget v4, v4, v2

    float-to-double v4, v4

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 53
    .end local v2    # "i":I
    :cond_45
    return-object v0
.end method

###### Class androidx.constraintlayout.motion.widget.SplineSet.AlphaSet (androidx.constraintlayout.motion.widget.SplineSet$AlphaSet)
.class Landroidx/constraintlayout/motion/widget/SplineSet$AlphaSet;
.super Landroidx/constraintlayout/motion/widget/SplineSet;
.source "SplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/SplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AlphaSet"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 168
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/SplineSet;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;F)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F

    .line 171
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/SplineSet$AlphaSet;->get(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 172
    return-void
.end method

###### Class androidx.constraintlayout.motion.widget.SplineSet.CustomSet (androidx.constraintlayout.motion.widget.SplineSet$CustomSet)
.class Landroidx/constraintlayout/motion/widget/SplineSet$CustomSet;
.super Landroidx/constraintlayout/motion/widget/SplineSet;
.source "SplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/SplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CustomSet"
.end annotation


# instance fields
.field mAttributeName:Ljava/lang/String;

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

    .line 259
    .local p2, "attrList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/constraintlayout/widget/ConstraintAttribute;>;"
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/SplineSet;-><init>()V

    .line 260
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet$CustomSet;->mAttributeName:Ljava/lang/String;

    .line 261
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/SplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    .line 262
    return-void
.end method


# virtual methods
.method public setPoint(IF)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "value"    # F

    .line 287
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "don\'t call for custom attribute call setPoint(pos, ConstraintAttribute)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPoint(ILandroidx/constraintlayout/widget/ConstraintAttribute;)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "value"    # Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 291
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 292
    return-void
.end method

.method public setProperty(Landroid/view/View;F)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F

    .line 296
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet$CustomSet;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    float-to-double v1, p2

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/SplineSet$CustomSet;->mTempValues:[F

    invoke-virtual {v0, v1, v2, v3}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[F)V

    .line 297
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintAttribute;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/SplineSet$CustomSet;->mTempValues:[F

    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/widget/ConstraintAttribute;->setInterpolatedValue(Landroid/view/View;[F)V

    .line 298
    return-void
.end method

.method public setup(I)V
    .registers 13
    .param p1, "curveType"    # I

    .line 265
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 266
    .local v0, "size":I
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/SplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintAttribute;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintAttribute;->noOfInterpValues()I

    move-result v1

    .line 267
    .local v1, "dimensionality":I
    new-array v3, v0, [D

    .line 268
    .local v3, "time":[D
    new-array v4, v1, [F

    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/SplineSet$CustomSet;->mTempValues:[F

    .line 269
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x1

    aput v1, v4, v5

    aput v0, v4, v2

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 270
    .local v2, "values":[[D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2a
    if-ge v4, v0, :cond_5d

    .line 272
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/SplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 273
    .local v5, "key":I
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/SplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 275
    .local v6, "ca":Landroidx/constraintlayout/widget/ConstraintAttribute;
    int-to-double v7, v5

    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v7, v9

    aput-wide v7, v3, v4

    .line 276
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/SplineSet$CustomSet;->mTempValues:[F

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValuesToInterpolate([F)V

    .line 277
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_49
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/SplineSet$CustomSet;->mTempValues:[F

    array-length v8, v8

    if-ge v7, v8, :cond_5a

    .line 278
    aget-object v8, v2, v4

    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/SplineSet$CustomSet;->mTempValues:[F

    aget v9, v9, v7

    float-to-double v9, v9

    aput-wide v9, v8, v7

    .line 277
    add-int/lit8 v7, v7, 0x1

    goto :goto_49

    .line 270
    .end local v5    # "key":I
    .end local v6    # "ca":Landroidx/constraintlayout/widget/ConstraintAttribute;
    .end local v7    # "k":I
    :cond_5a
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 282
    .end local v4    # "i":I
    :cond_5d
    invoke-static {p1, v3, v2}, Landroidx/constraintlayout/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/motion/utils/CurveFit;

    move-result-object v4

    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/SplineSet$CustomSet;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    .line 283
    return-void
.end method

###### Class androidx.constraintlayout.motion.widget.SplineSet.ElevationSet (androidx.constraintlayout.motion.widget.SplineSet$ElevationSet)
.class Landroidx/constraintlayout/motion/widget/SplineSet$ElevationSet;
.super Landroidx/constraintlayout/motion/widget/SplineSet;
.source "SplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/SplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ElevationSet"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 159
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/SplineSet;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;F)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F

    .line 162
    nop

    .line 163
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/SplineSet$ElevationSet;->get(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setElevation(F)V

    .line 165
    return-void
.end method

###### Class androidx.constraintlayout.motion.widget.SplineSet.PathRotate (androidx.constraintlayout.motion.widget.SplineSet$PathRotate)
.class Landroidx/constraintlayout/motion/widget/SplineSet$PathRotate;
.super Landroidx/constraintlayout/motion/widget/SplineSet;
.source "SplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/SplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PathRotate"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 207
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/SplineSet;-><init>()V

    return-void
.end method


# virtual methods
.method public setPathRotate(Landroid/view/View;FDD)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F
    .param p3, "dx"    # D
    .param p5, "dy"    # D

    .line 213
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/SplineSet$PathRotate;->get(F)F

    move-result v0

    invoke-static {p5, p6, p3, p4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 214
    return-void
.end method

.method public setProperty(Landroid/view/View;F)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F

    .line 210
    return-void
.end method

###### Class androidx.constraintlayout.motion.widget.SplineSet.PivotXset (androidx.constraintlayout.motion.widget.SplineSet$PivotXset)
.class Landroidx/constraintlayout/motion/widget/SplineSet$PivotXset;
.super Landroidx/constraintlayout/motion/widget/SplineSet;
.source "SplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/SplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PivotXset"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 195
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/SplineSet;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;F)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F

    .line 198
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/SplineSet$PivotXset;->get(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 199
    return-void
.end method

###### Class androidx.constraintlayout.motion.widget.SplineSet.PivotYset (androidx.constraintlayout.motion.widget.SplineSet$PivotYset)
.class Landroidx/constraintlayout/motion/widget/SplineSet$PivotYset;
.super Landroidx/constraintlayout/motion/widget/SplineSet;
.source "SplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/SplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PivotYset"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 201
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/SplineSet;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;F)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F

    .line 204
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/SplineSet$PivotYset;->get(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 205
    return-void
.end method

###### Class androidx.constraintlayout.motion.widget.SplineSet.ProgressSet (androidx.constraintlayout.motion.widget.SplineSet$ProgressSet)
.class Landroidx/constraintlayout/motion/widget/SplineSet$ProgressSet;
.super Landroidx/constraintlayout/motion/widget/SplineSet;
.source "SplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/SplineSet;
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

    .line 301
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/SplineSet;-><init>()V

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet$ProgressSet;->mNoMethod:Z

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;F)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F

    .line 306
    const-string/jumbo v0, "unable to setProgress"

    const-string v1, "SplineSet"

    instance-of v2, p1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-eqz v2, :cond_14

    .line 307
    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/SplineSet$ProgressSet;->get(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    goto :goto_4d

    .line 309
    :cond_14
    iget-boolean v2, p0, Landroidx/constraintlayout/motion/widget/SplineSet$ProgressSet;->mNoMethod:Z

    if-eqz v2, :cond_19

    .line 310
    return-void

    .line 312
    :cond_19
    const/4 v2, 0x0

    .line 314
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_1c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "setProgress"

    new-array v7, v4, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_2c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1c .. :try_end_2c} :catch_2e

    move-object v2, v5

    .line 317
    goto :goto_31

    .line 315
    :catch_2e
    move-exception v5

    .line 316
    .local v5, "e":Ljava/lang/NoSuchMethodException;
    iput-boolean v4, p0, Landroidx/constraintlayout/motion/widget/SplineSet$ProgressSet;->mNoMethod:Z

    .line 318
    .end local v5    # "e":Ljava/lang/NoSuchMethodException;
    :goto_31
    if-eqz v2, :cond_4d

    .line 320
    :try_start_33
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/SplineSet$ProgressSet;->get(F)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v3

    invoke-virtual {v2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catch Ljava/lang/IllegalAccessException; {:try_start_33 .. :try_end_42} :catch_48
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_33 .. :try_end_42} :catch_43

    goto :goto_4c

    .line 323
    :catch_43
    move-exception v3

    .line 324
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4d

    .line 321
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_48
    move-exception v3

    .line 322
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 325
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :goto_4c
    nop

    .line 329
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_4d
    :goto_4d
    return-void
.end method

###### Class androidx.constraintlayout.motion.widget.SplineSet.RotationSet (androidx.constraintlayout.motion.widget.SplineSet$RotationSet)
.class Landroidx/constraintlayout/motion/widget/SplineSet$RotationSet;
.super Landroidx/constraintlayout/motion/widget/SplineSet;
.source "SplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/SplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RotationSet"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 175
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/SplineSet;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;F)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F

    .line 178
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/SplineSet$RotationSet;->get(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 179
    return-void
.end method

###### Class androidx.constraintlayout.motion.widget.SplineSet.RotationXset (androidx.constraintlayout.motion.widget.SplineSet$RotationXset)
.class Landroidx/constraintlayout/motion/widget/SplineSet$RotationXset;
.super Landroidx/constraintlayout/motion/widget/SplineSet;
.source "SplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/SplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RotationXset"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 182
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/SplineSet;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;F)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F

    .line 185
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/SplineSet$RotationXset;->get(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationX(F)V

    .line 186
    return-void
.end method

###### Class androidx.constraintlayout.motion.widget.SplineSet.RotationYset (androidx.constraintlayout.motion.widget.SplineSet$RotationYset)
.class Landroidx/constraintlayout/motion/widget/SplineSet$RotationYset;
.super Landroidx/constraintlayout/motion/widget/SplineSet;
.source "SplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/SplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RotationYset"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 189
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/SplineSet;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;F)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F

    .line 192
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/SplineSet$RotationYset;->get(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    .line 193
    return-void
.end method

###### Class androidx.constraintlayout.motion.widget.SplineSet.ScaleXset (androidx.constraintlayout.motion.widget.SplineSet$ScaleXset)
.class Landroidx/constraintlayout/motion/widget/SplineSet$ScaleXset;
.super Landroidx/constraintlayout/motion/widget/SplineSet;
.source "SplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/SplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScaleXset"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 217
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/SplineSet;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;F)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F

    .line 220
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/SplineSet$ScaleXset;->get(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 221
    return-void
.end method

###### Class androidx.constraintlayout.motion.widget.SplineSet.ScaleYset (androidx.constraintlayout.motion.widget.SplineSet$ScaleYset)
.class Landroidx/constraintlayout/motion/widget/SplineSet$ScaleYset;
.super Landroidx/constraintlayout/motion/widget/SplineSet;
.source "SplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/SplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScaleYset"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 224
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/SplineSet;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;F)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F

    .line 227
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/SplineSet$ScaleYset;->get(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 228
    return-void
.end method

###### Class androidx.constraintlayout.motion.widget.SplineSet.Sort (androidx.constraintlayout.motion.widget.SplineSet$Sort)
.class Landroidx/constraintlayout/motion/widget/SplineSet$Sort;
.super Ljava/lang/Object;
.source "SplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/SplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Sort"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static doubleQuickSort([I[FII)V
    .registers 9
    .param p0, "key"    # [I
    .param p1, "value"    # [F
    .param p2, "low"    # I
    .param p3, "hi"    # I

    .line 335
    array-length v0, p0

    add-int/lit8 v0, v0, 0xa

    new-array v0, v0, [I

    .line 336
    .local v0, "stack":[I
    const/4 v1, 0x0

    .line 337
    .local v1, "count":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .local v2, "count":I
    aput p3, v0, v1

    .line 338
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    aput p2, v0, v2

    .line 339
    :cond_e
    :goto_e
    if-lez v1, :cond_33

    .line 340
    add-int/lit8 v1, v1, -0x1

    aget p2, v0, v1

    .line 341
    add-int/lit8 v1, v1, -0x1

    aget p3, v0, v1

    .line 342
    if-ge p2, p3, :cond_e

    .line 343
    invoke-static {p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/SplineSet$Sort;->partition([I[FII)I

    move-result v2

    .line 344
    .local v2, "p":I
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "count":I
    .local v3, "count":I
    add-int/lit8 v4, v2, -0x1

    aput v4, v0, v1

    .line 345
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "count":I
    .restart local v1    # "count":I
    aput p2, v0, v3

    .line 346
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "count":I
    .restart local v3    # "count":I
    aput p3, v0, v1

    .line 347
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "count":I
    .restart local v1    # "count":I
    add-int/lit8 v4, v2, 0x1

    aput v4, v0, v3

    .line 348
    .end local v2    # "p":I
    goto :goto_e

    .line 350
    :cond_33
    return-void
.end method

.method private static partition([I[FII)I
    .registers 8
    .param p0, "array"    # [I
    .param p1, "value"    # [F
    .param p2, "low"    # I
    .param p3, "hi"    # I

    .line 353
    aget v0, p0, p3

    .line 354
    .local v0, "pivot":I
    move v1, p2

    .line 355
    .local v1, "i":I
    move v2, p2

    .local v2, "j":I
    :goto_4
    if-ge v2, p3, :cond_12

    .line 356
    aget v3, p0, v2

    if-gt v3, v0, :cond_f

    .line 357
    invoke-static {p0, p1, v1, v2}, Landroidx/constraintlayout/motion/widget/SplineSet$Sort;->swap([I[FII)V

    .line 358
    add-int/lit8 v1, v1, 0x1

    .line 355
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 361
    .end local v2    # "j":I
    :cond_12
    invoke-static {p0, p1, v1, p3}, Landroidx/constraintlayout/motion/widget/SplineSet$Sort;->swap([I[FII)V

    .line 362
    return v1
.end method

.method private static swap([I[FII)V
    .registers 7
    .param p0, "array"    # [I
    .param p1, "value"    # [F
    .param p2, "a"    # I
    .param p3, "b"    # I

    .line 366
    aget v0, p0, p2

    .line 367
    .local v0, "tmp":I
    aget v1, p0, p3

    aput v1, p0, p2

    .line 368
    aput v0, p0, p3

    .line 369
    aget v1, p1, p2

    .line 370
    .local v1, "tmpv":F
    aget v2, p1, p3

    aput v2, p1, p2

    .line 371
    aput v1, p1, p3

    .line 372
    return-void
.end method

###### Class androidx.constraintlayout.motion.widget.SplineSet.TranslationXset (androidx.constraintlayout.motion.widget.SplineSet$TranslationXset)
.class Landroidx/constraintlayout/motion/widget/SplineSet$TranslationXset;
.super Landroidx/constraintlayout/motion/widget/SplineSet;
.source "SplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/SplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TranslationXset"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 231
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/SplineSet;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;F)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F

    .line 234
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/SplineSet$TranslationXset;->get(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 235
    return-void
.end method

###### Class androidx.constraintlayout.motion.widget.SplineSet.TranslationYset (androidx.constraintlayout.motion.widget.SplineSet$TranslationYset)
.class Landroidx/constraintlayout/motion/widget/SplineSet$TranslationYset;
.super Landroidx/constraintlayout/motion/widget/SplineSet;
.source "SplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/SplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TranslationYset"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 238
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/SplineSet;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;F)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F

    .line 241
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/SplineSet$TranslationYset;->get(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 242
    return-void
.end method

###### Class androidx.constraintlayout.motion.widget.SplineSet.TranslationZset (androidx.constraintlayout.motion.widget.SplineSet$TranslationZset)
.class Landroidx/constraintlayout/motion/widget/SplineSet$TranslationZset;
.super Landroidx/constraintlayout/motion/widget/SplineSet;
.source "SplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/SplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TranslationZset"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 245
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/SplineSet;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;F)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F

    .line 248
    nop

    .line 249
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/SplineSet$TranslationZset;->get(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationZ(F)V

    .line 251
    return-void
.end method
