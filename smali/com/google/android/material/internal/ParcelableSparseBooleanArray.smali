###### Class com.google.android.material.internal.ParcelableSparseBooleanArray (com.google.android.material.internal.ParcelableSparseBooleanArray)
.class public Lcom/google/android/material/internal/ParcelableSparseBooleanArray;
.super Landroid/util/SparseBooleanArray;
.source "ParcelableSparseBooleanArray.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/internal/ParcelableSparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 70
    new-instance v0, Lcom/google/android/material/internal/ParcelableSparseBooleanArray$1;

    invoke-direct {v0}, Lcom/google/android/material/internal/ParcelableSparseBooleanArray$1;-><init>()V

    sput-object v0, Lcom/google/android/material/internal/ParcelableSparseBooleanArray;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "initialCapacity"    # I

    .line 40
    invoke-direct {p0, p1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/util/SparseBooleanArray;)V
    .registers 5
    .param p1, "sparseBooleanArray"    # Landroid/util/SparseBooleanArray;

    .line 44
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 46
    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/material/internal/ParcelableSparseBooleanArray;->put(IZ)V

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 48
    .end local v0    # "i":I
    :cond_1c
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 57
    invoke-virtual {p0}, Lcom/google/android/material/internal/ParcelableSparseBooleanArray;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 58
    .local v0, "keys":[I
    invoke-virtual {p0}, Lcom/google/android/material/internal/ParcelableSparseBooleanArray;->size()I

    move-result v1

    new-array v1, v1, [Z

    .line 60
    .local v1, "values":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    invoke-virtual {p0}, Lcom/google/android/material/internal/ParcelableSparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_22

    .line 61
    invoke-virtual {p0, v2}, Lcom/google/android/material/internal/ParcelableSparseBooleanArray;->keyAt(I)I

    move-result v3

    aput v3, v0, v2

    .line 62
    invoke-virtual {p0, v2}, Lcom/google/android/material/internal/ParcelableSparseBooleanArray;->valueAt(I)Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 65
    .end local v2    # "i":I
    :cond_22
    invoke-virtual {p0}, Lcom/google/android/material/internal/ParcelableSparseBooleanArray;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 67
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 68
    return-void
.end method

###### Class com.google.android.material.internal.ParcelableSparseBooleanArray.AnonymousClass1 (com.google.android.material.internal.ParcelableSparseBooleanArray$1)
.class Lcom/google/android/material/internal/ParcelableSparseBooleanArray$1;
.super Ljava/lang/Object;
.source "ParcelableSparseBooleanArray.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/ParcelableSparseBooleanArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/material/internal/ParcelableSparseBooleanArray;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/internal/ParcelableSparseBooleanArray;
    .registers 9
    .param p1, "source"    # Landroid/os/Parcel;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 76
    .local v0, "size":I
    new-instance v1, Lcom/google/android/material/internal/ParcelableSparseBooleanArray;

    invoke-direct {v1, v0}, Lcom/google/android/material/internal/ParcelableSparseBooleanArray;-><init>(I)V

    .line 78
    .local v1, "read":Lcom/google/android/material/internal/ParcelableSparseBooleanArray;
    new-array v2, v0, [I

    .line 79
    .local v2, "keys":[I
    new-array v3, v0, [Z

    .line 81
    .local v3, "values":[Z
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readIntArray([I)V

    .line 82
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 84
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_14
    if-ge v4, v0, :cond_20

    .line 85
    aget v5, v2, v4

    aget-boolean v6, v3, v4

    invoke-virtual {v1, v5, v6}, Lcom/google/android/material/internal/ParcelableSparseBooleanArray;->put(IZ)V

    .line 84
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 88
    .end local v4    # "i":I
    :cond_20
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 71
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/ParcelableSparseBooleanArray$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/internal/ParcelableSparseBooleanArray;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/google/android/material/internal/ParcelableSparseBooleanArray;
    .registers 3
    .param p1, "size"    # I

    .line 94
    new-array v0, p1, [Lcom/google/android/material/internal/ParcelableSparseBooleanArray;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 71
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/ParcelableSparseBooleanArray$1;->newArray(I)[Lcom/google/android/material/internal/ParcelableSparseBooleanArray;

    move-result-object p1

    return-object p1
.end method
