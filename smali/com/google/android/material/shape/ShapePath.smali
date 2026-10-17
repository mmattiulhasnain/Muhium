###### Class com.google.android.material.shape.ShapePath (com.google.android.material.shape.ShapePath)
.class public Lcom/google/android/material/shape/ShapePath;
.super Ljava/lang/Object;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/shape/ShapePath$PathCubicOperation;,
        Lcom/google/android/material/shape/ShapePath$PathArcOperation;,
        Lcom/google/android/material/shape/ShapePath$PathQuadOperation;,
        Lcom/google/android/material/shape/ShapePath$PathLineOperation;,
        Lcom/google/android/material/shape/ShapePath$PathOperation;,
        Lcom/google/android/material/shape/ShapePath$ArcShadowOperation;,
        Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;,
        Lcom/google/android/material/shape/ShapePath$LineShadowOperation;,
        Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;
    }
.end annotation


# static fields
.field protected static final ANGLE_LEFT:F = 180.0f

.field private static final ANGLE_UP:F = 270.0f


# instance fields
.field private containsIncompatibleShadowOp:Z

.field public currentShadowAngle:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public endShadowAngle:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public endX:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public endY:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final operations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/shape/ShapePath$PathOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final shadowCompatOperations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;",
            ">;"
        }
    .end annotation
.end field

.field public startX:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public startY:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapePath;->operations:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapePath;->shadowCompatOperations:Ljava/util/List;

    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/google/android/material/shape/ShapePath;->reset(FF)V

    .line 98
    return-void
.end method

.method public constructor <init>(FF)V
    .registers 4
    .param p1, "startX"    # F
    .param p2, "startY"    # F

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapePath;->operations:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapePath;->shadowCompatOperations:Ljava/util/List;

    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/shape/ShapePath;->reset(FF)V

    .line 102
    return-void
.end method

.method private addConnectingShadowIfNecessary(F)V
    .registers 8
    .param p1, "nextShadowAngle"    # F

    .line 335
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath;->getCurrentShadowAngle()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_9

    .line 337
    return-void

    .line 339
    :cond_9
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath;->getCurrentShadowAngle()F

    move-result v0

    sub-float v0, p1, v0

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    .line 340
    .local v0, "shadowSweep":F
    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1a

    .line 342
    return-void

    .line 344
    :cond_1a
    new-instance v1, Lcom/google/android/material/shape/ShapePath$PathArcOperation;

    .line 345
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath;->getEndX()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath;->getEndY()F

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath;->getEndX()F

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath;->getEndY()F

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;-><init>(FFFF)V

    .line 346
    .local v1, "pathArcOperation":Lcom/google/android/material/shape/ShapePath$PathArcOperation;
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath;->getCurrentShadowAngle()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->access$600(Lcom/google/android/material/shape/ShapePath$PathArcOperation;F)V

    .line 347
    invoke-static {v1, v0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->access$700(Lcom/google/android/material/shape/ShapePath$PathArcOperation;F)V

    .line 348
    iget-object v2, p0, Lcom/google/android/material/shape/ShapePath;->shadowCompatOperations:Ljava/util/List;

    new-instance v3, Lcom/google/android/material/shape/ShapePath$ArcShadowOperation;

    invoke-direct {v3, v1}, Lcom/google/android/material/shape/ShapePath$ArcShadowOperation;-><init>(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapePath;->setCurrentShadowAngle(F)V

    .line 350
    return-void
.end method

.method private addShadowCompatOperation(Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;FF)V
    .registers 5
    .param p1, "shadowOperation"    # Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;
    .param p2, "startShadowAngle"    # F
    .param p3, "endShadowAngle"    # F

    .line 317
    invoke-direct {p0, p2}, Lcom/google/android/material/shape/ShapePath;->addConnectingShadowIfNecessary(F)V

    .line 318
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath;->shadowCompatOperations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/ShapePath;->setCurrentShadowAngle(F)V

    .line 320
    return-void
.end method

.method private getCurrentShadowAngle()F
    .registers 2

    .line 369
    iget v0, p0, Lcom/google/android/material/shape/ShapePath;->currentShadowAngle:F

    return v0
.end method

.method private getEndShadowAngle()F
    .registers 2

    .line 373
    iget v0, p0, Lcom/google/android/material/shape/ShapePath;->endShadowAngle:F

    return v0
.end method

.method private setCurrentShadowAngle(F)V
    .registers 2
    .param p1, "currentShadowAngle"    # F

    .line 393
    iput p1, p0, Lcom/google/android/material/shape/ShapePath;->currentShadowAngle:F

    .line 394
    return-void
.end method

.method private setEndShadowAngle(F)V
    .registers 2
    .param p1, "endShadowAngle"    # F

    .line 397
    iput p1, p0, Lcom/google/android/material/shape/ShapePath;->endShadowAngle:F

    .line 398
    return-void
.end method

.method private setEndX(F)V
    .registers 2
    .param p1, "endX"    # F

    .line 385
    iput p1, p0, Lcom/google/android/material/shape/ShapePath;->endX:F

    .line 386
    return-void
.end method

.method private setEndY(F)V
    .registers 2
    .param p1, "endY"    # F

    .line 389
    iput p1, p0, Lcom/google/android/material/shape/ShapePath;->endY:F

    .line 390
    return-void
.end method

.method private setStartX(F)V
    .registers 2
    .param p1, "startX"    # F

    .line 377
    iput p1, p0, Lcom/google/android/material/shape/ShapePath;->startX:F

    .line 378
    return-void
.end method

.method private setStartY(F)V
    .registers 2
    .param p1, "startY"    # F

    .line 381
    iput p1, p0, Lcom/google/android/material/shape/ShapePath;->startY:F

    .line 382
    return-void
.end method


# virtual methods
.method public addArc(FFFFFF)V
    .registers 25
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "startAngle"    # F
    .param p6, "sweepAngle"    # F

    .line 253
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    new-instance v7, Lcom/google/android/material/shape/ShapePath$PathArcOperation;

    invoke-direct {v7, v1, v2, v3, v4}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;-><init>(FFFF)V

    .line 254
    .local v7, "operation":Lcom/google/android/material/shape/ShapePath$PathArcOperation;
    invoke-static {v7, v5}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->access$600(Lcom/google/android/material/shape/ShapePath$PathArcOperation;F)V

    .line 255
    invoke-static {v7, v6}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->access$700(Lcom/google/android/material/shape/ShapePath$PathArcOperation;F)V

    .line 256
    iget-object v8, v0, Lcom/google/android/material/shape/ShapePath;->operations:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    new-instance v8, Lcom/google/android/material/shape/ShapePath$ArcShadowOperation;

    invoke-direct {v8, v7}, Lcom/google/android/material/shape/ShapePath$ArcShadowOperation;-><init>(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)V

    .line 259
    .local v8, "arcShadowOperation":Lcom/google/android/material/shape/ShapePath$ArcShadowOperation;
    add-float v9, v5, v6

    .line 263
    .local v9, "endAngle":F
    const/4 v10, 0x0

    cmpg-float v10, v6, v10

    if-gez v10, :cond_2c

    const/4 v10, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v10, 0x0

    .line 264
    .local v10, "drawShadowInsideBounds":Z
    :goto_2d
    nop

    .line 266
    const/high16 v11, 0x43b40000    # 360.0f

    const/high16 v12, 0x43340000    # 180.0f

    if-eqz v10, :cond_38

    add-float v13, v5, v12

    rem-float/2addr v13, v11

    goto :goto_39

    :cond_38
    move v13, v5

    .line 267
    :goto_39
    if-eqz v10, :cond_3e

    add-float/2addr v12, v9

    rem-float/2addr v12, v11

    goto :goto_3f

    :cond_3e
    move v12, v9

    .line 264
    :goto_3f
    invoke-direct {v0, v8, v13, v12}, Lcom/google/android/material/shape/ShapePath;->addShadowCompatOperation(Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;FF)V

    .line 269
    add-float v11, v1, v3

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v11, v12

    sub-float v13, v3, v1

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float v15, v5, v6

    move/from16 v16, v12

    move/from16 v17, v13

    float-to-double v12, v15

    .line 271
    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v12, v12

    mul-float v13, v17, v12

    add-float/2addr v11, v13

    .line 269
    invoke-direct {v0, v11}, Lcom/google/android/material/shape/ShapePath;->setEndX(F)V

    .line 272
    add-float v11, v2, v4

    mul-float v11, v11, v16

    sub-float v12, v4, v2

    div-float/2addr v12, v14

    add-float v13, v5, v6

    float-to-double v13, v13

    .line 274
    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    double-to-float v13, v13

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    .line 272
    invoke-direct {v0, v11}, Lcom/google/android/material/shape/ShapePath;->setEndY(F)V

    .line 275
    return-void
.end method

.method public applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .registers 6
    .param p1, "transform"    # Landroid/graphics/Matrix;
    .param p2, "path"    # Landroid/graphics/Path;

    .line 284
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/google/android/material/shape/ShapePath;->operations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 285
    iget-object v2, p0, Lcom/google/android/material/shape/ShapePath;->operations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/shape/ShapePath$PathOperation;

    .line 286
    .local v2, "operation":Lcom/google/android/material/shape/ShapePath$PathOperation;
    invoke-virtual {v2, p1, p2}, Lcom/google/android/material/shape/ShapePath$PathOperation;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 284
    .end local v2    # "operation":Lcom/google/android/material/shape/ShapePath$PathOperation;
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 288
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_17
    return-void
.end method

.method containsIncompatibleShadowOp()Z
    .registers 2

    .line 327
    iget-boolean v0, p0, Lcom/google/android/material/shape/ShapePath;->containsIncompatibleShadowOp:Z

    return v0
.end method

.method createShadowCompatOperation(Landroid/graphics/Matrix;)Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;
    .registers 5
    .param p1, "transform"    # Landroid/graphics/Matrix;

    .line 297
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath;->getEndShadowAngle()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapePath;->addConnectingShadowIfNecessary(F)V

    .line 298
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 299
    .local v0, "transformCopy":Landroid/graphics/Matrix;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/material/shape/ShapePath;->shadowCompatOperations:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 300
    .local v1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;>;"
    new-instance v2, Lcom/google/android/material/shape/ShapePath$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/android/material/shape/ShapePath$1;-><init>(Lcom/google/android/material/shape/ShapePath;Ljava/util/List;Landroid/graphics/Matrix;)V

    return-object v2
.end method

.method public cubicToPoint(FFFFFF)V
    .registers 14
    .param p1, "controlX1"    # F
    .param p2, "controlY1"    # F
    .param p3, "controlX2"    # F
    .param p4, "controlY2"    # F
    .param p5, "toX"    # F
    .param p6, "toY"    # F

    .line 231
    new-instance v0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p1    # "controlX1":F
    .end local p2    # "controlY1":F
    .end local p3    # "controlX2":F
    .end local p4    # "controlY2":F
    .end local p5    # "toX":F
    .end local p6    # "toY":F
    .local v1, "controlX1":F
    .local v2, "controlY1":F
    .local v3, "controlX2":F
    .local v4, "controlY2":F
    .local v5, "toX":F
    .local v6, "toY":F
    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;-><init>(FFFFFF)V

    .line 233
    .local v0, "operation":Lcom/google/android/material/shape/ShapePath$PathCubicOperation;
    iget-object p1, p0, Lcom/google/android/material/shape/ShapePath;->operations:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/shape/ShapePath;->containsIncompatibleShadowOp:Z

    .line 237
    invoke-direct {p0, v5}, Lcom/google/android/material/shape/ShapePath;->setEndX(F)V

    .line 238
    invoke-direct {p0, v6}, Lcom/google/android/material/shape/ShapePath;->setEndY(F)V

    .line 239
    return-void
.end method

.method getEndX()F
    .registers 2

    .line 361
    iget v0, p0, Lcom/google/android/material/shape/ShapePath;->endX:F

    return v0
.end method

.method getEndY()F
    .registers 2

    .line 365
    iget v0, p0, Lcom/google/android/material/shape/ShapePath;->endY:F

    return v0
.end method

.method getStartX()F
    .registers 2

    .line 353
    iget v0, p0, Lcom/google/android/material/shape/ShapePath;->startX:F

    return v0
.end method

.method getStartY()F
    .registers 2

    .line 357
    iget v0, p0, Lcom/google/android/material/shape/ShapePath;->startY:F

    return v0
.end method

.method public lineTo(FF)V
    .registers 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 132
    new-instance v0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-direct {v0}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;-><init>()V

    .line 133
    .local v0, "operation":Lcom/google/android/material/shape/ShapePath$PathLineOperation;
    invoke-static {v0, p1}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$002(Lcom/google/android/material/shape/ShapePath$PathLineOperation;F)F

    .line 134
    invoke-static {v0, p2}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$102(Lcom/google/android/material/shape/ShapePath$PathLineOperation;F)F

    .line 135
    iget-object v1, p0, Lcom/google/android/material/shape/ShapePath;->operations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v1, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;

    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath;->getEndX()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath;->getEndY()F

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;-><init>(Lcom/google/android/material/shape/ShapePath$PathLineOperation;FF)V

    .line 140
    .local v1, "shadowOperation":Lcom/google/android/material/shape/ShapePath$LineShadowOperation;
    nop

    .line 142
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->getAngle()F

    move-result v2

    const/high16 v3, 0x43870000    # 270.0f

    add-float/2addr v2, v3

    .line 143
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->getAngle()F

    move-result v4

    add-float/2addr v4, v3

    .line 140
    invoke-direct {p0, v1, v2, v4}, Lcom/google/android/material/shape/ShapePath;->addShadowCompatOperation(Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;FF)V

    .line 145
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapePath;->setEndX(F)V

    .line 146
    invoke-direct {p0, p2}, Lcom/google/android/material/shape/ShapePath;->setEndY(F)V

    .line 147
    return-void
.end method

.method public lineTo(FFFF)V
    .registers 11
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .line 155
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath;->getEndX()F

    move-result v0

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1f

    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath;->getEndY()F

    move-result v0

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_33

    :cond_1f
    sub-float v0, p1, p3

    .line 156
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_37

    sub-float v0, p2, p4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_37

    .line 157
    :cond_33
    invoke-virtual {p0, p3, p4}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 158
    return-void

    .line 160
    :cond_37
    new-instance v0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-direct {v0}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;-><init>()V

    .line 161
    .local v0, "operation1":Lcom/google/android/material/shape/ShapePath$PathLineOperation;
    invoke-static {v0, p1}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$002(Lcom/google/android/material/shape/ShapePath$PathLineOperation;F)F

    .line 162
    invoke-static {v0, p2}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$102(Lcom/google/android/material/shape/ShapePath$PathLineOperation;F)F

    .line 163
    iget-object v1, p0, Lcom/google/android/material/shape/ShapePath;->operations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v1, Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-direct {v1}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;-><init>()V

    .line 165
    .local v1, "operation2":Lcom/google/android/material/shape/ShapePath$PathLineOperation;
    invoke-static {v1, p3}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$002(Lcom/google/android/material/shape/ShapePath$PathLineOperation;F)F

    .line 166
    invoke-static {v1, p4}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$102(Lcom/google/android/material/shape/ShapePath$PathLineOperation;F)F

    .line 167
    iget-object v2, p0, Lcom/google/android/material/shape/ShapePath;->operations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v2, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;

    .line 171
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath;->getEndX()F

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath;->getEndY()F

    move-result v4

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;-><init>(Lcom/google/android/material/shape/ShapePath$PathLineOperation;Lcom/google/android/material/shape/ShapePath$PathLineOperation;FF)V

    .line 173
    .local v2, "shadowOperation":Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;
    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->getSweepAngle()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_74

    .line 175
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 176
    invoke-virtual {p0, p3, p4}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 177
    return-void

    .line 180
    :cond_74
    nop

    .line 182
    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->getStartAngle()F

    move-result v3

    const/high16 v4, 0x43870000    # 270.0f

    add-float/2addr v3, v4

    .line 183
    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->getEndAngle()F

    move-result v5

    add-float/2addr v5, v4

    .line 180
    invoke-direct {p0, v2, v3, v5}, Lcom/google/android/material/shape/ShapePath;->addShadowCompatOperation(Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;FF)V

    .line 185
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/ShapePath;->setEndX(F)V

    .line 186
    invoke-direct {p0, p4}, Lcom/google/android/material/shape/ShapePath;->setEndY(F)V

    .line 187
    return-void
.end method

.method public quadToPoint(FFFF)V
    .registers 7
    .param p1, "controlX"    # F
    .param p2, "controlY"    # F
    .param p3, "toX"    # F
    .param p4, "toY"    # F

    .line 202
    new-instance v0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;

    invoke-direct {v0}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;-><init>()V

    .line 203
    .local v0, "operation":Lcom/google/android/material/shape/ShapePath$PathQuadOperation;
    invoke-static {v0, p1}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->access$200(Lcom/google/android/material/shape/ShapePath$PathQuadOperation;F)V

    .line 204
    invoke-static {v0, p2}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->access$300(Lcom/google/android/material/shape/ShapePath$PathQuadOperation;F)V

    .line 205
    invoke-static {v0, p3}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->access$400(Lcom/google/android/material/shape/ShapePath$PathQuadOperation;F)V

    .line 206
    invoke-static {v0, p4}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->access$500(Lcom/google/android/material/shape/ShapePath$PathQuadOperation;F)V

    .line 207
    iget-object v1, p0, Lcom/google/android/material/shape/ShapePath;->operations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/material/shape/ShapePath;->containsIncompatibleShadowOp:Z

    .line 211
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/ShapePath;->setEndX(F)V

    .line 212
    invoke-direct {p0, p4}, Lcom/google/android/material/shape/ShapePath;->setEndY(F)V

    .line 213
    return-void
.end method

.method public reset(FF)V
    .registers 5
    .param p1, "startX"    # F
    .param p2, "startY"    # F

    .line 109
    const/high16 v0, 0x43870000    # 270.0f

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/material/shape/ShapePath;->reset(FFFF)V

    .line 110
    return-void
.end method

.method public reset(FFFF)V
    .registers 7
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "shadowStartAngle"    # F
    .param p4, "shadowSweepAngle"    # F

    .line 114
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapePath;->setStartX(F)V

    .line 115
    invoke-direct {p0, p2}, Lcom/google/android/material/shape/ShapePath;->setStartY(F)V

    .line 116
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapePath;->setEndX(F)V

    .line 117
    invoke-direct {p0, p2}, Lcom/google/android/material/shape/ShapePath;->setEndY(F)V

    .line 118
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/ShapePath;->setCurrentShadowAngle(F)V

    .line 119
    add-float v0, p3, p4

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapePath;->setEndShadowAngle(F)V

    .line 120
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath;->operations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 121
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath;->shadowCompatOperations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/shape/ShapePath;->containsIncompatibleShadowOp:Z

    .line 123
    return-void
.end method

###### Class com.google.android.material.shape.ShapePath.AnonymousClass1 (com.google.android.material.shape.ShapePath$1)
.class Lcom/google/android/material/shape/ShapePath$1;
.super Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/shape/ShapePath;->createShadowCompatOperation(Landroid/graphics/Matrix;)Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/shape/ShapePath;

.field final synthetic val$operations:Ljava/util/List;

.field final synthetic val$transformCopy:Landroid/graphics/Matrix;


# direct methods
.method constructor <init>(Lcom/google/android/material/shape/ShapePath;Ljava/util/List;Landroid/graphics/Matrix;)V
    .registers 4
    .param p1, "this$0"    # Lcom/google/android/material/shape/ShapePath;

    .line 300
    iput-object p1, p0, Lcom/google/android/material/shape/ShapePath$1;->this$0:Lcom/google/android/material/shape/ShapePath;

    iput-object p2, p0, Lcom/google/android/material/shape/ShapePath$1;->val$operations:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/material/shape/ShapePath$1;->val$transformCopy:Landroid/graphics/Matrix;

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Matrix;Lcom/google/android/material/shadow/ShadowRenderer;ILandroid/graphics/Canvas;)V
    .registers 8
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "shadowRenderer"    # Lcom/google/android/material/shadow/ShadowRenderer;
    .param p3, "shadowElevation"    # I
    .param p4, "canvas"    # Landroid/graphics/Canvas;

    .line 304
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$1;->val$operations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    .line 305
    .local v1, "op":Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;
    iget-object v2, p0, Lcom/google/android/material/shape/ShapePath$1;->val$transformCopy:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2, p2, p3, p4}, Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;->draw(Landroid/graphics/Matrix;Lcom/google/android/material/shadow/ShadowRenderer;ILandroid/graphics/Canvas;)V

    .line 306
    .end local v1    # "op":Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;
    goto :goto_6

    .line 307
    :cond_18
    return-void
.end method

###### Class com.google.android.material.shape.ShapePath.ArcShadowOperation (com.google.android.material.shape.ShapePath$ArcShadowOperation)
.class Lcom/google/android/material/shape/ShapePath$ArcShadowOperation;
.super Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ArcShadowOperation"
.end annotation


# instance fields
.field private final operation:Lcom/google/android/material/shape/ShapePath$PathArcOperation;


# direct methods
.method public constructor <init>(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)V
    .registers 2
    .param p1, "operation"    # Lcom/google/android/material/shape/ShapePath$PathArcOperation;

    .line 547
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;-><init>()V

    .line 548
    iput-object p1, p0, Lcom/google/android/material/shape/ShapePath$ArcShadowOperation;->operation:Lcom/google/android/material/shape/ShapePath$PathArcOperation;

    .line 549
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Matrix;Lcom/google/android/material/shadow/ShadowRenderer;ILandroid/graphics/Canvas;)V
    .registers 13
    .param p1, "transform"    # Landroid/graphics/Matrix;
    .param p2, "shadowRenderer"    # Lcom/google/android/material/shadow/ShadowRenderer;
    .param p3, "shadowElevation"    # I
    .param p4, "canvas"    # Landroid/graphics/Canvas;

    .line 557
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$ArcShadowOperation;->operation:Lcom/google/android/material/shape/ShapePath$PathArcOperation;

    invoke-static {v0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->access$800(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)F

    move-result v6

    .line 558
    .local v6, "startAngle":F
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$ArcShadowOperation;->operation:Lcom/google/android/material/shape/ShapePath$PathArcOperation;

    invoke-static {v0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->access$900(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)F

    move-result v7

    .line 559
    .local v7, "sweepAngle":F
    new-instance v4, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$ArcShadowOperation;->operation:Lcom/google/android/material/shape/ShapePath$PathArcOperation;

    .line 561
    invoke-static {v0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->access$1000(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/shape/ShapePath$ArcShadowOperation;->operation:Lcom/google/android/material/shape/ShapePath$PathArcOperation;

    invoke-static {v1}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->access$1100(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/shape/ShapePath$ArcShadowOperation;->operation:Lcom/google/android/material/shape/ShapePath$PathArcOperation;

    invoke-static {v2}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->access$1200(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)F

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/shape/ShapePath$ArcShadowOperation;->operation:Lcom/google/android/material/shape/ShapePath$PathArcOperation;

    invoke-static {v3}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->access$1300(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)F

    move-result v3

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 562
    .local v4, "rect":Landroid/graphics/RectF;
    move-object v3, p1

    move-object v1, p2

    move v5, p3

    move-object v2, p4

    .end local p1    # "transform":Landroid/graphics/Matrix;
    .end local p2    # "shadowRenderer":Lcom/google/android/material/shadow/ShadowRenderer;
    .end local p3    # "shadowElevation":I
    .end local p4    # "canvas":Landroid/graphics/Canvas;
    .local v1, "shadowRenderer":Lcom/google/android/material/shadow/ShadowRenderer;
    .local v2, "canvas":Landroid/graphics/Canvas;
    .local v3, "transform":Landroid/graphics/Matrix;
    .local v5, "shadowElevation":I
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/material/shadow/ShadowRenderer;->drawCornerShadow(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;IFF)V

    .line 564
    return-void
.end method

###### Class com.google.android.material.shape.ShapePath.InnerCornerShadowOperation (com.google.android.material.shape.ShapePath$InnerCornerShadowOperation)
.class Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;
.super Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InnerCornerShadowOperation"
.end annotation


# instance fields
.field private final operation1:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

.field private final operation2:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

.field private final startX:F

.field private final startY:F


# direct methods
.method public constructor <init>(Lcom/google/android/material/shape/ShapePath$PathLineOperation;Lcom/google/android/material/shape/ShapePath$PathLineOperation;FF)V
    .registers 5
    .param p1, "operation1"    # Lcom/google/android/material/shape/ShapePath$PathLineOperation;
    .param p2, "operation2"    # Lcom/google/android/material/shape/ShapePath$PathLineOperation;
    .param p3, "startX"    # F
    .param p4, "startY"    # F

    .line 465
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;-><init>()V

    .line 466
    iput-object p1, p0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation1:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    .line 467
    iput-object p2, p0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation2:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    .line 468
    iput p3, p0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->startX:F

    .line 469
    iput p4, p0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->startY:F

    .line 470
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Matrix;Lcom/google/android/material/shadow/ShadowRenderer;ILandroid/graphics/Canvas;)V
    .registers 28
    .param p1, "transform"    # Landroid/graphics/Matrix;
    .param p2, "shadowRenderer"    # Lcom/google/android/material/shadow/ShadowRenderer;
    .param p3, "shadowElevation"    # I
    .param p4, "canvas"    # Landroid/graphics/Canvas;

    .line 475
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v10, p3

    move-object/from16 v3, p4

    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->getSweepAngle()F

    move-result v8

    .line 476
    .local v8, "sweepAngle":F
    const/4 v11, 0x0

    cmpl-float v4, v8, v11

    if-lez v4, :cond_14

    .line 478
    return-void

    .line 481
    :cond_14
    iget-object v4, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation1:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-static {v4}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$000(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v4

    iget v5, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->startX:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    iget-object v6, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation1:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-static {v6}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$100(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v6

    iget v7, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->startY:F

    sub-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v12

    .line 482
    .local v12, "length1":D
    iget-object v4, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation2:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-static {v4}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$000(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v4

    iget-object v5, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation1:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-static {v5}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$000(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    iget-object v6, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation2:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-static {v6}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$100(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v6

    iget-object v7, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation1:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-static {v7}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$100(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v7

    sub-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v14

    .line 483
    .local v14, "length2":D
    int-to-double v4, v10

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    double-to-float v4, v4

    .line 484
    .local v4, "arcRadius":F
    float-to-double v5, v4

    neg-float v7, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v7, v9

    move/from16 v16, v9

    float-to-double v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->tan(D)D

    move-result-wide v9

    mul-double/2addr v5, v9

    .line 486
    .local v5, "retractLength":D
    cmpl-double v7, v12, v5

    if-lez v7, :cond_92

    .line 487
    new-instance v7, Landroid/graphics/RectF;

    sub-double v9, v12, v5

    double-to-float v9, v9

    invoke-direct {v7, v11, v11, v9, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 488
    .local v7, "rect1":Landroid/graphics/RectF;
    iget-object v9, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 489
    iget-object v9, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    iget v10, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->startX:F

    iget v11, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->startY:F

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 490
    iget-object v9, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->getStartAngle()F

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 491
    iget-object v9, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    move/from16 v10, p3

    invoke-virtual {v2, v3, v9, v7, v10}, Lcom/google/android/material/shadow/ShadowRenderer;->drawEdgeShadow(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;I)V

    goto :goto_94

    .line 486
    .end local v7    # "rect1":Landroid/graphics/RectF;
    :cond_92
    move/from16 v10, p3

    .line 494
    :goto_94
    new-instance v7, Landroid/graphics/RectF;

    mul-float v9, v4, v16

    mul-float v11, v4, v16

    const/4 v2, 0x0

    invoke-direct {v7, v2, v2, v9, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 495
    .local v7, "rect":Landroid/graphics/RectF;
    iget-object v2, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 496
    iget-object v2, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    iget-object v9, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation1:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-static {v9}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$000(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v9

    iget-object v11, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation1:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-static {v11}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$100(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v11

    invoke-virtual {v2, v9, v11}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 497
    iget-object v2, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->getStartAngle()F

    move-result v9

    invoke-virtual {v2, v9}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 498
    iget-object v2, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    move-object v11, v7

    move v9, v8

    .end local v7    # "rect":Landroid/graphics/RectF;
    .end local v8    # "sweepAngle":F
    .local v9, "sweepAngle":F
    .local v11, "rect":Landroid/graphics/RectF;
    neg-double v7, v5

    move-wide/from16 v17, v5

    .end local v5    # "retractLength":D
    .local v17, "retractLength":D
    float-to-double v5, v4

    sub-double/2addr v7, v5

    double-to-float v5, v7

    const/high16 v6, -0x40000000    # -2.0f

    mul-float/2addr v6, v4

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 499
    iget-object v2, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    float-to-int v6, v4

    float-to-double v7, v4

    add-double v7, v7, v17

    double-to-float v5, v7

    mul-float v7, v4, v16

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/16 v16, 0x0

    aput v5, v8, v16

    const/4 v5, 0x1

    aput v7, v8, v5

    const/high16 v7, 0x43e10000    # 450.0f

    move v5, v9

    move-object v9, v8

    move v8, v5

    move-object v5, v11

    move-object/from16 v19, v2

    move-object/from16 v2, p2

    move/from16 v20, v4

    move-object/from16 v4, v19

    move-wide/from16 v21, v12

    move/from16 v13, v20

    move-wide/from16 v11, v17

    move-wide/from16 v17, v21

    .end local v4    # "arcRadius":F
    .end local v9    # "sweepAngle":F
    .end local v12    # "length1":D
    .local v5, "rect":Landroid/graphics/RectF;
    .restart local v8    # "sweepAngle":F
    .local v11, "retractLength":D
    .local v13, "arcRadius":F
    .local v17, "length1":D
    invoke-virtual/range {v2 .. v9}, Lcom/google/android/material/shadow/ShadowRenderer;->drawInnerCornerShadow(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;IFF[F)V

    .line 508
    cmpl-double v4, v14, v11

    if-lez v4, :cond_131

    .line 509
    new-instance v4, Landroid/graphics/RectF;

    sub-double v6, v14, v11

    double-to-float v6, v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 510
    .local v4, "rect2":Landroid/graphics/RectF;
    iget-object v6, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 511
    iget-object v6, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    iget-object v7, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation1:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-static {v7}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$000(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v7

    iget-object v9, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation1:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-static {v9}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$100(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v9

    invoke-virtual {v6, v7, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 512
    iget-object v6, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->getEndAngle()F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 513
    iget-object v6, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    double-to-float v7, v11

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 514
    iget-object v6, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3, v6, v4, v10}, Lcom/google/android/material/shadow/ShadowRenderer;->drawEdgeShadow(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;I)V

    .line 516
    .end local v4    # "rect2":Landroid/graphics/RectF;
    :cond_131
    return-void
.end method

.method getEndAngle()F
    .registers 4

    .line 523
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation2:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    .line 524
    invoke-static {v0}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$100(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation1:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-static {v1}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$100(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation2:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-static {v1}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$000(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation1:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-static {v2}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$000(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 523
    return v0
.end method

.method getStartAngle()F
    .registers 4

    .line 519
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation1:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-static {v0}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$100(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v0

    iget v1, p0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->startY:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation1:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-static {v1}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$000(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v1

    iget v2, p0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->startX:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method getSweepAngle()F
    .registers 4

    .line 533
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->getEndAngle()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->getStartAngle()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    .line 534
    .local v0, "shadowAngle":F
    const/high16 v2, 0x43340000    # 180.0f

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_14

    .line 535
    return v0

    .line 537
    :cond_14
    sub-float v1, v0, v1

    return v1
.end method

###### Class com.google.android.material.shape.ShapePath.LineShadowOperation (com.google.android.material.shape.ShapePath$LineShadowOperation)
.class Lcom/google/android/material/shape/ShapePath$LineShadowOperation;
.super Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LineShadowOperation"
.end annotation


# instance fields
.field private final operation:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

.field private final startX:F

.field private final startY:F


# direct methods
.method public constructor <init>(Lcom/google/android/material/shape/ShapePath$PathLineOperation;FF)V
    .registers 4
    .param p1, "operation"    # Lcom/google/android/material/shape/ShapePath$PathLineOperation;
    .param p2, "startX"    # F
    .param p3, "startY"    # F

    .line 426
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;-><init>()V

    .line 427
    iput-object p1, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->operation:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    .line 428
    iput p2, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->startX:F

    .line 429
    iput p3, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->startY:F

    .line 430
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Matrix;Lcom/google/android/material/shadow/ShadowRenderer;ILandroid/graphics/Canvas;)V
    .registers 12
    .param p1, "transform"    # Landroid/graphics/Matrix;
    .param p2, "shadowRenderer"    # Lcom/google/android/material/shadow/ShadowRenderer;
    .param p3, "shadowElevation"    # I
    .param p4, "canvas"    # Landroid/graphics/Canvas;

    .line 438
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->operation:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-static {v0}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$100(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v0

    iget v1, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->startY:F

    sub-float/2addr v0, v1

    .line 439
    .local v0, "height":F
    iget-object v1, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->operation:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-static {v1}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$000(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v1

    iget v2, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->startX:F

    sub-float/2addr v1, v2

    .line 440
    .local v1, "width":F
    new-instance v2, Landroid/graphics/RectF;

    float-to-double v3, v0

    float-to-double v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 442
    .local v2, "rect":Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 443
    iget-object v3, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->startX:F

    iget v5, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->startY:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 444
    iget-object v3, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->getAngle()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 445
    iget-object v3, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, p4, v3, v2, p3}, Lcom/google/android/material/shadow/ShadowRenderer;->drawEdgeShadow(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;I)V

    .line 446
    return-void
.end method

.method getAngle()F
    .registers 4

    .line 449
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->operation:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-static {v0}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$100(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v0

    iget v1, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->startY:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->operation:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-static {v1}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$000(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v1

    iget v2, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->startX:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

###### Class com.google.android.material.shape.ShapePath.PathArcOperation (com.google.android.material.shape.ShapePath$PathArcOperation)
.class public Lcom/google/android/material/shape/ShapePath$PathArcOperation;
.super Lcom/google/android/material/shape/ShapePath$PathOperation;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathArcOperation"
.end annotation


# static fields
.field private static final rectF:Landroid/graphics/RectF;


# instance fields
.field public bottom:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public left:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public right:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public startAngle:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public sweepAngle:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public top:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 659
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->rectF:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(FFFF)V
    .registers 5
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 692
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathOperation;-><init>()V

    .line 693
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->setLeft(F)V

    .line 694
    invoke-direct {p0, p2}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->setTop(F)V

    .line 695
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->setRight(F)V

    .line 696
    invoke-direct {p0, p4}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->setBottom(F)V

    .line 697
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)F
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/shape/ShapePath$PathArcOperation;

    .line 658
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getLeft()F

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)F
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/shape/ShapePath$PathArcOperation;

    .line 658
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getTop()F

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)F
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/shape/ShapePath$PathArcOperation;

    .line 658
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getRight()F

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)F
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/shape/ShapePath$PathArcOperation;

    .line 658
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getBottom()F

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/material/shape/ShapePath$PathArcOperation;F)V
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/shape/ShapePath$PathArcOperation;
    .param p1, "x1"    # F

    .line 658
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->setStartAngle(F)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/material/shape/ShapePath$PathArcOperation;F)V
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/shape/ShapePath$PathArcOperation;
    .param p1, "x1"    # F

    .line 658
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->setSweepAngle(F)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)F
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/shape/ShapePath$PathArcOperation;

    .line 658
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getStartAngle()F

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)F
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/shape/ShapePath$PathArcOperation;

    .line 658
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getSweepAngle()F

    move-result v0

    return v0
.end method

.method private getBottom()F
    .registers 2

    .line 722
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->bottom:F

    return v0
.end method

.method private getLeft()F
    .registers 2

    .line 710
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->left:F

    return v0
.end method

.method private getRight()F
    .registers 2

    .line 718
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->right:F

    return v0
.end method

.method private getStartAngle()F
    .registers 2

    .line 742
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->startAngle:F

    return v0
.end method

.method private getSweepAngle()F
    .registers 2

    .line 746
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->sweepAngle:F

    return v0
.end method

.method private getTop()F
    .registers 2

    .line 714
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->top:F

    return v0
.end method

.method private setBottom(F)V
    .registers 2
    .param p1, "bottom"    # F

    .line 738
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->bottom:F

    .line 739
    return-void
.end method

.method private setLeft(F)V
    .registers 2
    .param p1, "left"    # F

    .line 726
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->left:F

    .line 727
    return-void
.end method

.method private setRight(F)V
    .registers 2
    .param p1, "right"    # F

    .line 734
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->right:F

    .line 735
    return-void
.end method

.method private setStartAngle(F)V
    .registers 2
    .param p1, "startAngle"    # F

    .line 750
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->startAngle:F

    .line 751
    return-void
.end method

.method private setSweepAngle(F)V
    .registers 2
    .param p1, "sweepAngle"    # F

    .line 754
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->sweepAngle:F

    .line 755
    return-void
.end method

.method private setTop(F)V
    .registers 2
    .param p1, "top"    # F

    .line 730
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->top:F

    .line 731
    return-void
.end method


# virtual methods
.method public applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .registers 9
    .param p1, "transform"    # Landroid/graphics/Matrix;
    .param p2, "path"    # Landroid/graphics/Path;

    .line 701
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->matrix:Landroid/graphics/Matrix;

    .line 702
    .local v0, "inverse":Landroid/graphics/Matrix;
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 703
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 704
    sget-object v1, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->rectF:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getLeft()F

    move-result v2

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getTop()F

    move-result v3

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getRight()F

    move-result v4

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getBottom()F

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 705
    sget-object v1, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->rectF:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getStartAngle()F

    move-result v2

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getSweepAngle()F

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 706
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 707
    return-void
.end method

###### Class com.google.android.material.shape.ShapePath.PathCubicOperation (com.google.android.material.shape.ShapePath$PathCubicOperation)
.class public Lcom/google/android/material/shape/ShapePath$PathCubicOperation;
.super Lcom/google/android/material/shape/ShapePath$PathOperation;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathCubicOperation"
.end annotation


# instance fields
.field private controlX1:F

.field private controlX2:F

.field private controlY1:F

.field private controlY2:F

.field private endX:F

.field private endY:F


# direct methods
.method public constructor <init>(FFFFFF)V
    .registers 7
    .param p1, "controlX1"    # F
    .param p2, "controlY1"    # F
    .param p3, "controlX2"    # F
    .param p4, "controlY2"    # F
    .param p5, "endX"    # F
    .param p6, "endY"    # F

    .line 779
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathOperation;-><init>()V

    .line 780
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->setControlX1(F)V

    .line 781
    invoke-direct {p0, p2}, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->setControlY1(F)V

    .line 782
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->setControlX2(F)V

    .line 783
    invoke-direct {p0, p4}, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->setControlY2(F)V

    .line 784
    invoke-direct {p0, p5}, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->setEndX(F)V

    .line 785
    invoke-direct {p0, p6}, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->setEndY(F)V

    .line 786
    return-void
.end method

.method private getControlX1()F
    .registers 2

    .line 798
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->controlX1:F

    return v0
.end method

.method private getControlX2()F
    .registers 2

    .line 814
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->controlX2:F

    return v0
.end method

.method private getControlY1()F
    .registers 2

    .line 806
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->controlY1:F

    return v0
.end method

.method private getControlY2()F
    .registers 2

    .line 822
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->controlY1:F

    return v0
.end method

.method private getEndX()F
    .registers 2

    .line 830
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->endX:F

    return v0
.end method

.method private getEndY()F
    .registers 2

    .line 838
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->endY:F

    return v0
.end method

.method private setControlX1(F)V
    .registers 2
    .param p1, "controlX1"    # F

    .line 802
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->controlX1:F

    .line 803
    return-void
.end method

.method private setControlX2(F)V
    .registers 2
    .param p1, "controlX2"    # F

    .line 818
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->controlX2:F

    .line 819
    return-void
.end method

.method private setControlY1(F)V
    .registers 2
    .param p1, "controlY1"    # F

    .line 810
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->controlY1:F

    .line 811
    return-void
.end method

.method private setControlY2(F)V
    .registers 2
    .param p1, "controlY2"    # F

    .line 826
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->controlY2:F

    .line 827
    return-void
.end method

.method private setEndX(F)V
    .registers 2
    .param p1, "endX"    # F

    .line 834
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->endX:F

    .line 835
    return-void
.end method

.method private setEndY(F)V
    .registers 2
    .param p1, "endY"    # F

    .line 842
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->endY:F

    .line 843
    return-void
.end method


# virtual methods
.method public applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .registers 11
    .param p1, "transform"    # Landroid/graphics/Matrix;
    .param p2, "path"    # Landroid/graphics/Path;

    .line 790
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->matrix:Landroid/graphics/Matrix;

    .line 791
    .local v0, "inverse":Landroid/graphics/Matrix;
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 792
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 793
    iget v2, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->controlX1:F

    iget v3, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->controlY1:F

    iget v4, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->controlX2:F

    iget v5, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->controlY2:F

    iget v6, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->endX:F

    iget v7, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->endY:F

    move-object v1, p2

    .end local p2    # "path":Landroid/graphics/Path;
    .local v1, "path":Landroid/graphics/Path;
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 794
    invoke-virtual {v1, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 795
    return-void
.end method

###### Class com.google.android.material.shape.ShapePath.PathLineOperation (com.google.android.material.shape.ShapePath$PathLineOperation)
.class public Lcom/google/android/material/shape/ShapePath$PathLineOperation;
.super Lcom/google/android/material/shape/ShapePath$PathOperation;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathLineOperation"
.end annotation


# instance fields
.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 578
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathOperation;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    .line 578
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->x:F

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/material/shape/ShapePath$PathLineOperation;F)F
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/shape/ShapePath$PathLineOperation;
    .param p1, "x1"    # F

    .line 578
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->x:F

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    .line 578
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->y:F

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/material/shape/ShapePath$PathLineOperation;F)F
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/shape/ShapePath$PathLineOperation;
    .param p1, "x1"    # F

    .line 578
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->y:F

    return p1
.end method


# virtual methods
.method public applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .registers 6
    .param p1, "transform"    # Landroid/graphics/Matrix;
    .param p2, "path"    # Landroid/graphics/Path;

    .line 584
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->matrix:Landroid/graphics/Matrix;

    .line 585
    .local v0, "inverse":Landroid/graphics/Matrix;
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 586
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 587
    iget v1, p0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->x:F

    iget v2, p0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->y:F

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 588
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 589
    return-void
.end method

###### Class com.google.android.material.shape.ShapePath.PathOperation (com.google.android.material.shape.ShapePath$PathOperation)
.class public abstract Lcom/google/android/material/shape/ShapePath$PathOperation;
.super Ljava/lang/Object;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PathOperation"
.end annotation


# instance fields
.field protected final matrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 571
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapePath$PathOperation;->matrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public abstract applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
.end method

###### Class com.google.android.material.shape.ShapePath.PathQuadOperation (com.google.android.material.shape.ShapePath$PathQuadOperation)
.class public Lcom/google/android/material/shape/ShapePath$PathQuadOperation;
.super Lcom/google/android/material/shape/ShapePath$PathOperation;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathQuadOperation"
.end annotation


# instance fields
.field public controlX:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public controlY:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public endX:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public endY:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 593
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathOperation;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/material/shape/ShapePath$PathQuadOperation;F)V
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/shape/ShapePath$PathQuadOperation;
    .param p1, "x1"    # F

    .line 593
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->setControlX(F)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/material/shape/ShapePath$PathQuadOperation;F)V
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/shape/ShapePath$PathQuadOperation;
    .param p1, "x1"    # F

    .line 593
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->setControlY(F)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/material/shape/ShapePath$PathQuadOperation;F)V
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/shape/ShapePath$PathQuadOperation;
    .param p1, "x1"    # F

    .line 593
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->setEndX(F)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/material/shape/ShapePath$PathQuadOperation;F)V
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/shape/ShapePath$PathQuadOperation;
    .param p1, "x1"    # F

    .line 593
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->setEndY(F)V

    return-void
.end method

.method private getControlX()F
    .registers 2

    .line 649
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->controlX:F

    return v0
.end method

.method private getControlY()F
    .registers 2

    .line 633
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->controlY:F

    return v0
.end method

.method private getEndX()F
    .registers 2

    .line 625
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->endX:F

    return v0
.end method

.method private getEndY()F
    .registers 2

    .line 641
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->endY:F

    return v0
.end method

.method private setControlX(F)V
    .registers 2
    .param p1, "controlX"    # F

    .line 653
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->controlX:F

    .line 654
    return-void
.end method

.method private setControlY(F)V
    .registers 2
    .param p1, "controlY"    # F

    .line 637
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->controlY:F

    .line 638
    return-void
.end method

.method private setEndX(F)V
    .registers 2
    .param p1, "endX"    # F

    .line 629
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->endX:F

    .line 630
    return-void
.end method

.method private setEndY(F)V
    .registers 2
    .param p1, "endY"    # F

    .line 645
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->endY:F

    .line 646
    return-void
.end method


# virtual methods
.method public applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .registers 8
    .param p1, "transform"    # Landroid/graphics/Matrix;
    .param p2, "path"    # Landroid/graphics/Path;

    .line 617
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->matrix:Landroid/graphics/Matrix;

    .line 618
    .local v0, "inverse":Landroid/graphics/Matrix;
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 619
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 620
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->getControlX()F

    move-result v1

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->getControlY()F

    move-result v2

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->getEndX()F

    move-result v3

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->getEndY()F

    move-result v4

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 621
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 622
    return-void
.end method

###### Class com.google.android.material.shape.ShapePath.ShadowCompatOperation (com.google.android.material.shape.ShapePath$ShadowCompatOperation)
.class abstract Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;
.super Ljava/lang/Object;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ShadowCompatOperation"
.end annotation


# static fields
.field static final IDENTITY_MATRIX:Landroid/graphics/Matrix;


# instance fields
.field final renderMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 406
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;->renderMatrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public abstract draw(Landroid/graphics/Matrix;Lcom/google/android/material/shadow/ShadowRenderer;ILandroid/graphics/Canvas;)V
.end method

.method public final draw(Lcom/google/android/material/shadow/ShadowRenderer;ILandroid/graphics/Canvas;)V
    .registers 5
    .param p1, "shadowRenderer"    # Lcom/google/android/material/shadow/ShadowRenderer;
    .param p2, "shadowElevation"    # I
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .line 411
    sget-object v0, Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;->draw(Landroid/graphics/Matrix;Lcom/google/android/material/shadow/ShadowRenderer;ILandroid/graphics/Canvas;)V

    .line 412
    return-void
.end method
