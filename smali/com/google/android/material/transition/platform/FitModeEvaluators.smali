###### Class com.google.android.material.transition.platform.FitModeEvaluators (com.google.android.material.transition.platform.FitModeEvaluators)
.class Lcom/google/android/material/transition/platform/FitModeEvaluators;
.super Ljava/lang/Object;
.source "FitModeEvaluators.java"


# static fields
.field private static final HEIGHT:Lcom/google/android/material/transition/platform/FitModeEvaluator;

.field private static final WIDTH:Lcom/google/android/material/transition/platform/FitModeEvaluator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Lcom/google/android/material/transition/platform/FitModeEvaluators$1;

    invoke-direct {v0}, Lcom/google/android/material/transition/platform/FitModeEvaluators$1;-><init>()V

    sput-object v0, Lcom/google/android/material/transition/platform/FitModeEvaluators;->WIDTH:Lcom/google/android/material/transition/platform/FitModeEvaluator;

    .line 80
    new-instance v0, Lcom/google/android/material/transition/platform/FitModeEvaluators$2;

    invoke-direct {v0}, Lcom/google/android/material/transition/platform/FitModeEvaluators$2;-><init>()V

    sput-object v0, Lcom/google/android/material/transition/platform/FitModeEvaluators;->HEIGHT:Lcom/google/android/material/transition/platform/FitModeEvaluator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static get(IZLandroid/graphics/RectF;Landroid/graphics/RectF;)Lcom/google/android/material/transition/platform/FitModeEvaluator;
    .registers 7
    .param p0, "fitMode"    # I
    .param p1, "entering"    # Z
    .param p2, "startBounds"    # Landroid/graphics/RectF;
    .param p3, "endBounds"    # Landroid/graphics/RectF;

    .line 129
    packed-switch p0, :pswitch_data_2e

    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid fit mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :pswitch_1c
    sget-object v0, Lcom/google/android/material/transition/platform/FitModeEvaluators;->HEIGHT:Lcom/google/android/material/transition/platform/FitModeEvaluator;

    return-object v0

    .line 133
    :pswitch_1f
    sget-object v0, Lcom/google/android/material/transition/platform/FitModeEvaluators;->WIDTH:Lcom/google/android/material/transition/platform/FitModeEvaluator;

    return-object v0

    .line 131
    :pswitch_22
    invoke-static {p1, p2, p3}, Lcom/google/android/material/transition/platform/FitModeEvaluators;->shouldAutoFitToWidth(ZLandroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/google/android/material/transition/platform/FitModeEvaluators;->WIDTH:Lcom/google/android/material/transition/platform/FitModeEvaluator;

    goto :goto_2d

    :cond_2b
    sget-object v0, Lcom/google/android/material/transition/platform/FitModeEvaluators;->HEIGHT:Lcom/google/android/material/transition/platform/FitModeEvaluator;

    :goto_2d
    return-object v0

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method private static shouldAutoFitToWidth(ZLandroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .registers 12
    .param p0, "entering"    # Z
    .param p1, "startBounds"    # Landroid/graphics/RectF;
    .param p2, "endBounds"    # Landroid/graphics/RectF;

    .line 143
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    .line 144
    .local v0, "startWidth":F
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    .line 145
    .local v1, "startHeight":F
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 146
    .local v2, "endWidth":F
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v3

    .line 148
    .local v3, "endHeight":F
    mul-float v4, v3, v0

    div-float/2addr v4, v2

    .line 149
    .local v4, "endHeightFitToWidth":F
    mul-float v5, v1, v2

    div-float/2addr v5, v0

    .line 150
    .local v5, "startHeightFitToWidth":F
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p0, :cond_1f

    cmpl-float v8, v4, v1

    if-ltz v8, :cond_24

    goto :goto_23

    :cond_1f
    cmpl-float v8, v5, v3

    if-ltz v8, :cond_24

    :goto_23
    goto :goto_25

    :cond_24
    move v6, v7

    :goto_25
    return v6
.end method

###### Class com.google.android.material.transition.platform.FitModeEvaluators.AnonymousClass1 (com.google.android.material.transition.platform.FitModeEvaluators$1)
.class Lcom/google/android/material/transition/platform/FitModeEvaluators$1;
.super Ljava/lang/Object;
.source "FitModeEvaluators.java"

# interfaces
.implements Lcom/google/android/material/transition/platform/FitModeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/transition/platform/FitModeEvaluators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyMask(Landroid/graphics/RectF;FLcom/google/android/material/transition/platform/FitModeResult;)V
    .registers 7
    .param p1, "maskBounds"    # Landroid/graphics/RectF;
    .param p2, "maskMultiplier"    # F
    .param p3, "fitModeResult"    # Lcom/google/android/material/transition/platform/FitModeResult;

    .line 74
    iget v0, p3, Lcom/google/android/material/transition/platform/FitModeResult;->currentEndHeight:F

    iget v1, p3, Lcom/google/android/material/transition/platform/FitModeResult;->currentStartHeight:F

    sub-float/2addr v0, v1

    .line 75
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 76
    .local v0, "currentHeightDiff":F
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    mul-float v2, v0, p2

    sub-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 77
    return-void
.end method

.method public evaluate(FFFFFFF)Lcom/google/android/material/transition/platform/FitModeResult;
    .registers 21
    .param p1, "progress"    # F
    .param p2, "scaleStartFraction"    # F
    .param p3, "scaleEndFraction"    # F
    .param p4, "startWidth"    # F
    .param p5, "startHeight"    # F
    .param p6, "endWidth"    # F
    .param p7, "endHeight"    # F

    .line 46
    nop

    .line 47
    const/4 v5, 0x1

    move v4, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v0, p4

    move/from16 v1, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/transition/platform/TransitionUtils;->lerp(FFFFFZ)F

    move-result v9

    .line 54
    .local v9, "currentWidth":F
    div-float v7, v9, p4

    .line 55
    .local v7, "startScale":F
    div-float v8, v9, p6

    .line 56
    .local v8, "endScale":F
    mul-float v10, p5, v7

    .line 57
    .local v10, "currentStartHeight":F
    mul-float v12, p7, v8

    .line 58
    .local v12, "currentEndHeight":F
    new-instance v6, Lcom/google/android/material/transition/platform/FitModeResult;

    move v11, v9

    invoke-direct/range {v6 .. v12}, Lcom/google/android/material/transition/platform/FitModeResult;-><init>(FFFFFF)V

    return-object v6
.end method

.method public shouldMaskStartBounds(Lcom/google/android/material/transition/platform/FitModeResult;)Z
    .registers 4
    .param p1, "fitModeResult"    # Lcom/google/android/material/transition/platform/FitModeResult;

    .line 69
    iget v0, p1, Lcom/google/android/material/transition/platform/FitModeResult;->currentStartHeight:F

    iget v1, p1, Lcom/google/android/material/transition/platform/FitModeResult;->currentEndHeight:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

###### Class com.google.android.material.transition.platform.FitModeEvaluators.AnonymousClass2 (com.google.android.material.transition.platform.FitModeEvaluators$2)
.class Lcom/google/android/material/transition/platform/FitModeEvaluators$2;
.super Ljava/lang/Object;
.source "FitModeEvaluators.java"

# interfaces
.implements Lcom/google/android/material/transition/platform/FitModeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/transition/platform/FitModeEvaluators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyMask(Landroid/graphics/RectF;FLcom/google/android/material/transition/platform/FitModeResult;)V
    .registers 8
    .param p1, "maskBounds"    # Landroid/graphics/RectF;
    .param p2, "maskMultiplier"    # F
    .param p3, "fitModeResult"    # Lcom/google/android/material/transition/platform/FitModeResult;

    .line 120
    iget v0, p3, Lcom/google/android/material/transition/platform/FitModeResult;->currentEndWidth:F

    iget v1, p3, Lcom/google/android/material/transition/platform/FitModeResult;->currentStartWidth:F

    sub-float/2addr v0, v1

    .line 121
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 122
    .local v0, "currentWidthDiff":F
    iget v1, p1, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v0, v2

    mul-float/2addr v3, p2

    add-float/2addr v1, v3

    iput v1, p1, Landroid/graphics/RectF;->left:F

    .line 123
    iget v1, p1, Landroid/graphics/RectF;->right:F

    div-float v2, v0, v2

    mul-float/2addr v2, p2

    sub-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/RectF;->right:F

    .line 124
    return-void
.end method

.method public evaluate(FFFFFFF)Lcom/google/android/material/transition/platform/FitModeResult;
    .registers 21
    .param p1, "progress"    # F
    .param p2, "scaleStartFraction"    # F
    .param p3, "scaleEndFraction"    # F
    .param p4, "startWidth"    # F
    .param p5, "startHeight"    # F
    .param p6, "endWidth"    # F
    .param p7, "endHeight"    # F

    .line 92
    nop

    .line 93
    const/4 v5, 0x1

    move v4, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v0, p5

    move/from16 v1, p7

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/transition/platform/TransitionUtils;->lerp(FFFFFZ)F

    move-result v10

    .line 100
    .local v10, "currentHeight":F
    div-float v7, v10, p5

    .line 101
    .local v7, "startScale":F
    div-float v8, v10, p7

    .line 102
    .local v8, "endScale":F
    mul-float v9, p4, v7

    .line 103
    .local v9, "currentStartWidth":F
    mul-float v11, p6, v8

    .line 104
    .local v11, "currentEndWidth":F
    new-instance v6, Lcom/google/android/material/transition/platform/FitModeResult;

    move v12, v10

    invoke-direct/range {v6 .. v12}, Lcom/google/android/material/transition/platform/FitModeResult;-><init>(FFFFFF)V

    return-object v6
.end method

.method public shouldMaskStartBounds(Lcom/google/android/material/transition/platform/FitModeResult;)Z
    .registers 4
    .param p1, "fitModeResult"    # Lcom/google/android/material/transition/platform/FitModeResult;

    .line 115
    iget v0, p1, Lcom/google/android/material/transition/platform/FitModeResult;->currentStartWidth:F

    iget v1, p1, Lcom/google/android/material/transition/platform/FitModeResult;->currentEndWidth:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
