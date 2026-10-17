###### Class kotlin.jvm.internal.TypeParameterReference (kotlin.jvm.internal.TypeParameterReference)
.class public final Lkotlin/jvm/internal/TypeParameterReference;
.super Ljava/lang/Object;
.source "TypeParameterReference.kt"

# interfaces
.implements Lkotlin/reflect/KTypeParameter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/jvm/internal/TypeParameterReference$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTypeParameterReference.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TypeParameterReference.kt\nkotlin/jvm/internal/TypeParameterReference\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,58:1\n1#2:59\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000  2\u00020\u0001:\u0001 B)\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0014\u0010\u0019\u001a\u00020\u001a2\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012J\u0013\u0010\u001b\u001a\u00020\t2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0003H\u0096\u0002J\u0008\u0010\u001d\u001a\u00020\u001eH\u0016J\u0008\u0010\u001f\u001a\u00020\u0005H\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0008\u001a\u00020\tX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0010R\u0016\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R \u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00128VX\u0096\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006!"
    }
    d2 = {
        "Lkotlin/jvm/internal/TypeParameterReference;",
        "Lkotlin/reflect/KTypeParameter;",
        "container",
        "",
        "name",
        "",
        "variance",
        "Lkotlin/reflect/KVariance;",
        "isReified",
        "",
        "<init>",
        "(Ljava/lang/Object;Ljava/lang/String;Lkotlin/reflect/KVariance;Z)V",
        "getName",
        "()Ljava/lang/String;",
        "getVariance",
        "()Lkotlin/reflect/KVariance;",
        "()Z",
        "bounds",
        "",
        "Lkotlin/reflect/KType;",
        "upperBounds",
        "getUpperBounds$annotations",
        "()V",
        "getUpperBounds",
        "()Ljava/util/List;",
        "setUpperBounds",
        "",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "Companion",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lkotlin/jvm/internal/TypeParameterReference$Companion;


# instance fields
.field private volatile bounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/KType;",
            ">;"
        }
    .end annotation
.end field

.field private final container:Ljava/lang/Object;

.field private final isReified:Z

.field private final name:Ljava/lang/String;

.field private final variance:Lkotlin/reflect/KVariance;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlin/jvm/internal/TypeParameterReference$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/jvm/internal/TypeParameterReference$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/jvm/internal/TypeParameterReference;->Companion:Lkotlin/jvm/internal/TypeParameterReference$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Lkotlin/reflect/KVariance;Z)V
    .registers 6
    .param p1, "container"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "variance"    # Lkotlin/reflect/KVariance;
    .param p4, "isReified"    # Z

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "variance"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lkotlin/jvm/internal/TypeParameterReference;->container:Ljava/lang/Object;

    .line 16
    iput-object p2, p0, Lkotlin/jvm/internal/TypeParameterReference;->name:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lkotlin/jvm/internal/TypeParameterReference;->variance:Lkotlin/reflect/KVariance;

    .line 18
    iput-boolean p4, p0, Lkotlin/jvm/internal/TypeParameterReference;->isReified:Z

    .line 14
    return-void
.end method

.method public static synthetic getUpperBounds$annotations()V
    .registers 0

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 37
    instance-of v0, p1, Lkotlin/jvm/internal/TypeParameterReference;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lkotlin/jvm/internal/TypeParameterReference;->container:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lkotlin/jvm/internal/TypeParameterReference;

    iget-object v1, v1, Lkotlin/jvm/internal/TypeParameterReference;->container:Ljava/lang/Object;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lkotlin/jvm/internal/TypeParameterReference;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lkotlin/jvm/internal/TypeParameterReference;

    invoke-virtual {v1}, Lkotlin/jvm/internal/TypeParameterReference;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 16
    iget-object v0, p0, Lkotlin/jvm/internal/TypeParameterReference;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUpperBounds()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/KType;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lkotlin/jvm/internal/TypeParameterReference;->bounds:Ljava/util/List;

    if-nez v0, :cond_12

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->nullableTypeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    .line 59
    .local v1, "it":Ljava/util/List;
    const/4 v2, 0x0

    .line 25
    .local v2, "$i$a$-also-TypeParameterReference$upperBounds$1":I
    iput-object v1, p0, Lkotlin/jvm/internal/TypeParameterReference;->bounds:Ljava/util/List;

    .end local v1    # "it":Ljava/util/List;
    .end local v2    # "$i$a$-also-TypeParameterReference$upperBounds$1":I
    :cond_12
    return-object v0
.end method

.method public getVariance()Lkotlin/reflect/KVariance;
    .registers 2

    .line 17
    iget-object v0, p0, Lkotlin/jvm/internal/TypeParameterReference;->variance:Lkotlin/reflect/KVariance;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 40
    iget-object v0, p0, Lkotlin/jvm/internal/TypeParameterReference;->container:Ljava/lang/Object;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lkotlin/jvm/internal/TypeParameterReference;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isReified()Z
    .registers 2

    .line 18
    iget-boolean v0, p0, Lkotlin/jvm/internal/TypeParameterReference;->isReified:Z

    return v0
.end method

.method public final setUpperBounds(Ljava/util/List;)V
    .registers 5
    .param p1, "upperBounds"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/KType;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "upperBounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lkotlin/jvm/internal/TypeParameterReference;->bounds:Ljava/util/List;

    if-nez v0, :cond_d

    .line 33
    iput-object p1, p0, Lkotlin/jvm/internal/TypeParameterReference;->bounds:Ljava/util/List;

    .line 34
    return-void

    .line 30
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upper bounds of type parameter \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' have already been initialized."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 42
    sget-object v0, Lkotlin/jvm/internal/TypeParameterReference;->Companion:Lkotlin/jvm/internal/TypeParameterReference$Companion;

    move-object v1, p0

    check-cast v1, Lkotlin/reflect/KTypeParameter;

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/TypeParameterReference$Companion;->toString(Lkotlin/reflect/KTypeParameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.jvm.internal.TypeParameterReference.Companion (kotlin.jvm.internal.TypeParameterReference$Companion)
.class public final Lkotlin/jvm/internal/TypeParameterReference$Companion;
.super Ljava/lang/Object;
.source "TypeParameterReference.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/jvm/internal/TypeParameterReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/jvm/internal/TypeParameterReference$Companion$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lkotlin/jvm/internal/TypeParameterReference$Companion;",
        "",
        "<init>",
        "()V",
        "toString",
        "",
        "typeParameter",
        "Lkotlin/reflect/KTypeParameter;",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/jvm/internal/TypeParameterReference$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString(Lkotlin/reflect/KTypeParameter;)Ljava/lang/String;
    .registers 7
    .param p1, "typeParameter"    # Lkotlin/reflect/KTypeParameter;

    const-string/jumbo v0, "typeParameter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v0

    .local v1, "$this$toString_u24lambda_u240":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 47
    .local v2, "$i$a$-buildString-TypeParameterReference$Companion$toString$1":I
    invoke-interface {p1}, Lkotlin/reflect/KTypeParameter;->getVariance()Lkotlin/reflect/KVariance;

    move-result-object v3

    sget-object v4, Lkotlin/jvm/internal/TypeParameterReference$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Lkotlin/reflect/KVariance;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_3e

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 51
    :pswitch_22
    const-string v3, "out "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_30

    .line 50
    :pswitch_28
    const-string v3, "in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_30

    .line 47
    :pswitch_2e
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 54
    :goto_30
    invoke-interface {p1}, Lkotlin/reflect/KTypeParameter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    nop

    .line 46
    .end local v1    # "$this$toString_u24lambda_u240":Ljava/lang/StringBuilder;
    .end local v2    # "$i$a$-buildString-TypeParameterReference$Companion$toString$1":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    return-object v0

    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_28
        :pswitch_22
    .end packed-switch
.end method

###### Class kotlin.jvm.internal.TypeParameterReference.Companion.WhenMappings (kotlin.jvm.internal.TypeParameterReference$Companion$WhenMappings)
.class public final synthetic Lkotlin/jvm/internal/TypeParameterReference$Companion$WhenMappings;
.super Ljava/lang/Object;
.source "TypeParameterReference.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/jvm/internal/TypeParameterReference$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lkotlin/reflect/KVariance;->values()[Lkotlin/reflect/KVariance;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lkotlin/reflect/KVariance;->INVARIANT:Lkotlin/reflect/KVariance;

    invoke-virtual {v1}, Lkotlin/reflect/KVariance;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_11

    goto :goto_12

    :catch_11
    move-exception v1

    :goto_12
    :try_start_12
    sget-object v1, Lkotlin/reflect/KVariance;->IN:Lkotlin/reflect/KVariance;

    invoke-virtual {v1}, Lkotlin/reflect/KVariance;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1b} :catch_1c

    goto :goto_1d

    :catch_1c
    move-exception v1

    :goto_1d
    :try_start_1d
    sget-object v1, Lkotlin/reflect/KVariance;->OUT:Lkotlin/reflect/KVariance;

    invoke-virtual {v1}, Lkotlin/reflect/KVariance;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_26} :catch_27

    goto :goto_28

    :catch_27
    move-exception v1

    :goto_28
    sput-object v0, Lkotlin/jvm/internal/TypeParameterReference$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
