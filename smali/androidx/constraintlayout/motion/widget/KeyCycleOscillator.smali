###### Class androidx.constraintlayout.motion.widget.KeyCycleOscillator (androidx.constraintlayout.motion.widget.KeyCycleOscillator)
.class public abstract Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
.super Ljava/lang/Object;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$IntFloatFloatSort;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$IntDoubleSort;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ProgressSet;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CustomSet;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$TranslationZset;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$TranslationYset;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$TranslationXset;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ScaleYset;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ScaleXset;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$PathRotateSet;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$RotationYset;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$RotationXset;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$RotationSet;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$AlphaSet;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ElevationSet;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyCycleOscillator"


# instance fields
.field private mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

.field protected mCustom:Landroidx/constraintlayout/widget/ConstraintAttribute;

.field private mCycleOscillator:Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;

.field private mType:Ljava/lang/String;

.field public mVariesBy:I

.field mWavePoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;",
            ">;"
        }
    .end annotation
.end field

.field private mWaveShape:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mWaveShape:I

    .line 47
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mVariesBy:I

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    return-void
.end method

.method static makeSpline(Ljava/lang/String;)Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 97
    const-string v0, "CUSTOM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 98
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CustomSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CustomSet;-><init>()V

    return-object v0

    .line 100
    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_10e

    :cond_15
    goto/16 :goto_b3

    :sswitch_17
    const-string/jumbo v0, "waveOffset"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0x8

    goto/16 :goto_b4

    :sswitch_24
    const-string v0, "alpha"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    goto/16 :goto_b4

    :sswitch_2f
    const-string/jumbo v0, "transitionPathRotate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x5

    goto/16 :goto_b4

    :sswitch_3b
    const-string v0, "elevation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto/16 :goto_b4

    :sswitch_46
    const-string v0, "rotation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x2

    goto :goto_b4

    :sswitch_50
    const-string/jumbo v0, "waveVariesBy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0x9

    goto :goto_b4

    :sswitch_5c
    const-string v0, "scaleY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x7

    goto :goto_b4

    :sswitch_66
    const-string v0, "scaleX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x6

    goto :goto_b4

    :sswitch_70
    const-string v0, "progress"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0xd

    goto :goto_b4

    :sswitch_7b
    const-string/jumbo v0, "translationZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0xc

    goto :goto_b4

    :sswitch_87
    const-string/jumbo v0, "translationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0xb

    goto :goto_b4

    :sswitch_93
    const-string/jumbo v0, "translationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0xa

    goto :goto_b4

    :sswitch_9f
    const-string v0, "rotationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x4

    goto :goto_b4

    :sswitch_a9
    const-string v0, "rotationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x3

    goto :goto_b4

    :goto_b3
    const/4 v0, -0x1

    :goto_b4
    packed-switch v0, :pswitch_data_148

    .line 130
    const/4 v0, 0x0

    return-object v0

    .line 128
    :pswitch_b9
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ProgressSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ProgressSet;-><init>()V

    return-object v0

    .line 126
    :pswitch_bf
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$TranslationZset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$TranslationZset;-><init>()V

    return-object v0

    .line 124
    :pswitch_c5
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$TranslationYset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$TranslationYset;-><init>()V

    return-object v0

    .line 122
    :pswitch_cb
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$TranslationXset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$TranslationXset;-><init>()V

    return-object v0

    .line 120
    :pswitch_d1
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$AlphaSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$AlphaSet;-><init>()V

    return-object v0

    .line 118
    :pswitch_d7
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$AlphaSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$AlphaSet;-><init>()V

    return-object v0

    .line 116
    :pswitch_dd
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ScaleYset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ScaleYset;-><init>()V

    return-object v0

    .line 114
    :pswitch_e3
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ScaleXset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ScaleXset;-><init>()V

    return-object v0

    .line 112
    :pswitch_e9
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$PathRotateSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$PathRotateSet;-><init>()V

    return-object v0

    .line 110
    :pswitch_ef
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$RotationYset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$RotationYset;-><init>()V

    return-object v0

    .line 108
    :pswitch_f5
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$RotationXset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$RotationXset;-><init>()V

    return-object v0

    .line 106
    :pswitch_fb
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$RotationSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$RotationSet;-><init>()V

    return-object v0

    .line 104
    :pswitch_101
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ElevationSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ElevationSet;-><init>()V

    return-object v0

    .line 102
    :pswitch_107
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$AlphaSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$AlphaSet;-><init>()V

    return-object v0

    nop

    :sswitch_data_10e
    .sparse-switch
        -0x4a771f66 -> :sswitch_a9
        -0x4a771f65 -> :sswitch_9f
        -0x490b9c39 -> :sswitch_93
        -0x490b9c38 -> :sswitch_87
        -0x490b9c37 -> :sswitch_7b
        -0x3bab3dd3 -> :sswitch_70
        -0x3621dfb2 -> :sswitch_66
        -0x3621dfb1 -> :sswitch_5c
        -0x2f893320 -> :sswitch_50
        -0x266f082 -> :sswitch_46
        -0x42d1a3 -> :sswitch_3b
        0x2382115 -> :sswitch_2f
        0x589b15e -> :sswitch_24
        0x94e04ec -> :sswitch_17
    .end sparse-switch

    :pswitch_data_148
    .packed-switch 0x0
        :pswitch_107
        :pswitch_101
        :pswitch_fb
        :pswitch_f5
        :pswitch_ef
        :pswitch_e9
        :pswitch_e3
        :pswitch_dd
        :pswitch_d7
        :pswitch_d1
        :pswitch_cb
        :pswitch_c5
        :pswitch_bf
        :pswitch_b9
    .end packed-switch
.end method


# virtual methods
.method public get(F)F
    .registers 4
    .param p1, "t"    # F

    .line 85
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mCycleOscillator:Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->getValues(F)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getCurveFit()Landroidx/constraintlayout/motion/utils/CurveFit;
    .registers 2

    .line 93
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    return-object v0
.end method

.method public getSlope(F)F
    .registers 4
    .param p1, "position"    # F

    .line 89
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mCycleOscillator:Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->getSlope(F)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public setPoint(IIIFFF)V
    .registers 9
    .param p1, "framePosition"    # I
    .param p2, "shape"    # I
    .param p3, "variesBy"    # I
    .param p4, "period"    # F
    .param p5, "offset"    # F
    .param p6, "value"    # F

    .line 164
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    new-instance v1, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;

    invoke-direct {v1, p1, p4, p5, p6}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;-><init>(IFFF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    const/4 v0, -0x1

    if-eq p3, v0, :cond_f

    .line 166
    iput p3, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mVariesBy:I

    .line 168
    :cond_f
    iput p2, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mWaveShape:I

    .line 169
    return-void
.end method

.method public setPoint(IIIFFFLandroidx/constraintlayout/widget/ConstraintAttribute;)V
    .registers 10
    .param p1, "framePosition"    # I
    .param p2, "shape"    # I
    .param p3, "variesBy"    # I
    .param p4, "period"    # F
    .param p5, "offset"    # F
    .param p6, "value"    # F
    .param p7, "custom"    # Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 146
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    new-instance v1, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;

    invoke-direct {v1, p1, p4, p5, p6}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;-><init>(IFFF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    const/4 v0, -0x1

    if-eq p3, v0, :cond_f

    .line 148
    iput p3, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mVariesBy:I

    .line 150
    :cond_f
    iput p2, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mWaveShape:I

    .line 151
    iput-object p7, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mCustom:Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 152
    return-void
.end method

.method public abstract setProperty(Landroid/view/View;F)V
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2
    .param p1, "type"    # Ljava/lang/String;

    .line 79
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mType:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setup(F)V
    .registers 15
    .param p1, "pathLength"    # F

    .line 173
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 174
    .local v0, "count":I
    if-nez v0, :cond_9

    .line 175
    return-void

    .line 177
    :cond_9
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    new-instance v2, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$1;

    invoke-direct {v2, p0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$1;-><init>(Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 183
    new-array v1, v0, [D

    .line 184
    .local v1, "time":[D
    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    const/4 v2, 0x0

    aput v0, v3, v2

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    .line 185
    .local v3, "values":[[D
    new-instance v5, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;

    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mWaveShape:I

    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mVariesBy:I

    invoke-direct {v5, v6, v7, v0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;-><init>(III)V

    iput-object v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mCycleOscillator:Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;

    .line 186
    const/4 v5, 0x0

    .line 187
    .local v5, "i":I
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v8, v5

    .end local v5    # "i":I
    .local v8, "i":I
    :goto_39
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;

    .line 188
    .local v5, "wp":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;
    iget v7, v5, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;->mPeriod:F

    float-to-double v9, v7

    const-wide v11, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v9, v11

    aput-wide v9, v1, v8

    .line 189
    aget-object v7, v3, v8

    iget v9, v5, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;->mValue:F

    float-to-double v9, v9

    aput-wide v9, v7, v2

    .line 190
    aget-object v7, v3, v8

    iget v9, v5, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;->mOffset:F

    float-to-double v9, v9

    aput-wide v9, v7, v4

    .line 191
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mCycleOscillator:Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;

    iget v9, v5, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;->mPosition:I

    iget v10, v5, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;->mPeriod:F

    iget v11, v5, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;->mOffset:F

    iget v12, v5, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;->mValue:F

    invoke-virtual/range {v7 .. v12}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->setPoint(IIFFF)V

    .line 192
    nop

    .end local v5    # "wp":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;
    add-int/lit8 v8, v8, 0x1

    .line 193
    goto :goto_39

    .line 194
    :cond_6f
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mCycleOscillator:Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;

    invoke-virtual {v4, p1}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->setup(F)V

    .line 195
    invoke-static {v2, v1, v3}, Landroidx/constraintlayout/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/motion/utils/CurveFit;

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    .line 196
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .line 70
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mType:Ljava/lang/String;

    .line 71
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "##.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 72
    .local v1, "df":Ljava/text/DecimalFormat;
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;

    .line 73
    .local v3, "wp":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;->mPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;->mValue:F

    float-to-double v5, v5

    invoke-virtual {v1, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    .end local v3    # "wp":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;
    goto :goto_f

    .line 75
    :cond_4c
    return-object v0
.end method

.method public variesByPath()Z
    .registers 3

    .line 51
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mVariesBy:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

###### Class androidx.constraintlayout.motion.widget.KeyCycleOscillator.AnonymousClass1 (androidx.constraintlayout.motion.widget.KeyCycleOscillator$1)
.class Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$1;
.super Ljava/lang/Object;
.source "KeyCycleOscillator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->setup(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;


# direct methods
.method constructor <init>(Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;)V
    .registers 2
    .param p1, "this$0"    # Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    .line 177
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$1;->this$0:Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;)I
    .registers 5
    .param p1, "lhs"    # Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;
    .param p2, "rhs"    # Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;

    .line 180
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;->mPosition:I

    iget v1, p2, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;->mPosition:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 177
    check-cast p1, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;

    check-cast p2, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$1;->compare(Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;)I

    move-result p1

    return p1
.end method

###### Class androidx.constraintlayout.motion.widget.KeyCycleOscillator.AlphaSet (androidx.constraintlayout.motion.widget.KeyCycleOscillator$AlphaSet)
.class Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$AlphaSet;
.super Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AlphaSet"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 207
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;F)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F

    .line 210
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$AlphaSet;->get(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 211
    return-void
.end method

###### Class androidx.constraintlayout.motion.widget.KeyCycleOscillator.CustomSet (androidx.constraintlayout.motion.widget.KeyCycleOscillator$CustomSet)
.class Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CustomSet;
.super Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CustomSet"
.end annotation


# instance fields
.field value:[F


# direct methods
.method constructor <init>()V
    .registers 2

    .line 282
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;-><init>()V

    .line 283
    const/4 v0, 0x1

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CustomSet;->value:[F

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;F)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F

    .line 287
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CustomSet;->value:[F

    const/4 v1, 0x0

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CustomSet;->get(F)F

    move-result v2

    aput v2, v0, v1

    .line 288
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CustomSet;->mCustom:Landroidx/constraintlayout/widget/ConstraintAttribute;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CustomSet;->value:[F

    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/widget/ConstraintAttribute;->setInterpolatedValue(Landroid/view/View;[F)V

    .line 289
    return-void
.end method

###### Class androidx.constraintlayout.motion.widget.KeyCycleOscillator.CycleOscillator (androidx.constraintlayout.motion.widget.KeyCycleOscillator$CycleOscillator)
.class Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;
.super Ljava/lang/Object;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CycleOscillator"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CycleOscillator"

.field static final UNSET:I = -0x1


# instance fields
.field mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

.field public mCustomConstraints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;"
        }
    .end annotation
.end field

.field mOffset:[F

.field mOscillator:Landroidx/constraintlayout/motion/utils/Oscillator;

.field mPathLength:F

.field mPeriod:[F

.field mPosition:[D

.field mScale:[F

.field mSplineSlopeCache:[D

.field mSplineValueCache:[D

.field mValues:[F

.field private final mVariesBy:I

.field mWaveShape:I


# direct methods
.method constructor <init>(III)V
    .registers 5
    .param p1, "waveShape"    # I
    .param p2, "variesBy"    # I
    .param p3, "steps"    # I

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    new-instance v0, Landroidx/constraintlayout/motion/utils/Oscillator;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/Oscillator;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/motion/utils/Oscillator;

    .line 461
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mCustomConstraints:Ljava/util/HashMap;

    .line 426
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mWaveShape:I

    .line 427
    iput p2, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mVariesBy:I

    .line 428
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/motion/utils/Oscillator;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/utils/Oscillator;->setType(I)V

    .line 429
    new-array v0, p3, [F

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mValues:[F

    .line 430
    new-array v0, p3, [D

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    .line 431
    new-array v0, p3, [F

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPeriod:[F

    .line 432
    new-array v0, p3, [F

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOffset:[F

    .line 433
    new-array v0, p3, [F

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mScale:[F

    .line 434
    return-void
.end method

.method private get(Ljava/lang/String;Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;)Landroidx/constraintlayout/widget/ConstraintAttribute;
    .registers 7
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "attributeType"    # Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 465
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 466
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 467
    .local v0, "ret":Landroidx/constraintlayout/widget/ConstraintAttribute;
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getType()Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    move-result-object v1

    if-ne v1, p2, :cond_17

    goto :goto_42

    .line 468
    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConstraintAttribute is already a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 469
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getType()Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 472
    .end local v0    # "ret":Landroidx/constraintlayout/widget/ConstraintAttribute;
    :cond_38
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintAttribute;

    invoke-direct {v0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintAttribute;-><init>(Ljava/lang/String;Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;)V

    .line 473
    .restart local v0    # "ret":Landroidx/constraintlayout/widget/ConstraintAttribute;
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    :goto_42
    return-object v0
.end method


# virtual methods
.method public getSlope(F)D
    .registers 13
    .param p1, "time"    # F

    .line 449
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_17

    .line 450
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    float-to-double v3, p1

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    invoke-virtual {v0, v3, v4, v5}, Landroidx/constraintlayout/motion/utils/CurveFit;->getSlope(D[D)V

    .line 451
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    float-to-double v3, p1

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    invoke-virtual {v0, v3, v4, v5}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    goto :goto_21

    .line 453
    :cond_17
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    const-wide/16 v3, 0x0

    aput-wide v3, v0, v1

    .line 454
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    aput-wide v3, v0, v2

    .line 456
    :goto_21
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/motion/utils/Oscillator;

    float-to-double v3, p1

    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/motion/utils/Oscillator;->getValue(D)D

    move-result-wide v3

    .line 457
    .local v3, "waveValue":D
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/motion/utils/Oscillator;

    float-to-double v5, p1

    invoke-virtual {v0, v5, v6}, Landroidx/constraintlayout/motion/utils/Oscillator;->getSlope(D)D

    move-result-wide v5

    .line 458
    .local v5, "waveSlope":D
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    aget-wide v7, v0, v1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    aget-wide v9, v0, v2

    mul-double/2addr v9, v3

    add-double/2addr v7, v9

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    aget-wide v1, v0, v2

    mul-double/2addr v1, v5

    add-double/2addr v7, v1

    return-wide v7
.end method

.method public getValues(F)D
    .registers 10
    .param p1, "time"    # F

    .line 437
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    .line 438
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    float-to-double v3, p1

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    invoke-virtual {v0, v3, v4, v5}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    goto :goto_21

    .line 440
    :cond_f
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOffset:[F

    aget v3, v3, v2

    float-to-double v3, v3

    aput-wide v3, v0, v2

    .line 441
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mValues:[F

    aget v3, v3, v2

    float-to-double v3, v3

    aput-wide v3, v0, v1

    .line 443
    :goto_21
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    aget-wide v2, v0, v2

    .line 444
    .local v2, "offset":D
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/motion/utils/Oscillator;

    float-to-double v4, p1

    invoke-virtual {v0, v4, v5}, Landroidx/constraintlayout/motion/utils/Oscillator;->getValue(D)D

    move-result-wide v4

    .line 445
    .local v4, "waveValue":D
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    aget-wide v6, v0, v1

    mul-double/2addr v6, v4

    add-double/2addr v6, v2

    return-wide v6
.end method

.method public setPoint(IIFFF)V
    .registers 11
    .param p1, "index"    # I
    .param p2, "framePosition"    # I
    .param p3, "wavePeriod"    # F
    .param p4, "offset"    # F
    .param p5, "values"    # F

    .line 486
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    int-to-double v1, p2

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    aput-wide v1, v0, p1

    .line 487
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPeriod:[F

    aput p3, v0, p1

    .line 488
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOffset:[F

    aput p4, v0, p1

    .line 489
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mValues:[F

    aput p5, v0, p1

    .line 490
    return-void
.end method

.method public setup(F)V
    .registers 11
    .param p1, "pathLength"    # F

    .line 493
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPathLength:F

    .line 494
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    array-length v0, v0

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 495
    .local v0, "splineValues":[[D
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mValues:[F

    array-length v2, v2

    add-int/2addr v2, v3

    new-array v2, v2, [D

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    .line 496
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mValues:[F

    array-length v2, v2

    add-int/2addr v2, v3

    new-array v2, v2, [D

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    .line 497
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    aget-wide v4, v2, v1

    const-wide/16 v6, 0x0

    cmpl-double v2, v4, v6

    if-lez v2, :cond_39

    .line 498
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/motion/utils/Oscillator;

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPeriod:[F

    aget v4, v4, v1

    invoke-virtual {v2, v6, v7, v4}, Landroidx/constraintlayout/motion/utils/Oscillator;->addPoint(DF)V

    .line 500
    :cond_39
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    array-length v2, v2

    sub-int/2addr v2, v3

    .line 501
    .local v2, "last":I
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    aget-wide v5, v4, v2

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v5, v7

    if-gez v4, :cond_50

    .line 502
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/motion/utils/Oscillator;

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPeriod:[F

    aget v5, v5, v2

    invoke-virtual {v4, v7, v8, v5}, Landroidx/constraintlayout/motion/utils/Oscillator;->addPoint(DF)V

    .line 504
    :cond_50
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_51
    array-length v5, v0

    if-ge v4, v5, :cond_7f

    .line 505
    aget-object v5, v0, v4

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOffset:[F

    aget v6, v6, v4

    float-to-double v6, v6

    aput-wide v6, v5, v1

    .line 506
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_5e
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mValues:[F

    array-length v6, v6

    if-ge v5, v6, :cond_6f

    .line 507
    aget-object v6, v0, v5

    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mValues:[F

    aget v7, v7, v5

    float-to-double v7, v7

    aput-wide v7, v6, v3

    .line 506
    add-int/lit8 v5, v5, 0x1

    goto :goto_5e

    .line 509
    .end local v5    # "j":I
    :cond_6f
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/motion/utils/Oscillator;

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    aget-wide v7, v6, v4

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPeriod:[F

    aget v6, v6, v4

    invoke-virtual {v5, v7, v8, v6}, Landroidx/constraintlayout/motion/utils/Oscillator;->addPoint(DF)V

    .line 504
    add-int/lit8 v4, v4, 0x1

    goto :goto_51

    .line 512
    .end local v4    # "i":I
    :cond_7f
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/motion/utils/Oscillator;

    invoke-virtual {v4}, Landroidx/constraintlayout/motion/utils/Oscillator;->normalize()V

    .line 513
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    array-length v4, v4

    if-le v4, v3, :cond_92

    .line 514
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    invoke-static {v1, v3, v0}, Landroidx/constraintlayout/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/motion/utils/CurveFit;

    move-result-object v1

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    goto :goto_95

    .line 516
    :cond_92
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    .line 518
    :goto_95
    return-void
.end method

###### Class androidx.constraintlayout.motion.widget.KeyCycleOscillator.ElevationSet (androidx.constraintlayout.motion.widget.KeyCycleOscillator$ElevationSet)
.class Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ElevationSet;
.super Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ElevationSet"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 198
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;F)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F

    .line 201
    nop

    .line 202
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ElevationSet;->get(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setElevation(F)V

    .line 204
    return-void
.end method

###### Class androidx.constraintlayout.motion.widget.KeyCycleOscillator.IntDoubleSort (androidx.constraintlayout.motion.widget.KeyCycleOscillator$IntDoubleSort)
.class Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$IntDoubleSort;
.super Ljava/lang/Object;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntDoubleSort"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static partition([I[FII)I
    .registers 8
    .param p0, "array"    # [I
    .param p1, "value"    # [F
    .param p2, "low"    # I
    .param p3, "hi"    # I

    .line 342
    aget v0, p0, p3

    .line 343
    .local v0, "pivot":I
    move v1, p2

    .line 344
    .local v1, "i":I
    move v2, p2

    .local v2, "j":I
    :goto_4
    if-ge v2, p3, :cond_12

    .line 345
    aget v3, p0, v2

    if-gt v3, v0, :cond_f

    .line 346
    invoke-static {p0, p1, v1, v2}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$IntDoubleSort;->swap([I[FII)V

    .line 347
    add-int/lit8 v1, v1, 0x1

    .line 344
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 350
    .end local v2    # "j":I
    :cond_12
    invoke-static {p0, p1, v1, p3}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$IntDoubleSort;->swap([I[FII)V

    .line 351
    return v1
.end method

.method static sort([I[FII)V
    .registers 9
    .param p0, "key"    # [I
    .param p1, "value"    # [F
    .param p2, "low"    # I
    .param p3, "hi"    # I

    .line 324
    array-length v0, p0

    add-int/lit8 v0, v0, 0xa

    new-array v0, v0, [I

    .line 325
    .local v0, "stack":[I
    const/4 v1, 0x0

    .line 326
    .local v1, "count":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .local v2, "count":I
    aput p3, v0, v1

    .line 327
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    aput p2, v0, v2

    .line 328
    :cond_e
    :goto_e
    if-lez v1, :cond_33

    .line 329
    add-int/lit8 v1, v1, -0x1

    aget p2, v0, v1

    .line 330
    add-int/lit8 v1, v1, -0x1

    aget p3, v0, v1

    .line 331
    if-ge p2, p3, :cond_e

    .line 332
    invoke-static {p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$IntDoubleSort;->partition([I[FII)I

    move-result v2

    .line 333
    .local v2, "p":I
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "count":I
    .local v3, "count":I
    add-int/lit8 v4, v2, -0x1

    aput v4, v0, v1

    .line 334
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "count":I
    .restart local v1    # "count":I
    aput p2, v0, v3

    .line 335
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "count":I
    .restart local v3    # "count":I
    aput p3, v0, v1

    .line 336
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "count":I
    .restart local v1    # "count":I
    add-int/lit8 v4, v2, 0x1

    aput v4, v0, v3

    .line 337
    .end local v2    # "p":I
    goto :goto_e

    .line 339
    :cond_33
    return-void
.end method

.method private static swap([I[FII)V
    .registers 7
    .param p0, "array"    # [I
    .param p1, "value"    # [F
    .param p2, "a"    # I
    .param p3, "b"    # I

    .line 355
    aget v0, p0, p2

    .line 356
    .local v0, "tmp":I
    aget v1, p0, p3

    aput v1, p0, p2

    .line 357
    aput v0, p0, p3

    .line 358
    aget v1, p1, p2

    .line 359
    .local v1, "tmpv":F
    aget v2, p1, p3

    aput v2, p1, p2

    .line 360
    aput v1, p1, p3

    .line 361
    return-void
.end method

###### Class androidx.constraintlayout.motion.widget.KeyCycleOscillator.IntFloatFloatSort (androidx.constraintlayout.motion.widget.KeyCycleOscillator$IntFloatFloatSort)
.class Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$IntFloatFloatSort;
.super Ljava/lang/Object;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntFloatFloatSort"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static partition([I[F[FII)I
    .registers 9
    .param p0, "array"    # [I
    .param p1, "value1"    # [F
    .param p2, "value2"    # [F
    .param p3, "low"    # I
    .param p4, "hi"    # I

    .line 384
    aget v0, p0, p4

    .line 385
    .local v0, "pivot":I
    move v1, p3

    .line 386
    .local v1, "i":I
    move v2, p3

    .local v2, "j":I
    :goto_4
    if-ge v2, p4, :cond_12

    .line 387
    aget v3, p0, v2

    if-gt v3, v0, :cond_f

    .line 388
    invoke-static {p0, p1, p2, v1, v2}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$IntFloatFloatSort;->swap([I[F[FII)V

    .line 389
    add-int/lit8 v1, v1, 0x1

    .line 386
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 392
    .end local v2    # "j":I
    :cond_12
    invoke-static {p0, p1, p2, v1, p4}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$IntFloatFloatSort;->swap([I[F[FII)V

    .line 393
    return v1
.end method

.method static sort([I[F[FII)V
    .registers 10
    .param p0, "key"    # [I
    .param p1, "value1"    # [F
    .param p2, "value2"    # [F
    .param p3, "low"    # I
    .param p4, "hi"    # I

    .line 366
    array-length v0, p0

    add-int/lit8 v0, v0, 0xa

    new-array v0, v0, [I

    .line 367
    .local v0, "stack":[I
    const/4 v1, 0x0

    .line 368
    .local v1, "count":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .local v2, "count":I
    aput p4, v0, v1

    .line 369
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    aput p3, v0, v2

    .line 370
    :cond_e
    :goto_e
    if-lez v1, :cond_33

    .line 371
    add-int/lit8 v1, v1, -0x1

    aget p3, v0, v1

    .line 372
    add-int/lit8 v1, v1, -0x1

    aget p4, v0, v1

    .line 373
    if-ge p3, p4, :cond_e

    .line 374
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$IntFloatFloatSort;->partition([I[F[FII)I

    move-result v2

    .line 375
    .local v2, "p":I
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "count":I
    .local v3, "count":I
    add-int/lit8 v4, v2, -0x1

    aput v4, v0, v1

    .line 376
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "count":I
    .restart local v1    # "count":I
    aput p3, v0, v3

    .line 377
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "count":I
    .restart local v3    # "count":I
    aput p4, v0, v1

    .line 378
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "count":I
    .restart local v1    # "count":I
    add-int/lit8 v4, v2, 0x1

    aput v4, v0, v3

    .line 379
    .end local v2    # "p":I
    goto :goto_e

    .line 381
    :cond_33
    return-void
.end method

.method private static swap([I[F[FII)V
    .registers 8
    .param p0, "array"    # [I
    .param p1, "value1"    # [F
    .param p2, "value2"    # [F
    .param p3, "a"    # I
    .param p4, "b"    # I

    .line 397
    aget v0, p0, p3

    .line 398
    .local v0, "tmp":I
    aget v1, p0, p4

    aput v1, p0, p3

    .line 399
    aput v0, p0, p4

    .line 400
    aget v1, p1, p3

    .line 401
    .local v1, "tmpFloat":F
    aget v2, p1, p4

    aput v2, p1, p3

    .line 402
    aput v1, p1, p4

    .line 403
    aget v1, p2, p3

    .line 404
    aget v2, p2, p4

    aput v2, p2, p3

    .line 405
    aput v1, p2, p4

    .line 406
    return-void
.end method

###### Class androidx.constraintlayout.motion.widget.KeyCycleOscillator.PathRotateSet (androidx.constraintlayout.motion.widget.KeyCycleOscillator$PathRotateSet)
.class Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$PathRotateSet;
.super Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PathRotateSet"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 235
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;-><init>()V

    return-void
.end method


# virtual methods
.method public setPathRotate(Landroid/view/View;FDD)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F
    .param p3, "dx"    # D
    .param p5, "dy"    # D

    .line 241
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$PathRotateSet;->get(F)F

    move-result v0

    invoke-static {p5, p6, p3, p4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 242
    return-void
.end method

.method public setProperty(Landroid/view/View;F)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F

    .line 238
    return-void
.end method

###### Class androidx.constraintlayout.motion.widget.KeyCycleOscillator.ProgressSet (androidx.constraintlayout.motion.widget.KeyCycleOscillator$ProgressSet)
.class Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ProgressSet;
.super Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
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

    .line 292
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;-><init>()V

    .line 293
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ProgressSet;->mNoMethod:Z

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;F)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F

    .line 297
    const-string/jumbo v0, "unable to setProgress"

    const-string v1, "KeyCycleOscillator"

    instance-of v2, p1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-eqz v2, :cond_14

    .line 298
    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ProgressSet;->get(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    goto :goto_4d

    .line 300
    :cond_14
    iget-boolean v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ProgressSet;->mNoMethod:Z

    if-eqz v2, :cond_19

    .line 301
    return-void

    .line 303
    :cond_19
    const/4 v2, 0x0

    .line 305
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

    .line 308
    goto :goto_31

    .line 306
    :catch_2e
    move-exception v5

    .line 307
    .local v5, "e":Ljava/lang/NoSuchMethodException;
    iput-boolean v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ProgressSet;->mNoMethod:Z

    .line 309
    .end local v5    # "e":Ljava/lang/NoSuchMethodException;
    :goto_31
    if-eqz v2, :cond_4d

    .line 311
    :try_start_33
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ProgressSet;->get(F)F

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

    .line 314
    :catch_43
    move-exception v3

    .line 315
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4d

    .line 312
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_48
    move-exception v3

    .line 313
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :goto_4c
    nop

    .line 319
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_4d
    :goto_4d
    return-void
.end method

###### Class androidx.constraintlayout.motion.widget.KeyCycleOscillator.RotationSet (androidx.constraintlayout.motion.widget.KeyCycleOscillator$RotationSet)
.class Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$RotationSet;
.super Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RotationSet"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 214
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;F)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F

    .line 217
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$RotationSet;->get(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 218
    return-void
.end method

###### Class androidx.constraintlayout.motion.widget.KeyCycleOscillator.RotationXset (androidx.constraintlayout.motion.widget.KeyCycleOscillator$RotationXset)
.class Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$RotationXset;
.super Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RotationXset"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 221
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;F)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F

    .line 224
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$RotationXset;->get(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationX(F)V

    .line 225
    return-void
.end method

###### Class androidx.constraintlayout.motion.widget.KeyCycleOscillator.RotationYset (androidx.constraintlayout.motion.widget.KeyCycleOscillator$RotationYset)
.class Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$RotationYset;
.super Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RotationYset"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 228
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;F)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F

    .line 231
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$RotationYset;->get(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    .line 232
    return-void
.end method

###### Class androidx.constraintlayout.motion.widget.KeyCycleOscillator.ScaleXset (androidx.constraintlayout.motion.widget.KeyCycleOscillator$ScaleXset)
.class Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ScaleXset;
.super Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScaleXset"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 245
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;F)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F

    .line 248
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ScaleXset;->get(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 249
    return-void
.end method

###### Class androidx.constraintlayout.motion.widget.KeyCycleOscillator.ScaleYset (androidx.constraintlayout.motion.widget.KeyCycleOscillator$ScaleYset)
.class Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ScaleYset;
.super Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScaleYset"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 252
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;F)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F

    .line 255
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ScaleYset;->get(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 256
    return-void
.end method

###### Class androidx.constraintlayout.motion.widget.KeyCycleOscillator.TranslationXset (androidx.constraintlayout.motion.widget.KeyCycleOscillator$TranslationXset)
.class Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$TranslationXset;
.super Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TranslationXset"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 259
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;F)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F

    .line 262
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$TranslationXset;->get(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 263
    return-void
.end method

###### Class androidx.constraintlayout.motion.widget.KeyCycleOscillator.TranslationYset (androidx.constraintlayout.motion.widget.KeyCycleOscillator$TranslationYset)
.class Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$TranslationYset;
.super Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TranslationYset"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 266
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;F)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F

    .line 269
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$TranslationYset;->get(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 270
    return-void
.end method

###### Class androidx.constraintlayout.motion.widget.KeyCycleOscillator.TranslationZset (androidx.constraintlayout.motion.widget.KeyCycleOscillator$TranslationZset)
.class Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$TranslationZset;
.super Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TranslationZset"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 273
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;F)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F

    .line 276
    nop

    .line 277
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$TranslationZset;->get(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationZ(F)V

    .line 279
    return-void
.end method

###### Class androidx.constraintlayout.motion.widget.KeyCycleOscillator.WavePoint (androidx.constraintlayout.motion.widget.KeyCycleOscillator$WavePoint)
.class Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;
.super Ljava/lang/Object;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WavePoint"
.end annotation


# instance fields
.field mOffset:F

.field mPeriod:F

.field mPosition:I

.field mValue:F


# direct methods
.method public constructor <init>(IFFF)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "period"    # F
    .param p3, "offset"    # F
    .param p4, "value"    # F

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;->mPosition:I

    .line 62
    iput p4, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;->mValue:F

    .line 63
    iput p3, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;->mOffset:F

    .line 64
    iput p2, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;->mPeriod:F

    .line 65
    return-void
.end method
