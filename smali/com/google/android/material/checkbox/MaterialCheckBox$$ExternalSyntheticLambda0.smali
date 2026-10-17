###### Class com.google.android.material.checkbox.MaterialCheckBox$$ExternalSyntheticLambda0 (com.google.android.material.checkbox.MaterialCheckBox$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/google/android/material/checkbox/MaterialCheckBox$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/google/android/material/checkbox/MaterialCheckBox;"
    method = "lambda$new$0"
    proto = "()V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x1c
    versionHash = "3b119036505a817327d30bbe4a430e8676906c2ab0a3363856806bcd3b289007"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/checkbox/MaterialCheckBox;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/checkbox/MaterialCheckBox;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/checkbox/MaterialCheckBox;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-virtual {v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->lambda$new$0$com-google-android-material-checkbox-MaterialCheckBox()V

    return-void
.end method
