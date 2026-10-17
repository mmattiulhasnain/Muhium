###### Class com.google.android.material.slider.RangeSlider (com.google.android.material.slider.RangeSlider)
.class public Lcom/google/android/material/slider/RangeSlider;
.super Lcom/google/android/material/slider/BaseSlider;
.source "RangeSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/slider/RangeSlider$RangeSliderState;,
        Lcom/google/android/material/slider/RangeSlider$OnSliderTouchListener;,
        Lcom/google/android/material/slider/RangeSlider$OnChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/slider/BaseSlider<",
        "Lcom/google/android/material/slider/RangeSlider;",
        "Lcom/google/android/material/slider/RangeSlider$OnChangeListener;",
        "Lcom/google/android/material/slider/RangeSlider$OnSliderTouchListener;",
        ">;"
    }
.end annotation


# instance fields
.field private minSeparation:F

.field private separationUnit:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/slider/RangeSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 63
    sget v0, Lcom/google/android/material/R$attr;->sliderStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/slider/RangeSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/slider/BaseSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    sget-object v2, Lcom/google/android/material/R$styleable;->RangeSlider:[I

    sget v4, Lcom/google/android/material/slider/RangeSlider;->DEF_STYLE_RES:I

    const/4 v6, 0x0

    new-array v5, v6, [I

    .line 69
    move-object v0, p1

    move-object v1, p2

    move v3, p3

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .end local p3    # "defStyleAttr":I
    .local v0, "context":Landroid/content/Context;
    .local v1, "attrs":Landroid/util/AttributeSet;
    .local v3, "defStyleAttr":I
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 71
    .local p1, "a":Landroid/content/res/TypedArray;
    sget p2, Lcom/google/android/material/R$styleable;->RangeSlider_values:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2e

    .line 72
    sget p2, Lcom/google/android/material/R$styleable;->RangeSlider_values:I

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 73
    .local p2, "valuesId":I
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 74
    .local p3, "values":Landroid/content/res/TypedArray;
    invoke-static {p3}, Lcom/google/android/material/slider/RangeSlider;->convertToFloat(Landroid/content/res/TypedArray;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/material/slider/RangeSlider;->setValues(Ljava/util/List;)V

    .line 77
    .end local p2    # "valuesId":I
    .end local p3    # "values":Landroid/content/res/TypedArray;
    :cond_2e
    sget p2, Lcom/google/android/material/R$styleable;->RangeSlider_minSeparation:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/google/android/material/slider/RangeSlider;->minSeparation:F

    .line 78
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    return-void
.end method

.method private static convertToFloat(Landroid/content/res/TypedArray;)Ljava/util/List;
    .registers 4
    .param p0, "values"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/TypedArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 163
    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 165
    .end local v1    # "i":I
    :cond_1c
    return-object v0
.end method


# virtual methods
.method public bridge synthetic addOnChangeListener(Lcom/google/android/material/slider/BaseOnChangeListener;)V
    .registers 2

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->addOnChangeListener(Lcom/google/android/material/slider/BaseOnChangeListener;)V

    return-void
.end method

.method public bridge synthetic addOnSliderTouchListener(Lcom/google/android/material/slider/BaseOnSliderTouchListener;)V
    .registers 2

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->addOnSliderTouchListener(Lcom/google/android/material/slider/BaseOnSliderTouchListener;)V

    return-void
.end method

.method public bridge synthetic clearOnChangeListeners()V
    .registers 1

    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->clearOnChangeListeners()V

    return-void
.end method

.method public bridge synthetic clearOnSliderTouchListeners()V
    .registers 1

    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->clearOnSliderTouchListeners()V

    return-void
.end method

.method public bridge synthetic dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 2

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getActiveThumbIndex()I
    .registers 2

    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getActiveThumbIndex()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getFocusedThumbIndex()I
    .registers 2

    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getFocusedThumbIndex()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getHaloRadius()I
    .registers 2

    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getHaloRadius()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getHaloTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getHaloTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLabelBehavior()I
    .registers 2

    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getLabelBehavior()I

    move-result v0

    return v0
.end method

.method public getMinSeparation()F
    .registers 2

    .line 176
    iget v0, p0, Lcom/google/android/material/slider/RangeSlider;->minSeparation:F

    return v0
.end method

.method public bridge synthetic getStepSize()F
    .registers 2

    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getStepSize()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getThumbElevation()F
    .registers 2

    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getThumbElevation()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getThumbRadius()I
    .registers 2

    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getThumbRadius()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getThumbStrokeColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getThumbStrokeColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getThumbStrokeWidth()F
    .registers 2

    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getThumbStrokeWidth()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getThumbTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getThumbTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTickActiveRadius()I
    .registers 2

    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTickActiveRadius()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTickActiveTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTickActiveTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTickInactiveRadius()I
    .registers 2

    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTickInactiveRadius()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTickInactiveTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTickInactiveTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTickTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTickTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTrackActiveTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTrackActiveTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTrackHeight()I
    .registers 2

    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTrackHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTrackInactiveTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTrackInactiveTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTrackSidePadding()I
    .registers 2

    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTrackSidePadding()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTrackTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTrackTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTrackWidth()I
    .registers 2

    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTrackWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getValueFrom()F
    .registers 2

    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getValueFrom()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getValueTo()F
    .registers 2

    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getValueTo()F

    move-result v0

    return v0
.end method

.method public getValues()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 125
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hasLabelFormatter()Z
    .registers 2

    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->hasLabelFormatter()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isTickVisible()Z
    .registers 2

    .line 53
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->isTickVisible()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 3

    .line 53
    invoke-super {p0, p1, p2}, Lcom/google/android/material/slider/BaseSlider;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 3

    .line 53
    invoke-super {p0, p1, p2}, Lcom/google/android/material/slider/BaseSlider;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 221
    move-object v0, p1

    check-cast v0, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;

    .line 222
    .local v0, "savedState":Lcom/google/android/material/slider/RangeSlider$RangeSliderState;
    invoke-virtual {v0}, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 224
    invoke-static {v0}, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;->access$000(Lcom/google/android/material/slider/RangeSlider$RangeSliderState;)F

    move-result v1

    iput v1, p0, Lcom/google/android/material/slider/RangeSlider;->minSeparation:F

    .line 225
    invoke-static {v0}, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;->access$100(Lcom/google/android/material/slider/RangeSlider$RangeSliderState;)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/slider/RangeSlider;->separationUnit:I

    .line 226
    iget v1, p0, Lcom/google/android/material/slider/RangeSlider;->separationUnit:I

    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/RangeSlider;->setSeparationUnit(I)V

    .line 227
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 210
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 212
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;

    invoke-direct {v1, v0}, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;-><init>(Landroid/os/Parcelable;)V

    .line 213
    .local v1, "sliderState":Lcom/google/android/material/slider/RangeSlider$RangeSliderState;
    iget v2, p0, Lcom/google/android/material/slider/RangeSlider;->minSeparation:F

    invoke-static {v1, v2}, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;->access$002(Lcom/google/android/material/slider/RangeSlider$RangeSliderState;F)F

    .line 214
    iget v2, p0, Lcom/google/android/material/slider/RangeSlider;->separationUnit:I

    invoke-static {v1, v2}, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;->access$102(Lcom/google/android/material/slider/RangeSlider$RangeSliderState;I)I

    .line 216
    return-object v1
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic removeOnChangeListener(Lcom/google/android/material/slider/BaseOnChangeListener;)V
    .registers 2

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->removeOnChangeListener(Lcom/google/android/material/slider/BaseOnChangeListener;)V

    return-void
.end method

.method public bridge synthetic removeOnSliderTouchListener(Lcom/google/android/material/slider/BaseOnSliderTouchListener;)V
    .registers 2

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->removeOnSliderTouchListener(Lcom/google/android/material/slider/BaseOnSliderTouchListener;)V

    return-void
.end method

.method public setCustomThumbDrawable(I)V
    .registers 2
    .param p1, "drawableResId"    # I

    .line 133
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setCustomThumbDrawable(I)V

    .line 134
    return-void
.end method

.method public setCustomThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 141
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setCustomThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    return-void
.end method

.method public varargs setCustomThumbDrawablesForValues([I)V
    .registers 2
    .param p1, "drawableResIds"    # [I

    .line 149
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setCustomThumbDrawablesForValues([I)V

    .line 150
    return-void
.end method

.method public varargs setCustomThumbDrawablesForValues([Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "drawables"    # [Landroid/graphics/drawable/Drawable;

    .line 157
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setCustomThumbDrawablesForValues([Landroid/graphics/drawable/Drawable;)V

    .line 158
    return-void
.end method

.method public bridge synthetic setEnabled(Z)V
    .registers 2

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic setFocusedThumbIndex(I)V
    .registers 2

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setFocusedThumbIndex(I)V

    return-void
.end method

.method public bridge synthetic setHaloRadius(I)V
    .registers 2

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setHaloRadius(I)V

    return-void
.end method

.method public bridge synthetic setHaloRadiusResource(I)V
    .registers 2

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setHaloRadiusResource(I)V

    return-void
.end method

.method public bridge synthetic setHaloTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setHaloTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setLabelBehavior(I)V
    .registers 2

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setLabelBehavior(I)V

    return-void
.end method

.method public bridge synthetic setLabelFormatter(Lcom/google/android/material/slider/LabelFormatter;)V
    .registers 2

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setLabelFormatter(Lcom/google/android/material/slider/LabelFormatter;)V

    return-void
.end method

.method public setMinSeparation(F)V
    .registers 3
    .param p1, "minSeparation"    # F

    .line 188
    iput p1, p0, Lcom/google/android/material/slider/RangeSlider;->minSeparation:F

    .line 189
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/slider/RangeSlider;->separationUnit:I

    .line 190
    iget v0, p0, Lcom/google/android/material/slider/RangeSlider;->separationUnit:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/RangeSlider;->setSeparationUnit(I)V

    .line 191
    return-void
.end method

.method public setMinSeparationValue(F)V
    .registers 3
    .param p1, "minSeparation"    # F

    .line 202
    iput p1, p0, Lcom/google/android/material/slider/RangeSlider;->minSeparation:F

    .line 203
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/material/slider/RangeSlider;->separationUnit:I

    .line 204
    iget v0, p0, Lcom/google/android/material/slider/RangeSlider;->separationUnit:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/RangeSlider;->setSeparationUnit(I)V

    .line 205
    return-void
.end method

.method public bridge synthetic setStepSize(F)V
    .registers 2

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setStepSize(F)V

    return-void
.end method

.method public bridge synthetic setThumbElevation(F)V
    .registers 2

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbElevation(F)V

    return-void
.end method

.method public bridge synthetic setThumbElevationResource(I)V
    .registers 2

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbElevationResource(I)V

    return-void
.end method

.method public bridge synthetic setThumbRadius(I)V
    .registers 2

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbRadius(I)V

    return-void
.end method

.method public bridge synthetic setThumbRadiusResource(I)V
    .registers 2

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbRadiusResource(I)V

    return-void
.end method

.method public bridge synthetic setThumbStrokeColor(Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbStrokeColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setThumbStrokeColorResource(I)V
    .registers 2

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbStrokeColorResource(I)V

    return-void
.end method

.method public bridge synthetic setThumbStrokeWidth(F)V
    .registers 2

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbStrokeWidth(F)V

    return-void
.end method

.method public bridge synthetic setThumbStrokeWidthResource(I)V
    .registers 2

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbStrokeWidthResource(I)V

    return-void
.end method

.method public bridge synthetic setThumbTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setTickActiveRadius(I)V
    .registers 2

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTickActiveRadius(I)V

    return-void
.end method

.method public bridge synthetic setTickActiveTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTickActiveTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setTickInactiveRadius(I)V
    .registers 2

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTickInactiveRadius(I)V

    return-void
.end method

.method public bridge synthetic setTickInactiveTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTickInactiveTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setTickTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTickTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setTickVisible(Z)V
    .registers 2

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTickVisible(Z)V

    return-void
.end method

.method public bridge synthetic setTrackActiveTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTrackActiveTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setTrackHeight(I)V
    .registers 2

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTrackHeight(I)V

    return-void
.end method

.method public bridge synthetic setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setTrackTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setValueFrom(F)V
    .registers 2

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setValueFrom(F)V

    return-void
.end method

.method public bridge synthetic setValueTo(F)V
    .registers 2

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setValueTo(F)V

    return-void
.end method

.method public setValues(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 118
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setValues(Ljava/util/List;)V

    .line 119
    return-void
.end method

.method public varargs setValues([Ljava/lang/Float;)V
    .registers 2
    .param p1, "values"    # [Ljava/lang/Float;

    .line 108
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setValues([Ljava/lang/Float;)V

    .line 109
    return-void
.end method

###### Class com.google.android.material.slider.RangeSlider.AnonymousClass1 (com.google.android.material.slider.RangeSlider$1)
.class synthetic Lcom/google/android/material/slider/RangeSlider$1;
.super Ljava/lang/Object;
.source "RangeSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/slider/RangeSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.material.slider.RangeSlider.OnChangeListener (com.google.android.material.slider.RangeSlider$OnChangeListener)
.class public interface abstract Lcom/google/android/material/slider/RangeSlider$OnChangeListener;
.super Ljava/lang/Object;
.source "RangeSlider.java"

# interfaces
.implements Lcom/google/android/material/slider/BaseOnChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/slider/RangeSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnChangeListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/material/slider/BaseOnChangeListener<",
        "Lcom/google/android/material/slider/RangeSlider;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract onValueChange(Lcom/google/android/material/slider/RangeSlider;FZ)V
.end method

###### Class com.google.android.material.slider.RangeSlider.OnChangeListener.CC (com.google.android.material.slider.RangeSlider$OnChangeListener$-CC)
.class public final synthetic Lcom/google/android/material/slider/RangeSlider$OnChangeListener$-CC;
.super Ljava/lang/Object;
.source "RangeSlider.java"


# direct methods
.method public static bridge synthetic $default$onValueChange(Lcom/google/android/material/slider/RangeSlider$OnChangeListener;Ljava/lang/Object;FZ)V
    .registers 4
    .param p0, "_this"    # Lcom/google/android/material/slider/RangeSlider$OnChangeListener;

    .line 87
    check-cast p1, Lcom/google/android/material/slider/RangeSlider;

    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/material/slider/RangeSlider$OnChangeListener;->onValueChange(Lcom/google/android/material/slider/RangeSlider;FZ)V

    return-void
.end method

###### Class com.google.android.material.slider.RangeSlider.OnSliderTouchListener (com.google.android.material.slider.RangeSlider$OnSliderTouchListener)
.class public interface abstract Lcom/google/android/material/slider/RangeSlider$OnSliderTouchListener;
.super Ljava/lang/Object;
.source "RangeSlider.java"

# interfaces
.implements Lcom/google/android/material/slider/BaseOnSliderTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/slider/RangeSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSliderTouchListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/material/slider/BaseOnSliderTouchListener<",
        "Lcom/google/android/material/slider/RangeSlider;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract onStartTrackingTouch(Lcom/google/android/material/slider/RangeSlider;)V
.end method

.method public abstract onStopTrackingTouch(Lcom/google/android/material/slider/RangeSlider;)V
.end method

###### Class com.google.android.material.slider.RangeSlider.OnSliderTouchListener.CC (com.google.android.material.slider.RangeSlider$OnSliderTouchListener$-CC)
.class public final synthetic Lcom/google/android/material/slider/RangeSlider$OnSliderTouchListener$-CC;
.super Ljava/lang/Object;
.source "RangeSlider.java"


# direct methods
.method public static bridge synthetic $default$onStartTrackingTouch(Lcom/google/android/material/slider/RangeSlider$OnSliderTouchListener;Ljava/lang/Object;)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/material/slider/RangeSlider$OnSliderTouchListener;

    .line 93
    check-cast p1, Lcom/google/android/material/slider/RangeSlider;

    invoke-interface {p0, p1}, Lcom/google/android/material/slider/RangeSlider$OnSliderTouchListener;->onStartTrackingTouch(Lcom/google/android/material/slider/RangeSlider;)V

    return-void
.end method

.method public static bridge synthetic $default$onStopTrackingTouch(Lcom/google/android/material/slider/RangeSlider$OnSliderTouchListener;Ljava/lang/Object;)V
    .registers 2
    .param p0, "_this"    # Lcom/google/android/material/slider/RangeSlider$OnSliderTouchListener;

    .line 93
    check-cast p1, Lcom/google/android/material/slider/RangeSlider;

    invoke-interface {p0, p1}, Lcom/google/android/material/slider/RangeSlider$OnSliderTouchListener;->onStopTrackingTouch(Lcom/google/android/material/slider/RangeSlider;)V

    return-void
.end method

###### Class com.google.android.material.slider.RangeSlider.RangeSliderState (com.google.android.material.slider.RangeSlider$RangeSliderState)
.class Lcom/google/android/material/slider/RangeSlider$RangeSliderState;
.super Landroid/view/AbsSavedState;
.source "RangeSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/slider/RangeSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RangeSliderState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/slider/RangeSlider$RangeSliderState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private minSeparation:F

.field private separationUnit:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 251
    new-instance v0, Lcom/google/android/material/slider/RangeSlider$RangeSliderState$1;

    invoke-direct {v0}, Lcom/google/android/material/slider/RangeSlider$RangeSliderState$1;-><init>()V

    sput-object v0, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 239
    const-class v0, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;->minSeparation:F

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;->separationUnit:I

    .line 242
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/material/slider/RangeSlider$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/google/android/material/slider/RangeSlider$1;

    .line 229
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .registers 2
    .param p1, "superState"    # Landroid/os/Parcelable;

    .line 235
    invoke-direct {p0, p1}, Landroid/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 236
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/slider/RangeSlider$RangeSliderState;)F
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/slider/RangeSlider$RangeSliderState;

    .line 229
    iget v0, p0, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;->minSeparation:F

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/material/slider/RangeSlider$RangeSliderState;F)F
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/slider/RangeSlider$RangeSliderState;
    .param p1, "x1"    # F

    .line 229
    iput p1, p0, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;->minSeparation:F

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/material/slider/RangeSlider$RangeSliderState;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/slider/RangeSlider$RangeSliderState;

    .line 229
    iget v0, p0, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;->separationUnit:I

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/material/slider/RangeSlider$RangeSliderState;I)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/slider/RangeSlider$RangeSliderState;
    .param p1, "x1"    # I

    .line 229
    iput p1, p0, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;->separationUnit:I

    return p1
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 246
    invoke-super {p0, p1, p2}, Landroid/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 247
    iget v0, p0, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;->minSeparation:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 248
    iget v0, p0, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;->separationUnit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    return-void
.end method

###### Class com.google.android.material.slider.RangeSlider.RangeSliderState.AnonymousClass1 (com.google.android.material.slider.RangeSlider$RangeSliderState$1)
.class Lcom/google/android/material/slider/RangeSlider$RangeSliderState$1;
.super Ljava/lang/Object;
.source "RangeSlider.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/slider/RangeSlider$RangeSliderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/material/slider/RangeSlider$RangeSliderState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/slider/RangeSlider$RangeSliderState;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 255
    new-instance v0, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;-><init>(Landroid/os/Parcel;Lcom/google/android/material/slider/RangeSlider$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 252
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/RangeSlider$RangeSliderState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/slider/RangeSlider$RangeSliderState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/google/android/material/slider/RangeSlider$RangeSliderState;
    .registers 3
    .param p1, "size"    # I

    .line 260
    new-array v0, p1, [Lcom/google/android/material/slider/RangeSlider$RangeSliderState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 252
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/RangeSlider$RangeSliderState$1;->newArray(I)[Lcom/google/android/material/slider/RangeSlider$RangeSliderState;

    move-result-object p1

    return-object p1
.end method
