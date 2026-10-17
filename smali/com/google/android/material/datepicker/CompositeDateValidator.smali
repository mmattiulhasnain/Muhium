###### Class com.google.android.material.datepicker.CompositeDateValidator (com.google.android.material.datepicker.CompositeDateValidator)
.class public final Lcom/google/android/material/datepicker/CompositeDateValidator;
.super Ljava/lang/Object;
.source "CompositeDateValidator.java"

# interfaces
.implements Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;
    }
.end annotation


# static fields
.field private static final ALL_OPERATOR:Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;

.field private static final ANY_OPERATOR:Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;

.field private static final COMPARATOR_ALL_ID:I = 0x2

.field private static final COMPARATOR_ANY_ID:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/datepicker/CompositeDateValidator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final operator:Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;

.field private final validators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Lcom/google/android/material/datepicker/CompositeDateValidator$1;

    invoke-direct {v0}, Lcom/google/android/material/datepicker/CompositeDateValidator$1;-><init>()V

    sput-object v0, Lcom/google/android/material/datepicker/CompositeDateValidator;->ANY_OPERATOR:Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;

    .line 65
    new-instance v0, Lcom/google/android/material/datepicker/CompositeDateValidator$2;

    invoke-direct {v0}, Lcom/google/android/material/datepicker/CompositeDateValidator$2;-><init>()V

    sput-object v0, Lcom/google/android/material/datepicker/CompositeDateValidator;->ALL_OPERATOR:Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;

    .line 108
    new-instance v0, Lcom/google/android/material/datepicker/CompositeDateValidator$3;

    invoke-direct {v0}, Lcom/google/android/material/datepicker/CompositeDateValidator$3;-><init>()V

    sput-object v0, Lcom/google/android/material/datepicker/CompositeDateValidator;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;)V
    .registers 3
    .param p2, "operator"    # Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;",
            ">;",
            "Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;",
            ")V"
        }
    .end annotation

    .line 88
    .local p1, "validators":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/google/android/material/datepicker/CompositeDateValidator;->validators:Ljava/util/List;

    .line 90
    iput-object p2, p0, Lcom/google/android/material/datepicker/CompositeDateValidator;->operator:Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;

    .line 91
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;Lcom/google/android/material/datepicker/CompositeDateValidator$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;
    .param p3, "x2"    # Lcom/google/android/material/datepicker/CompositeDateValidator$1;

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/datepicker/CompositeDateValidator;-><init>(Ljava/util/List;Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;)V

    return-void
.end method

.method static synthetic access$000()Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;
    .registers 1

    .line 27
    sget-object v0, Lcom/google/android/material/datepicker/CompositeDateValidator;->ALL_OPERATOR:Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;
    .registers 1

    .line 27
    sget-object v0, Lcom/google/android/material/datepicker/CompositeDateValidator;->ANY_OPERATOR:Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;

    return-object v0
.end method

.method public static allOf(Ljava/util/List;)Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;",
            ">;)",
            "Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;"
        }
    .end annotation

    .line 98
    .local p0, "validators":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;>;"
    new-instance v0, Lcom/google/android/material/datepicker/CompositeDateValidator;

    sget-object v1, Lcom/google/android/material/datepicker/CompositeDateValidator;->ALL_OPERATOR:Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/datepicker/CompositeDateValidator;-><init>(Ljava/util/List;Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;)V

    return-object v0
.end method

.method public static anyOf(Ljava/util/List;)Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;",
            ">;)",
            "Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;"
        }
    .end annotation

    .line 104
    .local p0, "validators":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;>;"
    new-instance v0, Lcom/google/android/material/datepicker/CompositeDateValidator;

    sget-object v1, Lcom/google/android/material/datepicker/CompositeDateValidator;->ANY_OPERATOR:Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/datepicker/CompositeDateValidator;-><init>(Ljava/util/List;Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 162
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 163
    return v0

    .line 166
    :cond_4
    instance-of v1, p1, Lcom/google/android/material/datepicker/CompositeDateValidator;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 167
    return v2

    .line 170
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/google/android/material/datepicker/CompositeDateValidator;

    .line 172
    .local v1, "that":Lcom/google/android/material/datepicker/CompositeDateValidator;
    iget-object v3, p0, Lcom/google/android/material/datepicker/CompositeDateValidator;->validators:Ljava/util/List;

    iget-object v4, v1, Lcom/google/android/material/datepicker/CompositeDateValidator;->validators:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/google/android/material/datepicker/CompositeDateValidator;->operator:Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;

    invoke-interface {v3}, Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;->getId()I

    move-result v3

    iget-object v4, v1, Lcom/google/android/material/datepicker/CompositeDateValidator;->operator:Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;

    invoke-interface {v4}, Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;->getId()I

    move-result v4

    if-ne v3, v4, :cond_26

    goto :goto_27

    :cond_26
    move v0, v2

    :goto_27
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/google/android/material/datepicker/CompositeDateValidator;->validators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public isValid(J)Z
    .registers 5
    .param p1, "date"    # J

    .line 146
    iget-object v0, p0, Lcom/google/android/material/datepicker/CompositeDateValidator;->operator:Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;

    iget-object v1, p0, Lcom/google/android/material/datepicker/CompositeDateValidator;->validators:Ljava/util/List;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;->isValid(Ljava/util/List;J)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 156
    iget-object v0, p0, Lcom/google/android/material/datepicker/CompositeDateValidator;->validators:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 157
    iget-object v0, p0, Lcom/google/android/material/datepicker/CompositeDateValidator;->operator:Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;

    invoke-interface {v0}, Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    return-void
.end method

###### Class com.google.android.material.datepicker.CompositeDateValidator.AnonymousClass1 (com.google.android.material.datepicker.CompositeDateValidator$1)
.class Lcom/google/android/material/datepicker/CompositeDateValidator$1;
.super Ljava/lang/Object;
.source "CompositeDateValidator.java"

# interfaces
.implements Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/datepicker/CompositeDateValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .registers 2

    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public isValid(Ljava/util/List;J)Z
    .registers 7
    .param p2, "date"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;",
            ">;J)Z"
        }
    .end annotation

    .line 47
    .local p1, "validators":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    .line 48
    .local v1, "validator":Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;
    if-nez v1, :cond_13

    .line 49
    goto :goto_4

    .line 51
    :cond_13
    invoke-interface {v1, p2, p3}, Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;->isValid(J)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 52
    const/4 v0, 0x1

    return v0

    .line 54
    .end local v1    # "validator":Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;
    :cond_1b
    goto :goto_4

    .line 56
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

###### Class com.google.android.material.datepicker.CompositeDateValidator.AnonymousClass2 (com.google.android.material.datepicker.CompositeDateValidator$2)
.class Lcom/google/android/material/datepicker/CompositeDateValidator$2;
.super Ljava/lang/Object;
.source "CompositeDateValidator.java"

# interfaces
.implements Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/datepicker/CompositeDateValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .registers 2

    .line 84
    const/4 v0, 0x2

    return v0
.end method

.method public isValid(Ljava/util/List;J)Z
    .registers 7
    .param p2, "date"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;",
            ">;J)Z"
        }
    .end annotation

    .line 70
    .local p1, "validators":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    .line 71
    .local v1, "validator":Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;
    if-nez v1, :cond_13

    .line 72
    goto :goto_4

    .line 74
    :cond_13
    invoke-interface {v1, p2, p3}, Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;->isValid(J)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 75
    const/4 v0, 0x0

    return v0

    .line 77
    .end local v1    # "validator":Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;
    :cond_1b
    goto :goto_4

    .line 79
    :cond_1c
    const/4 v0, 0x1

    return v0
.end method

###### Class com.google.android.material.datepicker.CompositeDateValidator.AnonymousClass3 (com.google.android.material.datepicker.CompositeDateValidator$3)
.class Lcom/google/android/material/datepicker/CompositeDateValidator$3;
.super Ljava/lang/Object;
.source "CompositeDateValidator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/datepicker/CompositeDateValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/material/datepicker/CompositeDateValidator;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/datepicker/CompositeDateValidator;
    .registers 8
    .param p1, "source"    # Landroid/os/Parcel;

    .line 114
    const-class v0, Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    .line 115
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    .line 116
    .local v0, "validators":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 117
    .local v1, "id":I
    const/4 v2, 0x0

    .line 118
    .local v2, "operator":Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;
    const/4 v3, 0x2

    if-ne v1, v3, :cond_17

    .line 119
    invoke-static {}, Lcom/google/android/material/datepicker/CompositeDateValidator;->access$000()Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;

    move-result-object v2

    goto :goto_23

    .line 120
    :cond_17
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1f

    .line 121
    invoke-static {}, Lcom/google/android/material/datepicker/CompositeDateValidator;->access$100()Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;

    move-result-object v2

    goto :goto_23

    .line 123
    :cond_1f
    invoke-static {}, Lcom/google/android/material/datepicker/CompositeDateValidator;->access$000()Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;

    move-result-object v2

    .line 126
    :goto_23
    new-instance v3, Lcom/google/android/material/datepicker/CompositeDateValidator;

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v2, v5}, Lcom/google/android/material/datepicker/CompositeDateValidator;-><init>(Ljava/util/List;Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;Lcom/google/android/material/datepicker/CompositeDateValidator$1;)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 109
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/CompositeDateValidator$3;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/datepicker/CompositeDateValidator;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/google/android/material/datepicker/CompositeDateValidator;
    .registers 3
    .param p1, "size"    # I

    .line 132
    new-array v0, p1, [Lcom/google/android/material/datepicker/CompositeDateValidator;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 109
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/CompositeDateValidator$3;->newArray(I)[Lcom/google/android/material/datepicker/CompositeDateValidator;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.material.datepicker.CompositeDateValidator.Operator (com.google.android.material.datepicker.CompositeDateValidator$Operator)
.class interface abstract Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;
.super Ljava/lang/Object;
.source "CompositeDateValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/datepicker/CompositeDateValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Operator"
.end annotation


# virtual methods
.method public abstract getId()I
.end method

.method public abstract isValid(Ljava/util/List;J)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;",
            ">;J)Z"
        }
    .end annotation
.end method
