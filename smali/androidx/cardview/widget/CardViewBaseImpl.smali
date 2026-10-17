###### Class androidx.cardview.widget.CardViewBaseImpl (androidx.cardview.widget.CardViewBaseImpl)
.class Landroidx/cardview/widget/CardViewBaseImpl;
.super Ljava/lang/Object;
.source "CardViewBaseImpl.java"

# interfaces
.implements Landroidx/cardview/widget/CardViewImpl;


# instance fields
.field final mCornerRect:Landroid/graphics/RectF;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroidx/cardview/widget/CardViewBaseImpl;->mCornerRect:Landroid/graphics/RectF;

    return-void
.end method

.method private createBackground(Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backgroundColor"    # Landroid/content/res/ColorStateList;
    .param p3, "radius"    # F
    .param p4, "elevation"    # F
    .param p5, "maxElevation"    # F

    .line 93
    new-instance v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .end local p2    # "backgroundColor":Landroid/content/res/ColorStateList;
    .end local p3    # "radius":F
    .end local p4    # "elevation":F
    .end local p5    # "maxElevation":F
    .local v2, "backgroundColor":Landroid/content/res/ColorStateList;
    .local v3, "radius":F
    .local v4, "elevation":F
    .local v5, "maxElevation":F
    invoke-direct/range {v0 .. v5}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;-><init>(Landroid/content/res/Resources;Landroid/content/res/ColorStateList;FFF)V

    return-object v0
.end method

.method private getShadowBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    .registers 3
    .param p1, "cardView"    # Landroidx/cardview/widget/CardViewDelegate;

    .line 171
    invoke-interface {p1}, Landroidx/cardview/widget/CardViewDelegate;->getCardBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    return-object v0
.end method


# virtual methods
.method public getBackgroundColor(Landroidx/cardview/widget/CardViewDelegate;)Landroid/content/res/ColorStateList;
    .registers 3
    .param p1, "cardView"    # Landroidx/cardview/widget/CardViewDelegate;

    .line 125
    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewBaseImpl;->getShadowBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getElevation(Landroidx/cardview/widget/CardViewDelegate;)F
    .registers 3
    .param p1, "cardView"    # Landroidx/cardview/widget/CardViewDelegate;

    .line 146
    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewBaseImpl;->getShadowBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->getShadowSize()F

    move-result v0

    return v0
.end method

.method public getMaxElevation(Landroidx/cardview/widget/CardViewDelegate;)F
    .registers 3
    .param p1, "cardView"    # Landroidx/cardview/widget/CardViewDelegate;

    .line 157
    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewBaseImpl;->getShadowBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->getMaxShadowSize()F

    move-result v0

    return v0
.end method

.method public getMinHeight(Landroidx/cardview/widget/CardViewDelegate;)F
    .registers 3
    .param p1, "cardView"    # Landroidx/cardview/widget/CardViewDelegate;

    .line 167
    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewBaseImpl;->getShadowBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->getMinHeight()F

    move-result v0

    return v0
.end method

.method public getMinWidth(Landroidx/cardview/widget/CardViewDelegate;)F
    .registers 3
    .param p1, "cardView"    # Landroidx/cardview/widget/CardViewDelegate;

    .line 162
    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewBaseImpl;->getShadowBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->getMinWidth()F

    move-result v0

    return v0
.end method

.method public getRadius(Landroidx/cardview/widget/CardViewDelegate;)F
    .registers 3
    .param p1, "cardView"    # Landroidx/cardview/widget/CardViewDelegate;

    .line 136
    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewBaseImpl;->getShadowBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->getCornerRadius()F

    move-result v0

    return v0
.end method

.method public initStatic()V
    .registers 2

    .line 37
    new-instance v0, Landroidx/cardview/widget/CardViewBaseImpl$1;

    invoke-direct {v0, p0}, Landroidx/cardview/widget/CardViewBaseImpl$1;-><init>(Landroidx/cardview/widget/CardViewBaseImpl;)V

    sput-object v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->sRoundRectHelper:Landroidx/cardview/widget/RoundRectDrawableWithShadow$RoundRectHelper;

    .line 78
    return-void
.end method

.method public initialize(Landroidx/cardview/widget/CardViewDelegate;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .registers 13
    .param p1, "cardView"    # Landroidx/cardview/widget/CardViewDelegate;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "backgroundColor"    # Landroid/content/res/ColorStateList;
    .param p4, "radius"    # F
    .param p5, "elevation"    # F
    .param p6, "maxElevation"    # F

    .line 83
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .end local p2    # "context":Landroid/content/Context;
    .end local p3    # "backgroundColor":Landroid/content/res/ColorStateList;
    .end local p4    # "radius":F
    .end local p5    # "elevation":F
    .end local p6    # "maxElevation":F
    .local v1, "context":Landroid/content/Context;
    .local v2, "backgroundColor":Landroid/content/res/ColorStateList;
    .local v3, "radius":F
    .local v4, "elevation":F
    .local v5, "maxElevation":F
    invoke-direct/range {v0 .. v5}, Landroidx/cardview/widget/CardViewBaseImpl;->createBackground(Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    move-result-object p2

    .line 85
    .local p2, "background":Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    invoke-interface {p1}, Landroidx/cardview/widget/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->setAddPaddingForCorners(Z)V

    .line 86
    invoke-interface {p1, p2}, Landroidx/cardview/widget/CardViewDelegate;->setCardBackground(Landroid/graphics/drawable/Drawable;)V

    .line 87
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/CardViewBaseImpl;->updatePadding(Landroidx/cardview/widget/CardViewDelegate;)V

    .line 88
    return-void
.end method

.method public onCompatPaddingChanged(Landroidx/cardview/widget/CardViewDelegate;)V
    .registers 2
    .param p1, "cardView"    # Landroidx/cardview/widget/CardViewDelegate;

    .line 110
    return-void
.end method

.method public onPreventCornerOverlapChanged(Landroidx/cardview/widget/CardViewDelegate;)V
    .registers 4
    .param p1, "cardView"    # Landroidx/cardview/widget/CardViewDelegate;

    .line 114
    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewBaseImpl;->getShadowBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-interface {p1}, Landroidx/cardview/widget/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->setAddPaddingForCorners(Z)V

    .line 115
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/CardViewBaseImpl;->updatePadding(Landroidx/cardview/widget/CardViewDelegate;)V

    .line 116
    return-void
.end method

.method public setBackgroundColor(Landroidx/cardview/widget/CardViewDelegate;Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "cardView"    # Landroidx/cardview/widget/CardViewDelegate;
    .param p2, "color"    # Landroid/content/res/ColorStateList;

    .line 120
    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewBaseImpl;->getShadowBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->setColor(Landroid/content/res/ColorStateList;)V

    .line 121
    return-void
.end method

.method public setElevation(Landroidx/cardview/widget/CardViewDelegate;F)V
    .registers 4
    .param p1, "cardView"    # Landroidx/cardview/widget/CardViewDelegate;
    .param p2, "elevation"    # F

    .line 141
    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewBaseImpl;->getShadowBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->setShadowSize(F)V

    .line 142
    return-void
.end method

.method public setMaxElevation(Landroidx/cardview/widget/CardViewDelegate;F)V
    .registers 4
    .param p1, "cardView"    # Landroidx/cardview/widget/CardViewDelegate;
    .param p2, "maxElevation"    # F

    .line 151
    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewBaseImpl;->getShadowBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->setMaxShadowSize(F)V

    .line 152
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/CardViewBaseImpl;->updatePadding(Landroidx/cardview/widget/CardViewDelegate;)V

    .line 153
    return-void
.end method

.method public setRadius(Landroidx/cardview/widget/CardViewDelegate;F)V
    .registers 4
    .param p1, "cardView"    # Landroidx/cardview/widget/CardViewDelegate;
    .param p2, "radius"    # F

    .line 130
    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewBaseImpl;->getShadowBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->setCornerRadius(F)V

    .line 131
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/CardViewBaseImpl;->updatePadding(Landroidx/cardview/widget/CardViewDelegate;)V

    .line 132
    return-void
.end method

.method public updatePadding(Landroidx/cardview/widget/CardViewDelegate;)V
    .registers 7
    .param p1, "cardView"    # Landroidx/cardview/widget/CardViewDelegate;

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 100
    .local v0, "shadowPadding":Landroid/graphics/Rect;
    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewBaseImpl;->getShadowBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->getMaxShadowAndCornerPadding(Landroid/graphics/Rect;)V

    .line 101
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/CardViewBaseImpl;->getMinWidth(Landroidx/cardview/widget/CardViewDelegate;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 102
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/CardViewBaseImpl;->getMinHeight(Landroidx/cardview/widget/CardViewDelegate;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 101
    invoke-interface {p1, v1, v2}, Landroidx/cardview/widget/CardViewDelegate;->setMinWidthHeightInternal(II)V

    .line 103
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {p1, v1, v2, v3, v4}, Landroidx/cardview/widget/CardViewDelegate;->setShadowPadding(IIII)V

    .line 105
    return-void
.end method

###### Class androidx.cardview.widget.CardViewBaseImpl.AnonymousClass1 (androidx.cardview.widget.CardViewBaseImpl$1)
.class Landroidx/cardview/widget/CardViewBaseImpl$1;
.super Ljava/lang/Object;
.source "CardViewBaseImpl.java"

# interfaces
.implements Landroidx/cardview/widget/RoundRectDrawableWithShadow$RoundRectHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/cardview/widget/CardViewBaseImpl;->initStatic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/cardview/widget/CardViewBaseImpl;


# direct methods
.method constructor <init>(Landroidx/cardview/widget/CardViewBaseImpl;)V
    .registers 2
    .param p1, "this$0"    # Landroidx/cardview/widget/CardViewBaseImpl;

    .line 38
    iput-object p1, p0, Landroidx/cardview/widget/CardViewBaseImpl$1;->this$0:Landroidx/cardview/widget/CardViewBaseImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V
    .registers 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/RectF;
    .param p3, "cornerRadius"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 42
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v8, p3, v2

    .line 43
    .local v8, "twoRadius":F
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v2, v8

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v10, v2, v9

    .line 44
    .local v10, "innerWidth":F
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v2, v8

    sub-float v11, v2, v9

    .line 45
    .local v11, "innerHeight":F
    cmpl-float v2, p3, v9

    if-ltz v2, :cond_98

    .line 47
    const/high16 v2, 0x3f000000    # 0.5f

    add-float v12, p3, v2

    .line 48
    .local v12, "roundedCornerRadius":F
    iget-object v2, v0, Landroidx/cardview/widget/CardViewBaseImpl$1;->this$0:Landroidx/cardview/widget/CardViewBaseImpl;

    iget-object v2, v2, Landroidx/cardview/widget/CardViewBaseImpl;->mCornerRect:Landroid/graphics/RectF;

    neg-float v3, v12

    neg-float v4, v12

    invoke-virtual {v2, v3, v4, v12, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 50
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v13

    .line 51
    .local v13, "saved":I
    iget v2, v7, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v12

    iget v3, v7, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v12

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 53
    iget-object v2, v0, Landroidx/cardview/widget/CardViewBaseImpl$1;->this$0:Landroidx/cardview/widget/CardViewBaseImpl;

    iget-object v2, v2, Landroidx/cardview/widget/CardViewBaseImpl;->mCornerRect:Landroid/graphics/RectF;

    const/high16 v4, 0x42b40000    # 90.0f

    const/4 v5, 0x1

    const/high16 v3, 0x43340000    # 180.0f

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 54
    const/4 v14, 0x0

    invoke-virtual {v1, v10, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 55
    const/high16 v15, 0x42b40000    # 90.0f

    invoke-virtual {v1, v15}, Landroid/graphics/Canvas;->rotate(F)V

    .line 56
    iget-object v2, v0, Landroidx/cardview/widget/CardViewBaseImpl$1;->this$0:Landroidx/cardview/widget/CardViewBaseImpl;

    iget-object v2, v2, Landroidx/cardview/widget/CardViewBaseImpl;->mCornerRect:Landroid/graphics/RectF;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 57
    invoke-virtual {v1, v11, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 58
    invoke-virtual {v1, v15}, Landroid/graphics/Canvas;->rotate(F)V

    .line 59
    iget-object v2, v0, Landroidx/cardview/widget/CardViewBaseImpl$1;->this$0:Landroidx/cardview/widget/CardViewBaseImpl;

    iget-object v2, v2, Landroidx/cardview/widget/CardViewBaseImpl;->mCornerRect:Landroid/graphics/RectF;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 60
    invoke-virtual {v1, v10, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 61
    invoke-virtual {v1, v15}, Landroid/graphics/Canvas;->rotate(F)V

    .line 62
    iget-object v2, v0, Landroidx/cardview/widget/CardViewBaseImpl$1;->this$0:Landroidx/cardview/widget/CardViewBaseImpl;

    iget-object v2, v2, Landroidx/cardview/widget/CardViewBaseImpl;->mCornerRect:Landroid/graphics/RectF;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 63
    invoke-virtual {v1, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 65
    iget v2, v7, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v12

    sub-float/2addr v2, v9

    iget v3, v7, Landroid/graphics/RectF;->top:F

    iget v4, v7, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v12

    add-float/2addr v4, v9

    iget v5, v7, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 69
    iget v1, v7, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v12

    sub-float v2, v1, v9

    iget v1, v7, Landroid/graphics/RectF;->bottom:F

    sub-float v3, v1, v12

    iget v1, v7, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v12

    add-float v4, v1, v9

    iget v5, v7, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 74
    .end local v12    # "roundedCornerRadius":F
    .end local v13    # "saved":I
    :cond_98
    iget v2, v7, Landroid/graphics/RectF;->left:F

    iget v1, v7, Landroid/graphics/RectF;->top:F

    add-float v3, v1, p3

    iget v4, v7, Landroid/graphics/RectF;->right:F

    iget v1, v7, Landroid/graphics/RectF;->bottom:F

    sub-float v5, v1, p3

    move-object/from16 v1, p1

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 76
    return-void
.end method
