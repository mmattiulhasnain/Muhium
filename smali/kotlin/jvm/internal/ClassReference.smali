###### Class kotlin.jvm.internal.ClassReference (kotlin.jvm.internal.ClassReference)
.class public final Lkotlin/jvm/internal/ClassReference;
.super Ljava/lang/Object;
.source "ClassReference.kt"

# interfaces
.implements Lkotlin/reflect/KClass;
.implements Lkotlin/jvm/internal/ClassBasedDeclarationContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/jvm/internal/ClassReference$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/reflect/KClass<",
        "Ljava/lang/Object;",
        ">;",
        "Lkotlin/jvm/internal/ClassBasedDeclarationContainer;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClassReference.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClassReference.kt\nkotlin/jvm/internal/ClassReference\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,290:1\n1573#2:291\n1604#2,4:292\n*S KotlinDebug\n*F\n+ 1 ClassReference.kt\nkotlin/jvm/internal/ClassReference\n*L\n107#1:291\n107#1:292,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0010\u0001\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u0000 P2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001PB\u0013\u0012\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0012\u0010\"\u001a\u00020#2\u0008\u0010$\u001a\u0004\u0018\u00010\u0002H\u0017J\u0008\u0010I\u001a\u00020JH\u0002J\u0013\u0010K\u001a\u00020#2\u0008\u0010L\u001a\u0004\u0018\u00010\u0002H\u0096\u0002J\u0008\u0010M\u001a\u00020NH\u0016J\u0008\u0010O\u001a\u00020\u000bH\u0016R\u0018\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0016\u0010\n\u001a\u0004\u0018\u00010\u000b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u000b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\rR\u001e\u0010\u0010\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00120\u00118VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R \u0010\u0015\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u00160\u00118VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0014R\u001e\u0010\u0018\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00010\u00118VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u0014R\u001a\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001eR\u0016\u0010\u001f\u001a\u0004\u0018\u00010\u00028VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!R \u0010%\u001a\u0008\u0012\u0004\u0012\u00020&0\u001b8VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010\u001eR \u0010*\u001a\u0008\u0012\u0004\u0012\u00020+0\u001b8VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008,\u0010(\u001a\u0004\u0008-\u0010\u001eR(\u0010.\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u00010\u001b8VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008/\u0010(\u001a\u0004\u00080\u0010\u001eR\u001c\u00101\u001a\u0004\u0018\u0001028VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u00083\u0010(\u001a\u0004\u00084\u00105R\u001a\u00106\u001a\u00020#8VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u00087\u0010(\u001a\u0004\u00086\u00108R\u001a\u00109\u001a\u00020#8VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008:\u0010(\u001a\u0004\u00089\u00108R\u001a\u0010;\u001a\u00020#8VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008<\u0010(\u001a\u0004\u0008;\u00108R\u001a\u0010=\u001a\u00020#8VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008>\u0010(\u001a\u0004\u0008=\u00108R\u001a\u0010?\u001a\u00020#8VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008@\u0010(\u001a\u0004\u0008?\u00108R\u001a\u0010A\u001a\u00020#8VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008B\u0010(\u001a\u0004\u0008A\u00108R\u001a\u0010C\u001a\u00020#8VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008D\u0010(\u001a\u0004\u0008C\u00108R\u001a\u0010E\u001a\u00020#8VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008F\u0010(\u001a\u0004\u0008E\u00108R\u001a\u0010G\u001a\u00020#8VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008H\u0010(\u001a\u0004\u0008G\u00108\u00a8\u0006Q"
    }
    d2 = {
        "Lkotlin/jvm/internal/ClassReference;",
        "Lkotlin/reflect/KClass;",
        "",
        "Lkotlin/jvm/internal/ClassBasedDeclarationContainer;",
        "jClass",
        "Ljava/lang/Class;",
        "<init>",
        "(Ljava/lang/Class;)V",
        "getJClass",
        "()Ljava/lang/Class;",
        "simpleName",
        "",
        "getSimpleName",
        "()Ljava/lang/String;",
        "qualifiedName",
        "getQualifiedName",
        "members",
        "",
        "Lkotlin/reflect/KCallable;",
        "getMembers",
        "()Ljava/util/Collection;",
        "constructors",
        "Lkotlin/reflect/KFunction;",
        "getConstructors",
        "nestedClasses",
        "getNestedClasses",
        "annotations",
        "",
        "",
        "getAnnotations",
        "()Ljava/util/List;",
        "objectInstance",
        "getObjectInstance",
        "()Ljava/lang/Object;",
        "isInstance",
        "",
        "value",
        "typeParameters",
        "Lkotlin/reflect/KTypeParameter;",
        "getTypeParameters$annotations",
        "()V",
        "getTypeParameters",
        "supertypes",
        "Lkotlin/reflect/KType;",
        "getSupertypes$annotations",
        "getSupertypes",
        "sealedSubclasses",
        "getSealedSubclasses$annotations",
        "getSealedSubclasses",
        "visibility",
        "Lkotlin/reflect/KVisibility;",
        "getVisibility$annotations",
        "getVisibility",
        "()Lkotlin/reflect/KVisibility;",
        "isFinal",
        "isFinal$annotations",
        "()Z",
        "isOpen",
        "isOpen$annotations",
        "isAbstract",
        "isAbstract$annotations",
        "isSealed",
        "isSealed$annotations",
        "isData",
        "isData$annotations",
        "isInner",
        "isInner$annotations",
        "isCompanion",
        "isCompanion$annotations",
        "isFun",
        "isFun$annotations",
        "isValue",
        "isValue$annotations",
        "error",
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
.field public static final Companion:Lkotlin/jvm/internal/ClassReference$Companion;

.field private static final FUNCTION_CLASSES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lkotlin/Function<",
            "*>;>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final jClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 12

    new-instance v0, Lkotlin/jvm/internal/ClassReference$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/jvm/internal/ClassReference$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/jvm/internal/ClassReference;->Companion:Lkotlin/jvm/internal/ClassReference$Companion;

    .line 107
    nop

    .line 102
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lkotlin/jvm/functions/Function0;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lkotlin/jvm/functions/Function1;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lkotlin/jvm/functions/Function2;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lkotlin/jvm/functions/Function3;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lkotlin/jvm/functions/Function4;

    aput-object v2, v0, v1

    .line 103
    const-class v1, Lkotlin/jvm/functions/Function5;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 102
    nop

    .line 103
    const-class v1, Lkotlin/jvm/functions/Function6;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 102
    nop

    .line 103
    const-class v1, Lkotlin/jvm/functions/Function7;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 102
    nop

    .line 103
    const-class v1, Lkotlin/jvm/functions/Function8;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 102
    nop

    .line 103
    const-class v1, Lkotlin/jvm/functions/Function9;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 102
    nop

    .line 104
    const-class v1, Lkotlin/jvm/functions/Function10;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 102
    nop

    .line 104
    const-class v1, Lkotlin/jvm/functions/Function11;

    const/16 v3, 0xb

    aput-object v1, v0, v3

    .line 102
    nop

    .line 104
    const-class v1, Lkotlin/jvm/functions/Function12;

    const/16 v3, 0xc

    aput-object v1, v0, v3

    .line 102
    nop

    .line 104
    const-class v1, Lkotlin/jvm/functions/Function13;

    const/16 v3, 0xd

    aput-object v1, v0, v3

    .line 102
    nop

    .line 104
    const-class v1, Lkotlin/jvm/functions/Function14;

    const/16 v3, 0xe

    aput-object v1, v0, v3

    .line 102
    nop

    .line 105
    const-class v1, Lkotlin/jvm/functions/Function15;

    const/16 v3, 0xf

    aput-object v1, v0, v3

    .line 102
    nop

    .line 105
    const-class v1, Lkotlin/jvm/functions/Function16;

    const/16 v3, 0x10

    aput-object v1, v0, v3

    .line 102
    nop

    .line 105
    const-class v1, Lkotlin/jvm/functions/Function17;

    const/16 v3, 0x11

    aput-object v1, v0, v3

    .line 102
    nop

    .line 105
    const-class v1, Lkotlin/jvm/functions/Function18;

    const/16 v3, 0x12

    aput-object v1, v0, v3

    .line 102
    nop

    .line 105
    const-class v1, Lkotlin/jvm/functions/Function19;

    const/16 v3, 0x13

    aput-object v1, v0, v3

    .line 102
    nop

    .line 106
    const-class v1, Lkotlin/jvm/functions/Function20;

    const/16 v3, 0x14

    aput-object v1, v0, v3

    .line 102
    nop

    .line 106
    const-class v1, Lkotlin/jvm/functions/Function21;

    const/16 v3, 0x15

    aput-object v1, v0, v3

    .line 102
    nop

    .line 106
    const-class v1, Lkotlin/jvm/functions/Function22;

    const/16 v3, 0x16

    aput-object v1, v0, v3

    .line 102
    nop

    .line 101
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 107
    nop

    .local v0, "$this$mapIndexed$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 291
    .local v1, "$i$f$mapIndexed":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v3

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapIndexedTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 292
    .local v4, "$i$f$mapIndexedTo":I
    const/4 v5, 0x0

    .line 293
    .local v5, "index$iv$iv":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_bc
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_de

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 294
    .local v7, "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "index$iv$iv":I
    .local v8, "index$iv$iv":I
    if-gez v5, :cond_cd

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_cd
    move-object v9, v7

    check-cast v9, Ljava/lang/Class;

    .local v5, "i":I
    .local v9, "clazz":Ljava/lang/Class;
    const/4 v10, 0x0

    .line 107
    .local v10, "$i$a$-mapIndexed-ClassReference$Companion$FUNCTION_CLASSES$1":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v9, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    .line 294
    .end local v5    # "i":I
    .end local v9    # "clazz":Ljava/lang/Class;
    .end local v10    # "$i$a$-mapIndexed-ClassReference$Companion$FUNCTION_CLASSES$1":I
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v5, v8

    goto :goto_bc

    .line 295
    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    .end local v8    # "index$iv$iv":I
    .local v5, "index$iv$iv":I
    :cond_de
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapIndexedTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapIndexedTo":I
    .end local v5    # "index$iv$iv":I
    check-cast v2, Ljava/util/List;

    .line 291
    nop

    .end local v0    # "$this$mapIndexed$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$mapIndexed":I
    check-cast v2, Ljava/lang/Iterable;

    .line 107
    invoke-static {v2}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lkotlin/jvm/internal/ClassReference;->FUNCTION_CLASSES:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .param p1, "jClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "jClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/jvm/internal/ClassReference;->jClass:Ljava/lang/Class;

    return-void
.end method

.method public static final synthetic access$getFUNCTION_CLASSES$cp()Ljava/util/Map;
    .registers 1

    .line 10
    sget-object v0, Lkotlin/jvm/internal/ClassReference;->FUNCTION_CLASSES:Ljava/util/Map;

    return-object v0
.end method

.method private final error()Ljava/lang/Void;
    .registers 2

    .line 88
    new-instance v0, Lkotlin/jvm/KotlinReflectionNotSupportedError;

    invoke-direct {v0}, Lkotlin/jvm/KotlinReflectionNotSupportedError;-><init>()V

    throw v0
.end method

.method public static synthetic getSealedSubclasses$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getSupertypes$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getTypeParameters$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getVisibility$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic isAbstract$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic isCompanion$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic isData$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic isFinal$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic isFun$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic isInner$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic isOpen$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic isSealed$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic isValue$annotations()V
    .registers 0

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 91
    instance-of v0, p1, Lkotlin/jvm/internal/ClassReference;

    if-eqz v0, :cond_1a

    move-object v0, p0

    check-cast v0, Lkotlin/reflect/KClass;

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaObjectType(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lkotlin/reflect/KClass;

    invoke-static {v1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaObjectType(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
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

    .line 27
    invoke-direct {p0}, Lkotlin/jvm/internal/ClassReference;->error()Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public getConstructors()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/KFunction<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Lkotlin/jvm/internal/ClassReference;->error()Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public getJClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lkotlin/jvm/internal/ClassReference;->jClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getMembers()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/KCallable<",
            "*>;>;"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Lkotlin/jvm/internal/ClassReference;->error()Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public getNestedClasses()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/KClass<",
            "*>;>;"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Lkotlin/jvm/internal/ClassReference;->error()Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public getObjectInstance()Ljava/lang/Object;
    .registers 2

    .line 30
    invoke-direct {p0}, Lkotlin/jvm/internal/ClassReference;->error()Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public getQualifiedName()Ljava/lang/String;
    .registers 3

    .line 15
    sget-object v0, Lkotlin/jvm/internal/ClassReference;->Companion:Lkotlin/jvm/internal/ClassReference$Companion;

    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->getJClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ClassReference$Companion;->getClassQualifiedName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSealedSubclasses()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/KClass<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lkotlin/jvm/internal/ClassReference;->error()Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public getSimpleName()Ljava/lang/String;
    .registers 3

    .line 12
    sget-object v0, Lkotlin/jvm/internal/ClassReference;->Companion:Lkotlin/jvm/internal/ClassReference$Companion;

    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->getJClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ClassReference$Companion;->getClassSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupertypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/KType;",
            ">;"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lkotlin/jvm/internal/ClassReference;->error()Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public getTypeParameters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/KTypeParameter;",
            ">;"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lkotlin/jvm/internal/ClassReference;->error()Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public getVisibility()Lkotlin/reflect/KVisibility;
    .registers 2

    .line 50
    invoke-direct {p0}, Lkotlin/jvm/internal/ClassReference;->error()Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public hashCode()I
    .registers 2

    .line 94
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/KClass;

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaObjectType(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAbstract()Z
    .registers 2

    .line 62
    invoke-direct {p0}, Lkotlin/jvm/internal/ClassReference;->error()Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public isCompanion()Z
    .registers 2

    .line 78
    invoke-direct {p0}, Lkotlin/jvm/internal/ClassReference;->error()Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public isData()Z
    .registers 2

    .line 70
    invoke-direct {p0}, Lkotlin/jvm/internal/ClassReference;->error()Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public isFinal()Z
    .registers 2

    .line 54
    invoke-direct {p0}, Lkotlin/jvm/internal/ClassReference;->error()Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public isFun()Z
    .registers 2

    .line 82
    invoke-direct {p0}, Lkotlin/jvm/internal/ClassReference;->error()Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public isInner()Z
    .registers 2

    .line 74
    invoke-direct {p0}, Lkotlin/jvm/internal/ClassReference;->error()Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;

    .line 34
    sget-object v0, Lkotlin/jvm/internal/ClassReference;->Companion:Lkotlin/jvm/internal/ClassReference$Companion;

    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->getJClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lkotlin/jvm/internal/ClassReference$Companion;->isInstance(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .registers 2

    .line 58
    invoke-direct {p0}, Lkotlin/jvm/internal/ClassReference;->error()Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public isSealed()Z
    .registers 2

    .line 66
    invoke-direct {p0}, Lkotlin/jvm/internal/ClassReference;->error()Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public isValue()Z
    .registers 2

    .line 86
    invoke-direct {p0}, Lkotlin/jvm/internal/ClassReference;->error()Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->getJClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (Kotlin reflection is not available)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.jvm.internal.ClassReference.Companion (kotlin.jvm.internal.ClassReference$Companion)
.class public final Lkotlin/jvm/internal/ClassReference$Companion;
.super Ljava/lang/Object;
.source "ClassReference.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/jvm/internal/ClassReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClassReference.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClassReference.kt\nkotlin/jvm/internal/ClassReference$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,290:1\n1#2:291\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0012\u0010\u000c\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0014\u0010\r\u001a\u0004\u0018\u00010\n2\n\u0010\u000e\u001a\u0006\u0012\u0002\u0008\u00030\u0006J\u0014\u0010\u000f\u001a\u0004\u0018\u00010\n2\n\u0010\u000e\u001a\u0006\u0012\u0002\u0008\u00030\u0006J\u001c\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00012\n\u0010\u000e\u001a\u0006\u0012\u0002\u0008\u00030\u0006R&\u0010\u0004\u001a\u001a\u0012\u0010\u0012\u000e\u0012\n\u0008\u0001\u0012\u0006\u0012\u0002\u0008\u00030\u00070\u0006\u0012\u0004\u0012\u00020\u00080\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lkotlin/jvm/internal/ClassReference$Companion;",
        "",
        "<init>",
        "()V",
        "FUNCTION_CLASSES",
        "",
        "Ljava/lang/Class;",
        "Lkotlin/Function;",
        "",
        "classFqNameOf",
        "",
        "type",
        "simpleNameOf",
        "getClassSimpleName",
        "jClass",
        "getClassQualifiedName",
        "isInstance",
        "",
        "value",
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

    invoke-direct {p0}, Lkotlin/jvm/internal/ClassReference$Companion;-><init>()V

    return-void
.end method

.method private final classFqNameOf(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "type"    # Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "kotlin.Boolean"

    const-string v2, "kotlin.Long"

    const-string v3, "kotlin.Char"

    const-string v4, "kotlin.Byte"

    const-string v5, "kotlin.Short"

    const-string v6, "kotlin.Float"

    const-string v7, "kotlin.Double"

    const-string v8, "kotlin.Int"

    sparse-switch v0, :sswitch_data_394

    :goto_17
    goto/16 :goto_391

    :sswitch_19
    const-string v0, "kotlin.jvm.internal.IntCompanionObject"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_17

    .line 173
    :cond_22
    const-string v1, "kotlin.Int.Companion"

    goto/16 :goto_392

    .line 110
    :sswitch_26
    const-string v0, "java.lang.Throwable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto :goto_17

    .line 136
    :cond_2f
    const-string v1, "kotlin.Throwable"

    goto/16 :goto_392

    .line 110
    :sswitch_33
    const-string v0, "kotlin.jvm.internal.BooleanCompanionObject"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    goto :goto_17

    .line 167
    :cond_3c
    const-string v1, "kotlin.Boolean.Companion"

    goto/16 :goto_392

    .line 110
    :sswitch_40
    const-string v0, "java.lang.Iterable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    goto :goto_17

    .line 130
    :cond_49
    const-string v1, "kotlin.collections.Iterable"

    goto/16 :goto_392

    .line 110
    :sswitch_4d
    const-string v0, "java.lang.String"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    goto :goto_17

    .line 135
    :cond_56
    const-string v1, "kotlin.String"

    goto/16 :goto_392

    .line 110
    :sswitch_5a
    const-string v0, "java.lang.Object"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    goto :goto_17

    .line 133
    :cond_63
    const-string v1, "kotlin.Any"

    goto/16 :goto_392

    .line 110
    :sswitch_67
    const-string v0, "java.lang.Number"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    goto :goto_17

    .line 132
    :cond_70
    const-string v1, "kotlin.Number"

    goto/16 :goto_392

    .line 110
    :sswitch_74
    const-string v0, "java.lang.Double"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d

    goto :goto_17

    .line 126
    :cond_7d
    move-object v1, v7

    goto/16 :goto_392

    .line 110
    :sswitch_80
    const-string v0, "kotlin.jvm.internal.StringCompanionObject"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_89

    goto :goto_17

    .line 176
    :cond_89
    const-string v1, "kotlin.String.Companion"

    goto/16 :goto_392

    .line 110
    :sswitch_8d
    const-string v0, "java.util.ListIterator"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    goto :goto_17

    .line 139
    :cond_96
    const-string v1, "kotlin.collections.ListIterator"

    goto/16 :goto_392

    .line 110
    :sswitch_9a
    const-string v0, "java.util.Iterator"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a4

    goto/16 :goto_17

    .line 138
    :cond_a4
    const-string v1, "kotlin.collections.Iterator"

    goto/16 :goto_392

    .line 110
    :sswitch_a8
    const-string v0, "kotlin.jvm.internal.FloatCompanionObject"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b2

    goto/16 :goto_17

    .line 172
    :cond_b2
    const-string v1, "kotlin.Float.Companion"

    goto/16 :goto_392

    .line 110
    :sswitch_b6
    const-string v0, "java.lang.Long"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c0

    goto/16 :goto_17

    .line 131
    :cond_c0
    move-object v1, v2

    goto/16 :goto_392

    .line 110
    :sswitch_c3
    const-string v0, "java.lang.Enum"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cd

    goto/16 :goto_17

    .line 127
    :cond_cd
    const-string v1, "kotlin.Enum"

    goto/16 :goto_392

    .line 110
    :sswitch_d1
    const-string v0, "java.lang.Byte"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_db

    goto/16 :goto_17

    .line 121
    :cond_db
    move-object v1, v4

    goto/16 :goto_392

    .line 110
    :sswitch_de
    const-string v0, "java.lang.Boolean"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e8

    goto/16 :goto_17

    .line 120
    :cond_e8
    goto/16 :goto_392

    .line 110
    :sswitch_ea
    const-string v0, "kotlin.jvm.internal.EnumCompanionObject"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f4

    goto/16 :goto_17

    .line 171
    :cond_f4
    const-string v1, "kotlin.Enum.Companion"

    goto/16 :goto_392

    .line 110
    :sswitch_f8
    const-string v0, "java.lang.Character"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_102

    goto/16 :goto_17

    .line 122
    :cond_102
    move-object v1, v3

    goto/16 :goto_392

    .line 110
    :sswitch_105
    const-string v0, "short"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10f

    goto/16 :goto_17

    .line 118
    :cond_10f
    move-object v1, v5

    goto/16 :goto_392

    .line 110
    :sswitch_112
    const-string v0, "float"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11c

    goto/16 :goto_17

    .line 115
    :cond_11c
    move-object v1, v6

    goto/16 :goto_392

    .line 110
    :sswitch_11f
    const-string v0, "kotlin.jvm.functions.Function9"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_129

    goto/16 :goto_17

    .line 153
    :cond_129
    const-string v1, "kotlin.Function9"

    goto/16 :goto_392

    .line 110
    :sswitch_12d
    const-string v0, "kotlin.jvm.functions.Function8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_137

    goto/16 :goto_17

    .line 152
    :cond_137
    const-string v1, "kotlin.Function8"

    goto/16 :goto_392

    .line 110
    :sswitch_13b
    const-string v0, "kotlin.jvm.functions.Function7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_145

    goto/16 :goto_17

    .line 151
    :cond_145
    const-string v1, "kotlin.Function7"

    goto/16 :goto_392

    .line 110
    :sswitch_149
    const-string v0, "kotlin.jvm.functions.Function6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_153

    goto/16 :goto_17

    .line 150
    :cond_153
    const-string v1, "kotlin.Function6"

    goto/16 :goto_392

    .line 110
    :sswitch_157
    const-string v0, "kotlin.jvm.functions.Function5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_161

    goto/16 :goto_17

    .line 149
    :cond_161
    const-string v1, "kotlin.Function5"

    goto/16 :goto_392

    .line 110
    :sswitch_165
    const-string v0, "kotlin.jvm.functions.Function4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16f

    goto/16 :goto_17

    .line 148
    :cond_16f
    const-string v1, "kotlin.Function4"

    goto/16 :goto_392

    .line 110
    :sswitch_173
    const-string v0, "kotlin.jvm.functions.Function3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17d

    goto/16 :goto_17

    .line 147
    :cond_17d
    const-string v1, "kotlin.Function3"

    goto/16 :goto_392

    .line 110
    :sswitch_181
    const-string v0, "kotlin.jvm.functions.Function2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18b

    goto/16 :goto_17

    .line 146
    :cond_18b
    const-string v1, "kotlin.Function2"

    goto/16 :goto_392

    .line 110
    :sswitch_18f
    const-string v0, "kotlin.jvm.functions.Function1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_199

    goto/16 :goto_17

    .line 145
    :cond_199
    const-string v1, "kotlin.Function1"

    goto/16 :goto_392

    .line 110
    :sswitch_19d
    const-string v0, "kotlin.jvm.functions.Function0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a7

    goto/16 :goto_17

    .line 144
    :cond_1a7
    const-string v1, "kotlin.Function0"

    goto/16 :goto_392

    .line 110
    :sswitch_1ab
    const-string v0, "kotlin.jvm.internal.ShortCompanionObject"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b5

    goto/16 :goto_17

    .line 175
    :cond_1b5
    const-string v1, "kotlin.Short.Companion"

    goto/16 :goto_392

    .line 110
    :sswitch_1b9
    const-string v0, "java.util.List"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c3

    goto/16 :goto_17

    .line 140
    :cond_1c3
    const-string v1, "kotlin.collections.List"

    goto/16 :goto_392

    .line 110
    :sswitch_1c7
    const-string v0, "boolean"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d1

    goto/16 :goto_17

    .line 111
    :cond_1d1
    goto/16 :goto_392

    .line 110
    :sswitch_1d3
    const-string v0, "long"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dd

    goto/16 :goto_17

    .line 117
    :cond_1dd
    move-object v1, v2

    goto/16 :goto_392

    .line 110
    :sswitch_1e0
    const-string v0, "char"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ea

    goto/16 :goto_17

    .line 113
    :cond_1ea
    move-object v1, v3

    goto/16 :goto_392

    .line 110
    :sswitch_1ed
    const-string v0, "byte"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f7

    goto/16 :goto_17

    .line 112
    :cond_1f7
    move-object v1, v4

    goto/16 :goto_392

    .line 110
    :sswitch_1fa
    const-string v0, "int"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_204

    goto/16 :goto_17

    .line 116
    :cond_204
    move-object v1, v8

    goto/16 :goto_392

    .line 110
    :sswitch_207
    const-string v0, "java.util.Map$Entry"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_211

    goto/16 :goto_17

    .line 141
    :cond_211
    const-string v1, "kotlin.collections.Map.Entry"

    goto/16 :goto_392

    .line 110
    :sswitch_215
    const-string v0, "kotlin.jvm.internal.LongCompanionObject"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21f

    goto/16 :goto_17

    .line 174
    :cond_21f
    const-string v1, "kotlin.Long.Companion"

    goto/16 :goto_392

    .line 110
    :sswitch_223
    const-string v0, "kotlin.jvm.internal.CharCompanionObject"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22d

    goto/16 :goto_17

    .line 169
    :cond_22d
    const-string v1, "kotlin.Char.Companion"

    goto/16 :goto_392

    .line 110
    :sswitch_231
    const-string v0, "java.lang.Short"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23b

    goto/16 :goto_17

    .line 134
    :cond_23b
    move-object v1, v5

    goto/16 :goto_392

    .line 110
    :sswitch_23e
    const-string v0, "java.lang.Float"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_248

    goto/16 :goto_17

    .line 128
    :cond_248
    move-object v1, v6

    goto/16 :goto_392

    .line 110
    :sswitch_24b
    const-string v0, "java.util.Collection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_255

    goto/16 :goto_17

    .line 137
    :cond_255
    const-string v1, "kotlin.collections.Collection"

    goto/16 :goto_392

    .line 110
    :sswitch_259
    const-string v0, "java.lang.CharSequence"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_263

    goto/16 :goto_17

    .line 123
    :cond_263
    const-string v1, "kotlin.CharSequence"

    goto/16 :goto_392

    .line 110
    :sswitch_267
    const-string v0, "kotlin.jvm.internal.ByteCompanionObject"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_271

    goto/16 :goto_17

    .line 168
    :cond_271
    const-string v1, "kotlin.Byte.Companion"

    goto/16 :goto_392

    .line 110
    :sswitch_275
    const-string v0, "double"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27f

    goto/16 :goto_17

    .line 114
    :cond_27f
    move-object v1, v7

    goto/16 :goto_392

    .line 110
    :sswitch_282
    const-string v0, "java.util.Set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28c

    goto/16 :goto_17

    .line 143
    :cond_28c
    const-string v1, "kotlin.collections.Set"

    goto/16 :goto_392

    .line 110
    :sswitch_290
    const-string v0, "java.util.Map"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29a

    goto/16 :goto_17

    .line 142
    :cond_29a
    const-string v1, "kotlin.collections.Map"

    goto/16 :goto_392

    .line 110
    :sswitch_29e
    const-string v0, "java.lang.Comparable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a8

    goto/16 :goto_17

    .line 125
    :cond_2a8
    const-string v1, "kotlin.Comparable"

    goto/16 :goto_392

    .line 110
    :sswitch_2ac
    const-string v0, "kotlin.jvm.functions.Function22"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b6

    goto/16 :goto_17

    .line 166
    :cond_2b6
    const-string v1, "kotlin.Function22"

    goto/16 :goto_392

    .line 110
    :sswitch_2ba
    const-string v0, "kotlin.jvm.functions.Function21"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c4

    goto/16 :goto_17

    .line 165
    :cond_2c4
    const-string v1, "kotlin.Function21"

    goto/16 :goto_392

    .line 110
    :sswitch_2c8
    const-string v0, "kotlin.jvm.functions.Function20"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d2

    goto/16 :goto_17

    .line 164
    :cond_2d2
    const-string v1, "kotlin.Function20"

    goto/16 :goto_392

    .line 110
    :sswitch_2d6
    const-string v0, "kotlin.jvm.functions.Function19"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e0

    goto/16 :goto_17

    .line 163
    :cond_2e0
    const-string v1, "kotlin.Function19"

    goto/16 :goto_392

    .line 110
    :sswitch_2e4
    const-string v0, "kotlin.jvm.functions.Function18"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2ee

    goto/16 :goto_17

    .line 162
    :cond_2ee
    const-string v1, "kotlin.Function18"

    goto/16 :goto_392

    .line 110
    :sswitch_2f2
    const-string v0, "kotlin.jvm.functions.Function17"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2fc

    goto/16 :goto_17

    .line 161
    :cond_2fc
    const-string v1, "kotlin.Function17"

    goto/16 :goto_392

    .line 110
    :sswitch_300
    const-string v0, "kotlin.jvm.functions.Function16"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30a

    goto/16 :goto_17

    .line 160
    :cond_30a
    const-string v1, "kotlin.Function16"

    goto/16 :goto_392

    .line 110
    :sswitch_30e
    const-string v0, "kotlin.jvm.functions.Function15"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_318

    goto/16 :goto_17

    .line 159
    :cond_318
    const-string v1, "kotlin.Function15"

    goto/16 :goto_392

    .line 110
    :sswitch_31c
    const-string v0, "kotlin.jvm.functions.Function14"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_326

    goto/16 :goto_17

    .line 158
    :cond_326
    const-string v1, "kotlin.Function14"

    goto/16 :goto_392

    .line 110
    :sswitch_32a
    const-string v0, "kotlin.jvm.functions.Function13"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_334

    goto/16 :goto_17

    .line 157
    :cond_334
    const-string v1, "kotlin.Function13"

    goto :goto_392

    .line 110
    :sswitch_337
    const-string v0, "kotlin.jvm.functions.Function12"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_341

    goto/16 :goto_17

    .line 156
    :cond_341
    const-string v1, "kotlin.Function12"

    goto :goto_392

    .line 110
    :sswitch_344
    const-string v0, "kotlin.jvm.functions.Function11"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34e

    goto/16 :goto_17

    .line 155
    :cond_34e
    const-string v1, "kotlin.Function11"

    goto :goto_392

    .line 110
    :sswitch_351
    const-string v0, "kotlin.jvm.functions.Function10"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35b

    goto/16 :goto_17

    .line 154
    :cond_35b
    const-string v1, "kotlin.Function10"

    goto :goto_392

    .line 110
    :sswitch_35e
    const-string v0, "java.lang.annotation.Annotation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_368

    goto/16 :goto_17

    .line 119
    :cond_368
    const-string v1, "kotlin.Annotation"

    goto :goto_392

    .line 110
    :sswitch_36b
    const-string v0, "java.lang.Cloneable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_375

    goto/16 :goto_17

    .line 124
    :cond_375
    const-string v1, "kotlin.Cloneable"

    goto :goto_392

    .line 110
    :sswitch_378
    const-string v0, "java.lang.Integer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_382

    goto/16 :goto_17

    .line 129
    :cond_382
    move-object v1, v8

    goto :goto_392

    .line 110
    :sswitch_384
    const-string v0, "kotlin.jvm.internal.DoubleCompanionObject"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38e

    goto/16 :goto_17

    .line 170
    :cond_38e
    const-string v1, "kotlin.Double.Companion"

    goto :goto_392

    .line 177
    :goto_391
    const/4 v1, 0x0

    .line 178
    :goto_392
    return-object v1

    nop

    :sswitch_data_394
    .sparse-switch
        -0x7ae0c43d -> :sswitch_384
        -0x7a988a96 -> :sswitch_378
        -0x793eea9d -> :sswitch_36b
        -0x75fda146 -> :sswitch_35e
        -0x6bf3d83c -> :sswitch_351
        -0x6bf3d83b -> :sswitch_344
        -0x6bf3d83a -> :sswitch_337
        -0x6bf3d839 -> :sswitch_32a
        -0x6bf3d838 -> :sswitch_31c
        -0x6bf3d837 -> :sswitch_30e
        -0x6bf3d836 -> :sswitch_300
        -0x6bf3d835 -> :sswitch_2f2
        -0x6bf3d834 -> :sswitch_2e4
        -0x6bf3d833 -> :sswitch_2d6
        -0x6bf3d81d -> :sswitch_2c8
        -0x6bf3d81c -> :sswitch_2ba
        -0x6bf3d81b -> :sswitch_2ac
        -0x5dab6ad2 -> :sswitch_29e
        -0x52743c64 -> :sswitch_290
        -0x5274255e -> :sswitch_282
        -0x4f08842f -> :sswitch_275
        -0x46781814 -> :sswitch_267
        -0x3f507f75 -> :sswitch_259
        -0x2906f7a2 -> :sswitch_24b
        -0x1f76ce78 -> :sswitch_23e
        -0x1ec16c58 -> :sswitch_231
        -0xeb0f022 -> :sswitch_223
        -0xc5a9408 -> :sswitch_215
        -0x9d7d2b6 -> :sswitch_207
        0x197ef -> :sswitch_1fa
        0x2e6108 -> :sswitch_1ed
        0x2e9356 -> :sswitch_1e0
        0x32c67c -> :sswitch_1d3
        0x3db6c28 -> :sswitch_1c7
        0x3ec5a5e -> :sswitch_1b9
        0x49a71c6 -> :sswitch_1ab
        0x4c695eb -> :sswitch_19d
        0x4c695ec -> :sswitch_18f
        0x4c695ed -> :sswitch_181
        0x4c695ee -> :sswitch_173
        0x4c695ef -> :sswitch_165
        0x4c695f0 -> :sswitch_157
        0x4c695f1 -> :sswitch_149
        0x4c695f2 -> :sswitch_13b
        0x4c695f3 -> :sswitch_12d
        0x4c695f4 -> :sswitch_11f
        0x5d0225c -> :sswitch_112
        0x685847c -> :sswitch_105
        0x9415455 -> :sswitch_f8
        0xd7b22d3 -> :sswitch_ea
        0x148d6054 -> :sswitch_de
        0x17c0bc5c -> :sswitch_d1
        0x17c1f055 -> :sswitch_c3
        0x17c521d0 -> :sswitch_b6
        0x1cc457e6 -> :sswitch_a8
        0x1dcad22e -> :sswitch_9a
        0x226988ec -> :sswitch_8d
        0x23b44f83 -> :sswitch_80
        0x2d605225 -> :sswitch_74
        0x3ec1b19d -> :sswitch_67
        0x3f697993 -> :sswitch_5a
        0x473e3665 -> :sswitch_4d
        0x4c0855c6 -> :sswitch_40
        0x52797ada -> :sswitch_33
        0x612cf26c -> :sswitch_26
        0x6fe35bb3 -> :sswitch_19
    .end sparse-switch
.end method

.method private final simpleNameOf(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "type"    # Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "Boolean"

    const-string v2, "Long"

    const-string v3, "Char"

    const-string v4, "Byte"

    const-string v5, "Short"

    const-string v6, "Float"

    const-string v7, "Double"

    const-string v8, "Int"

    const-string v9, "Companion"

    sparse-switch v0, :sswitch_data_38c

    :goto_19
    goto/16 :goto_389

    :sswitch_1b
    const-string v0, "kotlin.jvm.internal.IntCompanionObject"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_19

    .line 243
    :cond_24
    move-object v1, v9

    goto/16 :goto_38a

    .line 180
    :sswitch_27
    const-string v0, "java.lang.Throwable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    goto :goto_19

    .line 206
    :cond_30
    const-string v1, "Throwable"

    goto/16 :goto_38a

    .line 180
    :sswitch_34
    const-string v0, "kotlin.jvm.internal.BooleanCompanionObject"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto :goto_19

    .line 237
    :cond_3d
    move-object v1, v9

    goto/16 :goto_38a

    .line 180
    :sswitch_40
    const-string v0, "java.lang.Iterable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    goto :goto_19

    .line 200
    :cond_49
    const-string v1, "Iterable"

    goto/16 :goto_38a

    .line 180
    :sswitch_4d
    const-string v0, "java.lang.String"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    goto :goto_19

    .line 205
    :cond_56
    const-string v1, "String"

    goto/16 :goto_38a

    .line 180
    :sswitch_5a
    const-string v0, "java.lang.Object"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    goto :goto_19

    .line 203
    :cond_63
    const-string v1, "Any"

    goto/16 :goto_38a

    .line 180
    :sswitch_67
    const-string v0, "java.lang.Number"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    goto :goto_19

    .line 202
    :cond_70
    const-string v1, "Number"

    goto/16 :goto_38a

    .line 180
    :sswitch_74
    const-string v0, "java.lang.Double"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d

    goto :goto_19

    .line 196
    :cond_7d
    move-object v1, v7

    goto/16 :goto_38a

    .line 180
    :sswitch_80
    const-string v0, "kotlin.jvm.internal.StringCompanionObject"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_89

    goto :goto_19

    .line 246
    :cond_89
    move-object v1, v9

    goto/16 :goto_38a

    .line 180
    :sswitch_8c
    const-string v0, "java.util.ListIterator"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    goto :goto_19

    .line 209
    :cond_95
    const-string v1, "ListIterator"

    goto/16 :goto_38a

    .line 180
    :sswitch_99
    const-string v0, "java.util.Iterator"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a3

    goto/16 :goto_19

    .line 208
    :cond_a3
    const-string v1, "Iterator"

    goto/16 :goto_38a

    .line 180
    :sswitch_a7
    const-string v0, "kotlin.jvm.internal.FloatCompanionObject"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b1

    goto/16 :goto_19

    .line 242
    :cond_b1
    move-object v1, v9

    goto/16 :goto_38a

    .line 180
    :sswitch_b4
    const-string v0, "java.lang.Long"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_be

    goto/16 :goto_19

    .line 201
    :cond_be
    move-object v1, v2

    goto/16 :goto_38a

    .line 180
    :sswitch_c1
    const-string v0, "java.lang.Enum"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cb

    goto/16 :goto_19

    .line 197
    :cond_cb
    const-string v1, "Enum"

    goto/16 :goto_38a

    .line 180
    :sswitch_cf
    const-string v0, "java.lang.Byte"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d9

    goto/16 :goto_19

    .line 191
    :cond_d9
    move-object v1, v4

    goto/16 :goto_38a

    .line 180
    :sswitch_dc
    const-string v0, "java.lang.Boolean"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e6

    goto/16 :goto_19

    .line 190
    :cond_e6
    goto/16 :goto_38a

    .line 180
    :sswitch_e8
    const-string v0, "kotlin.jvm.internal.EnumCompanionObject"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f2

    goto/16 :goto_19

    .line 241
    :cond_f2
    move-object v1, v9

    goto/16 :goto_38a

    .line 180
    :sswitch_f5
    const-string v0, "java.lang.Character"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ff

    goto/16 :goto_19

    .line 192
    :cond_ff
    move-object v1, v3

    goto/16 :goto_38a

    .line 180
    :sswitch_102
    const-string v0, "short"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10c

    goto/16 :goto_19

    .line 188
    :cond_10c
    move-object v1, v5

    goto/16 :goto_38a

    .line 180
    :sswitch_10f
    const-string v0, "float"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_119

    goto/16 :goto_19

    .line 185
    :cond_119
    move-object v1, v6

    goto/16 :goto_38a

    .line 180
    :sswitch_11c
    const-string v0, "kotlin.jvm.functions.Function9"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_126

    goto/16 :goto_19

    .line 223
    :cond_126
    const-string v1, "Function9"

    goto/16 :goto_38a

    .line 180
    :sswitch_12a
    const-string v0, "kotlin.jvm.functions.Function8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_134

    goto/16 :goto_19

    .line 222
    :cond_134
    const-string v1, "Function8"

    goto/16 :goto_38a

    .line 180
    :sswitch_138
    const-string v0, "kotlin.jvm.functions.Function7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_142

    goto/16 :goto_19

    .line 221
    :cond_142
    const-string v1, "Function7"

    goto/16 :goto_38a

    .line 180
    :sswitch_146
    const-string v0, "kotlin.jvm.functions.Function6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_150

    goto/16 :goto_19

    .line 220
    :cond_150
    const-string v1, "Function6"

    goto/16 :goto_38a

    .line 180
    :sswitch_154
    const-string v0, "kotlin.jvm.functions.Function5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e

    goto/16 :goto_19

    .line 219
    :cond_15e
    const-string v1, "Function5"

    goto/16 :goto_38a

    .line 180
    :sswitch_162
    const-string v0, "kotlin.jvm.functions.Function4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16c

    goto/16 :goto_19

    .line 218
    :cond_16c
    const-string v1, "Function4"

    goto/16 :goto_38a

    .line 180
    :sswitch_170
    const-string v0, "kotlin.jvm.functions.Function3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17a

    goto/16 :goto_19

    .line 217
    :cond_17a
    const-string v1, "Function3"

    goto/16 :goto_38a

    .line 180
    :sswitch_17e
    const-string v0, "kotlin.jvm.functions.Function2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_188

    goto/16 :goto_19

    .line 216
    :cond_188
    const-string v1, "Function2"

    goto/16 :goto_38a

    .line 180
    :sswitch_18c
    const-string v0, "kotlin.jvm.functions.Function1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_196

    goto/16 :goto_19

    .line 215
    :cond_196
    const-string v1, "Function1"

    goto/16 :goto_38a

    .line 180
    :sswitch_19a
    const-string v0, "kotlin.jvm.functions.Function0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a4

    goto/16 :goto_19

    .line 214
    :cond_1a4
    const-string v1, "Function0"

    goto/16 :goto_38a

    .line 180
    :sswitch_1a8
    const-string v0, "kotlin.jvm.internal.ShortCompanionObject"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b2

    goto/16 :goto_19

    .line 245
    :cond_1b2
    move-object v1, v9

    goto/16 :goto_38a

    .line 180
    :sswitch_1b5
    const-string v0, "java.util.List"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1bf

    goto/16 :goto_19

    .line 210
    :cond_1bf
    const-string v1, "List"

    goto/16 :goto_38a

    .line 180
    :sswitch_1c3
    const-string v0, "boolean"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1cd

    goto/16 :goto_19

    .line 181
    :cond_1cd
    goto/16 :goto_38a

    .line 180
    :sswitch_1cf
    const-string v0, "long"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d9

    goto/16 :goto_19

    .line 187
    :cond_1d9
    move-object v1, v2

    goto/16 :goto_38a

    .line 180
    :sswitch_1dc
    const-string v0, "char"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e6

    goto/16 :goto_19

    .line 183
    :cond_1e6
    move-object v1, v3

    goto/16 :goto_38a

    .line 180
    :sswitch_1e9
    const-string v0, "byte"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f3

    goto/16 :goto_19

    .line 182
    :cond_1f3
    move-object v1, v4

    goto/16 :goto_38a

    .line 180
    :sswitch_1f6
    const-string v0, "int"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_200

    goto/16 :goto_19

    .line 186
    :cond_200
    move-object v1, v8

    goto/16 :goto_38a

    .line 180
    :sswitch_203
    const-string v0, "java.util.Map$Entry"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20d

    goto/16 :goto_19

    .line 211
    :cond_20d
    const-string v1, "Entry"

    goto/16 :goto_38a

    .line 180
    :sswitch_211
    const-string v0, "kotlin.jvm.internal.LongCompanionObject"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21b

    goto/16 :goto_19

    .line 244
    :cond_21b
    move-object v1, v9

    goto/16 :goto_38a

    .line 180
    :sswitch_21e
    const-string v0, "kotlin.jvm.internal.CharCompanionObject"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_228

    goto/16 :goto_19

    .line 239
    :cond_228
    move-object v1, v9

    goto/16 :goto_38a

    .line 180
    :sswitch_22b
    const-string v0, "java.lang.Short"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_235

    goto/16 :goto_19

    .line 204
    :cond_235
    move-object v1, v5

    goto/16 :goto_38a

    .line 180
    :sswitch_238
    const-string v0, "java.lang.Float"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_242

    goto/16 :goto_19

    .line 198
    :cond_242
    move-object v1, v6

    goto/16 :goto_38a

    .line 180
    :sswitch_245
    const-string v0, "java.util.Collection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24f

    goto/16 :goto_19

    .line 207
    :cond_24f
    const-string v1, "Collection"

    goto/16 :goto_38a

    .line 180
    :sswitch_253
    const-string v0, "java.lang.CharSequence"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25d

    goto/16 :goto_19

    .line 193
    :cond_25d
    const-string v1, "CharSequence"

    goto/16 :goto_38a

    .line 180
    :sswitch_261
    const-string v0, "kotlin.jvm.internal.ByteCompanionObject"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26b

    goto/16 :goto_19

    .line 238
    :cond_26b
    move-object v1, v9

    goto/16 :goto_38a

    .line 180
    :sswitch_26e
    const-string v0, "double"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_278

    goto/16 :goto_19

    .line 184
    :cond_278
    move-object v1, v7

    goto/16 :goto_38a

    .line 180
    :sswitch_27b
    const-string v0, "java.util.Set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_285

    goto/16 :goto_19

    .line 213
    :cond_285
    const-string v1, "Set"

    goto/16 :goto_38a

    .line 180
    :sswitch_289
    const-string v0, "java.util.Map"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_293

    goto/16 :goto_19

    .line 212
    :cond_293
    const-string v1, "Map"

    goto/16 :goto_38a

    .line 180
    :sswitch_297
    const-string v0, "java.lang.Comparable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a1

    goto/16 :goto_19

    .line 195
    :cond_2a1
    const-string v1, "Comparable"

    goto/16 :goto_38a

    .line 180
    :sswitch_2a5
    const-string v0, "kotlin.jvm.functions.Function22"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2af

    goto/16 :goto_19

    .line 236
    :cond_2af
    const-string v1, "Function22"

    goto/16 :goto_38a

    .line 180
    :sswitch_2b3
    const-string v0, "kotlin.jvm.functions.Function21"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2bd

    goto/16 :goto_19

    .line 235
    :cond_2bd
    const-string v1, "Function21"

    goto/16 :goto_38a

    .line 180
    :sswitch_2c1
    const-string v0, "kotlin.jvm.functions.Function20"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    goto/16 :goto_19

    .line 234
    :cond_2cb
    const-string v1, "Function20"

    goto/16 :goto_38a

    .line 180
    :sswitch_2cf
    const-string v0, "kotlin.jvm.functions.Function19"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d9

    goto/16 :goto_19

    .line 233
    :cond_2d9
    const-string v1, "Function19"

    goto/16 :goto_38a

    .line 180
    :sswitch_2dd
    const-string v0, "kotlin.jvm.functions.Function18"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e7

    goto/16 :goto_19

    .line 232
    :cond_2e7
    const-string v1, "Function18"

    goto/16 :goto_38a

    .line 180
    :sswitch_2eb
    const-string v0, "kotlin.jvm.functions.Function17"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f5

    goto/16 :goto_19

    .line 231
    :cond_2f5
    const-string v1, "Function17"

    goto/16 :goto_38a

    .line 180
    :sswitch_2f9
    const-string v0, "kotlin.jvm.functions.Function16"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_303

    goto/16 :goto_19

    .line 230
    :cond_303
    const-string v1, "Function16"

    goto/16 :goto_38a

    .line 180
    :sswitch_307
    const-string v0, "kotlin.jvm.functions.Function15"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_311

    goto/16 :goto_19

    .line 229
    :cond_311
    const-string v1, "Function15"

    goto/16 :goto_38a

    .line 180
    :sswitch_315
    const-string v0, "kotlin.jvm.functions.Function14"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31f

    goto/16 :goto_19

    .line 228
    :cond_31f
    const-string v1, "Function14"

    goto/16 :goto_38a

    .line 180
    :sswitch_323
    const-string v0, "kotlin.jvm.functions.Function13"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32d

    goto/16 :goto_19

    .line 227
    :cond_32d
    const-string v1, "Function13"

    goto :goto_38a

    .line 180
    :sswitch_330
    const-string v0, "kotlin.jvm.functions.Function12"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33a

    goto/16 :goto_19

    .line 226
    :cond_33a
    const-string v1, "Function12"

    goto :goto_38a

    .line 180
    :sswitch_33d
    const-string v0, "kotlin.jvm.functions.Function11"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_347

    goto/16 :goto_19

    .line 225
    :cond_347
    const-string v1, "Function11"

    goto :goto_38a

    .line 180
    :sswitch_34a
    const-string v0, "kotlin.jvm.functions.Function10"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_354

    goto/16 :goto_19

    .line 224
    :cond_354
    const-string v1, "Function10"

    goto :goto_38a

    .line 180
    :sswitch_357
    const-string v0, "java.lang.annotation.Annotation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_361

    goto/16 :goto_19

    .line 189
    :cond_361
    const-string v1, "Annotation"

    goto :goto_38a

    .line 180
    :sswitch_364
    const-string v0, "java.lang.Cloneable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36e

    goto/16 :goto_19

    .line 194
    :cond_36e
    const-string v1, "Cloneable"

    goto :goto_38a

    .line 180
    :sswitch_371
    const-string v0, "java.lang.Integer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37b

    goto/16 :goto_19

    .line 199
    :cond_37b
    move-object v1, v8

    goto :goto_38a

    .line 180
    :sswitch_37d
    const-string v0, "kotlin.jvm.internal.DoubleCompanionObject"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_387

    goto/16 :goto_19

    .line 240
    :cond_387
    move-object v1, v9

    goto :goto_38a

    .line 247
    :goto_389
    const/4 v1, 0x0

    .line 248
    :goto_38a
    return-object v1

    nop

    :sswitch_data_38c
    .sparse-switch
        -0x7ae0c43d -> :sswitch_37d
        -0x7a988a96 -> :sswitch_371
        -0x793eea9d -> :sswitch_364
        -0x75fda146 -> :sswitch_357
        -0x6bf3d83c -> :sswitch_34a
        -0x6bf3d83b -> :sswitch_33d
        -0x6bf3d83a -> :sswitch_330
        -0x6bf3d839 -> :sswitch_323
        -0x6bf3d838 -> :sswitch_315
        -0x6bf3d837 -> :sswitch_307
        -0x6bf3d836 -> :sswitch_2f9
        -0x6bf3d835 -> :sswitch_2eb
        -0x6bf3d834 -> :sswitch_2dd
        -0x6bf3d833 -> :sswitch_2cf
        -0x6bf3d81d -> :sswitch_2c1
        -0x6bf3d81c -> :sswitch_2b3
        -0x6bf3d81b -> :sswitch_2a5
        -0x5dab6ad2 -> :sswitch_297
        -0x52743c64 -> :sswitch_289
        -0x5274255e -> :sswitch_27b
        -0x4f08842f -> :sswitch_26e
        -0x46781814 -> :sswitch_261
        -0x3f507f75 -> :sswitch_253
        -0x2906f7a2 -> :sswitch_245
        -0x1f76ce78 -> :sswitch_238
        -0x1ec16c58 -> :sswitch_22b
        -0xeb0f022 -> :sswitch_21e
        -0xc5a9408 -> :sswitch_211
        -0x9d7d2b6 -> :sswitch_203
        0x197ef -> :sswitch_1f6
        0x2e6108 -> :sswitch_1e9
        0x2e9356 -> :sswitch_1dc
        0x32c67c -> :sswitch_1cf
        0x3db6c28 -> :sswitch_1c3
        0x3ec5a5e -> :sswitch_1b5
        0x49a71c6 -> :sswitch_1a8
        0x4c695eb -> :sswitch_19a
        0x4c695ec -> :sswitch_18c
        0x4c695ed -> :sswitch_17e
        0x4c695ee -> :sswitch_170
        0x4c695ef -> :sswitch_162
        0x4c695f0 -> :sswitch_154
        0x4c695f1 -> :sswitch_146
        0x4c695f2 -> :sswitch_138
        0x4c695f3 -> :sswitch_12a
        0x4c695f4 -> :sswitch_11c
        0x5d0225c -> :sswitch_10f
        0x685847c -> :sswitch_102
        0x9415455 -> :sswitch_f5
        0xd7b22d3 -> :sswitch_e8
        0x148d6054 -> :sswitch_dc
        0x17c0bc5c -> :sswitch_cf
        0x17c1f055 -> :sswitch_c1
        0x17c521d0 -> :sswitch_b4
        0x1cc457e6 -> :sswitch_a7
        0x1dcad22e -> :sswitch_99
        0x226988ec -> :sswitch_8c
        0x23b44f83 -> :sswitch_80
        0x2d605225 -> :sswitch_74
        0x3ec1b19d -> :sswitch_67
        0x3f697993 -> :sswitch_5a
        0x473e3665 -> :sswitch_4d
        0x4c0855c6 -> :sswitch_40
        0x52797ada -> :sswitch_34
        0x612cf26c -> :sswitch_27
        0x6fe35bb3 -> :sswitch_1b
    .end sparse-switch
.end method


# virtual methods
.method public final getClassQualifiedName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 6
    .param p1, "jClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "jClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    nop

    .line 269
    invoke-virtual {p1}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    goto :goto_61

    .line 270
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Class;->isLocalClass()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_61

    .line 271
    :cond_15
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const-string v2, "getName(...)"

    if-eqz v0, :cond_50

    .line 272
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 273
    .local v0, "componentType":Ljava/lang/Class;
    nop

    .line 274
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lkotlin/jvm/internal/ClassReference$Companion;->classFqNameOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Array"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4a

    .line 275
    :cond_49
    nop

    .line 273
    :cond_4a
    :goto_4a
    if-nez v1, :cond_61

    .line 276
    nop

    .end local v0    # "componentType":Ljava/lang/Class;
    const-string v1, "kotlin.Array"

    goto :goto_61

    .line 278
    :cond_50
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/ClassReference$Companion;->classFqNameOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_61

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 279
    :cond_61
    :goto_61
    return-object v1
.end method

.method public final getClassSimpleName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 10
    .param p1, "jClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "jClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    nop

    .line 251
    invoke-virtual {p1}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    goto/16 :goto_bc

    .line 252
    :cond_f
    invoke-virtual {p1}, Ljava/lang/Class;->isLocalClass()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 253
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x2

    const/16 v4, 0x24

    if-eqz v2, :cond_45

    .line 291
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    .line 254
    .local v5, "$i$a$-let-ClassReference$Companion$getClassSimpleName$1":I
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v1, v3, v1}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "$i$a$-let-ClassReference$Companion$getClassSimpleName$1":I
    if-nez v2, :cond_42

    goto :goto_45

    :cond_42
    move-object v1, v2

    goto/16 :goto_bc

    .line 255
    :cond_45
    :goto_45
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v2

    if-eqz v2, :cond_69

    .line 291
    .local v2, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v5, 0x0

    .line 255
    .local v5, "$i$a$-let-ClassReference$Companion$getClassSimpleName$2":I
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v1, v3, v1}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v5    # "$i$a$-let-ClassReference$Companion$getClassSimpleName$2":I
    goto :goto_bc

    .line 254
    :cond_69
    nop

    .line 256
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, v4, v1, v3, v1}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .end local v0    # "name":Ljava/lang/String;
    goto :goto_bc

    .line 258
    :cond_72
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const-string v2, "getName(...)"

    if-eqz v0, :cond_ab

    .line 259
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 260
    .local v0, "componentType":Ljava/lang/Class;
    nop

    .line 261
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    const-string v4, "Array"

    if-eqz v3, :cond_a6

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lkotlin/jvm/internal/ClassReference$Companion;->simpleNameOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_a7

    .line 262
    :cond_a6
    nop

    .line 260
    :cond_a7
    :goto_a7
    if-nez v1, :cond_bc

    .line 263
    move-object v1, v4

    .end local v0    # "componentType":Ljava/lang/Class;
    goto :goto_bc

    .line 265
    :cond_ab
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/ClassReference$Companion;->simpleNameOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_bc

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 266
    :cond_bc
    :goto_bc
    return-object v1
.end method

.method public final isInstance(Ljava/lang/Object;Ljava/lang/Class;)Z
    .registers 6
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "jClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "jClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    invoke-static {}, Lkotlin/jvm/internal/ClassReference;->access$getFUNCTION_CLASSES$cp()Ljava/util/Map;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.MapsKt__MapsKt.get, V of kotlin.collections.MapsKt__MapsKt.get>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_22

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .local v0, "arity":I
    const/4 v1, 0x0

    .line 283
    .local v1, "$i$a$-let-ClassReference$Companion$isInstance$1":I
    invoke-static {p1, v0}, Lkotlin/jvm/internal/TypeIntrinsics;->isFunctionOfArity(Ljava/lang/Object;I)Z

    move-result v2

    return v2

    .line 285
    .end local v0    # "arity":I
    .end local v1    # "$i$a$-let-ClassReference$Companion$isInstance$1":I
    :cond_22
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-static {p2}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaObjectType(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_32

    :cond_31
    move-object v0, p2

    .line 286
    .local v0, "objectType":Ljava/lang/Class;
    :goto_32
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
