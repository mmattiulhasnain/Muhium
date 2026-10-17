package com.google.android.material.internal;

import android.animation.ValueAnimator;
import android.view.View;
import com.android.tools.r8.annotations.LambdaMethod;
import com.android.tools.r8.annotations.SynthesizedClassV2;
import com.google.android.material.internal.MultiViewUpdateListener;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
@LambdaMethod(holder = "Lcom/google/android/material/internal/MultiViewUpdateListener;", method = "setScale", proto = "(Landroid/animation/ValueAnimator;Landroid/view/View;)V")
@SynthesizedClassV2(apiLevel = -2, kind = 28, versionHash = "3b119036505a817327d30bbe4a430e8676906c2ab0a3363856806bcd3b289007")
public final /* synthetic */ class MultiViewUpdateListener$$ExternalSyntheticLambda1 implements MultiViewUpdateListener.Listener {
    @Override // com.google.android.material.internal.MultiViewUpdateListener.Listener
    public final void onAnimationUpdate(ValueAnimator valueAnimator, View view) {
        MultiViewUpdateListener.setScale(valueAnimator, view);
    }
}
