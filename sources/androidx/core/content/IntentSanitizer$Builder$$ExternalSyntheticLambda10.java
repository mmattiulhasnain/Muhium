package androidx.core.content;

import androidx.core.util.Predicate;
import com.android.tools.r8.annotations.LambdaMethod;
import com.android.tools.r8.annotations.SynthesizedClassV2;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
@LambdaMethod(holder = "Ljava/lang/String;", method = "equals", proto = "(Ljava/lang/Object;)Z")
@SynthesizedClassV2(apiLevel = -2, kind = 28, versionHash = "3b119036505a817327d30bbe4a430e8676906c2ab0a3363856806bcd3b289007")
public final /* synthetic */ class IntentSanitizer$Builder$$ExternalSyntheticLambda10 implements Predicate {
    public final /* synthetic */ String f$0;

    @Override // androidx.core.util.Predicate
    public /* synthetic */ Predicate and(Predicate predicate) {
        return Predicate.CC.$default$and(this, predicate);
    }

    @Override // androidx.core.util.Predicate
    public /* synthetic */ Predicate negate() {
        return Predicate.CC.$default$negate(this);
    }

    @Override // androidx.core.util.Predicate
    public /* synthetic */ Predicate or(Predicate predicate) {
        return Predicate.CC.$default$or(this, predicate);
    }

    @Override // androidx.core.util.Predicate
    public final boolean test(Object obj) {
        return this.f$0.equals((String) obj);
    }
}
