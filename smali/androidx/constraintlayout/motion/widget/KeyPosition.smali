###### Class androidx.constraintlayout.motion.widget.KeyPosition (androidx.constraintlayout.motion.widget.KeyPosition)
.class public Landroidx/constraintlayout/motion/widget/KeyPosition;
.super Landroidx/constraintlayout/motion/widget/KeyPositionBase;
.source "KeyPosition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;
    }
.end annotation


# static fields
.field static final KEY_TYPE:I = 0x2

.field static final NAME:Ljava/lang/String; = "KeyPosition"

.field private static final PERCENT_X:Ljava/lang/String; = "percentX"

.field private static final PERCENT_Y:Ljava/lang/String; = "percentY"

.field private static final TAG:Ljava/lang/String; = "KeyPosition"

.field public static final TYPE_CARTESIAN:I = 0x0

.field public static final TYPE_PATH:I = 0x1

.field public static final TYPE_SCREEN:I = 0x2


# instance fields
.field mAltPercentX:F

.field mAltPercentY:F

.field private mCalculatedPositionX:F

.field private mCalculatedPositionY:F

.field mDrawPath:I

.field mPathMotionArc:I

.field mPercentHeight:F

.field mPercentWidth:F

.field mPercentX:F

.field mPercentY:F

.field mPositionType:I

.field mTransitionEasing:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 39
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/KeyPositionBase;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    .line 44
    sget v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->UNSET:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    .line 46
    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    .line 47
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 48
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    .line 49
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    .line 50
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    .line 51
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    .line 55
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    .line 57
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionX:F

    .line 58
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionY:F

    .line 62
    const/4 v0, 0x2

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mType:I

    .line 63
    return-void
.end method

.method private calcCartesianPosition(FFFF)V
    .registers 13
    .param p1, "start_x"    # F
    .param p2, "start_y"    # F
    .param p3, "end_x"    # F
    .param p4, "end_y"    # F

    .line 112
    sub-float v0, p3, p1

    .line 113
    .local v0, "pathVectorX":F
    sub-float v1, p4, p2

    .line 114
    .local v1, "pathVectorY":F
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_f

    move v2, v3

    goto :goto_11

    :cond_f
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    .line 115
    .local v2, "dxdx":F
    :goto_11
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_1b

    move v4, v3

    goto :goto_1d

    :cond_1b
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    .line 116
    .local v4, "dydx":F
    :goto_1d
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_27

    move v5, v3

    goto :goto_29

    :cond_27
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    .line 117
    .local v5, "dydy":F
    :goto_29
    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_32

    goto :goto_34

    :cond_32
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    .line 118
    .local v3, "dxdy":F
    :goto_34
    mul-float v6, v0, v2

    add-float/2addr v6, p1

    mul-float v7, v1, v3

    add-float/2addr v6, v7

    float-to-int v6, v6

    int-to-float v6, v6

    iput v6, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionX:F

    .line 119
    mul-float v6, v0, v4

    add-float/2addr v6, p2

    mul-float v7, v1, v5

    add-float/2addr v6, v7

    float-to-int v6, v6

    int-to-float v6, v6

    iput v6, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionY:F

    .line 120
    return-void
.end method

.method private calcPathPosition(FFFF)V
    .registers 11
    .param p1, "start_x"    # F
    .param p2, "start_y"    # F
    .param p3, "end_x"    # F
    .param p4, "end_y"    # F

    .line 102
    sub-float v0, p3, p1

    .line 103
    .local v0, "pathVectorX":F
    sub-float v1, p4, p2

    .line 104
    .local v1, "pathVectorY":F
    neg-float v2, v1

    .line 105
    .local v2, "perpendicularX":F
    move v3, v0

    .line 106
    .local v3, "perpendicularY":F
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    mul-float/2addr v4, v0

    add-float/2addr v4, p1

    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iput v4, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionX:F

    .line 107
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    mul-float/2addr v4, v1

    add-float/2addr v4, p2

    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionY:F

    .line 108
    return-void
.end method

.method private calcScreenPosition(II)V
    .registers 7
    .param p1, "layoutWidth"    # I
    .param p2, "layoutHeight"    # I

    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "viewWidth":I
    const/4 v1, 0x0

    .line 96
    .local v1, "viewHeight":I
    sub-int v2, p1, v0

    int-to-float v2, v2

    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    mul-float/2addr v2, v3

    div-int/lit8 v3, v0, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionX:F

    .line 97
    sub-int v2, p2, v1

    int-to-float v2, v2

    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    mul-float/2addr v2, v3

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionY:F

    .line 98
    return-void
.end method


# virtual methods
.method public addValues(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/widget/SplineSet;",
            ">;)V"
        }
    .end annotation

    .line 73
    .local p1, "splines":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/constraintlayout/motion/widget/SplineSet;>;"
    return-void
.end method

.method calcPosition(IIFFFF)V
    .registers 8
    .param p1, "layoutWidth"    # I
    .param p2, "layoutHeight"    # I
    .param p3, "start_x"    # F
    .param p4, "start_y"    # F
    .param p5, "end_x"    # F
    .param p6, "end_y"    # F

    .line 77
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    packed-switch v0, :pswitch_data_12

    .line 87
    invoke-direct {p0, p3, p4, p5, p6}, Landroidx/constraintlayout/motion/widget/KeyPosition;->calcCartesianPosition(FFFF)V

    .line 88
    return-void

    .line 79
    :pswitch_9
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/KeyPosition;->calcScreenPosition(II)V

    .line 80
    return-void

    .line 83
    :pswitch_d
    invoke-direct {p0, p3, p4, p5, p6}, Landroidx/constraintlayout/motion/widget/KeyPosition;->calcPathPosition(FFFF)V

    .line 84
    return-void

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_d
        :pswitch_9
    .end packed-switch
.end method

.method getPositionX()F
    .registers 2

    .line 124
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionX:F

    return v0
.end method

.method getPositionY()F
    .registers 2

    .line 129
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionY:F

    return v0
.end method

.method public intersects(IILandroid/graphics/RectF;Landroid/graphics/RectF;FF)Z
    .registers 14
    .param p1, "layoutWidth"    # I
    .param p2, "layoutHeight"    # I
    .param p3, "start"    # Landroid/graphics/RectF;
    .param p4, "end"    # Landroid/graphics/RectF;
    .param p5, "x"    # F
    .param p6, "y"    # F

    .line 237
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    .end local p1    # "layoutWidth":I
    .end local p2    # "layoutHeight":I
    .local v1, "layoutWidth":I
    .local v2, "layoutHeight":I
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/motion/widget/KeyPosition;->calcPosition(IIFFFF)V

    .line 238
    iget p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionX:F

    sub-float p1, p5, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x41a00000    # 20.0f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_32

    iget p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionY:F

    sub-float p1, p6, p1

    .line 239
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, p2

    if-gez p1, :cond_32

    .line 240
    const/4 p1, 0x1

    return p1

    .line 242
    :cond_32
    const/4 p1, 0x0

    return p1
.end method

.method public load(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 67
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-static {p0, v0}, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->access$000(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroid/content/res/TypedArray;)V

    .line 69
    return-void
.end method

.method public positionAttributes(Landroid/view/View;Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "start"    # Landroid/graphics/RectF;
    .param p3, "end"    # Landroid/graphics/RectF;
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "attribute"    # [Ljava/lang/String;
    .param p7, "value"    # [F

    .line 137
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    packed-switch v0, :pswitch_data_16

    .line 147
    move-object v0, p1

    .end local p1    # "view":Landroid/view/View;
    .local v0, "view":Landroid/view/View;
    move-object p1, p0

    invoke-virtual/range {p1 .. p7}, Landroidx/constraintlayout/motion/widget/KeyPosition;->positionCartAttributes(Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V

    .line 148
    return-void

    .line 143
    .end local v0    # "view":Landroid/view/View;
    .restart local p1    # "view":Landroid/view/View;
    :pswitch_b
    invoke-virtual/range {p0 .. p7}, Landroidx/constraintlayout/motion/widget/KeyPosition;->positionScreenAttributes(Landroid/view/View;Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V

    .line 144
    move-object v0, p1

    .end local p1    # "view":Landroid/view/View;
    .restart local v0    # "view":Landroid/view/View;
    return-void

    .line 140
    .end local v0    # "view":Landroid/view/View;
    .restart local p1    # "view":Landroid/view/View;
    :pswitch_10
    move-object v0, p1

    .end local p1    # "view":Landroid/view/View;
    .restart local v0    # "view":Landroid/view/View;
    move-object p1, p0

    invoke-virtual/range {p1 .. p7}, Landroidx/constraintlayout/motion/widget/KeyPosition;->positionPathAttributes(Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V

    .line 141
    return-void

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_10
        :pswitch_b
    .end packed-switch
.end method

.method positionCartAttributes(Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V
    .registers 17
    .param p1, "start"    # Landroid/graphics/RectF;
    .param p2, "end"    # Landroid/graphics/RectF;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "attribute"    # [Ljava/lang/String;
    .param p6, "value"    # [F

    .line 213
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 214
    .local v0, "startCenterX":F
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 215
    .local v1, "startCenterY":F
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    .line 216
    .local v2, "endCenterX":F
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    .line 217
    .local v3, "endCenterY":F
    sub-float v4, v2, v0

    .line 218
    .local v4, "pathVectorX":F
    sub-float v5, v3, v1

    .line 219
    .local v5, "pathVectorY":F
    const/4 v6, 0x0

    aget-object v7, p5, v6

    const-string v8, "percentX"

    const/4 v9, 0x1

    if-eqz v7, :cond_3a

    .line 220
    aget-object v7, p5, v6

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 221
    sub-float v7, p3, v0

    div-float/2addr v7, v4

    aput v7, p6, v6

    .line 222
    sub-float v6, p4, v1

    div-float/2addr v6, v5

    aput v6, p6, v9

    goto :goto_4a

    .line 224
    :cond_2f
    sub-float v7, p3, v0

    div-float/2addr v7, v4

    aput v7, p6, v9

    .line 225
    sub-float v7, p4, v1

    div-float/2addr v7, v5

    aput v7, p6, v6

    goto :goto_4a

    .line 228
    :cond_3a
    aput-object v8, p5, v6

    .line 229
    sub-float v7, p3, v0

    div-float/2addr v7, v4

    aput v7, p6, v6

    .line 230
    const-string v6, "percentY"

    aput-object v6, p5, v9

    .line 231
    sub-float v6, p4, v1

    div-float/2addr v6, v5

    aput v6, p6, v9

    .line 233
    :goto_4a
    return-void
.end method

.method positionPathAttributes(Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V
    .registers 22
    .param p1, "start"    # Landroid/graphics/RectF;
    .param p2, "end"    # Landroid/graphics/RectF;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "attribute"    # [Ljava/lang/String;
    .param p6, "value"    # [F

    .line 154
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 155
    .local v0, "startCenterX":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 156
    .local v1, "startCenterY":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    .line 157
    .local v2, "endCenterX":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    .line 158
    .local v3, "endCenterY":F
    sub-float v4, v2, v0

    .line 159
    .local v4, "pathVectorX":F
    sub-float v5, v3, v1

    .line 160
    .local v5, "pathVectorY":F
    float-to-double v6, v4

    float-to-double v8, v5

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v6, v6

    .line 161
    .local v6, "distance":F
    float-to-double v7, v6

    const-wide v9, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v7, v7, v9

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-gez v7, :cond_34

    .line 162
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "distance ~ 0"

    invoke-virtual {v7, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 163
    const/4 v7, 0x0

    aput v7, p6, v9

    .line 164
    aput v7, p6, v8

    .line 165
    return-void

    .line 168
    :cond_34
    div-float v7, v4, v6

    .line 169
    .local v7, "dx":F
    div-float v10, v5, v6

    .line 170
    .local v10, "dy":F
    sub-float v11, p4, v1

    mul-float/2addr v11, v7

    sub-float v12, p3, v0

    mul-float/2addr v12, v10

    sub-float/2addr v11, v12

    div-float/2addr v11, v6

    .line 171
    .local v11, "perpendicular":F
    sub-float v12, p3, v0

    mul-float/2addr v12, v7

    sub-float v13, p4, v1

    mul-float/2addr v13, v10

    add-float/2addr v12, v13

    div-float/2addr v12, v6

    .line 172
    .local v12, "dist":F
    aget-object v13, p5, v9

    const-string v14, "percentX"

    if-eqz v13, :cond_5b

    .line 173
    aget-object v13, p5, v9

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_65

    .line 174
    aput v12, p6, v9

    .line 175
    aput v11, p6, v8

    goto :goto_65

    .line 178
    :cond_5b
    aput-object v14, p5, v9

    .line 179
    const-string v13, "percentY"

    aput-object v13, p5, v8

    .line 180
    aput v12, p6, v9

    .line 181
    aput v11, p6, v8

    .line 183
    :cond_65
    :goto_65
    return-void
.end method

.method positionScreenAttributes(Landroid/view/View;Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V
    .registers 21
    .param p1, "view"    # Landroid/view/View;
    .param p2, "start"    # Landroid/graphics/RectF;
    .param p3, "end"    # Landroid/graphics/RectF;
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "attribute"    # [Ljava/lang/String;
    .param p7, "value"    # [F

    .line 186
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 187
    .local v0, "startCenterX":F
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 188
    .local v1, "startCenterY":F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    .line 189
    .local v2, "endCenterX":F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    .line 190
    .local v3, "endCenterY":F
    sub-float v4, v2, v0

    .line 191
    .local v4, "pathVectorX":F
    sub-float v5, v3, v1

    .line 192
    .local v5, "pathVectorY":F
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 193
    .local v6, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    .line 194
    .local v7, "width":I
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v8

    .line 196
    .local v8, "height":I
    const/4 v9, 0x0

    aget-object v10, p6, v9

    const-string v11, "percentX"

    const/4 v12, 0x1

    if-eqz v10, :cond_48

    .line 197
    aget-object v10, p6, v9

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3d

    .line 198
    int-to-float v10, v7

    div-float v10, p4, v10

    aput v10, p7, v9

    .line 199
    int-to-float v9, v8

    div-float v9, p5, v9

    aput v9, p7, v12

    goto :goto_58

    .line 201
    :cond_3d
    int-to-float v10, v7

    div-float v10, p4, v10

    aput v10, p7, v12

    .line 202
    int-to-float v10, v8

    div-float v10, p5, v10

    aput v10, p7, v9

    goto :goto_58

    .line 205
    :cond_48
    aput-object v11, p6, v9

    .line 206
    int-to-float v10, v7

    div-float v10, p4, v10

    aput v10, p7, v9

    .line 207
    const-string v9, "percentY"

    aput-object v9, p6, v12

    .line 208
    int-to-float v9, v8

    div-float v9, p5, v9

    aput v9, p7, v12

    .line 210
    :goto_58
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 346
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_88

    :cond_7
    goto :goto_4f

    :sswitch_8
    const-string v0, "percentY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_50

    :sswitch_12
    const-string v0, "percentX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_50

    :sswitch_1c
    const-string v0, "sizePercent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_50

    :sswitch_26
    const-string v0, "drawPath"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_50

    :sswitch_30
    const-string v0, "percentHeight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_50

    :sswitch_3a
    const-string v0, "percentWidth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_50

    :sswitch_44
    const-string/jumbo v0, "transitionEasing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_50

    :goto_4f
    const/4 v0, -0x1

    :goto_50
    packed-switch v0, :pswitch_data_a6

    goto :goto_87

    .line 366
    :pswitch_54
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyPosition;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    goto :goto_87

    .line 363
    :pswitch_5b
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyPosition;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    .line 364
    goto :goto_87

    .line 360
    :pswitch_62
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyPosition;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 361
    goto :goto_87

    .line 357
    :pswitch_6b
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyPosition;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 358
    goto :goto_87

    .line 354
    :pswitch_72
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyPosition;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    .line 355
    goto :goto_87

    .line 351
    :pswitch_79
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyPosition;->toInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    .line 352
    goto :goto_87

    .line 348
    :pswitch_80
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    .line 349
    nop

    .line 370
    :goto_87
    return-void

    :sswitch_data_88
    .sparse-switch
        -0x6c0d7d20 -> :sswitch_44
        -0x4330437f -> :sswitch_3a
        -0x3ca72634 -> :sswitch_30
        -0x314b3c77 -> :sswitch_26
        -0xbefb6fc -> :sswitch_1c
        0x198424b3 -> :sswitch_12
        0x198424b4 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_80
        :pswitch_79
        :pswitch_72
        :pswitch_6b
        :pswitch_62
        :pswitch_5b
        :pswitch_54
    .end packed-switch
.end method

###### Class androidx.constraintlayout.motion.widget.KeyPosition.Loader (androidx.constraintlayout.motion.widget.KeyPosition$Loader)
.class Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;
.super Ljava/lang/Object;
.source "KeyPosition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/KeyPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Loader"
.end annotation


# static fields
.field private static final CURVE_FIT:I = 0x4

.field private static final DRAW_PATH:I = 0x5

.field private static final FRAME_POSITION:I = 0x2

.field private static final PATH_MOTION_ARC:I = 0xa

.field private static final PERCENT_HEIGHT:I = 0xc

.field private static final PERCENT_WIDTH:I = 0xb

.field private static final PERCENT_X:I = 0x6

.field private static final PERCENT_Y:I = 0x7

.field private static final SIZE_PERCENT:I = 0x8

.field private static final TARGET_ID:I = 0x1

.field private static final TRANSITION_EASING:I = 0x3

.field private static final TYPE:I = 0x9

.field private static mAttrMap:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 259
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 262
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_motionTarget:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 263
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_framePosition:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 264
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_transitionEasing:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 265
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_curveFit:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 266
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_drawPath:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 267
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_percentX:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 268
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_percentY:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 269
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_keyPositionType:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 270
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_sizePercent:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 271
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_percentWidth:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 272
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_percentHeight:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 273
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_pathMotionArc:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 274
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroid/content/res/TypedArray;)V
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyPosition;
    .param p1, "x1"    # Landroid/content/res/TypedArray;

    .line 245
    invoke-static {p0, p1}, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->read(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroid/content/res/TypedArray;)V

    return-void
.end method

.method private static read(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroid/content/res/TypedArray;)V
    .registers 9
    .param p0, "c"    # Landroidx/constraintlayout/motion/widget/KeyPosition;
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 277
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 278
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    const-string v2, "KeyPosition"

    const/4 v3, -0x1

    if-ge v1, v0, :cond_f5

    .line 279
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 280
    .local v4, "attr":I
    sget-object v5, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    const/4 v6, 0x3

    packed-switch v5, :pswitch_data_100

    .line 334
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unused attribute 0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "   "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f1

    .line 327
    :pswitch_45
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 328
    goto/16 :goto_f1

    .line 324
    :pswitch_4f
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    .line 325
    goto/16 :goto_f1

    .line 306
    :pswitch_59
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    .line 307
    goto/16 :goto_f1

    .line 330
    :pswitch_63
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    .line 331
    goto/16 :goto_f1

    .line 321
    :pswitch_6d
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 322
    goto/16 :goto_f1

    .line 318
    :pswitch_79
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    .line 319
    goto/16 :goto_f1

    .line 315
    :pswitch_83
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    .line 316
    goto :goto_f1

    .line 312
    :pswitch_8c
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    .line 313
    goto :goto_f1

    .line 309
    :pswitch_95
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCurveFit:I

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCurveFit:I

    .line 310
    goto :goto_f1

    .line 299
    :pswitch_9e
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iget v2, v2, Landroid/util/TypedValue;->type:I

    if-ne v2, v6, :cond_ad

    .line 300
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    goto :goto_f1

    .line 302
    :cond_ad
    sget-object v2, Landroidx/constraintlayout/motion/utils/Easing;->NAMED_EASING:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    .line 304
    goto :goto_f1

    .line 296
    :pswitch_b9
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mFramePosition:I

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mFramePosition:I

    .line 297
    goto :goto_f1

    .line 282
    :pswitch_c2
    sget-boolean v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->IS_IN_EDIT_MODE:Z

    if-eqz v2, :cond_d9

    .line 283
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTargetId:I

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTargetId:I

    .line 284
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTargetId:I

    if-ne v2, v3, :cond_f1

    .line 285
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTargetString:Ljava/lang/String;

    goto :goto_f1

    .line 288
    :cond_d9
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iget v2, v2, Landroid/util/TypedValue;->type:I

    if-ne v2, v6, :cond_e8

    .line 289
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTargetString:Ljava/lang/String;

    goto :goto_f1

    .line 291
    :cond_e8
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTargetId:I

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTargetId:I

    .line 294
    nop

    .line 278
    .end local v4    # "attr":I
    :cond_f1
    :goto_f1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 338
    .end local v1    # "i":I
    :cond_f5
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mFramePosition:I

    if-ne v1, v3, :cond_fe

    .line 339
    const-string v1, "no frame position"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_fe
    return-void

    nop

    :pswitch_data_100
    .packed-switch 0x1
        :pswitch_c2
        :pswitch_b9
        :pswitch_9e
        :pswitch_95
        :pswitch_8c
        :pswitch_83
        :pswitch_79
        :pswitch_6d
        :pswitch_63
        :pswitch_59
        :pswitch_4f
        :pswitch_45
    .end packed-switch
.end method
