###### Class androidx.swiperefreshlayout.widget.CircleImageView (androidx.swiperefreshlayout.widget.CircleImageView)
.class Landroidx/swiperefreshlayout/widget/CircleImageView;
.super Landroid/widget/ImageView;
.source "CircleImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;
    }
.end annotation


# static fields
.field private static final DEFAULT_BACKGROUND_COLOR:I = -0x50506

.field private static final FILL_SHADOW_COLOR:I = 0x3d000000

.field private static final KEY_SHADOW_COLOR:I = 0x1e000000

.field private static final SHADOW_ELEVATION:I = 0x4

.field private static final SHADOW_RADIUS:F = 3.5f

.field private static final X_OFFSET:F = 0.0f

.field private static final Y_OFFSET:F = 1.75f


# instance fields
.field private mBackgroundColor:I

.field private mListener:Landroid/view/animation/Animation$AnimationListener;

.field private mShadowRadius:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;

    .line 60
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 63
    .local v0, "density":F
    const/high16 v1, 0x3fe00000    # 1.75f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 64
    .local v1, "shadowYOffset":I
    const/4 v2, 0x0

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 66
    .local v2, "shadowXOffset":I
    const/high16 v3, 0x40600000    # 3.5f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, p0, Landroidx/swiperefreshlayout/widget/CircleImageView;->mShadowRadius:I

    .line 71
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroidx/swiperefreshlayout/R$styleable;->SwipeRefreshLayout:[I

    invoke-virtual {v3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 72
    .local v3, "colorArray":Landroid/content/res/TypedArray;
    sget v4, Landroidx/swiperefreshlayout/R$styleable;->SwipeRefreshLayout_swipeRefreshLayoutProgressSpinnerBackgroundColor:I

    const v5, -0x50506

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Landroidx/swiperefreshlayout/widget/CircleImageView;->mBackgroundColor:I

    .line 75
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    invoke-direct {p0}, Landroidx/swiperefreshlayout/widget/CircleImageView;->elevationSupported()Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 79
    new-instance v4, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v5, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v5}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 80
    .local v4, "circle":Landroid/graphics/drawable/ShapeDrawable;
    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v5, v0

    invoke-static {p0, v5}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    goto :goto_74

    .line 82
    .end local v4    # "circle":Landroid/graphics/drawable/ShapeDrawable;
    :cond_4d
    new-instance v4, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v5, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;

    iget v6, p0, Landroidx/swiperefreshlayout/widget/CircleImageView;->mShadowRadius:I

    invoke-direct {v5, p0, v6}, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;-><init>(Landroidx/swiperefreshlayout/widget/CircleImageView;I)V

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 83
    .restart local v4    # "circle":Landroid/graphics/drawable/ShapeDrawable;
    const/4 v5, 0x1

    invoke-virtual {v4}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 84
    invoke-virtual {v4}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    iget v6, p0, Landroidx/swiperefreshlayout/widget/CircleImageView;->mShadowRadius:I

    int-to-float v6, v6

    int-to-float v7, v2

    int-to-float v8, v1

    const/high16 v9, 0x1e000000

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 86
    iget v5, p0, Landroidx/swiperefreshlayout/widget/CircleImageView;->mShadowRadius:I

    .line 88
    .local v5, "padding":I
    invoke-virtual {p0, v5, v5, v5, v5}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setPadding(IIII)V

    .line 90
    .end local v5    # "padding":I
    :goto_74
    invoke-virtual {v4}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    iget v6, p0, Landroidx/swiperefreshlayout/widget/CircleImageView;->mBackgroundColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    invoke-virtual {p0, v4}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 92
    return-void
.end method

.method private elevationSupported()Z
    .registers 2

    .line 95
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getBackgroundColor()I
    .registers 2

    .line 136
    iget v0, p0, Landroidx/swiperefreshlayout/widget/CircleImageView;->mBackgroundColor:I

    return v0
.end method

.method public onAnimationEnd()V
    .registers 3

    .line 121
    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationEnd()V

    .line 122
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_10

    .line 123
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 125
    :cond_10
    return-void
.end method

.method public onAnimationStart()V
    .registers 3

    .line 113
    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationStart()V

    .line 114
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_10

    .line 115
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 117
    :cond_10
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 100
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 101
    invoke-direct {p0}, Landroidx/swiperefreshlayout/widget/CircleImageView;->elevationSupported()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 102
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Landroidx/swiperefreshlayout/widget/CircleImageView;->mShadowRadius:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Landroidx/swiperefreshlayout/widget/CircleImageView;->mShadowRadius:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setMeasuredDimension(II)V

    .line 105
    :cond_1e
    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .line 108
    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    .line 109
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 3
    .param p1, "color"    # I

    .line 129
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v0, :cond_17

    .line 130
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    iput p1, p0, Landroidx/swiperefreshlayout/widget/CircleImageView;->mBackgroundColor:I

    .line 133
    :cond_17
    return-void
.end method

###### Class androidx.swiperefreshlayout.widget.CircleImageView.OvalShadow (androidx.swiperefreshlayout.widget.CircleImageView$OvalShadow)
.class Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;
.super Landroid/graphics/drawable/shapes/OvalShape;
.source "CircleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/swiperefreshlayout/widget/CircleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OvalShadow"
.end annotation


# instance fields
.field private mCircleImageView:Landroidx/swiperefreshlayout/widget/CircleImageView;

.field private mShadowPaint:Landroid/graphics/Paint;

.field private mShadowRadius:I


# direct methods
.method constructor <init>(Landroidx/swiperefreshlayout/widget/CircleImageView;I)V
    .registers 4
    .param p1, "circleImageView"    # Landroidx/swiperefreshlayout/widget/CircleImageView;
    .param p2, "shadowRadius"    # I

    .line 145
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 146
    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->mCircleImageView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 147
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    .line 148
    iput p2, p0, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->mShadowRadius:I

    .line 149
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->rect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, v0}, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->updateRadialGradient(I)V

    .line 150
    return-void
.end method

.method private updateRadialGradient(I)V
    .registers 10
    .param p1, "diameter"    # I

    .line 167
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/RadialGradient;

    div-int/lit8 v2, p1, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    iget v4, p0, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->mShadowRadius:I

    int-to-float v4, v4

    const/high16 v5, 0x3d000000    # 0.03125f

    const/4 v6, 0x0

    filled-new-array {v5, v6}, [I

    move-result-object v5

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 174
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 160
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->mCircleImageView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 161
    .local v0, "x":I
    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->mCircleImageView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v1}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 162
    .local v1, "y":I
    int-to-float v2, v0

    int-to-float v3, v1

    int-to-float v4, v0

    iget-object v5, p0, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 163
    int-to-float v2, v0

    int-to-float v3, v1

    iget v4, p0, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->mShadowRadius:I

    sub-int v4, v0, v4

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 164
    return-void
.end method

.method protected onResize(FF)V
    .registers 4
    .param p1, "width"    # F
    .param p2, "height"    # F

    .line 154
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/shapes/OvalShape;->onResize(FF)V

    .line 155
    float-to-int v0, p1

    invoke-direct {p0, v0}, Landroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->updateRadialGradient(I)V

    .line 156
    return-void
.end method
