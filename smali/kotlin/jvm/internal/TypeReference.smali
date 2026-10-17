###### Class kotlin.jvm.internal.TypeReference (kotlin.jvm.internal.TypeReference)
.class public final Lkotlin/jvm/internal/TypeReference;
.super Ljava/lang/Object;
.source "TypeReference.kt"

# interfaces
.implements Lkotlin/reflect/KType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/jvm/internal/TypeReference$Companion;,
        Lkotlin/jvm/internal/TypeReference$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0010\u001b\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 *2\u00020\u0001:\u0001*B1\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0001\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bB\'\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0004\u0008\n\u0010\u000eJ\u0013\u0010\u001e\u001a\u00020\r2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0096\u0002J\u0008\u0010!\u001a\u00020\tH\u0016J\u0008\u0010\"\u001a\u00020#H\u0016J\u0010\u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020\rH\u0002J\u000c\u0010$\u001a\u00020#*\u00020\u0006H\u0002R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u00018\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u0008\u001a\u00020\t8\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0017\u0010\u0014\u001a\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u0012R\u0014\u0010\u000c\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u001dR\u001c\u0010&\u001a\u00020#*\u0006\u0012\u0002\u0008\u00030\'8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010)\u00a8\u0006+"
    }
    d2 = {
        "Lkotlin/jvm/internal/TypeReference;",
        "Lkotlin/reflect/KType;",
        "classifier",
        "Lkotlin/reflect/KClassifier;",
        "arguments",
        "",
        "Lkotlin/reflect/KTypeProjection;",
        "platformTypeUpperBound",
        "flags",
        "",
        "<init>",
        "(Lkotlin/reflect/KClassifier;Ljava/util/List;Lkotlin/reflect/KType;I)V",
        "isMarkedNullable",
        "",
        "(Lkotlin/reflect/KClassifier;Ljava/util/List;Z)V",
        "getClassifier",
        "()Lkotlin/reflect/KClassifier;",
        "getArguments",
        "()Ljava/util/List;",
        "getPlatformTypeUpperBound$kotlin_stdlib$annotations",
        "()V",
        "getPlatformTypeUpperBound$kotlin_stdlib",
        "()Lkotlin/reflect/KType;",
        "getFlags$kotlin_stdlib$annotations",
        "getFlags$kotlin_stdlib",
        "()I",
        "annotations",
        "",
        "getAnnotations",
        "()Z",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "asString",
        "convertPrimitiveToWrapper",
        "arrayClassName",
        "Ljava/lang/Class;",
        "getArrayClassName",
        "(Ljava/lang/Class;)Ljava/lang/String;",
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
.field public static final Companion:Lkotlin/jvm/internal/TypeReference$Companion;

.field public static final IS_MARKED_NULLABLE:I = 0x1

.field public static final IS_MUTABLE_COLLECTION_TYPE:I = 0x2

.field public static final IS_NOTHING_TYPE:I = 0x4


# instance fields
.field private final arguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/KTypeProjection;",
            ">;"
        }
    .end annotation
.end field

.field private final classifier:Lkotlin/reflect/KClassifier;

.field private final flags:I

.field private final platformTypeUpperBound:Lkotlin/reflect/KType;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlin/jvm/internal/TypeReference$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/jvm/internal/TypeReference$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/jvm/internal/TypeReference;->Companion:Lkotlin/jvm/internal/TypeReference$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/KClassifier;Ljava/util/List;Lkotlin/reflect/KType;I)V
    .registers 6
    .param p1, "classifier"    # Lkotlin/reflect/KClassifier;
    .param p2, "arguments"    # Ljava/util/List;
    .param p3, "platformTypeUpperBound"    # Lkotlin/reflect/KType;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClassifier;",
            "Ljava/util/List<",
            "Lkotlin/reflect/KTypeProjection;",
            ">;",
            "Lkotlin/reflect/KType;",
            "I)V"
        }
    .end annotation

    const-string v0, "classifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lkotlin/jvm/internal/TypeReference;->classifier:Lkotlin/reflect/KClassifier;

    .line 13
    iput-object p2, p0, Lkotlin/jvm/internal/TypeReference;->arguments:Ljava/util/List;

    .line 14
    iput-object p3, p0, Lkotlin/jvm/internal/TypeReference;->platformTypeUpperBound:Lkotlin/reflect/KType;

    .line 15
    iput p4, p0, Lkotlin/jvm/internal/TypeReference;->flags:I

    .line 11
    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/KClassifier;Ljava/util/List;Z)V
    .registers 5
    .param p1, "classifier"    # Lkotlin/reflect/KClassifier;
    .param p2, "arguments"    # Ljava/util/List;
    .param p3, "isMarkedNullable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClassifier;",
            "Ljava/util/List<",
            "Lkotlin/reflect/KTypeProjection;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "classifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lkotlin/jvm/internal/TypeReference;-><init>(Lkotlin/reflect/KClassifier;Ljava/util/List;Lkotlin/reflect/KType;I)V

    return-void
.end method

.method private final asString(Lkotlin/reflect/KTypeProjection;)Ljava/lang/String;
    .registers 5
    .param p1, "$this$asString"    # Lkotlin/reflect/KTypeProjection;

    .line 88
    invoke-virtual {p1}, Lkotlin/reflect/KTypeProjection;->getVariance()Lkotlin/reflect/KVariance;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, "*"

    return-object v0

    .line 90
    :cond_9
    invoke-virtual {p1}, Lkotlin/reflect/KTypeProjection;->getType()Lkotlin/reflect/KType;

    move-result-object v0

    instance-of v1, v0, Lkotlin/jvm/internal/TypeReference;

    if-eqz v1, :cond_14

    check-cast v0, Lkotlin/jvm/internal/TypeReference;

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    if-eqz v0, :cond_1e

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/jvm/internal/TypeReference;->asString(Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_26

    :cond_1e
    invoke-virtual {p1}, Lkotlin/reflect/KTypeProjection;->getType()Lkotlin/reflect/KType;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "typeString":Ljava/lang/String;
    :cond_26
    invoke-virtual {p1}, Lkotlin/reflect/KTypeProjection;->getVariance()Lkotlin/reflect/KVariance;

    move-result-object v1

    if-nez v1, :cond_2e

    const/4 v1, -0x1

    goto :goto_36

    :cond_2e
    sget-object v2, Lkotlin/jvm/internal/TypeReference$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lkotlin/reflect/KVariance;->ordinal()I

    move-result v1

    aget v1, v2, v1

    :goto_36
    packed-switch v1, :pswitch_data_6a

    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 94
    :pswitch_3f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "out "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_68

    .line 93
    :pswitch_53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_68

    .line 92
    :pswitch_67
    move-object v1, v0

    .line 91
    :goto_68
    return-object v1

    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_67
        :pswitch_53
        :pswitch_3f
    .end packed-switch
.end method

.method private final asString(Z)Ljava/lang/String;
    .registers 15
    .param p1, "convertPrimitiveToWrapper"    # Z

    .line 41
    invoke-virtual {p0}, Lkotlin/jvm/internal/TypeReference;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v0

    instance-of v1, v0, Lkotlin/reflect/KClass;

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    check-cast v0, Lkotlin/reflect/KClass;

    goto :goto_d

    :cond_c
    move-object v0, v2

    :goto_d
    if-eqz v0, :cond_13

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v2

    .line 42
    .local v2, "javaClass":Ljava/lang/Class;
    :cond_13
    nop

    .line 43
    if-nez v2, :cond_1f

    invoke-virtual {p0}, Lkotlin/jvm/internal/TypeReference;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_53

    .line 44
    :cond_1f
    iget v0, p0, Lkotlin/jvm/internal/TypeReference;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_28

    const-string v0, "kotlin.Nothing"

    goto :goto_53

    .line 45
    :cond_28
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-direct {p0, v2}, Lkotlin/jvm/internal/TypeReference;->getArrayClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    goto :goto_53

    .line 46
    :cond_33
    if-eqz p1, :cond_4f

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-virtual {p0}, Lkotlin/jvm/internal/TypeReference;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.reflect.KClass<*>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlin/reflect/KClass;

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaObjectType(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_53

    .line 47
    :cond_4f
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 42
    :goto_53
    nop

    .line 50
    .local v0, "klass":Ljava/lang/String;
    invoke-virtual {p0}, Lkotlin/jvm/internal/TypeReference;->getArguments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v3, ""

    if-eqz v1, :cond_62

    move-object v1, v3

    goto :goto_86

    .line 51
    :cond_62
    invoke-virtual {p0}, Lkotlin/jvm/internal/TypeReference;->getArguments()Ljava/util/List;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/Iterable;

    const-string v1, ", "

    move-object v5, v1

    check-cast v5, Ljava/lang/CharSequence;

    const-string v1, "<"

    move-object v6, v1

    check-cast v6, Ljava/lang/CharSequence;

    const-string v1, ">"

    move-object v7, v1

    check-cast v7, Ljava/lang/CharSequence;

    new-instance v10, Lkotlin/jvm/internal/TypeReference$$ExternalSyntheticLambda0;

    invoke-direct {v10, p0}, Lkotlin/jvm/internal/TypeReference$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/internal/TypeReference;)V

    const/16 v11, 0x18

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v12}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 50
    :goto_86
    nop

    .line 49
    nop

    .line 52
    .local v1, "args":Ljava/lang/String;
    invoke-virtual {p0}, Lkotlin/jvm/internal/TypeReference;->isMarkedNullable()Z

    move-result v4

    if-eqz v4, :cond_90

    const-string v3, "?"

    .line 54
    .local v3, "nullable":Ljava/lang/String;
    :cond_90
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, "result":Ljava/lang/String;
    iget-object v5, p0, Lkotlin/jvm/internal/TypeReference;->platformTypeUpperBound:Lkotlin/reflect/KType;

    .line 57
    .local v5, "upper":Lkotlin/reflect/KType;
    instance-of v6, v5, Lkotlin/jvm/internal/TypeReference;

    if-eqz v6, :cond_10b

    .line 58
    move-object v6, v5

    check-cast v6, Lkotlin/jvm/internal/TypeReference;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lkotlin/jvm/internal/TypeReference;->asString(Z)Ljava/lang/String;

    move-result-object v6

    .line 59
    .local v6, "renderedUpper":Ljava/lang/String;
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ba

    .line 62
    goto :goto_10c

    .line 64
    :cond_ba
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x3f

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x21

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_10d

    .line 65
    :cond_e7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x28

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x29

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .end local v6    # "renderedUpper":Ljava/lang/String;
    goto :goto_10d

    .line 68
    :cond_10b
    nop

    .line 56
    .end local v5    # "upper":Lkotlin/reflect/KType;
    :goto_10c
    move-object v7, v4

    :goto_10d
    return-object v7
.end method

.method static final asString$lambda$0(Lkotlin/jvm/internal/TypeReference;Lkotlin/reflect/KTypeProjection;)Ljava/lang/CharSequence;
    .registers 3
    .param p0, "this$0"    # Lkotlin/jvm/internal/TypeReference;
    .param p1, "it"    # Lkotlin/reflect/KTypeProjection;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/TypeReference;->asString(Lkotlin/reflect/KTypeProjection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method private final getArrayClassName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .param p1, "$this$arrayClassName"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 73
    nop

    .line 74
    const-class v0, [Z

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "kotlin.BooleanArray"

    goto :goto_5b

    .line 75
    :cond_c
    const-class v0, [C

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "kotlin.CharArray"

    goto :goto_5b

    .line 76
    :cond_17
    const-class v0, [B

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "kotlin.ByteArray"

    goto :goto_5b

    .line 77
    :cond_22
    const-class v0, [S

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string v0, "kotlin.ShortArray"

    goto :goto_5b

    .line 78
    :cond_2d
    const-class v0, [I

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    const-string v0, "kotlin.IntArray"

    goto :goto_5b

    .line 79
    :cond_38
    const-class v0, [F

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    const-string v0, "kotlin.FloatArray"

    goto :goto_5b

    .line 80
    :cond_43
    const-class v0, [J

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    const-string v0, "kotlin.LongArray"

    goto :goto_5b

    .line 81
    :cond_4e
    const-class v0, [D

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    const-string v0, "kotlin.DoubleArray"

    goto :goto_5b

    .line 82
    :cond_59
    const-string v0, "kotlin.Array"

    .line 83
    :goto_5b
    return-object v0
.end method

.method public static synthetic getFlags$kotlin_stdlib$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getPlatformTypeUpperBound$kotlin_stdlib$annotations()V
    .registers 0

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 30
    instance-of v0, p1, Lkotlin/jvm/internal/TypeReference;

    if-eqz v0, :cond_3e

    .line 31
    invoke-virtual {p0}, Lkotlin/jvm/internal/TypeReference;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lkotlin/jvm/internal/TypeReference;

    invoke-virtual {v1}, Lkotlin/jvm/internal/TypeReference;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Lkotlin/jvm/internal/TypeReference;->getArguments()Ljava/util/List;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lkotlin/jvm/internal/TypeReference;

    invoke-virtual {v1}, Lkotlin/jvm/internal/TypeReference;->getArguments()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lkotlin/jvm/internal/TypeReference;->platformTypeUpperBound:Lkotlin/reflect/KType;

    move-object v1, p1

    check-cast v1, Lkotlin/jvm/internal/TypeReference;

    iget-object v1, v1, Lkotlin/jvm/internal/TypeReference;->platformTypeUpperBound:Lkotlin/reflect/KType;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 32
    iget v0, p0, Lkotlin/jvm/internal/TypeReference;->flags:I

    move-object v1, p1

    check-cast v1, Lkotlin/jvm/internal/TypeReference;

    iget v1, v1, Lkotlin/jvm/internal/TypeReference;->flags:I

    if-ne v0, v1, :cond_3e

    const/4 v0, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v0, 0x0

    :goto_3f
    return v0
.end method

.method public getAnnotations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 24
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getArguments()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/KTypeProjection;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lkotlin/jvm/internal/TypeReference;->arguments:Ljava/util/List;

    return-object v0
.end method

.method public getClassifier()Lkotlin/reflect/KClassifier;
    .registers 2

    .line 12
    iget-object v0, p0, Lkotlin/jvm/internal/TypeReference;->classifier:Lkotlin/reflect/KClassifier;

    return-object v0
.end method

.method public final getFlags$kotlin_stdlib()I
    .registers 2

    .line 15
    iget v0, p0, Lkotlin/jvm/internal/TypeReference;->flags:I

    return v0
.end method

.method public final getPlatformTypeUpperBound$kotlin_stdlib()Lkotlin/reflect/KType;
    .registers 2

    .line 14
    iget-object v0, p0, Lkotlin/jvm/internal/TypeReference;->platformTypeUpperBound:Lkotlin/reflect/KType;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 35
    invoke-virtual {p0}, Lkotlin/jvm/internal/TypeReference;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lkotlin/jvm/internal/TypeReference;->getArguments()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lkotlin/jvm/internal/TypeReference;->flags:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isMarkedNullable()Z
    .registers 3

    .line 27
    iget v0, p0, Lkotlin/jvm/internal/TypeReference;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lkotlin/jvm/internal/TypeReference;->asString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (Kotlin reflection is not available)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.jvm.internal.TypeReference.Companion (kotlin.jvm.internal.TypeReference$Companion)
.class public final Lkotlin/jvm/internal/TypeReference$Companion;
.super Ljava/lang/Object;
.source "TypeReference.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/jvm/internal/TypeReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0080\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0080T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lkotlin/jvm/internal/TypeReference$Companion;",
        "",
        "<init>",
        "()V",
        "IS_MARKED_NULLABLE",
        "",
        "IS_MUTABLE_COLLECTION_TYPE",
        "IS_NOTHING_TYPE",
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

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/jvm/internal/TypeReference$Companion;-><init>()V

    return-void
.end method

###### Class kotlin.jvm.internal.TypeReference.WhenMappings (kotlin.jvm.internal.TypeReference$WhenMappings)
.class public final synthetic Lkotlin/jvm/internal/TypeReference$WhenMappings;
.super Ljava/lang/Object;
.source "TypeReference.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/jvm/internal/TypeReference;
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
    sput-object v0, Lkotlin/jvm/internal/TypeReference$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method

###### Class kotlin.jvm.internal.TypeReference$$ExternalSyntheticLambda0 (kotlin.jvm.internal.TypeReference$$ExternalSyntheticLambda0)
.class public final synthetic Lkotlin/jvm/internal/TypeReference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lkotlin/jvm/internal/TypeReference;"
    method = "asString$lambda$0"
    proto = "(Lkotlin/jvm/internal/TypeReference;Lkotlin/reflect/KTypeProjection;)Ljava/lang/CharSequence;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x1c
    versionHash = "3b119036505a817327d30bbe4a430e8676906c2ab0a3363856806bcd3b289007"
.end annotation


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/TypeReference;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/TypeReference;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/jvm/internal/TypeReference$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/internal/TypeReference;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lkotlin/jvm/internal/TypeReference$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/internal/TypeReference;

    check-cast p1, Lkotlin/reflect/KTypeProjection;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/TypeReference;->asString$lambda$0(Lkotlin/jvm/internal/TypeReference;Lkotlin/reflect/KTypeProjection;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
