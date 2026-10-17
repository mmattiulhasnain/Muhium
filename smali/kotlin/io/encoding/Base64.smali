###### Class kotlin.io.encoding.Base64 (kotlin.io.encoding.Base64)
.class public Lkotlin/io/encoding/Base64;
.super Ljava/lang/Object;
.source "Base64.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/io/encoding/Base64$Default;,
        Lkotlin/io/encoding/Base64$PaddingOption;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0012\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\r\n\u0002\u0008\u0013\n\u0002\u0010\u0002\n\u0002\u0008\t\u0008\u0017\u0018\u0000 B2\u00020\u0001:\u0002ABB)\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0010\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0008H\u0007J\"\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0006J4\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0006J\"\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0017\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0006J=\u0010\u001f\u001a\u0002H \"\u000c\u0008\u0000\u0010 *\u00060!j\u0002`\"2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u0002H 2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0006\u00a2\u0006\u0002\u0010#J\"\u0010$\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0006J4\u0010%\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0006J\"\u0010$\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020&2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0006J4\u0010%\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020&2\u0006\u0010\u001b\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0006J%\u0010\'\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u0008(J5\u0010)\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u0008*J\u0015\u0010+\u001a\u00020\u00062\u0006\u0010,\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u0008-J\u0008\u0010.\u001a\u00020\u0003H\u0002J0\u0010/\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0002J%\u00100\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u00081J%\u00102\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020&2\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u00083J\u0015\u00104\u001a\u00020\u001e2\u0006\u0010\u0017\u001a\u00020\u0016H\u0000\u00a2\u0006\u0002\u00085J(\u00106\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u00107\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u00108\u001a\u00020\u0006H\u0002J\u0010\u00109\u001a\u00020:2\u0006\u00107\u001a\u00020\u0006H\u0002J \u0010;\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0002J%\u0010<\u001a\u00020:2\u0006\u0010,\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u0008=J \u0010>\u001a\u00020:2\u0006\u0010?\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010@\u001a\u00020\u0006H\u0002R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0004\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0014\u0010\u0005\u001a\u00020\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0007\u001a\u00020\u0008X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006C"
    }
    d2 = {
        "Lkotlin/io/encoding/Base64;",
        "",
        "isUrlSafe",
        "",
        "isMimeScheme",
        "mimeLineLength",
        "",
        "paddingOption",
        "Lkotlin/io/encoding/Base64$PaddingOption;",
        "<init>",
        "(ZZILkotlin/io/encoding/Base64$PaddingOption;)V",
        "isUrlSafe$kotlin_stdlib",
        "()Z",
        "isMimeScheme$kotlin_stdlib",
        "getMimeLineLength$kotlin_stdlib",
        "()I",
        "getPaddingOption$kotlin_stdlib",
        "()Lkotlin/io/encoding/Base64$PaddingOption;",
        "mimeGroupsPerLine",
        "withPadding",
        "option",
        "encodeToByteArray",
        "",
        "source",
        "startIndex",
        "endIndex",
        "encodeIntoByteArray",
        "destination",
        "destinationOffset",
        "encode",
        "",
        "encodeToAppendable",
        "A",
        "Ljava/lang/Appendable;",
        "Lkotlin/text/Appendable;",
        "([BLjava/lang/Appendable;II)Ljava/lang/Appendable;",
        "decode",
        "decodeIntoByteArray",
        "",
        "encodeToByteArrayImpl",
        "encodeToByteArrayImpl$kotlin_stdlib",
        "encodeIntoByteArrayImpl",
        "encodeIntoByteArrayImpl$kotlin_stdlib",
        "encodeSize",
        "sourceSize",
        "encodeSize$kotlin_stdlib",
        "shouldPadOnEncode",
        "decodeImpl",
        "decodeSize",
        "decodeSize$kotlin_stdlib",
        "charsToBytesImpl",
        "charsToBytesImpl$kotlin_stdlib",
        "bytesToStringImpl",
        "bytesToStringImpl$kotlin_stdlib",
        "handlePaddingSymbol",
        "padIndex",
        "byteStart",
        "checkPaddingIsAllowed",
        "",
        "skipIllegalSymbolsIfMime",
        "checkSourceBounds",
        "checkSourceBounds$kotlin_stdlib",
        "checkDestinationBounds",
        "destinationSize",
        "capacityNeeded",
        "PaddingOption",
        "Default",
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
.field public static final Default:Lkotlin/io/encoding/Base64$Default;

.field private static final Mime:Lkotlin/io/encoding/Base64;

.field private static final Pem:Lkotlin/io/encoding/Base64;

.field private static final UrlSafe:Lkotlin/io/encoding/Base64;

.field private static final bitsPerByte:I = 0x8

.field private static final bitsPerSymbol:I = 0x6

.field public static final bytesPerGroup:I = 0x3

.field private static final lineLengthMime:I = 0x4c

.field private static final lineLengthPem:I = 0x40

.field private static final mimeLineSeparatorSymbols:[B

.field public static final padSymbol:B = 0x3dt

.field public static final symbolsPerGroup:I = 0x4


# instance fields
.field private final isMimeScheme:Z

.field private final isUrlSafe:Z

.field private final mimeGroupsPerLine:I

.field private final mimeLineLength:I

.field private final paddingOption:Lkotlin/io/encoding/Base64$PaddingOption;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lkotlin/io/encoding/Base64$Default;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/io/encoding/Base64$Default;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/io/encoding/Base64;->Default:Lkotlin/io/encoding/Base64$Default;

    .line 718
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_34

    sput-object v0, Lkotlin/io/encoding/Base64;->mimeLineSeparatorSymbols:[B

    .line 735
    new-instance v0, Lkotlin/io/encoding/Base64;

    const/4 v1, -0x1

    sget-object v2, Lkotlin/io/encoding/Base64$PaddingOption;->PRESENT:Lkotlin/io/encoding/Base64$PaddingOption;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/io/encoding/Base64;-><init>(ZZILkotlin/io/encoding/Base64$PaddingOption;)V

    sput-object v0, Lkotlin/io/encoding/Base64;->UrlSafe:Lkotlin/io/encoding/Base64;

    .line 752
    new-instance v0, Lkotlin/io/encoding/Base64;

    const/16 v1, 0x4c

    sget-object v2, Lkotlin/io/encoding/Base64$PaddingOption;->PRESENT:Lkotlin/io/encoding/Base64$PaddingOption;

    invoke-direct {v0, v4, v3, v1, v2}, Lkotlin/io/encoding/Base64;-><init>(ZZILkotlin/io/encoding/Base64$PaddingOption;)V

    sput-object v0, Lkotlin/io/encoding/Base64;->Mime:Lkotlin/io/encoding/Base64;

    .line 769
    new-instance v0, Lkotlin/io/encoding/Base64;

    const/16 v1, 0x40

    sget-object v2, Lkotlin/io/encoding/Base64$PaddingOption;->PRESENT:Lkotlin/io/encoding/Base64$PaddingOption;

    invoke-direct {v0, v4, v3, v1, v2}, Lkotlin/io/encoding/Base64;-><init>(ZZILkotlin/io/encoding/Base64$PaddingOption;)V

    sput-object v0, Lkotlin/io/encoding/Base64;->Pem:Lkotlin/io/encoding/Base64;

    return-void

    nop

    :array_34
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method private constructor <init>(ZZILkotlin/io/encoding/Base64$PaddingOption;)V
    .registers 7
    .param p1, "isUrlSafe"    # Z
    .param p2, "isMimeScheme"    # Z
    .param p3, "mimeLineLength"    # I
    .param p4, "paddingOption"    # Lkotlin/io/encoding/Base64$PaddingOption;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean p1, p0, Lkotlin/io/encoding/Base64;->isUrlSafe:Z

    .line 59
    iput-boolean p2, p0, Lkotlin/io/encoding/Base64;->isMimeScheme:Z

    .line 60
    iput p3, p0, Lkotlin/io/encoding/Base64;->mimeLineLength:I

    .line 61
    iput-object p4, p0, Lkotlin/io/encoding/Base64;->paddingOption:Lkotlin/io/encoding/Base64$PaddingOption;

    .line 63
    nop

    .line 64
    iget-boolean v0, p0, Lkotlin/io/encoding/Base64;->isUrlSafe:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lkotlin/io/encoding/Base64;->isMimeScheme:Z

    if-nez v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    if-eqz v0, :cond_22

    .line 65
    nop

    .line 67
    iget v0, p0, Lkotlin/io/encoding/Base64;->mimeLineLength:I

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lkotlin/io/encoding/Base64;->mimeGroupsPerLine:I

    .line 57
    return-void

    .line 64
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic constructor <init>(ZZILkotlin/io/encoding/Base64$PaddingOption;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lkotlin/io/encoding/Base64;-><init>(ZZILkotlin/io/encoding/Base64$PaddingOption;)V

    return-void
.end method

.method public static final synthetic access$getMime$cp()Lkotlin/io/encoding/Base64;
    .registers 1

    .line 55
    sget-object v0, Lkotlin/io/encoding/Base64;->Mime:Lkotlin/io/encoding/Base64;

    return-object v0
.end method

.method public static final synthetic access$getMimeLineSeparatorSymbols$cp()[B
    .registers 1

    .line 55
    sget-object v0, Lkotlin/io/encoding/Base64;->mimeLineSeparatorSymbols:[B

    return-object v0
.end method

.method public static final synthetic access$getPem$cp()Lkotlin/io/encoding/Base64;
    .registers 1

    .line 55
    sget-object v0, Lkotlin/io/encoding/Base64;->Pem:Lkotlin/io/encoding/Base64;

    return-object v0
.end method

.method public static final synthetic access$getUrlSafe$cp()Lkotlin/io/encoding/Base64;
    .registers 1

    .line 55
    sget-object v0, Lkotlin/io/encoding/Base64;->UrlSafe:Lkotlin/io/encoding/Base64;

    return-object v0
.end method

.method private final checkDestinationBounds(III)V
    .registers 9
    .param p1, "destinationSize"    # I
    .param p2, "destinationOffset"    # I
    .param p3, "capacityNeeded"    # I

    .line 676
    const-string v0, ", destination size: "

    if-ltz p2, :cond_3d

    if-gt p2, p1, :cond_3d

    .line 680
    add-int v1, p2, p3

    .line 681
    .local v1, "destinationEndIndex":I
    if-ltz v1, :cond_d

    if-gt v1, p1, :cond_d

    .line 687
    return-void

    .line 682
    :cond_d
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    .line 683
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The destination array does not have enough capacity, destination offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 684
    nop

    .line 683
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 684
    nop

    .line 683
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 684
    nop

    .line 683
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 684
    nop

    .line 683
    const-string v3, ", capacity needed: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 684
    nop

    .line 683
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 682
    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 677
    .end local v1    # "destinationEndIndex":I
    :cond_3d
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destination offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final checkPaddingIsAllowed(I)V
    .registers 5
    .param p1, "padIndex"    # I

    .line 649
    iget-object v0, p0, Lkotlin/io/encoding/Base64;->paddingOption:Lkotlin/io/encoding/Base64$PaddingOption;

    sget-object v1, Lkotlin/io/encoding/Base64$PaddingOption;->ABSENT:Lkotlin/io/encoding/Base64$PaddingOption;

    if-eq v0, v1, :cond_7

    .line 654
    return-void

    .line 650
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 651
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The padding option is set to ABSENT, but the input has a pad character at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 650
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic decode$default(Lkotlin/io/encoding/Base64;Ljava/lang/CharSequence;IIILjava/lang/Object;)[B
    .registers 6

    .line 353
    if-nez p5, :cond_14

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_7

    const/4 p2, 0x0

    :cond_7
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_f

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    :cond_f
    invoke-virtual {p0, p1, p2, p3}, Lkotlin/io/encoding/Base64;->decode(Ljava/lang/CharSequence;II)[B

    move-result-object p0

    return-object p0

    :cond_14
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: decode"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic decode$default(Lkotlin/io/encoding/Base64;[BIIILjava/lang/Object;)[B
    .registers 6

    .line 283
    if-nez p5, :cond_11

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_7

    const/4 p2, 0x0

    :cond_7
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_c

    array-length p3, p1

    :cond_c
    invoke-virtual {p0, p1, p2, p3}, Lkotlin/io/encoding/Base64;->decode([BII)[B

    move-result-object p0

    return-object p0

    :cond_11
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: decode"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final decodeImpl([B[BIII)I
    .registers 26
    .param p1, "source"    # [B
    .param p2, "destination"    # [B
    .param p3, "destinationOffset"    # I
    .param p4, "startIndex"    # I
    .param p5, "endIndex"    # I

    .line 497
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    iget-boolean v3, v0, Lkotlin/io/encoding/Base64;->isUrlSafe:Z

    if-eqz v3, :cond_f

    invoke-static {}, Lkotlin/io/encoding/Base64Kt;->access$getBase64UrlDecodeMap$p()[I

    move-result-object v3

    goto :goto_13

    :cond_f
    invoke-static {}, Lkotlin/io/encoding/Base64Kt;->access$getBase64DecodeMap$p()[I

    move-result-object v3

    .line 498
    .local v3, "decodeMap":[I
    :goto_13
    const/4 v4, 0x0

    .line 499
    .local v4, "payload":I
    const/4 v5, -0x8

    .line 500
    .local v5, "byteStart":I
    move/from16 v6, p4

    .line 501
    .local v6, "sourceIndex":I
    move/from16 v7, p3

    .line 502
    .local v7, "destinationIndex":I
    const/4 v8, 0x0

    .line 504
    .local v8, "hasPadding":Z
    :goto_1a
    const-string v9, ") at index "

    const-string/jumbo v10, "toString(...)"

    const-string v11, "\'("

    const/4 v14, -0x8

    if-ge v6, v2, :cond_ed

    .line 505
    if-ne v5, v14, :cond_76

    add-int/lit8 v15, v6, 0x3

    if-ge v15, v2, :cond_76

    .line 506
    add-int/lit8 v15, v6, 0x1

    .end local v6    # "sourceIndex":I
    .local v15, "sourceIndex":I
    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    aget v6, v3, v6

    .line 507
    .local v6, "symbol1":I
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "sourceIndex":I
    .local v16, "sourceIndex":I
    aget-byte v15, v1, v15

    and-int/lit16 v15, v15, 0xff

    aget v15, v3, v15

    .line 508
    .local v15, "symbol2":I
    add-int/lit8 v17, v16, 0x1

    const/16 v18, 0x8

    .end local v16    # "sourceIndex":I
    .local v17, "sourceIndex":I
    aget-byte v13, v1, v16

    and-int/lit16 v13, v13, 0xff

    aget v13, v3, v13

    .line 509
    .local v13, "symbol3":I
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "sourceIndex":I
    .restart local v16    # "sourceIndex":I
    aget-byte v14, v1, v17

    and-int/lit16 v14, v14, 0xff

    aget v14, v3, v14

    .line 510
    .local v14, "symbol4":I
    shl-int/lit8 v17, v6, 0x12

    shl-int/lit8 v19, v15, 0xc

    or-int v17, v17, v19

    shl-int/lit8 v19, v13, 0x6

    or-int v17, v17, v19

    or-int v12, v17, v14

    .line 511
    .local v12, "bits":I
    if-ltz v12, :cond_71

    .line 512
    add-int/lit8 v9, v7, 0x1

    .end local v7    # "destinationIndex":I
    .local v9, "destinationIndex":I
    shr-int/lit8 v10, v12, 0x10

    int-to-byte v10, v10

    aput-byte v10, p2, v7

    .line 513
    add-int/lit8 v7, v9, 0x1

    .end local v9    # "destinationIndex":I
    .restart local v7    # "destinationIndex":I
    shr-int/lit8 v10, v12, 0x8

    int-to-byte v10, v10

    aput-byte v10, p2, v9

    .line 514
    add-int/lit8 v9, v7, 0x1

    .end local v7    # "destinationIndex":I
    .restart local v9    # "destinationIndex":I
    int-to-byte v10, v12

    aput-byte v10, p2, v7

    .line 515
    move v7, v9

    move/from16 v6, v16

    goto :goto_1a

    .line 517
    .end local v9    # "destinationIndex":I
    .restart local v7    # "destinationIndex":I
    :cond_71
    add-int/lit8 v16, v16, -0x4

    move/from16 v6, v16

    goto :goto_78

    .line 505
    .end local v12    # "bits":I
    .end local v13    # "symbol3":I
    .end local v14    # "symbol4":I
    .end local v15    # "symbol2":I
    .end local v16    # "sourceIndex":I
    .local v6, "sourceIndex":I
    :cond_76
    const/16 v18, 0x8

    .line 520
    :goto_78
    aget-byte v12, v1, v6

    and-int/lit16 v12, v12, 0xff

    .line 521
    .local v12, "symbol":I
    aget v13, v3, v12

    .line 522
    .local v13, "symbolBits":I
    if-gez v13, :cond_c9

    .line 523
    const/4 v14, -0x2

    if-ne v13, v14, :cond_8b

    .line 524
    const/4 v8, 0x1

    .line 525
    invoke-direct {v0, v1, v6, v2, v5}, Lkotlin/io/encoding/Base64;->handlePaddingSymbol([BIII)I

    move-result v6

    .line 526
    move-object/from16 v16, v3

    goto :goto_f1

    .line 527
    :cond_8b
    iget-boolean v14, v0, Lkotlin/io/encoding/Base64;->isMimeScheme:Z

    if-eqz v14, :cond_92

    .line 528
    add-int/lit8 v6, v6, 0x1

    .line 529
    goto :goto_1a

    .line 531
    :cond_92
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v3

    .end local v3    # "decodeMap":[I
    .local v16, "decodeMap":[I
    const-string v3, "Invalid symbol \'"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    int-to-char v15, v12

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v18 .. v18}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v11

    invoke-static {v12, v11}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v14, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 534
    .end local v16    # "decodeMap":[I
    .restart local v3    # "decodeMap":[I
    :cond_c9
    move-object/from16 v16, v3

    .end local v3    # "decodeMap":[I
    .restart local v16    # "decodeMap":[I
    add-int/lit8 v6, v6, 0x1

    .line 537
    shl-int/lit8 v3, v4, 0x6

    or-int v4, v3, v13

    .line 538
    add-int/lit8 v5, v5, 0x6

    .line 540
    if-ltz v5, :cond_e9

    .line 541
    add-int/lit8 v3, v7, 0x1

    .end local v7    # "destinationIndex":I
    .local v3, "destinationIndex":I
    ushr-int v9, v4, v5

    int-to-byte v9, v9

    aput-byte v9, p2, v7

    .line 543
    const/4 v7, 0x1

    shl-int v9, v7, v5

    sub-int/2addr v9, v7

    and-int/2addr v4, v9

    .line 544
    nop

    .end local v12    # "symbol":I
    .end local v13    # "symbolBits":I
    add-int/lit8 v5, v5, -0x8

    move v7, v3

    move-object/from16 v3, v16

    goto/16 :goto_1a

    .line 540
    .end local v3    # "destinationIndex":I
    .restart local v7    # "destinationIndex":I
    .restart local v12    # "symbol":I
    .restart local v13    # "symbolBits":I
    :cond_e9
    move-object/from16 v3, v16

    goto/16 :goto_1a

    .line 504
    .end local v12    # "symbol":I
    .end local v13    # "symbolBits":I
    .end local v16    # "decodeMap":[I
    .local v3, "decodeMap":[I
    :cond_ed
    move-object/from16 v16, v3

    const/16 v18, 0x8

    .line 550
    .end local v3    # "decodeMap":[I
    .restart local v16    # "decodeMap":[I
    :goto_f1
    const/4 v14, -0x2

    if-eq v5, v14, :cond_15c

    .line 553
    const/4 v3, -0x8

    if-eq v5, v3, :cond_108

    if-nez v8, :cond_108

    iget-object v3, v0, Lkotlin/io/encoding/Base64;->paddingOption:Lkotlin/io/encoding/Base64$PaddingOption;

    sget-object v12, Lkotlin/io/encoding/Base64$PaddingOption;->PRESENT:Lkotlin/io/encoding/Base64$PaddingOption;

    if-eq v3, v12, :cond_100

    goto :goto_108

    .line 554
    :cond_100
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v9, "The padding option is set to PRESENT, but the input is not properly padded"

    invoke-direct {v3, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 556
    :cond_108
    :goto_108
    if-nez v4, :cond_154

    .line 560
    invoke-direct {v0, v1, v6, v2}, Lkotlin/io/encoding/Base64;->skipIllegalSymbolsIfMime([BII)I

    move-result v3

    .line 561
    .end local v6    # "sourceIndex":I
    .local v3, "sourceIndex":I
    if-lt v3, v2, :cond_113

    .line 566
    sub-int v6, v7, p3

    return v6

    .line 562
    :cond_113
    aget-byte v6, v1, v3

    and-int/lit16 v6, v6, 0xff

    .line 563
    .local v6, "symbol":I
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Symbol \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    int-to-char v14, v6

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static/range {v18 .. v18}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v13

    invoke-static {v6, v13}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v3, -0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is prohibited after the pad character"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v12, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 557
    .end local v3    # "sourceIndex":I
    .local v6, "sourceIndex":I
    :cond_154
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v9, "The pad bits must be zeros"

    invoke-direct {v3, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 551
    :cond_15c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v9, "The last unit of input does not have enough bits"

    invoke-direct {v3, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static synthetic decodeIntoByteArray$default(Lkotlin/io/encoding/Base64;Ljava/lang/CharSequence;[BIIIILjava/lang/Object;)I
    .registers 9

    .line 382
    if-nez p7, :cond_1a

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_8

    .line 385
    move p3, v0

    .line 382
    :cond_8
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_d

    .line 386
    move p4, v0

    .line 382
    :cond_d
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_15

    .line 387
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p5

    .line 382
    :cond_15
    invoke-virtual/range {p0 .. p5}, Lkotlin/io/encoding/Base64;->decodeIntoByteArray(Ljava/lang/CharSequence;[BIII)I

    move-result p0

    return p0

    :cond_1a
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: decodeIntoByteArray"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic decodeIntoByteArray$default(Lkotlin/io/encoding/Base64;[B[BIIIILjava/lang/Object;)I
    .registers 9

    .line 320
    if-nez p7, :cond_17

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_8

    .line 323
    move p3, v0

    .line 320
    :cond_8
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_d

    .line 324
    move p4, v0

    .line 320
    :cond_d
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_12

    .line 325
    array-length p5, p1

    .line 320
    :cond_12
    invoke-virtual/range {p0 .. p5}, Lkotlin/io/encoding/Base64;->decodeIntoByteArray([B[BIII)I

    move-result p0

    return p0

    :cond_17
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: decodeIntoByteArray"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic encode$default(Lkotlin/io/encoding/Base64;[BIIILjava/lang/Object;)Ljava/lang/String;
    .registers 6

    .line 230
    if-nez p5, :cond_11

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_7

    const/4 p2, 0x0

    :cond_7
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_c

    array-length p3, p1

    :cond_c
    invoke-virtual {p0, p1, p2, p3}, Lkotlin/io/encoding/Base64;->encode([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: encode"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic encodeIntoByteArray$default(Lkotlin/io/encoding/Base64;[B[BIIIILjava/lang/Object;)I
    .registers 9

    .line 201
    if-nez p7, :cond_17

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_8

    .line 204
    move p3, v0

    .line 201
    :cond_8
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_d

    .line 205
    move p4, v0

    .line 201
    :cond_d
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_12

    .line 206
    array-length p5, p1

    .line 201
    :cond_12
    invoke-virtual/range {p0 .. p5}, Lkotlin/io/encoding/Base64;->encodeIntoByteArray([B[BIII)I

    move-result p0

    return p0

    :cond_17
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: encodeIntoByteArray"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic encodeToAppendable$default(Lkotlin/io/encoding/Base64;[BLjava/lang/Appendable;IIILjava/lang/Object;)Ljava/lang/Appendable;
    .registers 7

    .line 252
    if-nez p6, :cond_11

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_7

    .line 255
    const/4 p3, 0x0

    .line 252
    :cond_7
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_c

    .line 256
    array-length p4, p1

    .line 252
    :cond_c
    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlin/io/encoding/Base64;->encodeToAppendable([BLjava/lang/Appendable;II)Ljava/lang/Appendable;

    move-result-object p0

    return-object p0

    :cond_11
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: encodeToAppendable"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic encodeToByteArray$default(Lkotlin/io/encoding/Base64;[BIIILjava/lang/Object;)[B
    .registers 6

    .line 176
    if-nez p5, :cond_11

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_7

    const/4 p2, 0x0

    :cond_7
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_c

    array-length p3, p1

    :cond_c
    invoke-virtual {p0, p1, p2, p3}, Lkotlin/io/encoding/Base64;->encodeToByteArray([BII)[B

    move-result-object p0

    return-object p0

    :cond_11
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: encodeToByteArray"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final handlePaddingSymbol([BIII)I
    .registers 9
    .param p1, "source"    # [B
    .param p2, "padIndex"    # I
    .param p3, "endIndex"    # I
    .param p4, "byteStart"    # I

    .line 626
    packed-switch p4, :pswitch_data_5e

    .line 641
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 644
    const-string v1, "Unreachable"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 630
    :pswitch_f
    add-int/lit8 v0, p2, 0x1

    goto :goto_44

    .line 632
    :pswitch_12
    invoke-direct {p0, p2}, Lkotlin/io/encoding/Base64;->checkPaddingIsAllowed(I)V

    .line 633
    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, p1, v0, p3}, Lkotlin/io/encoding/Base64;->skipIllegalSymbolsIfMime([BII)I

    move-result v0

    .line 634
    .local v0, "secondPadIndex":I
    if-eq v0, p3, :cond_26

    aget-byte v1, p1, v0

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_26

    .line 637
    add-int/lit8 v0, v0, 0x1

    .end local v0    # "secondPadIndex":I
    goto :goto_44

    .line 635
    .restart local v0    # "secondPadIndex":I
    :cond_26
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing one pad character at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 640
    .end local v0    # "secondPadIndex":I
    :pswitch_3f
    invoke-direct {p0, p2}, Lkotlin/io/encoding/Base64;->checkPaddingIsAllowed(I)V

    .line 641
    add-int/lit8 v0, p2, 0x1

    .line 626
    :goto_44
    return v0

    .line 628
    :pswitch_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Redundant pad character at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_5e
    .packed-switch -0x8
        :pswitch_45
        :pswitch_3
        :pswitch_3f
        :pswitch_3
        :pswitch_12
        :pswitch_3
        :pswitch_f
    .end packed-switch
.end method

.method private final shouldPadOnEncode()Z
    .registers 3

    .line 488
    iget-object v0, p0, Lkotlin/io/encoding/Base64;->paddingOption:Lkotlin/io/encoding/Base64$PaddingOption;

    sget-object v1, Lkotlin/io/encoding/Base64$PaddingOption;->PRESENT:Lkotlin/io/encoding/Base64$PaddingOption;

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Lkotlin/io/encoding/Base64;->paddingOption:Lkotlin/io/encoding/Base64$PaddingOption;

    sget-object v1, Lkotlin/io/encoding/Base64$PaddingOption;->PRESENT_OPTIONAL:Lkotlin/io/encoding/Base64$PaddingOption;

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private final skipIllegalSymbolsIfMime([BII)I
    .registers 8
    .param p1, "source"    # [B
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 657
    iget-boolean v0, p0, Lkotlin/io/encoding/Base64;->isMimeScheme:Z

    if-nez v0, :cond_5

    .line 658
    return p2

    .line 660
    :cond_5
    move v0, p2

    .line 661
    .local v0, "sourceIndex":I
    :goto_6
    if-ge v0, p3, :cond_1a

    .line 662
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    .line 663
    .local v1, "symbol":I
    invoke-static {}, Lkotlin/io/encoding/Base64Kt;->access$getBase64DecodeMap$p()[I

    move-result-object v2

    aget v2, v2, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_16

    .line 664
    return v0

    .line 666
    :cond_16
    nop

    .end local v1    # "symbol":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 668
    :cond_1a
    return v0
.end method


# virtual methods
.method public final bytesToStringImpl$kotlin_stdlib([B)Ljava/lang/String;
    .registers 7
    .param p1, "source"    # [B

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 619
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_18

    aget-byte v3, p1, v2

    .line 620
    .local v3, "byte":B
    int-to-char v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 619
    .end local v3    # "byte":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 622
    :cond_18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final charsToBytesImpl$kotlin_stdlib(Ljava/lang/CharSequence;II)[B
    .registers 10
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 600
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lkotlin/io/encoding/Base64;->checkSourceBounds$kotlin_stdlib(III)V

    .line 602
    sub-int v0, p3, p2

    new-array v0, v0, [B

    .line 603
    .local v0, "byteArray":[B
    const/4 v1, 0x0

    .line 604
    .local v1, "length":I
    move v2, p2

    .local v2, "index":I
    :goto_12
    if-ge v2, p3, :cond_2d

    .line 605
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 606
    .local v3, "symbol":I
    const/16 v4, 0xff

    if-gt v3, v4, :cond_23

    .line 607
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "length":I
    .local v4, "length":I
    int-to-byte v5, v3

    aput-byte v5, v0, v1

    move v1, v4

    goto :goto_2a

    .line 611
    .end local v4    # "length":I
    .restart local v1    # "length":I
    :cond_23
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "length":I
    .restart local v4    # "length":I
    const/16 v5, 0x3f

    aput-byte v5, v0, v1

    move v1, v4

    .line 604
    .end local v3    # "symbol":I
    .end local v4    # "length":I
    .restart local v1    # "length":I
    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 614
    .end local v2    # "index":I
    :cond_2d
    return-object v0
.end method

.method public final checkSourceBounds$kotlin_stdlib(III)V
    .registers 5
    .param p1, "sourceSize"    # I
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 672
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    invoke-virtual {v0, p2, p3, p1}, Lkotlin/collections/AbstractList$Companion;->checkBoundsIndexes$kotlin_stdlib(III)V

    .line 673
    return-void
.end method

.method public final decode(Ljava/lang/CharSequence;II)[B
    .registers 11
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_30

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lkotlin/io/encoding/Base64;->checkSourceBounds$kotlin_stdlib(III)V

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "substring(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lkotlin/text/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "getBytes(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_34

    :cond_30
    invoke-virtual {p0, p1, p2, p3}, Lkotlin/io/encoding/Base64;->charsToBytesImpl$kotlin_stdlib(Ljava/lang/CharSequence;II)[B

    move-result-object v0

    :goto_34
    move-object v2, v0

    .line 355
    .local v2, "byteSource":[B
    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lkotlin/io/encoding/Base64;->decode$default(Lkotlin/io/encoding/Base64;[BIIILjava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method public final decode([BII)[B
    .registers 11
    .param p1, "source"    # [B
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    array-length v0, p1

    invoke-virtual {p0, v0, p2, p3}, Lkotlin/io/encoding/Base64;->checkSourceBounds$kotlin_stdlib(III)V

    .line 286
    invoke-virtual {p0, p1, p2, p3}, Lkotlin/io/encoding/Base64;->decodeSize$kotlin_stdlib([BII)I

    move-result v0

    .line 287
    .local v0, "decodeSize":I
    new-array v3, v0, [B

    .line 289
    .local v3, "destination":[B
    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    move v6, p3

    .end local p1    # "source":[B
    .end local p2    # "startIndex":I
    .end local p3    # "endIndex":I
    .local v2, "source":[B
    .local v5, "startIndex":I
    .local v6, "endIndex":I
    invoke-direct/range {v1 .. v6}, Lkotlin/io/encoding/Base64;->decodeImpl([B[BIII)I

    move-result p1

    .line 291
    .local p1, "bytesWritten":I
    array-length p2, v3

    if-ne p1, p2, :cond_1d

    const/4 p2, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p2, 0x0

    :goto_1e
    if-eqz p2, :cond_21

    .line 293
    return-object v3

    .line 291
    :cond_21
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Check failed."

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final decodeIntoByteArray(Ljava/lang/CharSequence;[BIII)I
    .registers 15
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "destination"    # [B
    .param p3, "destinationOffset"    # I
    .param p4, "startIndex"    # I
    .param p5, "endIndex"    # I

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_35

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0, p4, p5}, Lkotlin/io/encoding/Base64;->checkSourceBounds$kotlin_stdlib(III)V

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p4, p5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "substring(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lkotlin/text/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "getBytes(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_39

    :cond_35
    invoke-virtual {p0, p1, p4, p5}, Lkotlin/io/encoding/Base64;->charsToBytesImpl$kotlin_stdlib(Ljava/lang/CharSequence;II)[B

    move-result-object v0

    :goto_39
    move-object v2, v0

    .line 390
    .local v2, "byteSource":[B
    const/16 v7, 0x18

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    .end local p2    # "destination":[B
    .end local p3    # "destinationOffset":I
    .local v3, "destination":[B
    .local v4, "destinationOffset":I
    invoke-static/range {v1 .. v8}, Lkotlin/io/encoding/Base64;->decodeIntoByteArray$default(Lkotlin/io/encoding/Base64;[B[BIIIILjava/lang/Object;)I

    move-result p2

    return p2
.end method

.method public final decodeIntoByteArray([B[BIII)I
    .registers 8
    .param p1, "source"    # [B
    .param p2, "destination"    # [B
    .param p3, "destinationOffset"    # I
    .param p4, "startIndex"    # I
    .param p5, "endIndex"    # I

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    array-length v0, p1

    invoke-virtual {p0, v0, p4, p5}, Lkotlin/io/encoding/Base64;->checkSourceBounds$kotlin_stdlib(III)V

    .line 328
    array-length v0, p2

    invoke-virtual {p0, p1, p4, p5}, Lkotlin/io/encoding/Base64;->decodeSize$kotlin_stdlib([BII)I

    move-result v1

    invoke-direct {p0, v0, p3, v1}, Lkotlin/io/encoding/Base64;->checkDestinationBounds(III)V

    .line 330
    invoke-direct/range {p0 .. p5}, Lkotlin/io/encoding/Base64;->decodeImpl([B[BIII)I

    move-result v0

    return v0
.end method

.method public final decodeSize$kotlin_stdlib([BII)I
    .registers 9
    .param p1, "source"    # [B
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 571
    sub-int v0, p3, p2

    .line 572
    .local v0, "symbols":I
    if-nez v0, :cond_b

    .line 573
    const/4 v1, 0x0

    return v1

    .line 575
    :cond_b
    const/4 v1, 0x1

    if-eq v0, v1, :cond_48

    .line 578
    iget-boolean v1, p0, Lkotlin/io/encoding/Base64;->isMimeScheme:Z

    if-eqz v1, :cond_2d

    .line 579
    move v1, p2

    .local v1, "index":I
    :goto_13
    if-ge v1, p3, :cond_3f

    .line 580
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    .line 581
    .local v2, "symbol":I
    invoke-static {}, Lkotlin/io/encoding/Base64Kt;->access$getBase64DecodeMap$p()[I

    move-result-object v3

    aget v3, v3, v2

    .line 582
    .local v3, "symbolBits":I
    if-gez v3, :cond_2a

    .line 583
    const/4 v4, -0x2

    if-ne v3, v4, :cond_28

    .line 584
    sub-int v4, p3, v1

    sub-int/2addr v0, v4

    .line 585
    goto :goto_3f

    .line 587
    :cond_28
    add-int/lit8 v0, v0, -0x1

    .line 579
    .end local v2    # "symbol":I
    .end local v3    # "symbolBits":I
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 590
    .end local v1    # "index":I
    :cond_2d
    add-int/lit8 v1, p3, -0x1

    aget-byte v1, p1, v1

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_3f

    .line 591
    add-int/lit8 v0, v0, -0x1

    .line 592
    add-int/lit8 v1, p3, -0x2

    aget-byte v1, p1, v1

    if-ne v1, v2, :cond_3f

    .line 593
    add-int/lit8 v0, v0, -0x1

    .line 596
    :cond_3f
    :goto_3f
    int-to-long v1, v0

    const-wide/16 v3, 0x6

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x8

    div-long/2addr v1, v3

    long-to-int v1, v1

    return v1

    .line 576
    :cond_48
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Input should have at least 2 symbols for Base64 decoding, startIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", endIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final encode([BII)Ljava/lang/String;
    .registers 7
    .param p1, "source"    # [B
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0, p1, p2, p3}, Lkotlin/io/encoding/Base64;->encodeToByteArrayImpl$kotlin_stdlib([BII)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lkotlin/text/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public final encodeIntoByteArray([B[BIII)I
    .registers 7
    .param p1, "source"    # [B
    .param p2, "destination"    # [B
    .param p3, "destinationOffset"    # I
    .param p4, "startIndex"    # I
    .param p5, "endIndex"    # I

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    invoke-virtual/range {p0 .. p5}, Lkotlin/io/encoding/Base64;->encodeIntoByteArrayImpl$kotlin_stdlib([B[BIII)I

    move-result v0

    return v0
.end method

.method public final encodeIntoByteArrayImpl$kotlin_stdlib([B[BIII)I
    .registers 26
    .param p1, "source"    # [B
    .param p2, "destination"    # [B
    .param p3, "destinationOffset"    # I
    .param p4, "startIndex"    # I
    .param p5, "endIndex"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    const-string v6, "source"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "destination"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    array-length v6, v1

    invoke-virtual {v0, v6, v4, v5}, Lkotlin/io/encoding/Base64;->checkSourceBounds$kotlin_stdlib(III)V

    .line 412
    array-length v6, v2

    sub-int v7, v5, v4

    invoke-virtual {v0, v7}, Lkotlin/io/encoding/Base64;->encodeSize$kotlin_stdlib(I)I

    move-result v7

    invoke-direct {v0, v6, v3, v7}, Lkotlin/io/encoding/Base64;->checkDestinationBounds(III)V

    .line 414
    iget-boolean v6, v0, Lkotlin/io/encoding/Base64;->isUrlSafe:Z

    if-eqz v6, :cond_2d

    invoke-static {}, Lkotlin/io/encoding/Base64Kt;->access$getBase64UrlEncodeMap$p()[B

    move-result-object v6

    goto :goto_31

    :cond_2d
    invoke-static {}, Lkotlin/io/encoding/Base64Kt;->access$getBase64EncodeMap$p()[B

    move-result-object v6

    .line 415
    .local v6, "encodeMap":[B
    :goto_31
    move/from16 v7, p4

    .line 416
    .local v7, "sourceIndex":I
    move/from16 v8, p3

    .line 417
    .local v8, "destinationIndex":I
    iget-boolean v9, v0, Lkotlin/io/encoding/Base64;->isMimeScheme:Z

    if-eqz v9, :cond_3c

    iget v9, v0, Lkotlin/io/encoding/Base64;->mimeGroupsPerLine:I

    goto :goto_3f

    :cond_3c
    const v9, 0x7fffffff

    .line 419
    .local v9, "groupsPerLine":I
    :cond_3f
    :goto_3f
    add-int/lit8 v10, v7, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ge v10, v5, :cond_a8

    .line 420
    sub-int v10, v5, v7

    div-int/lit8 v10, v10, 0x3

    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 421
    .local v10, "groups":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4e
    if-ge v13, v10, :cond_93

    .line 422
    add-int/lit8 v14, v7, 0x1

    .end local v7    # "sourceIndex":I
    .local v14, "sourceIndex":I
    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    .line 423
    .local v7, "byte1":I
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "sourceIndex":I
    .local v15, "sourceIndex":I
    aget-byte v14, v1, v14

    and-int/lit16 v14, v14, 0xff

    .line 424
    .local v14, "byte2":I
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "sourceIndex":I
    .local v16, "sourceIndex":I
    aget-byte v15, v1, v15

    and-int/lit16 v15, v15, 0xff

    .line 425
    .local v15, "byte3":I
    shl-int/lit8 v17, v7, 0x10

    shl-int/lit8 v18, v14, 0x8

    or-int v17, v17, v18

    or-int v17, v17, v15

    .line 426
    .local v17, "bits":I
    add-int/lit8 v18, v8, 0x1

    .end local v8    # "destinationIndex":I
    .local v18, "destinationIndex":I
    ushr-int/lit8 v19, v17, 0x12

    aget-byte v19, v6, v19

    aput-byte v19, v2, v8

    .line 427
    add-int/lit8 v8, v18, 0x1

    .end local v18    # "destinationIndex":I
    .restart local v8    # "destinationIndex":I
    ushr-int/lit8 v19, v17, 0xc

    and-int/lit8 v19, v19, 0x3f

    aget-byte v19, v6, v19

    aput-byte v19, v2, v18

    .line 428
    add-int/lit8 v18, v8, 0x1

    .end local v8    # "destinationIndex":I
    .restart local v18    # "destinationIndex":I
    ushr-int/lit8 v19, v17, 0x6

    and-int/lit8 v19, v19, 0x3f

    aget-byte v19, v6, v19

    aput-byte v19, v2, v8

    .line 429
    add-int/lit8 v8, v18, 0x1

    .end local v18    # "destinationIndex":I
    .restart local v8    # "destinationIndex":I
    and-int/lit8 v19, v17, 0x3f

    aget-byte v19, v6, v19

    aput-byte v19, v2, v18

    .line 421
    .end local v7    # "byte1":I
    .end local v14    # "byte2":I
    .end local v15    # "byte3":I
    .end local v17    # "bits":I
    add-int/lit8 v13, v13, 0x1

    move/from16 v7, v16

    goto :goto_4e

    .line 431
    .end local v13    # "i":I
    .end local v16    # "sourceIndex":I
    .local v7, "sourceIndex":I
    :cond_93
    if-ne v10, v9, :cond_3f

    if-eq v7, v5, :cond_3f

    .line 432
    add-int/lit8 v13, v8, 0x1

    .end local v8    # "destinationIndex":I
    .local v13, "destinationIndex":I
    sget-object v14, Lkotlin/io/encoding/Base64;->mimeLineSeparatorSymbols:[B

    aget-byte v11, v14, v11

    aput-byte v11, v2, v8

    .line 433
    add-int/lit8 v8, v13, 0x1

    .end local v13    # "destinationIndex":I
    .restart local v8    # "destinationIndex":I
    sget-object v11, Lkotlin/io/encoding/Base64;->mimeLineSeparatorSymbols:[B

    aget-byte v11, v11, v12

    aput-byte v11, v2, v13

    .end local v10    # "groups":I
    goto :goto_3f

    .line 437
    :cond_a8
    sub-int v10, v5, v7

    const/16 v13, 0x3d

    packed-switch v10, :pswitch_data_126

    goto :goto_115

    .line 449
    :pswitch_b0
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "sourceIndex":I
    .local v10, "sourceIndex":I
    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    .line 450
    .local v7, "byte1":I
    add-int/lit8 v14, v10, 0x1

    .end local v10    # "sourceIndex":I
    .local v14, "sourceIndex":I
    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    .line 451
    .local v10, "byte2":I
    shl-int/lit8 v15, v7, 0xa

    shl-int/lit8 v16, v10, 0x2

    or-int v15, v15, v16

    .line 452
    .local v15, "bits":I
    add-int/lit8 v16, v8, 0x1

    .end local v8    # "destinationIndex":I
    .local v16, "destinationIndex":I
    ushr-int/lit8 v17, v15, 0xc

    aget-byte v17, v6, v17

    aput-byte v17, v2, v8

    .line 453
    add-int/lit8 v8, v16, 0x1

    .end local v16    # "destinationIndex":I
    .restart local v8    # "destinationIndex":I
    ushr-int/lit8 v17, v15, 0x6

    and-int/lit8 v17, v17, 0x3f

    aget-byte v17, v6, v17

    aput-byte v17, v2, v16

    .line 454
    add-int/lit8 v16, v8, 0x1

    .end local v8    # "destinationIndex":I
    .restart local v16    # "destinationIndex":I
    and-int/lit8 v17, v15, 0x3f

    aget-byte v17, v6, v17

    aput-byte v17, v2, v8

    .line 455
    invoke-direct {v0}, Lkotlin/io/encoding/Base64;->shouldPadOnEncode()Z

    move-result v8

    if-eqz v8, :cond_e8

    .line 456
    add-int/lit8 v8, v16, 0x1

    .end local v16    # "destinationIndex":I
    .restart local v8    # "destinationIndex":I
    aput-byte v13, v2, v16

    move v7, v14

    goto :goto_115

    .line 455
    .end local v8    # "destinationIndex":I
    .restart local v16    # "destinationIndex":I
    :cond_e8
    move v7, v14

    move/from16 v8, v16

    goto :goto_115

    .line 439
    .end local v10    # "byte2":I
    .end local v14    # "sourceIndex":I
    .end local v15    # "bits":I
    .end local v16    # "destinationIndex":I
    .local v7, "sourceIndex":I
    .restart local v8    # "destinationIndex":I
    :pswitch_ec
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "sourceIndex":I
    .local v10, "sourceIndex":I
    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    .line 440
    .local v7, "byte1":I
    shl-int/lit8 v14, v7, 0x4

    .line 441
    .local v14, "bits":I
    add-int/lit8 v15, v8, 0x1

    .end local v8    # "destinationIndex":I
    .local v15, "destinationIndex":I
    ushr-int/lit8 v16, v14, 0x6

    aget-byte v16, v6, v16

    aput-byte v16, v2, v8

    .line 442
    add-int/lit8 v8, v15, 0x1

    .end local v15    # "destinationIndex":I
    .restart local v8    # "destinationIndex":I
    and-int/lit8 v16, v14, 0x3f

    aget-byte v16, v6, v16

    aput-byte v16, v2, v15

    .line 443
    invoke-direct {v0}, Lkotlin/io/encoding/Base64;->shouldPadOnEncode()Z

    move-result v15

    if-eqz v15, :cond_114

    .line 444
    add-int/lit8 v15, v8, 0x1

    .end local v8    # "destinationIndex":I
    .restart local v15    # "destinationIndex":I
    aput-byte v13, v2, v8

    .line 445
    add-int/lit8 v8, v15, 0x1

    .end local v15    # "destinationIndex":I
    .restart local v8    # "destinationIndex":I
    aput-byte v13, v2, v15

    move v7, v10

    .end local v7    # "byte1":I
    .end local v14    # "bits":I
    goto :goto_115

    .line 443
    .restart local v7    # "byte1":I
    .restart local v14    # "bits":I
    :cond_114
    move v7, v10

    .line 461
    .end local v10    # "sourceIndex":I
    .end local v14    # "bits":I
    .local v7, "sourceIndex":I
    :goto_115
    if-ne v7, v5, :cond_118

    move v11, v12

    :cond_118
    if-eqz v11, :cond_11d

    .line 463
    sub-int v10, v8, v3

    return v10

    .line 461
    :cond_11d
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Check failed."

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    nop

    :pswitch_data_126
    .packed-switch 0x1
        :pswitch_ec
        :pswitch_b0
    .end packed-switch
.end method

.method public final encodeSize$kotlin_stdlib(I)I
    .registers 8
    .param p1, "sourceSize"    # I

    .line 469
    div-int/lit8 v0, p1, 0x3

    .line 470
    .local v0, "groups":I
    rem-int/lit8 v1, p1, 0x3

    .line 471
    .local v1, "trailingBytes":I
    mul-int/lit8 v2, v0, 0x4

    .line 472
    .local v2, "size":I
    if-eqz v1, :cond_13

    .line 473
    invoke-direct {p0}, Lkotlin/io/encoding/Base64;->shouldPadOnEncode()Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v3, 0x4

    goto :goto_12

    :cond_10
    add-int/lit8 v3, v1, 0x1

    :goto_12
    add-int/2addr v2, v3

    .line 475
    :cond_13
    const-string v3, "Input is too big"

    if-ltz v2, :cond_2c

    .line 478
    iget-boolean v4, p0, Lkotlin/io/encoding/Base64;->isMimeScheme:Z

    if-eqz v4, :cond_23

    .line 479
    add-int/lit8 v4, v2, -0x1

    iget v5, p0, Lkotlin/io/encoding/Base64;->mimeLineLength:I

    div-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 481
    :cond_23
    if-ltz v2, :cond_26

    .line 484
    return v2

    .line 482
    :cond_26
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 476
    :cond_2c
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public final encodeToAppendable([BLjava/lang/Appendable;II)Ljava/lang/Appendable;
    .registers 8
    .param p1, "source"    # [B
    .param p2, "destination"    # Ljava/lang/Appendable;
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">([BTA;II)TA;"
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0, p1, p3, p4}, Lkotlin/io/encoding/Base64;->encodeToByteArrayImpl$kotlin_stdlib([BII)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lkotlin/text/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 259
    .local v1, "stringResult":Ljava/lang/String;
    move-object v0, v1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 260
    return-object p2
.end method

.method public final encodeToByteArray([BII)[B
    .registers 5
    .param p1, "source"    # [B
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0, p1, p2, p3}, Lkotlin/io/encoding/Base64;->encodeToByteArrayImpl$kotlin_stdlib([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public final encodeToByteArrayImpl$kotlin_stdlib([BII)[B
    .registers 11
    .param p1, "source"    # [B
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 396
    array-length v0, p1

    invoke-virtual {p0, v0, p2, p3}, Lkotlin/io/encoding/Base64;->checkSourceBounds$kotlin_stdlib(III)V

    .line 398
    sub-int v0, p3, p2

    invoke-virtual {p0, v0}, Lkotlin/io/encoding/Base64;->encodeSize$kotlin_stdlib(I)I

    move-result v0

    .line 399
    .local v0, "encodeSize":I
    new-array v3, v0, [B

    .line 400
    .local v3, "destination":[B
    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    move v6, p3

    .end local p1    # "source":[B
    .end local p2    # "startIndex":I
    .end local p3    # "endIndex":I
    .local v2, "source":[B
    .local v5, "startIndex":I
    .local v6, "endIndex":I
    invoke-virtual/range {v1 .. v6}, Lkotlin/io/encoding/Base64;->encodeIntoByteArrayImpl$kotlin_stdlib([B[BIII)I

    .line 401
    return-object v3
.end method

.method public final getMimeLineLength$kotlin_stdlib()I
    .registers 2

    .line 60
    iget v0, p0, Lkotlin/io/encoding/Base64;->mimeLineLength:I

    return v0
.end method

.method public final getPaddingOption$kotlin_stdlib()Lkotlin/io/encoding/Base64$PaddingOption;
    .registers 2

    .line 61
    iget-object v0, p0, Lkotlin/io/encoding/Base64;->paddingOption:Lkotlin/io/encoding/Base64$PaddingOption;

    return-object v0
.end method

.method public final isMimeScheme$kotlin_stdlib()Z
    .registers 2

    .line 59
    iget-boolean v0, p0, Lkotlin/io/encoding/Base64;->isMimeScheme:Z

    return v0
.end method

.method public final isUrlSafe$kotlin_stdlib()Z
    .registers 2

    .line 58
    iget-boolean v0, p0, Lkotlin/io/encoding/Base64;->isUrlSafe:Z

    return v0
.end method

.method public final withPadding(Lkotlin/io/encoding/Base64$PaddingOption;)Lkotlin/io/encoding/Base64;
    .registers 6
    .param p1, "option"    # Lkotlin/io/encoding/Base64$PaddingOption;

    const-string v0, "option"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lkotlin/io/encoding/Base64;->paddingOption:Lkotlin/io/encoding/Base64$PaddingOption;

    if-ne v0, p1, :cond_b

    move-object v0, p0

    goto :goto_16

    .line 152
    :cond_b
    new-instance v0, Lkotlin/io/encoding/Base64;

    iget-boolean v1, p0, Lkotlin/io/encoding/Base64;->isUrlSafe:Z

    iget-boolean v2, p0, Lkotlin/io/encoding/Base64;->isMimeScheme:Z

    iget v3, p0, Lkotlin/io/encoding/Base64;->mimeLineLength:I

    invoke-direct {v0, v1, v2, v3, p1}, Lkotlin/io/encoding/Base64;-><init>(ZZILkotlin/io/encoding/Base64$PaddingOption;)V

    .line 151
    :goto_16
    return-object v0
.end method

###### Class kotlin.io.encoding.Base64.Companion (kotlin.io.encoding.Base64$Default)
.class public final Lkotlin/io/encoding/Base64$Default;
.super Lkotlin/io/encoding/Base64;
.source "Base64.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/io/encoding/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Default"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0005\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\n\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u00020\u000eX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0014\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0013R\u0011\u0010\u0016\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0013\u00a8\u0006\u0018"
    }
    d2 = {
        "Lkotlin/io/encoding/Base64$Default;",
        "Lkotlin/io/encoding/Base64;",
        "<init>",
        "()V",
        "bitsPerByte",
        "",
        "bitsPerSymbol",
        "bytesPerGroup",
        "symbolsPerGroup",
        "padSymbol",
        "",
        "lineLengthMime",
        "lineLengthPem",
        "mimeLineSeparatorSymbols",
        "",
        "getMimeLineSeparatorSymbols$kotlin_stdlib",
        "()[B",
        "UrlSafe",
        "getUrlSafe",
        "()Lkotlin/io/encoding/Base64;",
        "Mime",
        "getMime",
        "Pem",
        "getPem",
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
    .registers 7

    .line 706
    sget-object v4, Lkotlin/io/encoding/Base64$PaddingOption;->PRESENT:Lkotlin/io/encoding/Base64$PaddingOption;

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/io/encoding/Base64;-><init>(ZZILkotlin/io/encoding/Base64$PaddingOption;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/io/encoding/Base64$Default;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMime()Lkotlin/io/encoding/Base64;
    .registers 2

    .line 752
    invoke-static {}, Lkotlin/io/encoding/Base64;->access$getMime$cp()Lkotlin/io/encoding/Base64;

    move-result-object v0

    return-object v0
.end method

.method public final getMimeLineSeparatorSymbols$kotlin_stdlib()[B
    .registers 2

    .line 718
    invoke-static {}, Lkotlin/io/encoding/Base64;->access$getMimeLineSeparatorSymbols$cp()[B

    move-result-object v0

    return-object v0
.end method

.method public final getPem()Lkotlin/io/encoding/Base64;
    .registers 2

    .line 769
    invoke-static {}, Lkotlin/io/encoding/Base64;->access$getPem$cp()Lkotlin/io/encoding/Base64;

    move-result-object v0

    return-object v0
.end method

.method public final getUrlSafe()Lkotlin/io/encoding/Base64;
    .registers 2

    .line 735
    invoke-static {}, Lkotlin/io/encoding/Base64;->access$getUrlSafe$cp()Lkotlin/io/encoding/Base64;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.io.encoding.Base64.PaddingOption (kotlin.io.encoding.Base64$PaddingOption)
.class public final enum Lkotlin/io/encoding/Base64$PaddingOption;
.super Ljava/lang/Enum;
.source "Base64.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/io/encoding/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PaddingOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/io/encoding/Base64$PaddingOption;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0087\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lkotlin/io/encoding/Base64$PaddingOption;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "PRESENT",
        "ABSENT",
        "PRESENT_OPTIONAL",
        "ABSENT_OPTIONAL",
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lkotlin/io/encoding/Base64$PaddingOption;

.field public static final enum ABSENT:Lkotlin/io/encoding/Base64$PaddingOption;

.field public static final enum ABSENT_OPTIONAL:Lkotlin/io/encoding/Base64$PaddingOption;

.field public static final enum PRESENT:Lkotlin/io/encoding/Base64$PaddingOption;

.field public static final enum PRESENT_OPTIONAL:Lkotlin/io/encoding/Base64$PaddingOption;


# direct methods
.method private static final synthetic $values()[Lkotlin/io/encoding/Base64$PaddingOption;
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/io/encoding/Base64$PaddingOption;

    sget-object v1, Lkotlin/io/encoding/Base64$PaddingOption;->PRESENT:Lkotlin/io/encoding/Base64$PaddingOption;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/io/encoding/Base64$PaddingOption;->ABSENT:Lkotlin/io/encoding/Base64$PaddingOption;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/io/encoding/Base64$PaddingOption;->PRESENT_OPTIONAL:Lkotlin/io/encoding/Base64$PaddingOption;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/io/encoding/Base64$PaddingOption;->ABSENT_OPTIONAL:Lkotlin/io/encoding/Base64$PaddingOption;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 102
    new-instance v0, Lkotlin/io/encoding/Base64$PaddingOption;

    const-string v1, "PRESENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/io/encoding/Base64$PaddingOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/io/encoding/Base64$PaddingOption;->PRESENT:Lkotlin/io/encoding/Base64$PaddingOption;

    .line 112
    new-instance v0, Lkotlin/io/encoding/Base64$PaddingOption;

    const-string v1, "ABSENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlin/io/encoding/Base64$PaddingOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/io/encoding/Base64$PaddingOption;->ABSENT:Lkotlin/io/encoding/Base64$PaddingOption;

    .line 124
    new-instance v0, Lkotlin/io/encoding/Base64$PaddingOption;

    const-string v1, "PRESENT_OPTIONAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lkotlin/io/encoding/Base64$PaddingOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/io/encoding/Base64$PaddingOption;->PRESENT_OPTIONAL:Lkotlin/io/encoding/Base64$PaddingOption;

    .line 136
    new-instance v0, Lkotlin/io/encoding/Base64$PaddingOption;

    const-string v1, "ABSENT_OPTIONAL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lkotlin/io/encoding/Base64$PaddingOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/io/encoding/Base64$PaddingOption;->ABSENT_OPTIONAL:Lkotlin/io/encoding/Base64$PaddingOption;

    invoke-static {}, Lkotlin/io/encoding/Base64$PaddingOption;->$values()[Lkotlin/io/encoding/Base64$PaddingOption;

    move-result-object v0

    sput-object v0, Lkotlin/io/encoding/Base64$PaddingOption;->$VALUES:[Lkotlin/io/encoding/Base64$PaddingOption;

    sget-object v0, Lkotlin/io/encoding/Base64$PaddingOption;->$VALUES:[Lkotlin/io/encoding/Base64$PaddingOption;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lkotlin/io/encoding/Base64$PaddingOption;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lkotlin/io/encoding/Base64$PaddingOption;",
            ">;"
        }
    .end annotation

    sget-object v0, Lkotlin/io/encoding/Base64$PaddingOption;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/io/encoding/Base64$PaddingOption;
    .registers 2

    const-class v0, Lkotlin/io/encoding/Base64$PaddingOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lkotlin/io/encoding/Base64$PaddingOption;

    return-object v0
.end method

.method public static values()[Lkotlin/io/encoding/Base64$PaddingOption;
    .registers 1

    sget-object v0, Lkotlin/io/encoding/Base64$PaddingOption;->$VALUES:[Lkotlin/io/encoding/Base64$PaddingOption;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/io/encoding/Base64$PaddingOption;

    return-object v0
.end method
