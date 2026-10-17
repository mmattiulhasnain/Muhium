###### Class com.google.android.material.timepicker.TimePickerView (com.google.android.material.timepicker.TimePickerView)
.class Lcom/google/android/material/timepicker/TimePickerView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "TimePickerView.java"

# interfaces
.implements Lcom/google/android/material/timepicker/TimePickerControls;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;,
        Lcom/google/android/material/timepicker/TimePickerView$OnSelectionChange;,
        Lcom/google/android/material/timepicker/TimePickerView$OnPeriodChangeListener;
    }
.end annotation


# static fields
.field static final GENERIC_VIEW_ACCESSIBILITY_CLASS_NAME:Ljava/lang/String; = "android.view.View"


# instance fields
.field private final clockFace:Lcom/google/android/material/timepicker/ClockFaceView;

.field private final clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

.field private final hourView:Lcom/google/android/material/chip/Chip;

.field private final minuteView:Lcom/google/android/material/chip/Chip;

.field private onDoubleTapListener:Lcom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;

.field private onPeriodChangeListener:Lcom/google/android/material/timepicker/TimePickerView$OnPeriodChangeListener;

.field private onSelectionChangeListener:Lcom/google/android/material/timepicker/TimePickerView$OnSelectionChange;

.field private final selectionListener:Landroid/view/View$OnClickListener;

.field private final toggle:Lcom/google/android/material/button/MaterialButtonToggleGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/timepicker/TimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/timepicker/TimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 102
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    new-instance v0, Lcom/google/android/material/timepicker/TimePickerView$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/timepicker/TimePickerView$1;-><init>(Lcom/google/android/material/timepicker/TimePickerView;)V

    iput-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->selectionListener:Landroid/view/View$OnClickListener;

    .line 103
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$layout;->material_timepicker:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 104
    sget v0, Lcom/google/android/material/R$id;->material_clock_face:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/timepicker/TimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/timepicker/ClockFaceView;

    iput-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->clockFace:Lcom/google/android/material/timepicker/ClockFaceView;

    .line 105
    sget v0, Lcom/google/android/material/R$id;->material_clock_period_toggle:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/timepicker/TimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    iput-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->toggle:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 107
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->toggle:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    new-instance v1, Lcom/google/android/material/timepicker/TimePickerView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/material/timepicker/TimePickerView$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/timepicker/TimePickerView;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->addOnButtonCheckedListener(Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;)V

    .line 118
    sget v0, Lcom/google/android/material/R$id;->material_minute_tv:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/timepicker/TimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/chip/Chip;

    iput-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->minuteView:Lcom/google/android/material/chip/Chip;

    .line 119
    sget v0, Lcom/google/android/material/R$id;->material_hour_tv:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/timepicker/TimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/chip/Chip;

    iput-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->hourView:Lcom/google/android/material/chip/Chip;

    .line 120
    sget v0, Lcom/google/android/material/R$id;->material_clock_hand:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/timepicker/TimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/timepicker/ClockHandView;

    iput-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

    .line 122
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerView;->setupDoubleTap()V

    .line 124
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerView;->setUpDisplay()V

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/timepicker/TimePickerView;)Lcom/google/android/material/timepicker/TimePickerView$OnSelectionChange;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/timepicker/TimePickerView;

    .line 56
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->onSelectionChangeListener:Lcom/google/android/material/timepicker/TimePickerView$OnSelectionChange;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/material/timepicker/TimePickerView;)Lcom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/timepicker/TimePickerView;

    .line 56
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->onDoubleTapListener:Lcom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;

    return-object v0
.end method

.method private setUpDisplay()V
    .registers 4

    .line 169
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->minuteView:Lcom/google/android/material/chip/Chip;

    sget v1, Lcom/google/android/material/R$id;->selection_type:I

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/chip/Chip;->setTag(ILjava/lang/Object;)V

    .line 170
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->hourView:Lcom/google/android/material/chip/Chip;

    sget v1, Lcom/google/android/material/R$id;->selection_type:I

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/chip/Chip;->setTag(ILjava/lang/Object;)V

    .line 172
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->minuteView:Lcom/google/android/material/chip/Chip;

    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerView;->selectionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->hourView:Lcom/google/android/material/chip/Chip;

    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerView;->selectionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->minuteView:Lcom/google/android/material/chip/Chip;

    const-string v1, "android.view.View"

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setAccessibilityClassName(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->hourView:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setAccessibilityClassName(Ljava/lang/CharSequence;)V

    .line 177
    return-void
.end method

.method private setupDoubleTap()V
    .registers 4

    .line 129
    new-instance v0, Landroid/view/GestureDetector;

    .line 131
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/TimePickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/material/timepicker/TimePickerView$2;

    invoke-direct {v2, p0}, Lcom/google/android/material/timepicker/TimePickerView$2;-><init>(Lcom/google/android/material/timepicker/TimePickerView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 144
    .local v0, "gestureDetector":Landroid/view/GestureDetector;
    new-instance v1, Lcom/google/android/material/timepicker/TimePickerView$3;

    invoke-direct {v1, p0, v0}, Lcom/google/android/material/timepicker/TimePickerView$3;-><init>(Lcom/google/android/material/timepicker/TimePickerView;Landroid/view/GestureDetector;)V

    .line 156
    .local v1, "onTouchListener":Landroid/view/View$OnTouchListener;
    iget-object v2, p0, Lcom/google/android/material/timepicker/TimePickerView;->minuteView:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v2, v1}, Lcom/google/android/material/chip/Chip;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 157
    iget-object v2, p0, Lcom/google/android/material/timepicker/TimePickerView;->hourView:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v2, v1}, Lcom/google/android/material/chip/Chip;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 158
    return-void
.end method

.method private updateSelection(Lcom/google/android/material/chip/Chip;Z)V
    .registers 4
    .param p1, "chip"    # Lcom/google/android/material/chip/Chip;
    .param p2, "isSelected"    # Z

    .line 222
    invoke-virtual {p1, p2}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 223
    nop

    .line 225
    if-eqz p2, :cond_8

    .line 226
    const/4 v0, 0x2

    goto :goto_9

    .line 227
    :cond_8
    const/4 v0, 0x0

    .line 223
    :goto_9
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 228
    return-void
.end method


# virtual methods
.method public addOnRotateListener(Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;)V
    .registers 3
    .param p1, "onRotateListener"    # Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;

    .line 231
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/ClockHandView;->addOnRotateListener(Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;)V

    .line 232
    return-void
.end method

.method getCurrentLevel()I
    .registers 2

    .line 265
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->clockFace:Lcom/google/android/material/timepicker/ClockFaceView;

    invoke-virtual {v0}, Lcom/google/android/material/timepicker/ClockFaceView;->getCurrentLevel()I

    move-result v0

    return v0
.end method

.method synthetic lambda$new$0$com-google-android-material-timepicker-TimePickerView(Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)V
    .registers 6
    .param p1, "group"    # Lcom/google/android/material/button/MaterialButtonToggleGroup;
    .param p2, "checkedId"    # I
    .param p3, "isChecked"    # Z

    .line 108
    if-nez p3, :cond_3

    .line 109
    return-void

    .line 112
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->onPeriodChangeListener:Lcom/google/android/material/timepicker/TimePickerView$OnPeriodChangeListener;

    if-eqz v0, :cond_13

    .line 113
    sget v0, Lcom/google/android/material/R$id;->material_clock_period_pm_button:I

    if-ne p2, v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 114
    .local v0, "period":I
    :goto_e
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerView;->onPeriodChangeListener:Lcom/google/android/material/timepicker/TimePickerView$OnPeriodChangeListener;

    invoke-interface {v1, v0}, Lcom/google/android/material/timepicker/TimePickerView$OnPeriodChangeListener;->onPeriodChange(I)V

    .line 116
    .end local v0    # "period":I
    :cond_13
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 5
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 257
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 258
    if-ne p1, p0, :cond_e

    if-nez p2, :cond_e

    .line 259
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->hourView:Lcom/google/android/material/chip/Chip;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->sendAccessibilityEvent(I)V

    .line 261
    :cond_e
    return-void
.end method

.method public setActiveSelection(I)V
    .registers 6
    .param p1, "selection"    # I

    .line 217
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->minuteView:Lcom/google/android/material/chip/Chip;

    const/16 v1, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_a

    move v1, v2

    goto :goto_b

    :cond_a
    move v1, v3

    :goto_b
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/timepicker/TimePickerView;->updateSelection(Lcom/google/android/material/chip/Chip;Z)V

    .line 218
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->hourView:Lcom/google/android/material/chip/Chip;

    const/16 v1, 0xa

    if-ne p1, v1, :cond_15

    goto :goto_16

    :cond_15
    move v2, v3

    :goto_16
    invoke-direct {p0, v0, v2}, Lcom/google/android/material/timepicker/TimePickerView;->updateSelection(Lcom/google/android/material/chip/Chip;Z)V

    .line 219
    return-void
.end method

.method public setAnimateOnTouchUp(Z)V
    .registers 3
    .param p1, "animating"    # Z

    .line 194
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/ClockHandView;->setAnimateOnTouchUp(Z)V

    .line 195
    return-void
.end method

.method setCurrentLevel(I)V
    .registers 3
    .param p1, "level"    # I

    .line 269
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->clockFace:Lcom/google/android/material/timepicker/ClockFaceView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/ClockFaceView;->setCurrentLevel(I)V

    .line 270
    return-void
.end method

.method public setHandRotation(F)V
    .registers 3
    .param p1, "rotation"    # F

    .line 186
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/ClockHandView;->setHandRotation(F)V

    .line 187
    return-void
.end method

.method public setHandRotation(FZ)V
    .registers 4
    .param p1, "rotation"    # F
    .param p2, "animate"    # Z

    .line 190
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/timepicker/ClockHandView;->setHandRotation(FZ)V

    .line 191
    return-void
.end method

.method public setHourClickDelegate(Landroidx/core/view/AccessibilityDelegateCompat;)V
    .registers 3
    .param p1, "clickActionDelegate"    # Landroidx/core/view/AccessibilityDelegateCompat;

    .line 165
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->minuteView:Lcom/google/android/material/chip/Chip;

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 166
    return-void
.end method

.method public setMinuteHourDelegate(Landroidx/core/view/AccessibilityDelegateCompat;)V
    .registers 3
    .param p1, "clickActionDelegate"    # Landroidx/core/view/AccessibilityDelegateCompat;

    .line 161
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->hourView:Lcom/google/android/material/chip/Chip;

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 162
    return-void
.end method

.method public setOnActionUpListener(Lcom/google/android/material/timepicker/ClockHandView$OnActionUpListener;)V
    .registers 3
    .param p1, "onActionUpListener"    # Lcom/google/android/material/timepicker/ClockHandView$OnActionUpListener;

    .line 235
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/ClockHandView;->setOnActionUpListener(Lcom/google/android/material/timepicker/ClockHandView$OnActionUpListener;)V

    .line 236
    return-void
.end method

.method setOnDoubleTapListener(Lcom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;

    .line 248
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->onDoubleTapListener:Lcom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;

    .line 249
    return-void
.end method

.method setOnPeriodChangeListener(Lcom/google/android/material/timepicker/TimePickerView$OnPeriodChangeListener;)V
    .registers 2
    .param p1, "onPeriodChangeListener"    # Lcom/google/android/material/timepicker/TimePickerView$OnPeriodChangeListener;

    .line 239
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->onPeriodChangeListener:Lcom/google/android/material/timepicker/TimePickerView$OnPeriodChangeListener;

    .line 240
    return-void
.end method

.method setOnSelectionChangeListener(Lcom/google/android/material/timepicker/TimePickerView$OnSelectionChange;)V
    .registers 2
    .param p1, "onSelectionChangeListener"    # Lcom/google/android/material/timepicker/TimePickerView$OnSelectionChange;

    .line 244
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->onSelectionChangeListener:Lcom/google/android/material/timepicker/TimePickerView$OnSelectionChange;

    .line 245
    return-void
.end method

.method public setValues([Ljava/lang/String;I)V
    .registers 4
    .param p1, "values"    # [Ljava/lang/String;
    .param p2, "contentDescription"    # I

    .line 181
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->clockFace:Lcom/google/android/material/timepicker/ClockFaceView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/timepicker/ClockFaceView;->setValues([Ljava/lang/String;I)V

    .line 182
    return-void
.end method

.method public showToggle()V
    .registers 3

    .line 252
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->toggle:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setVisibility(I)V

    .line 253
    return-void
.end method

.method public updateTime(III)V
    .registers 11
    .param p1, "period"    # I
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .line 200
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 201
    sget v1, Lcom/google/android/material/R$id;->material_clock_period_pm_button:I

    goto :goto_8

    .line 202
    :cond_6
    sget v1, Lcom/google/android/material/R$id;->material_clock_period_am_button:I

    :goto_8
    nop

    .line 203
    .local v1, "checkedId":I
    iget-object v2, p0, Lcom/google/android/material/timepicker/TimePickerView;->toggle:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {v2, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->check(I)V

    .line 204
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/TimePickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 205
    .local v2, "current":Ljava/util/Locale;
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-string v3, "%02d"

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 206
    .local v4, "minuteFormatted":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v6, v0, v5

    invoke-static {v2, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "hourFormatted":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/material/timepicker/TimePickerView;->minuteView:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v3}, Lcom/google/android/material/chip/Chip;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_44

    .line 208
    iget-object v3, p0, Lcom/google/android/material/timepicker/TimePickerView;->minuteView:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v3, v4}, Lcom/google/android/material/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    .line 210
    :cond_44
    iget-object v3, p0, Lcom/google/android/material/timepicker/TimePickerView;->hourView:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v3}, Lcom/google/android/material/chip/Chip;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_55

    .line 211
    iget-object v3, p0, Lcom/google/android/material/timepicker/TimePickerView;->hourView:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v3, v0}, Lcom/google/android/material/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    .line 213
    :cond_55
    return-void
.end method

###### Class com.google.android.material.timepicker.TimePickerView.AnonymousClass1 (com.google.android.material.timepicker.TimePickerView$1)
.class Lcom/google/android/material/timepicker/TimePickerView$1;
.super Ljava/lang/Object;
.source "TimePickerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/timepicker/TimePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/timepicker/TimePickerView;


# direct methods
.method constructor <init>(Lcom/google/android/material/timepicker/TimePickerView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/android/material/timepicker/TimePickerView;

    .line 80
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView$1;->this$0:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 83
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView$1;->this$0:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-static {v0}, Lcom/google/android/material/timepicker/TimePickerView;->access$000(Lcom/google/android/material/timepicker/TimePickerView;)Lcom/google/android/material/timepicker/TimePickerView$OnSelectionChange;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 84
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView$1;->this$0:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-static {v0}, Lcom/google/android/material/timepicker/TimePickerView;->access$000(Lcom/google/android/material/timepicker/TimePickerView;)Lcom/google/android/material/timepicker/TimePickerView$OnSelectionChange;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$id;->selection_type:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/material/timepicker/TimePickerView$OnSelectionChange;->onSelectionChanged(I)V

    .line 86
    :cond_1d
    return-void
.end method

###### Class com.google.android.material.timepicker.TimePickerView.AnonymousClass2 (com.google.android.material.timepicker.TimePickerView$2)
.class Lcom/google/android/material/timepicker/TimePickerView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/timepicker/TimePickerView;->setupDoubleTap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/timepicker/TimePickerView;


# direct methods
.method constructor <init>(Lcom/google/android/material/timepicker/TimePickerView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/android/material/timepicker/TimePickerView;

    .line 132
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView$2;->this$0:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 135
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView$2;->this$0:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-static {v0}, Lcom/google/android/material/timepicker/TimePickerView;->access$100(Lcom/google/android/material/timepicker/TimePickerView;)Lcom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;

    move-result-object v0

    .line 136
    .local v0, "listener":Lcom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;
    if-eqz v0, :cond_d

    .line 137
    invoke-interface {v0}, Lcom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;->onDoubleTap()V

    .line 138
    const/4 v1, 0x1

    return v1

    .line 140
    :cond_d
    const/4 v1, 0x0

    return v1
.end method

###### Class com.google.android.material.timepicker.TimePickerView.AnonymousClass3 (com.google.android.material.timepicker.TimePickerView$3)
.class Lcom/google/android/material/timepicker/TimePickerView$3;
.super Ljava/lang/Object;
.source "TimePickerView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/timepicker/TimePickerView;->setupDoubleTap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/timepicker/TimePickerView;

.field final synthetic val$gestureDetector:Landroid/view/GestureDetector;


# direct methods
.method constructor <init>(Lcom/google/android/material/timepicker/TimePickerView;Landroid/view/GestureDetector;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/android/material/timepicker/TimePickerView;

    .line 145
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView$3;->this$0:Lcom/google/android/material/timepicker/TimePickerView;

    iput-object p2, p0, Lcom/google/android/material/timepicker/TimePickerView$3;->val$gestureDetector:Landroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 148
    move-object v0, p1

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 149
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView$3;->val$gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 152
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

###### Class com.google.android.material.timepicker.TimePickerView.OnDoubleTapListener (com.google.android.material.timepicker.TimePickerView$OnDoubleTapListener)
.class interface abstract Lcom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;
.super Ljava/lang/Object;
.source "TimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/timepicker/TimePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "OnDoubleTapListener"
.end annotation


# virtual methods
.method public abstract onDoubleTap()V
.end method

###### Class com.google.android.material.timepicker.TimePickerView.OnPeriodChangeListener (com.google.android.material.timepicker.TimePickerView$OnPeriodChangeListener)
.class interface abstract Lcom/google/android/material/timepicker/TimePickerView$OnPeriodChangeListener;
.super Ljava/lang/Object;
.source "TimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/timepicker/TimePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "OnPeriodChangeListener"
.end annotation


# virtual methods
.method public abstract onPeriodChange(I)V
.end method

###### Class com.google.android.material.timepicker.TimePickerView.OnSelectionChange (com.google.android.material.timepicker.TimePickerView$OnSelectionChange)
.class interface abstract Lcom/google/android/material/timepicker/TimePickerView$OnSelectionChange;
.super Ljava/lang/Object;
.source "TimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/timepicker/TimePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "OnSelectionChange"
.end annotation


# virtual methods
.method public abstract onSelectionChanged(I)V
.end method

###### Class com.google.android.material.timepicker.TimePickerView$$ExternalSyntheticLambda0 (com.google.android.material.timepicker.TimePickerView$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/google/android/material/timepicker/TimePickerView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/google/android/material/timepicker/TimePickerView;"
    method = "lambda$new$0"
    proto = "(Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x1c
    versionHash = "3b119036505a817327d30bbe4a430e8676906c2ab0a3363856806bcd3b289007"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/timepicker/TimePickerView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/timepicker/TimePickerView;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/timepicker/TimePickerView;

    return-void
.end method


# virtual methods
.method public final onButtonChecked(Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/material/timepicker/TimePickerView;->lambda$new$0$com-google-android-material-timepicker-TimePickerView(Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)V

    return-void
.end method
