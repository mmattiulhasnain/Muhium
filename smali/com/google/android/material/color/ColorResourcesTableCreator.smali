###### Class com.google.android.material.color.ColorResourcesTableCreator (com.google.android.material.color.ColorResourcesTableCreator)
.class final Lcom/google/android/material/color/ColorResourcesTableCreator;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;,
        Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;,
        Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;,
        Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;,
        Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;,
        Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;,
        Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;,
        Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;,
        Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;,
        Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;
    }
.end annotation


# static fields
.field private static final ANDROID_PACKAGE_ID:B = 0x1t

.field private static final ANDROID_PACKAGE_INFO:Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

.field private static final APPLICATION_PACKAGE_ID:B = 0x7ft

.field private static final COLOR_RESOURCE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;",
            ">;"
        }
    .end annotation
.end field

.field private static final HEADER_TYPE_PACKAGE:S = 0x200s

.field private static final HEADER_TYPE_RES_TABLE:S = 0x2s

.field private static final HEADER_TYPE_STRING_POOL:S = 0x1s

.field private static final HEADER_TYPE_TYPE:S = 0x201s

.field private static final HEADER_TYPE_TYPE_SPEC:S = 0x202s

.field private static final RESOURCE_TYPE_NAME_COLOR:Ljava/lang/String; = "color"

.field private static typeIdColor:B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 56
    new-instance v0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

    const/4 v1, 0x1

    const-string v2, "android"

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/material/color/ColorResourcesTableCreator;->ANDROID_PACKAGE_INFO:Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

    .line 59
    new-instance v0, Lcom/google/android/material/color/ColorResourcesTableCreator$1;

    invoke-direct {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator$1;-><init>()V

    sput-object v0, Lcom/google/android/material/color/ColorResourcesTableCreator;->COLOR_RESOURCE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1200(C)[B
    .registers 2
    .param p0, "x0"    # C

    .line 40
    invoke-static {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->charToByteArray(C)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300()B
    .registers 1

    .line 40
    sget-byte v0, Lcom/google/android/material/color/ColorResourcesTableCreator;->typeIdColor:B

    return v0
.end method

.method static synthetic access$400()Ljava/util/Comparator;
    .registers 1

    .line 40
    sget-object v0, Lcom/google/android/material/color/ColorResourcesTableCreator;->COLOR_RESOURCE_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$500(I)[B
    .registers 2
    .param p0, "x0"    # I

    .line 40
    invoke-static {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->intToByteArray(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(S)[B
    .registers 2
    .param p0, "x0"    # S

    .line 40
    invoke-static {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->shortToByteArray(S)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Ljava/lang/String;)[B
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 40
    invoke-static {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->stringToByteArrayUtf8(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Ljava/lang/String;)[B
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 40
    invoke-static {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static charToByteArray(C)[B
    .registers 5
    .param p0, "value"    # C

    .line 582
    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v0, v2, v3

    const/4 v0, 0x1

    aput-byte v1, v2, v0

    return-object v2
.end method

.method static create(Landroid/content/Context;Ljava/util/Map;)[B
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    .local p1, "colorMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_111

    .line 71
    new-instance v0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7f

    invoke-direct {v0, v2, v1}, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;-><init>(ILjava/lang/String;)V

    .line 74
    .local v0, "applicationPackageInfo":Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 75
    .local v1, "colorResourceMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;Ljava/util/List<Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;>;>;"
    const/4 v3, 0x0

    .line 76
    .local v3, "colorResource":Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ed

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 77
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v6, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;

    .line 79
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v8

    .line 81
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v6, v7, v8, v9}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;-><init>(ILjava/lang/String;I)V

    move-object v3, v6

    .line 82
    nop

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 84
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v6

    .line 85
    const-string v7, "color"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bc

    .line 93
    invoke-static {v3}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$300(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)B

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_80

    .line 94
    sget-object v6, Lcom/google/android/material/color/ColorResourcesTableCreator;->ANDROID_PACKAGE_INFO:Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

    .local v6, "packageInfo":Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;
    goto :goto_87

    .line 95
    .end local v6    # "packageInfo":Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;
    :cond_80
    invoke-static {v3}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$300(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)B

    move-result v6

    if-ne v6, v2, :cond_9f

    .line 96
    move-object v6, v0

    .line 101
    .restart local v6    # "packageInfo":Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;
    :goto_87
    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_95

    .line 102
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_95
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v6    # "packageInfo":Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;
    goto :goto_23

    .line 98
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_9f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not supported with unknown package id: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 99
    invoke-static {v3}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$300(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)B

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :cond_bc
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Non color resource found: name="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 88
    invoke-static {v3}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$100(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", typeId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 90
    invoke-static {v3}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$200(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 109
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_ed
    invoke-static {v3}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$200(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)B

    move-result v2

    sput-byte v2, Lcom/google/android/material/color/ColorResourcesTableCreator;->typeIdColor:B

    .line 110
    sget-byte v2, Lcom/google/android/material/color/ColorResourcesTableCreator;->typeIdColor:B

    if-eqz v2, :cond_109

    .line 113
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 114
    .local v2, "outputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v4, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;

    invoke-direct {v4, v1}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;-><init>(Ljava/util/Map;)V

    invoke-virtual {v4, v2}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    .line 115
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 111
    .end local v2    # "outputStream":Ljava/io/ByteArrayOutputStream;
    :cond_109
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "No color resources found for harmonization."

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    .end local v0    # "applicationPackageInfo":Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;
    .end local v1    # "colorResourceMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;Ljava/util/List<Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;>;>;"
    .end local v3    # "colorResource":Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;
    :cond_111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No color resources provided for harmonization."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static intToByteArray(I)[B
    .registers 7
    .param p0, "value"    # I

    .line 588
    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    shr-int/lit8 v3, p0, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v4, 0x4

    new-array v4, v4, [B

    const/4 v5, 0x0

    aput-byte v0, v4, v5

    const/4 v0, 0x1

    aput-byte v1, v4, v0

    const/4 v0, 0x2

    aput-byte v2, v4, v0

    const/4 v0, 0x3

    aput-byte v3, v4, v0

    return-object v4
.end method

.method private static shortToByteArray(S)[B
    .registers 5
    .param p0, "value"    # S

    .line 576
    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v0, v2, v3

    const/4 v0, 0x1

    aput-byte v1, v2, v0

    return-object v2
.end method

.method private static stringToByteArray(Ljava/lang/String;)[B
    .registers 10
    .param p0, "value"    # Ljava/lang/String;

    .line 597
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 598
    .local v0, "chars":[C
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    .line 599
    .local v1, "bytes":[B
    array-length v2, v0

    int-to-short v2, v2

    invoke-static {v2}, Lcom/google/android/material/color/ColorResourcesTableCreator;->shortToByteArray(S)[B

    move-result-object v2

    .line 600
    .local v2, "lengthBytes":[B
    const/4 v3, 0x0

    aget-byte v4, v2, v3

    aput-byte v4, v1, v3

    .line 601
    const/4 v4, 0x1

    aget-byte v5, v2, v4

    aput-byte v5, v1, v4

    .line 602
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1c
    array-length v6, v0

    if-ge v5, v6, :cond_38

    .line 603
    aget-char v6, v0, v5

    invoke-static {v6}, Lcom/google/android/material/color/ColorResourcesTableCreator;->charToByteArray(C)[B

    move-result-object v6

    .line 604
    .local v6, "charBytes":[B
    mul-int/lit8 v7, v5, 0x2

    add-int/lit8 v7, v7, 0x2

    aget-byte v8, v6, v3

    aput-byte v8, v1, v7

    .line 605
    mul-int/lit8 v7, v5, 0x2

    add-int/lit8 v7, v7, 0x3

    aget-byte v8, v6, v4

    aput-byte v8, v1, v7

    .line 602
    .end local v6    # "charBytes":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 607
    .end local v5    # "i":I
    :cond_38
    array-length v5, v1

    add-int/lit8 v5, v5, -0x2

    aput-byte v3, v1, v5

    .line 608
    array-length v5, v1

    sub-int/2addr v5, v4

    aput-byte v3, v1, v5

    .line 609
    return-object v1
.end method

.method private static stringToByteArrayUtf8(Ljava/lang/String;)[B
    .registers 7
    .param p0, "value"    # Ljava/lang/String;

    .line 613
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 614
    .local v0, "rawBytes":[B
    array-length v1, v0

    int-to-byte v1, v1

    .line 615
    .local v1, "stringLength":B
    array-length v2, v0

    add-int/lit8 v2, v2, 0x3

    new-array v2, v2, [B

    .line 616
    .local v2, "bytes":[B
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 617
    const/4 v3, 0x1

    aput-byte v1, v2, v3

    aput-byte v1, v2, v4

    .line 618
    array-length v5, v2

    sub-int/2addr v5, v3

    aput-byte v4, v2, v5

    .line 619
    return-object v2
.end method

###### Class com.google.android.material.color.ColorResourcesTableCreator.AnonymousClass1 (com.google.android.material.color.ColorResourcesTableCreator$1)
.class Lcom/google/android/material/color/ColorResourcesTableCreator$1;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/ColorResourcesTableCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)I
    .registers 5
    .param p1, "res1"    # Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;
    .param p2, "res2"    # Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;

    .line 63
    invoke-static {p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$000(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)S

    move-result v0

    invoke-static {p2}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$000(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)S

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 60
    check-cast p1, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;

    check-cast p2, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/color/ColorResourcesTableCreator$1;->compare(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)I

    move-result p1

    return p1
.end method

###### Class com.google.android.material.color.ColorResourcesTableCreator.ColorResource (com.google.android.material.color.ColorResourcesTableCreator$ColorResource)
.class Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/ColorResourcesTableCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ColorResource"
.end annotation


# instance fields
.field private final entryId:S

.field private final name:Ljava/lang/String;

.field private final packageId:B

.field private final typeId:B

.field private final value:I


# direct methods
.method constructor <init>(ILjava/lang/String;I)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    iput-object p2, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->name:Ljava/lang/String;

    .line 567
    iput p3, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->value:I

    .line 569
    const v0, 0xffff

    and-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->entryId:S

    .line 570
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->typeId:B

    .line 571
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->packageId:B

    .line 572
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)S
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;

    .line 556
    iget-short v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->entryId:S

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;

    .line 556
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;

    .line 556
    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->value:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)B
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;

    .line 556
    iget-byte v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->typeId:B

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)B
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;

    .line 556
    iget-byte v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->packageId:B

    return v0
.end method

###### Class com.google.android.material.color.ColorResourcesTableCreator.PackageChunk (com.google.android.material.color.ColorResourcesTableCreator$PackageChunk)
.class Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/ColorResourcesTableCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PackageChunk"
.end annotation


# static fields
.field private static final HEADER_SIZE:S = 0x120s

.field private static final PACKAGE_NAME_MAX_LENGTH:I = 0x80


# instance fields
.field private final header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

.field private final keyStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

.field private final packageInfo:Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

.field private final typeSpecChunk:Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;

.field private final typeStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;


# direct methods
.method constructor <init>(Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;Ljava/util/List;)V
    .registers 10
    .param p1, "packageInfo"    # Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;",
            "Ljava/util/List<",
            "Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;",
            ">;)V"
        }
    .end annotation

    .line 338
    .local p2, "colorResources":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iput-object p1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->packageInfo:Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

    .line 342
    new-instance v0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    const-string v5, "?5"

    const-string v6, "color"

    const-string v1, "?1"

    const-string v2, "?2"

    const-string v3, "?3"

    const-string v4, "?4"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;-><init>(Z[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->typeStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    .line 343
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 344
    .local v0, "keys":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_24
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 345
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;

    invoke-static {v2}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$100(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 344
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 347
    .end local v1    # "i":I
    :cond_39
    new-instance v1, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;-><init>(Z[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->keyStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    .line 348
    new-instance v1, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;

    invoke-direct {v1, p2}, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->typeSpecChunk:Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;

    .line 350
    new-instance v1, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    const/16 v2, 0x120

    invoke-virtual {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->getChunkSize()I

    move-result v3

    const/16 v4, 0x200

    invoke-direct {v1, v4, v2, v3}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;-><init>(SSI)V

    iput-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    .line 351
    return-void
.end method


# virtual methods
.method getChunkSize()I
    .registers 3

    .line 376
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->typeStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    .line 377
    invoke-virtual {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->getChunkSize()I

    move-result v0

    add-int/lit16 v0, v0, 0x120

    iget-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->keyStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    .line 378
    invoke-virtual {v1}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->getChunkSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->typeSpecChunk:Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;

    .line 379
    invoke-virtual {v1}, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->getChunkSizeWithTypeChunk()I

    move-result v1

    add-int/2addr v0, v1

    .line 376
    return v0
.end method

.method writeTo(Ljava/io/ByteArrayOutputStream;)V
    .registers 6
    .param p1, "outputStream"    # Ljava/io/ByteArrayOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    invoke-virtual {v0, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    .line 355
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->packageInfo:Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;->access$1000(Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 356
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->packageInfo:Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;->access$1100(Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 357
    .local v0, "packageName":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1d
    const/16 v2, 0x80

    const/4 v3, 0x0

    if-ge v1, v2, :cond_39

    .line 358
    array-length v2, v0

    if-ge v1, v2, :cond_2f

    .line 359
    aget-char v2, v0, v1

    invoke-static {v2}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$1200(C)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_36

    .line 361
    :cond_2f
    invoke-static {v3}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$1200(C)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 357
    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 364
    .end local v1    # "i":I
    :cond_39
    const/16 v1, 0x120

    invoke-static {v1}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 365
    invoke-static {v3}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 366
    iget-object v2, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->typeStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    .line 367
    invoke-virtual {v2}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->getChunkSize()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v2}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v1

    .line 366
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 368
    invoke-static {v3}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 369
    invoke-static {v3}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 370
    iget-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->typeStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    invoke-virtual {v1, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    .line 371
    iget-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->keyStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    invoke-virtual {v1, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    .line 372
    iget-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->typeSpecChunk:Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;

    invoke-virtual {v1, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    .line 373
    return-void
.end method

###### Class com.google.android.material.color.ColorResourcesTableCreator.PackageInfo (com.google.android.material.color.ColorResourcesTableCreator$PackageInfo)
.class Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/ColorResourcesTableCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageInfo"
.end annotation


# instance fields
.field private final id:I

.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 547
    iput p1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;->id:I

    .line 548
    iput-object p2, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;->name:Ljava/lang/String;

    .line 549
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

    .line 542
    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;->id:I

    return v0
.end method

.method static synthetic access$1100(Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

    .line 542
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;->name:Ljava/lang/String;

    return-object v0
.end method

###### Class com.google.android.material.color.ColorResourcesTableCreator.ResChunkHeader (com.google.android.material.color.ColorResourcesTableCreator$ResChunkHeader)
.class Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/ColorResourcesTableCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResChunkHeader"
.end annotation


# instance fields
.field private final chunkSize:I

.field private final headerSize:S

.field private final type:S


# direct methods
.method constructor <init>(SSI)V
    .registers 4
    .param p1, "type"    # S
    .param p2, "headerSize"    # S
    .param p3, "chunkSize"    # I

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-short p1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->type:S

    .line 181
    iput-short p2, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->headerSize:S

    .line 182
    iput p3, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->chunkSize:I

    .line 183
    return-void
.end method


# virtual methods
.method writeTo(Ljava/io/ByteArrayOutputStream;)V
    .registers 3
    .param p1, "outputStream"    # Ljava/io/ByteArrayOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    iget-short v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->type:S

    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$600(S)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 187
    iget-short v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->headerSize:S

    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$600(S)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 188
    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->chunkSize:I

    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 189
    return-void
.end method

###### Class com.google.android.material.color.ColorResourcesTableCreator.ResEntry (com.google.android.material.color.ColorResourcesTableCreator$ResEntry)
.class Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/ColorResourcesTableCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResEntry"
.end annotation


# static fields
.field private static final DATA_TYPE_AARRGGBB:B = 0x1ct

.field private static final ENTRY_SIZE:S = 0x8s

.field private static final FLAG_PUBLIC:S = 0x2s

.field private static final SIZE:I = 0x10

.field private static final VALUE_SIZE:S = 0x8s


# instance fields
.field private final data:I

.field private final keyStringIndex:I


# direct methods
.method constructor <init>(II)V
    .registers 3
    .param p1, "keyStringIndex"    # I
    .param p2, "data"    # I

    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    iput p1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;->keyStringIndex:I

    .line 528
    iput p2, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;->data:I

    .line 529
    return-void
.end method


# virtual methods
.method writeTo(Ljava/io/ByteArrayOutputStream;)V
    .registers 5
    .param p1, "outputStream"    # Ljava/io/ByteArrayOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 532
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$600(S)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 533
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$600(S)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 534
    iget v2, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;->keyStringIndex:I

    invoke-static {v2}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 535
    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$600(S)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 536
    new-array v0, v1, [B

    fill-array-data v0, :array_34

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 537
    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;->data:I

    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 538
    return-void

    nop

    :array_34
    .array-data 1
        0x0t
        0x1ct
    .end array-data
.end method

###### Class com.google.android.material.color.ColorResourcesTableCreator.ResTable (com.google.android.material.color.ColorResourcesTableCreator$ResTable)
.class Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/ColorResourcesTableCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResTable"
.end annotation


# static fields
.field private static final HEADER_SIZE:S = 0xcs


# instance fields
.field private final header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

.field private final packageChunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;",
            ">;"
        }
    .end annotation
.end field

.field private final packageCount:I

.field private final stringPool:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;",
            "Ljava/util/List<",
            "Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;",
            ">;>;)V"
        }
    .end annotation

    .line 134
    .local p1, "colorResourceMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;Ljava/util/List<Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;->packageChunks:Ljava/util/List;

    .line 135
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;->packageCount:I

    .line 136
    new-instance v0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;->stringPool:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    .line 137
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 138
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;Ljava/util/List<Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 139
    .local v2, "colorResources":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;>;"
    invoke-static {}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$400()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 140
    iget-object v3, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;->packageChunks:Ljava/util/List;

    new-instance v4, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

    invoke-direct {v4, v5, v2}, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;-><init>(Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;Ljava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;Ljava/util/List<Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;>;>;"
    .end local v2    # "colorResources":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;>;"
    goto :goto_22

    .line 142
    :cond_4c
    new-instance v0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    const/16 v1, 0xc

    invoke-direct {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;->getOverallSize()I

    move-result v2

    const/4 v3, 0x2

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;-><init>(SSI)V

    iput-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;->header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    .line 143
    return-void
.end method

.method private getOverallSize()I
    .registers 5

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "packageChunkSize":I
    iget-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;->packageChunks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;

    .line 157
    .local v2, "packageChunk":Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;
    invoke-virtual {v2}, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->getChunkSize()I

    move-result v3

    add-int/2addr v0, v3

    .line 158
    .end local v2    # "packageChunk":Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;
    goto :goto_7

    .line 159
    :cond_19
    iget-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;->stringPool:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    invoke-virtual {v1}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->getChunkSize()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    add-int/2addr v1, v0

    return v1
.end method


# virtual methods
.method writeTo(Ljava/io/ByteArrayOutputStream;)V
    .registers 4
    .param p1, "outputStream"    # Ljava/io/ByteArrayOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;->header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    invoke-virtual {v0, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    .line 147
    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;->packageCount:I

    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 148
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;->stringPool:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    invoke-virtual {v0, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    .line 149
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;->packageChunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;

    .line 150
    .local v1, "packageChunk":Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;
    invoke-virtual {v1, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    .line 151
    .end local v1    # "packageChunk":Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;
    goto :goto_19

    .line 152
    :cond_29
    return-void
.end method

###### Class com.google.android.material.color.ColorResourcesTableCreator.StringPoolChunk (com.google.android.material.color.ColorResourcesTableCreator$StringPoolChunk)
.class Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/ColorResourcesTableCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringPoolChunk"
.end annotation


# static fields
.field private static final FLAG_UTF8:I = 0x100

.field private static final HEADER_SIZE:S = 0x1cs

.field private static final STYLED_SPAN_LIST_END:I = -0x1


# instance fields
.field private final chunkSize:I

.field private final header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

.field private final stringCount:I

.field private final stringIndex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final strings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private final stringsPaddingSize:I

.field private final stringsStart:I

.field private final styledSpanCount:I

.field private final styledSpanIndex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final styledSpans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;",
            ">;>;"
        }
    .end annotation
.end field

.field private final styledSpansStart:I

.field private final utf8Encode:Z


# direct methods
.method varargs constructor <init>(Z[Ljava/lang/String;)V
    .registers 12
    .param p1, "utf8"    # Z
    .param p2, "rawStrings"    # [Ljava/lang/String;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->stringIndex:Ljava/util/List;

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpanIndex:Ljava/util/List;

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->strings:Ljava/util/List;

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpans:Ljava/util/List;

    .line 220
    iput-boolean p1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->utf8Encode:Z

    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, "stringOffset":I
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_25
    if-ge v3, v1, :cond_51

    aget-object v4, p2, v3

    .line 223
    .local v4, "string":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->processString(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    .line 224
    .local v5, "processedString":Landroid/util/Pair;, "Landroid/util/Pair<[BLjava/util/List<Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;>;>;"
    iget-object v6, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->stringIndex:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, [B

    array-length v6, v6

    add-int/2addr v0, v6

    .line 226
    iget-object v6, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->strings:Ljava/util/List;

    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, [B

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v6, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpans:Ljava/util/List;

    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    .end local v4    # "string":Ljava/lang/String;
    .end local v5    # "processedString":Landroid/util/Pair;, "Landroid/util/Pair<[BLjava/util/List<Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;>;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 229
    :cond_51
    const/4 v1, 0x0

    .line 230
    .local v1, "styledSpanOffset":I
    iget-object v3, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpans:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_58
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 231
    .local v4, "styledSpanList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_68
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;

    .line 232
    .local v6, "styledSpan":Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;
    iget-object v7, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->stringIndex:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-static {v6}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;->access$700(Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;)[B

    move-result-object v7

    array-length v7, v7

    add-int/2addr v0, v7

    .line 234
    iget-object v7, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->strings:Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;->access$700(Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;)[B

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    .end local v6    # "styledSpan":Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;
    goto :goto_68

    .line 236
    :cond_8d
    iget-object v5, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpanIndex:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0xc

    add-int/lit8 v5, v5, 0x4

    add-int/2addr v1, v5

    .line 239
    .end local v4    # "styledSpanList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;>;"
    goto :goto_58

    .line 242
    :cond_a0
    rem-int/lit8 v3, v0, 0x4

    .line 243
    .local v3, "stringOffsetResidue":I
    if-nez v3, :cond_a6

    move v4, v2

    goto :goto_a8

    :cond_a6
    rsub-int/lit8 v4, v3, 0x4

    :goto_a8
    iput v4, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->stringsPaddingSize:I

    .line 244
    iget-object v4, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->strings:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->stringCount:I

    .line 245
    iget-object v4, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->strings:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    array-length v5, p2

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpanCount:I

    .line 247
    iget-object v4, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->strings:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    array-length v5, p2

    sub-int/2addr v4, v5

    const/4 v5, 0x1

    if-lez v4, :cond_c9

    move v4, v5

    goto :goto_ca

    :cond_c9
    move v4, v2

    .line 248
    .local v4, "hasStyledSpans":Z
    :goto_ca
    if-nez v4, :cond_d6

    .line 250
    iget-object v6, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpanIndex:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 251
    iget-object v6, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpans:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 255
    :cond_d6
    iget v6, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->stringCount:I

    mul-int/lit8 v6, v6, 0x4

    const/16 v7, 0x1c

    add-int/2addr v6, v7

    iget-object v8, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpanIndex:Ljava/util/List;

    .line 258
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    mul-int/lit8 v8, v8, 0x4

    add-int/2addr v6, v8

    iput v6, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->stringsStart:I

    .line 259
    iget v6, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->stringsPaddingSize:I

    add-int/2addr v6, v0

    .line 260
    .local v6, "stringsSize":I
    if-eqz v4, :cond_f1

    iget v8, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->stringsStart:I

    add-int/2addr v8, v6

    goto :goto_f2

    :cond_f1
    move v8, v2

    :goto_f2
    iput v8, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpansStart:I

    .line 261
    iget v8, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->stringsStart:I

    add-int/2addr v8, v6

    if-eqz v4, :cond_fa

    move v2, v1

    :cond_fa
    add-int/2addr v8, v2

    iput v8, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->chunkSize:I

    .line 262
    new-instance v2, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    iget v8, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->chunkSize:I

    invoke-direct {v2, v5, v7, v8}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;-><init>(SSI)V

    iput-object v2, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    .line 263
    return-void
.end method

.method varargs constructor <init>([Ljava/lang/String;)V
    .registers 3
    .param p1, "rawStrings"    # [Ljava/lang/String;

    .line 216
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;-><init>(Z[Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method private processString(Ljava/lang/String;)Landroid/util/Pair;
    .registers 5
    .param p1, "rawString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "[B",
            "Ljava/util/List<",
            "Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;",
            ">;>;"
        }
    .end annotation

    .line 298
    new-instance v0, Landroid/util/Pair;

    .line 299
    iget-boolean v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->utf8Encode:Z

    if-eqz v1, :cond_b

    invoke-static {p1}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$800(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_f

    :cond_b
    invoke-static {p1}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$900(Ljava/lang/String;)[B

    move-result-object v1

    .line 300
    :goto_f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 298
    return-object v0
.end method


# virtual methods
.method getChunkSize()I
    .registers 2

    .line 293
    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->chunkSize:I

    return v0
.end method

.method writeTo(Ljava/io/ByteArrayOutputStream;)V
    .registers 6
    .param p1, "outputStream"    # Ljava/io/ByteArrayOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    invoke-virtual {v0, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    .line 267
    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->stringCount:I

    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 268
    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpanCount:I

    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 269
    iget-boolean v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->utf8Encode:Z

    if-eqz v0, :cond_1e

    const/16 v0, 0x100

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 270
    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->stringsStart:I

    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 271
    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpansStart:I

    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 272
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->stringIndex:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 273
    .local v1, "index":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 274
    .end local v1    # "index":Ljava/lang/Integer;
    goto :goto_3e

    .line 275
    :cond_56
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpanIndex:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_74

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 276
    .restart local v1    # "index":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 277
    .end local v1    # "index":Ljava/lang/Integer;
    goto :goto_5c

    .line 278
    :cond_74
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->strings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 279
    .local v1, "string":[B
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 280
    .end local v1    # "string":[B
    goto :goto_7a

    .line 281
    :cond_8a
    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->stringsPaddingSize:I

    if-lez v0, :cond_95

    .line 282
    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->stringsPaddingSize:I

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 284
    :cond_95
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 285
    .local v1, "styledSpanList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ab
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_bb

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;

    .line 286
    .local v3, "styledSpan":Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;
    invoke-virtual {v3, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    .line 287
    .end local v3    # "styledSpan":Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;
    goto :goto_ab

    .line 288
    :cond_bb
    const/4 v2, -0x1

    invoke-static {v2}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 289
    .end local v1    # "styledSpanList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;>;"
    goto :goto_9b

    .line 290
    :cond_c4
    return-void
.end method

###### Class com.google.android.material.color.ColorResourcesTableCreator.StringStyledSpan (com.google.android.material.color.ColorResourcesTableCreator$StringStyledSpan)
.class Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/ColorResourcesTableCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringStyledSpan"
.end annotation


# instance fields
.field private firstCharacterIndex:I

.field private lastCharacterIndex:I

.field private nameReference:I

.field private styleString:[B


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;)[B
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;

    .line 305
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;->styleString:[B

    return-object v0
.end method


# virtual methods
.method writeTo(Ljava/io/ByteArrayOutputStream;)V
    .registers 3
    .param p1, "outputStream"    # Ljava/io/ByteArrayOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;->nameReference:I

    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 314
    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;->firstCharacterIndex:I

    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 315
    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;->lastCharacterIndex:I

    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 316
    return-void
.end method

###### Class com.google.android.material.color.ColorResourcesTableCreator.TypeChunk (com.google.android.material.color.ColorResourcesTableCreator$TypeChunk)
.class Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/ColorResourcesTableCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TypeChunk"
.end annotation


# static fields
.field private static final CONFIG_SIZE:B = 0x40t

.field private static final HEADER_SIZE:S = 0x54s

.field private static final OFFSET_NO_ENTRY:I = -0x1


# instance fields
.field private final config:[B

.field private final entryCount:I

.field private final header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

.field private final offsetTable:[I

.field private final resEntries:[Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/Set;I)V
    .registers 9
    .param p3, "entryCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Short;",
            ">;I)V"
        }
    .end annotation

    .line 457
    .local p1, "colorResources":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;>;"
    .local p2, "entryIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Short;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    const/16 v0, 0x40

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->config:[B

    .line 458
    iput p3, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->entryCount:I

    .line 459
    iget-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->config:[B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    .line 461
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;

    iput-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->resEntries:[Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;

    .line 463
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_19
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_35

    .line 464
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;

    .line 465
    .local v1, "colorResource":Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;
    iget-object v2, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->resEntries:[Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;

    new-instance v3, Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;

    invoke-static {v1}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$1400(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)I

    move-result v4

    invoke-direct {v3, v0, v4}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;-><init>(II)V

    aput-object v3, v2, v0

    .line 463
    .end local v1    # "colorResource":Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 468
    .end local v0    # "index":I
    :cond_35
    new-array v0, p3, [I

    iput-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->offsetTable:[I

    .line 469
    const/4 v0, 0x0

    .line 470
    .local v0, "currentOffset":I
    const/4 v1, 0x0

    .local v1, "entryId":S
    :goto_3b
    if-ge v1, p3, :cond_55

    .line 471
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 475
    iget-object v3, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->offsetTable:[I

    .line 471
    if-eqz v2, :cond_4e

    .line 472
    aput v0, v3, v1

    .line 473
    add-int/lit8 v0, v0, 0x10

    goto :goto_51

    .line 475
    :cond_4e
    const/4 v2, -0x1

    aput v2, v3, v1

    .line 470
    :goto_51
    add-int/lit8 v2, v1, 0x1

    int-to-short v1, v2

    goto :goto_3b

    .line 479
    .end local v1    # "entryId":S
    :cond_55
    new-instance v1, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    const/16 v2, 0x54

    invoke-virtual {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->getChunkSize()I

    move-result v3

    const/16 v4, 0x201

    invoke-direct {v1, v4, v2, v3}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;-><init>(SSI)V

    iput-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    .line 480
    return-void
.end method

.method private getEntryStart()I
    .registers 2

    .line 501
    invoke-direct {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->getOffsetTableSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x54

    return v0
.end method

.method private getOffsetTableSize()I
    .registers 2

    .line 505
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->offsetTable:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method


# virtual methods
.method getChunkSize()I
    .registers 3

    .line 497
    invoke-direct {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->getEntryStart()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->resEntries:[Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    return v0
.end method

.method writeTo(Ljava/io/ByteArrayOutputStream;)V
    .registers 8
    .param p1, "outputStream"    # Ljava/io/ByteArrayOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 483
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    invoke-virtual {v0, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    .line 484
    invoke-static {}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$1300()B

    move-result v0

    const/4 v1, 0x4

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    const/4 v0, 0x1

    aput-byte v2, v1, v0

    const/4 v0, 0x2

    aput-byte v2, v1, v0

    const/4 v0, 0x3

    aput-byte v2, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 485
    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->entryCount:I

    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 486
    invoke-direct {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->getEntryStart()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 487
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->config:[B

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 488
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->offsetTable:[I

    array-length v1, v0

    move v3, v2

    :goto_38
    if-ge v3, v1, :cond_46

    aget v4, v0, v3

    .line 489
    .local v4, "offset":I
    invoke-static {v4}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 488
    .end local v4    # "offset":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 491
    :cond_46
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->resEntries:[Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;

    array-length v1, v0

    :goto_49
    if-ge v2, v1, :cond_53

    aget-object v3, v0, v2

    .line 492
    .local v3, "entry":Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;
    invoke-virtual {v3, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    .line 491
    .end local v3    # "entry":Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 494
    :cond_53
    return-void
.end method

###### Class com.google.android.material.color.ColorResourcesTableCreator.TypeSpecChunk (com.google.android.material.color.ColorResourcesTableCreator$TypeSpecChunk)
.class Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/ColorResourcesTableCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TypeSpecChunk"
.end annotation


# static fields
.field private static final HEADER_SIZE:S = 0x10s

.field private static final SPEC_PUBLIC:I = 0x40000000


# instance fields
.field private final entryCount:I

.field private final entryFlags:[I

.field private final header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

.field private final typeChunk:Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;",
            ">;)V"
        }
    .end annotation

    .line 401
    .local p1, "colorResources":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;

    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$000(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)S

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->entryCount:I

    .line 403
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 404
    .local v0, "validEntryIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Short;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;

    .line 405
    .local v2, "colorResource":Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;
    invoke-static {v2}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$000(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 406
    .end local v2    # "colorResource":Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;
    goto :goto_20

    .line 407
    :cond_38
    iget v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->entryCount:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->entryFlags:[I

    .line 409
    const/4 v1, 0x0

    .local v1, "entryId":S
    :goto_3f
    iget v2, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->entryCount:I

    if-ge v1, v2, :cond_57

    .line 410
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 411
    iget-object v2, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->entryFlags:[I

    const/high16 v3, 0x40000000    # 2.0f

    aput v3, v2, v1

    .line 409
    :cond_53
    add-int/lit8 v2, v1, 0x1

    int-to-short v1, v2

    goto :goto_3f

    .line 415
    .end local v1    # "entryId":S
    :cond_57
    new-instance v1, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    const/16 v2, 0x10

    invoke-direct {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->getChunkSize()I

    move-result v3

    const/16 v4, 0x202

    invoke-direct {v1, v4, v2, v3}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;-><init>(SSI)V

    iput-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    .line 417
    new-instance v1, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;

    iget v2, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->entryCount:I

    invoke-direct {v1, p1, v0, v2}, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;-><init>(Ljava/util/List;Ljava/util/Set;I)V

    iput-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->typeChunk:Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;

    .line 418
    return-void
.end method

.method private getChunkSize()I
    .registers 2

    .line 435
    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->entryCount:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x10

    return v0
.end method


# virtual methods
.method getChunkSizeWithTypeChunk()I
    .registers 3

    .line 431
    invoke-direct {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->getChunkSize()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->typeChunk:Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;

    invoke-virtual {v1}, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->getChunkSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method writeTo(Ljava/io/ByteArrayOutputStream;)V
    .registers 7
    .param p1, "outputStream"    # Ljava/io/ByteArrayOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    invoke-virtual {v0, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    .line 422
    invoke-static {}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$1300()B

    move-result v0

    const/4 v1, 0x4

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    const/4 v0, 0x1

    aput-byte v2, v1, v0

    const/4 v0, 0x2

    aput-byte v2, v1, v0

    const/4 v0, 0x3

    aput-byte v2, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 423
    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->entryCount:I

    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 424
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->entryFlags:[I

    array-length v1, v0

    :goto_27
    if-ge v2, v1, :cond_35

    aget v3, v0, v2

    .line 425
    .local v3, "entryFlag":I
    invoke-static {v3}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 424
    .end local v3    # "entryFlag":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 427
    :cond_35
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->typeChunk:Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;

    invoke-virtual {v0, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    .line 428
    return-void
.end method
