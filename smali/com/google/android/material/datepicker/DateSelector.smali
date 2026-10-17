###### Class com.google.android.material.datepicker.DateSelector (com.google.android.material.datepicker.DateSelector)
.class public interface abstract Lcom/google/android/material/datepicker/DateSelector;
.super Ljava/lang/Object;
.source "DateSelector.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# virtual methods
.method public abstract getDefaultThemeResId(Landroid/content/Context;)I
.end method

.method public abstract getDefaultTitleResId()I
.end method

.method public abstract getError()Ljava/lang/String;
.end method

.method public abstract getSelectedDays()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSelectedRanges()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getSelection()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method public abstract getSelectionContentDescription(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getSelectionDisplayString(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract isSelectionComplete()Z
.end method

.method public abstract onCreateTextInputView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/OnSelectionChangedListener;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/ViewGroup;",
            "Landroid/os/Bundle;",
            "Lcom/google/android/material/datepicker/CalendarConstraints;",
            "Lcom/google/android/material/datepicker/OnSelectionChangedListener<",
            "TS;>;)",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method public abstract select(J)V
.end method

.method public abstract setSelection(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation
.end method

.method public abstract setTextInputFormat(Ljava/text/SimpleDateFormat;)V
.end method

###### Class com.google.android.material.datepicker.DateSelector.CC (com.google.android.material.datepicker.DateSelector$-CC)
.class public final synthetic Lcom/google/android/material/datepicker/DateSelector$-CC;
.super Ljava/lang/Object;
.source "DateSelector.java"


# direct methods
.method public static synthetic lambda$showKeyboardWithAutoHideBehavior$0([Landroid/widget/EditText;Landroid/view/View;Z)V
    .registers 8
    .param p0, "editTexts"    # [Landroid/widget/EditText;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 137
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_11

    aget-object v3, p0, v2

    .line 138
    .local v3, "editText":Landroid/widget/EditText;
    invoke-virtual {v3}, Landroid/widget/EditText;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 139
    return-void

    .line 137
    .end local v3    # "editText":Landroid/widget/EditText;
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 142
    :cond_11
    invoke-static {p1, v1}, Lcom/google/android/material/internal/ViewUtils;->hideKeyboard(Landroid/view/View;Z)V

    .line 143
    return-void
.end method

.method public static synthetic lambda$showKeyboardWithAutoHideBehavior$1(Landroid/view/View;)V
    .registers 2
    .param p0, "viewToFocus"    # Landroid/view/View;

    .line 153
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/material/internal/ViewUtils;->requestFocusAndShowKeyboard(Landroid/view/View;Z)V

    return-void
.end method

.method public static varargs showKeyboardWithAutoHideBehavior([Landroid/widget/EditText;)V
    .registers 6
    .param p0, "editTexts"    # [Landroid/widget/EditText;

    .line 131
    array-length v0, p0

    if-nez v0, :cond_4

    .line 132
    return-void

    .line 135
    :cond_4
    new-instance v0, Lcom/google/android/material/datepicker/DateSelector$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/material/datepicker/DateSelector$$ExternalSyntheticLambda0;-><init>([Landroid/widget/EditText;)V

    .line 145
    .local v0, "listener":Landroid/view/View$OnFocusChangeListener;
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_16

    aget-object v4, p0, v3

    .line 146
    .local v4, "editText":Landroid/widget/EditText;
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 145
    .end local v4    # "editText":Landroid/widget/EditText;
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 150
    :cond_16
    aget-object v1, p0, v2

    .line 151
    .local v1, "viewToFocus":Landroid/view/View;
    new-instance v2, Lcom/google/android/material/datepicker/DateSelector$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/google/android/material/datepicker/DateSelector$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 156
    return-void
.end method

###### Class com.google.android.material.datepicker.DateSelector$$ExternalSyntheticLambda0 (com.google.android.material.datepicker.DateSelector$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/google/android/material/datepicker/DateSelector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/google/android/material/datepicker/DateSelector;"
    method = "lambda$showKeyboardWithAutoHideBehavior$0"
    proto = "([Landroid/widget/EditText;Landroid/view/View;Z)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x1c
    versionHash = "3b119036505a817327d30bbe4a430e8676906c2ab0a3363856806bcd3b289007"
.end annotation


# instance fields
.field public final synthetic f$0:[Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>([Landroid/widget/EditText;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/datepicker/DateSelector$$ExternalSyntheticLambda0;->f$0:[Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/google/android/material/datepicker/DateSelector$$ExternalSyntheticLambda0;->f$0:[Landroid/widget/EditText;

    invoke-static {v0, p1, p2}, Lcom/google/android/material/datepicker/DateSelector$-CC;->lambda$showKeyboardWithAutoHideBehavior$0([Landroid/widget/EditText;Landroid/view/View;Z)V

    return-void
.end method

###### Class com.google.android.material.datepicker.DateSelector$$ExternalSyntheticLambda1 (com.google.android.material.datepicker.DateSelector$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/google/android/material/datepicker/DateSelector$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/google/android/material/datepicker/DateSelector;"
    method = "lambda$showKeyboardWithAutoHideBehavior$1"
    proto = "(Landroid/view/View;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x1c
    versionHash = "3b119036505a817327d30bbe4a430e8676906c2ab0a3363856806bcd3b289007"
.end annotation


# instance fields
.field public final synthetic f$0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/datepicker/DateSelector$$ExternalSyntheticLambda1;->f$0:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/material/datepicker/DateSelector$$ExternalSyntheticLambda1;->f$0:Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/material/datepicker/DateSelector$-CC;->lambda$showKeyboardWithAutoHideBehavior$1(Landroid/view/View;)V

    return-void
.end method
