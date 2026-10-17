package androidx.core.os;

import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class BundleCompat {
    private BundleCompat() {
    }

    public static <T> T getParcelable(Bundle bundle, String str, Class<T> cls) {
        if (BuildCompat.isAtLeastU()) {
            return (T) Api33Impl.getParcelable(bundle, str, cls);
        }
        T t = (T) bundle.getParcelable(str);
        if (cls.isInstance(t)) {
            return t;
        }
        return null;
    }

    public static Parcelable[] getParcelableArray(Bundle in, String key, Class<? extends Parcelable> clazz) {
        if (BuildCompat.isAtLeastU()) {
            return (Parcelable[]) Api33Impl.getParcelableArray(in, key, clazz);
        }
        return in.getParcelableArray(key);
    }

    public static <T> ArrayList<T> getParcelableArrayList(Bundle in, String key, Class<? extends T> clazz) {
        if (BuildCompat.isAtLeastU()) {
            return Api33Impl.getParcelableArrayList(in, key, clazz);
        }
        return in.getParcelableArrayList(key);
    }

    public static <T> SparseArray<T> getSparseParcelableArray(Bundle in, String key, Class<? extends T> clazz) {
        if (BuildCompat.isAtLeastU()) {
            return Api33Impl.getSparseParcelableArray(in, key, clazz);
        }
        return in.getSparseParcelableArray(key);
    }

    static class Api33Impl {
        private Api33Impl() {
        }

        static <T> T getParcelable(Bundle bundle, String str, Class<T> cls) {
            return (T) bundle.getParcelable(str, cls);
        }

        static <T> T[] getParcelableArray(Bundle bundle, String str, Class<T> cls) {
            return (T[]) bundle.getParcelableArray(str, cls);
        }

        static <T> ArrayList<T> getParcelableArrayList(Bundle in, String key, Class<? extends T> clazz) {
            return in.getParcelableArrayList(key, clazz);
        }

        static <T> SparseArray<T> getSparseParcelableArray(Bundle in, String key, Class<? extends T> clazz) {
            return in.getSparseParcelableArray(key, clazz);
        }
    }
}
