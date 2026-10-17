###### Class kotlin.io.ByteStreamsKt (kotlin.io.ByteStreamsKt)
.class public final Lkotlin/io/ByteStreamsKt;
.super Ljava/lang/Object;
.source "IOStreams.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0086\u0002\u001a\u0017\u0010\u0003\u001a\u00020\u0004*\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u0087\u0008\u001a\r\u0010\u0008\u001a\u00020\u0004*\u00020\tH\u0087\u0008\u001a\u001d\u0010\u0008\u001a\u00020\u0004*\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH\u0087\u0008\u001a\u0017\u0010\r\u001a\u00020\u0002*\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000bH\u0087\u0008\u001a\u0017\u0010\u0010\u001a\u00020\u0011*\u00020\u000e2\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u0087\u0008\u001a\u0017\u0010\u0012\u001a\u00020\u0013*\u00020\u000e2\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u0087\u0008\u001a\u0017\u0010\r\u001a\u00020\u0014*\u00020\u00152\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000bH\u0087\u0008\u001a\u0017\u0010\u0016\u001a\u00020\u0017*\u00020\u00152\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u0087\u0008\u001a\u0017\u0010\u0018\u001a\u00020\u0019*\u00020\u00152\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u0087\u0008\u001a\u001c\u0010\u001a\u001a\u00020\u001b*\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000b\u001a\u0016\u0010\u001d\u001a\u00020\t*\u00020\u000e2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u000bH\u0007\u001a\u000c\u0010\u001d\u001a\u00020\t*\u00020\u000eH\u0007\u00a8\u0006\u001f"
    }
    d2 = {
        "iterator",
        "Lkotlin/collections/ByteIterator;",
        "Ljava/io/BufferedInputStream;",
        "byteInputStream",
        "Ljava/io/ByteArrayInputStream;",
        "",
        "charset",
        "Ljava/nio/charset/Charset;",
        "inputStream",
        "",
        "offset",
        "",
        "length",
        "buffered",
        "Ljava/io/InputStream;",
        "bufferSize",
        "reader",
        "Ljava/io/InputStreamReader;",
        "bufferedReader",
        "Ljava/io/BufferedReader;",
        "Ljava/io/BufferedOutputStream;",
        "Ljava/io/OutputStream;",
        "writer",
        "Ljava/io/OutputStreamWriter;",
        "bufferedWriter",
        "Ljava/io/BufferedWriter;",
        "copyTo",
        "",
        "out",
        "readBytes",
        "estimatedSize",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private static final buffered(Ljava/io/InputStream;I)Ljava/io/BufferedInputStream;
    .registers 3
    .param p0, "$this$buffered"    # Ljava/io/InputStream;
    .param p1, "bufferSize"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    instance-of v0, p0, Ljava/io/BufferedInputStream;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Ljava/io/BufferedInputStream;

    goto :goto_12

    :cond_d
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    :goto_12
    return-object v0
.end method

.method private static final buffered(Ljava/io/OutputStream;I)Ljava/io/BufferedOutputStream;
    .registers 3
    .param p0, "$this$buffered"    # Ljava/io/OutputStream;
    .param p1, "bufferSize"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    instance-of v0, p0, Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Ljava/io/BufferedOutputStream;

    goto :goto_12

    :cond_d
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    :goto_12
    return-object v0
.end method

.method static synthetic buffered$default(Ljava/io/InputStream;IILjava/lang/Object;)Ljava/io/BufferedInputStream;
    .registers 4
    .param p0, "$this$buffered_u24default"    # Ljava/io/InputStream;
    .param p1, "bufferSize"    # I

    .line 70
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 71
    const/16 p1, 0x2000

    .line 70
    :cond_6
    const-string p2, "<this>"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    instance-of p2, p0, Ljava/io/BufferedInputStream;

    if-eqz p2, :cond_13

    move-object p2, p0

    check-cast p2, Ljava/io/BufferedInputStream;

    goto :goto_18

    :cond_13
    new-instance p2, Ljava/io/BufferedInputStream;

    invoke-direct {p2, p0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    :goto_18
    return-object p2
.end method

.method static synthetic buffered$default(Ljava/io/OutputStream;IILjava/lang/Object;)Ljava/io/BufferedOutputStream;
    .registers 4
    .param p0, "$this$buffered_u24default"    # Ljava/io/OutputStream;
    .param p1, "bufferSize"    # I

    .line 86
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 87
    const/16 p1, 0x2000

    .line 86
    :cond_6
    const-string p2, "<this>"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    instance-of p2, p0, Ljava/io/BufferedOutputStream;

    if-eqz p2, :cond_13

    move-object p2, p0

    check-cast p2, Ljava/io/BufferedOutputStream;

    goto :goto_18

    :cond_13
    new-instance p2, Ljava/io/BufferedOutputStream;

    invoke-direct {p2, p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    :goto_18
    return-object p2
.end method

.method private static final bufferedReader(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;
    .registers 5
    .param p0, "$this$bufferedReader"    # Ljava/io/InputStream;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/InputStreamReader;

    .line 80
    invoke-direct {v0, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v0, Ljava/io/Reader;

    instance-of v1, v0, Ljava/io/BufferedReader;

    if-eqz v1, :cond_18

    check-cast v0, Ljava/io/BufferedReader;

    goto :goto_20

    :cond_18
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v2, 0x2000

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v0, v1

    :goto_20
    return-object v0
.end method

.method static synthetic bufferedReader$default(Ljava/io/InputStream;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/io/BufferedReader;
    .registers 5
    .param p0, "$this$bufferedReader_u24default"    # Ljava/io/InputStream;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 79
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 80
    sget-object p1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 79
    :cond_6
    const-string p2, "<this>"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "charset"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/io/InputStreamReader;

    .line 80
    invoke-direct {p2, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast p2, Ljava/io/Reader;

    instance-of p3, p2, Ljava/io/BufferedReader;

    if-eqz p3, :cond_1e

    check-cast p2, Ljava/io/BufferedReader;

    goto :goto_26

    :cond_1e
    new-instance p3, Ljava/io/BufferedReader;

    const/16 v0, 0x2000

    invoke-direct {p3, p2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object p2, p3

    :goto_26
    return-object p2
.end method

.method private static final bufferedWriter(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Ljava/io/BufferedWriter;
    .registers 5
    .param p0, "$this$bufferedWriter"    # Ljava/io/OutputStream;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/OutputStreamWriter;

    .line 96
    invoke-direct {v0, p0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    check-cast v0, Ljava/io/Writer;

    instance-of v1, v0, Ljava/io/BufferedWriter;

    if-eqz v1, :cond_18

    check-cast v0, Ljava/io/BufferedWriter;

    goto :goto_20

    :cond_18
    new-instance v1, Ljava/io/BufferedWriter;

    const/16 v2, 0x2000

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    move-object v0, v1

    :goto_20
    return-object v0
.end method

.method static synthetic bufferedWriter$default(Ljava/io/OutputStream;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/io/BufferedWriter;
    .registers 5
    .param p0, "$this$bufferedWriter_u24default"    # Ljava/io/OutputStream;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 95
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 96
    sget-object p1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 95
    :cond_6
    const-string p2, "<this>"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "charset"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/io/OutputStreamWriter;

    .line 96
    invoke-direct {p2, p0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    check-cast p2, Ljava/io/Writer;

    instance-of p3, p2, Ljava/io/BufferedWriter;

    if-eqz p3, :cond_1e

    check-cast p2, Ljava/io/BufferedWriter;

    goto :goto_26

    :cond_1e
    new-instance p3, Ljava/io/BufferedWriter;

    const/16 v0, 0x2000

    invoke-direct {p3, p2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    move-object p2, p3

    :goto_26
    return-object p2
.end method

.method private static final byteInputStream(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/io/ByteArrayInputStream;
    .registers 5
    .param p0, "$this$byteInputStream"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v2, "getBytes(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method static synthetic byteInputStream$default(Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/io/ByteArrayInputStream;
    .registers 5
    .param p0, "$this$byteInputStream_u24default"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 49
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 50
    sget-object p1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 49
    :cond_6
    const-string p2, "<this>"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "charset"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    const-string v0, "getBytes(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p2
.end method

.method public static final copyTo(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    .registers 9
    .param p0, "$this$copyTo"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "bufferSize"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    const-wide/16 v0, 0x0

    .line 105
    .local v0, "bytesCopied":J
    new-array v2, p2, [B

    .line 106
    .local v2, "buffer":[B
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 107
    .local v3, "bytes":I
    :goto_12
    if-ltz v3, :cond_1f

    .line 108
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 109
    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 110
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    goto :goto_12

    .line 112
    :cond_1f
    return-wide v0
.end method

.method public static synthetic copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    .registers 5

    .line 103
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_6

    const/16 p2, 0x2000

    :cond_6
    invoke-static {p0, p1, p2}, Lkotlin/io/ByteStreamsKt;->copyTo(Ljava/io/InputStream;Ljava/io/OutputStream;I)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final inputStream([B)Ljava/io/ByteArrayInputStream;
    .registers 2
    .param p0, "$this$inputStream"    # [B

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method private static final inputStream([BII)Ljava/io/ByteArrayInputStream;
    .registers 4
    .param p0, "$this$inputStream"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0, p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public static final iterator(Ljava/io/BufferedInputStream;)Lkotlin/collections/ByteIterator;
    .registers 2
    .param p0, "$this$iterator"    # Ljava/io/BufferedInputStream;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lkotlin/io/ByteStreamsKt$iterator$1;

    invoke-direct {v0, p0}, Lkotlin/io/ByteStreamsKt$iterator$1;-><init>(Ljava/io/BufferedInputStream;)V

    check-cast v0, Lkotlin/collections/ByteIterator;

    .line 45
    return-object v0
.end method

.method public static final readBytes(Ljava/io/InputStream;)[B
    .registers 6
    .param p0, "$this$readBytes"    # Ljava/io/InputStream;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x2000

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 136
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    move-object v1, v0

    check-cast v1, Ljava/io/OutputStream;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p0, v1, v4, v2, v3}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J

    .line 137
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string/jumbo v2, "toByteArray(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final readBytes(Ljava/io/InputStream;I)[B
    .registers 7
    .param p0, "$this$readBytes"    # Ljava/io/InputStream;
    .param p1, "estimatedSize"    # I
    .annotation runtime Lkotlin/Deprecated;
        message = "Use readBytes() overload without estimatedSize parameter"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "readBytes()"
            imports = {}
        .end subannotation
    .end annotation

    .annotation runtime Lkotlin/DeprecatedSinceKotlin;
        errorSince = "1.5"
        warningSince = "1.3"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 124
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    move-object v1, v0

    check-cast v1, Ljava/io/OutputStream;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p0, v1, v4, v2, v3}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J

    .line 125
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string/jumbo v2, "toByteArray(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public static synthetic readBytes$default(Ljava/io/InputStream;IILjava/lang/Object;)[B
    .registers 4

    .line 120
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 122
    const/16 p1, 0x2000

    .line 120
    :cond_6
    invoke-static {p0, p1}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object p0

    return-object p0
.end method

.method private static final reader(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/io/InputStreamReader;
    .registers 3
    .param p0, "$this$reader"    # Ljava/io/InputStream;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method static synthetic reader$default(Ljava/io/InputStream;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/io/InputStreamReader;
    .registers 4
    .param p0, "$this$reader_u24default"    # Ljava/io/InputStream;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 75
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 76
    sget-object p1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 75
    :cond_6
    const-string p2, "<this>"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "charset"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    new-instance p2, Ljava/io/InputStreamReader;

    invoke-direct {p2, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    return-object p2
.end method

.method private static final writer(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Ljava/io/OutputStreamWriter;
    .registers 3
    .param p0, "$this$writer"    # Ljava/io/OutputStream;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method static synthetic writer$default(Ljava/io/OutputStream;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/io/OutputStreamWriter;
    .registers 4
    .param p0, "$this$writer_u24default"    # Ljava/io/OutputStream;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 91
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 92
    sget-object p1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 91
    :cond_6
    const-string p2, "<this>"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "charset"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    new-instance p2, Ljava/io/OutputStreamWriter;

    invoke-direct {p2, p0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-object p2
.end method

###### Class kotlin.io.ByteStreamsKt.AnonymousClass1 (kotlin.io.ByteStreamsKt$iterator$1)
.class public final Lkotlin/io/ByteStreamsKt$iterator$1;
.super Lkotlin/collections/ByteIterator;
.source "IOStreams.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/io/ByteStreamsKt;->iterator(Ljava/io/BufferedInputStream;)Lkotlin/collections/ByteIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0005\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0011\u001a\u00020\u0012H\u0002J\t\u0010\u0013\u001a\u00020\tH\u0096\u0002J\u0008\u0010\u0002\u001a\u00020\u0014H\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u000b\"\u0004\u0008\u0010\u0010\r\u00a8\u0006\u0015"
    }
    d2 = {
        "kotlin/io/ByteStreamsKt$iterator$1",
        "Lkotlin/collections/ByteIterator;",
        "nextByte",
        "",
        "getNextByte",
        "()I",
        "setNextByte",
        "(I)V",
        "nextPrepared",
        "",
        "getNextPrepared",
        "()Z",
        "setNextPrepared",
        "(Z)V",
        "finished",
        "getFinished",
        "setFinished",
        "prepareNext",
        "",
        "hasNext",
        "",
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


# instance fields
.field final synthetic $this_iterator:Ljava/io/BufferedInputStream;

.field private finished:Z

.field private nextByte:I

.field private nextPrepared:Z


# direct methods
.method constructor <init>(Ljava/io/BufferedInputStream;)V
    .registers 3
    .param p1, "$receiver"    # Ljava/io/BufferedInputStream;

    iput-object p1, p0, Lkotlin/io/ByteStreamsKt$iterator$1;->$this_iterator:Ljava/io/BufferedInputStream;

    .line 16
    invoke-direct {p0}, Lkotlin/collections/ByteIterator;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lkotlin/io/ByteStreamsKt$iterator$1;->nextByte:I

    .line 16
    return-void
.end method

.method private final prepareNext()V
    .registers 4

    .line 25
    iget-boolean v0, p0, Lkotlin/io/ByteStreamsKt$iterator$1;->nextPrepared:Z

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lkotlin/io/ByteStreamsKt$iterator$1;->finished:Z

    if-nez v0, :cond_1c

    .line 26
    iget-object v0, p0, Lkotlin/io/ByteStreamsKt$iterator$1;->$this_iterator:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    iput v0, p0, Lkotlin/io/ByteStreamsKt$iterator$1;->nextByte:I

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkotlin/io/ByteStreamsKt$iterator$1;->nextPrepared:Z

    .line 28
    iget v1, p0, Lkotlin/io/ByteStreamsKt$iterator$1;->nextByte:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    iput-boolean v0, p0, Lkotlin/io/ByteStreamsKt$iterator$1;->finished:Z

    .line 30
    :cond_1c
    return-void
.end method


# virtual methods
.method public final getFinished()Z
    .registers 2

    .line 22
    iget-boolean v0, p0, Lkotlin/io/ByteStreamsKt$iterator$1;->finished:Z

    return v0
.end method

.method public final getNextByte()I
    .registers 2

    .line 18
    iget v0, p0, Lkotlin/io/ByteStreamsKt$iterator$1;->nextByte:I

    return v0
.end method

.method public final getNextPrepared()Z
    .registers 2

    .line 20
    iget-boolean v0, p0, Lkotlin/io/ByteStreamsKt$iterator$1;->nextPrepared:Z

    return v0
.end method

.method public hasNext()Z
    .registers 2

    .line 33
    invoke-direct {p0}, Lkotlin/io/ByteStreamsKt$iterator$1;->prepareNext()V

    .line 34
    iget-boolean v0, p0, Lkotlin/io/ByteStreamsKt$iterator$1;->finished:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public nextByte()B
    .registers 3

    .line 38
    invoke-direct {p0}, Lkotlin/io/ByteStreamsKt$iterator$1;->prepareNext()V

    .line 39
    iget-boolean v0, p0, Lkotlin/io/ByteStreamsKt$iterator$1;->finished:Z

    if-nez v0, :cond_e

    .line 41
    iget v0, p0, Lkotlin/io/ByteStreamsKt$iterator$1;->nextByte:I

    int-to-byte v0, v0

    .line 42
    .local v0, "res":B
    const/4 v1, 0x0

    iput-boolean v1, p0, Lkotlin/io/ByteStreamsKt$iterator$1;->nextPrepared:Z

    .line 43
    return v0

    .line 40
    .end local v0    # "res":B
    :cond_e
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Input stream is over."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setFinished(Z)V
    .registers 2
    .param p1, "<set-?>"    # Z

    .line 22
    iput-boolean p1, p0, Lkotlin/io/ByteStreamsKt$iterator$1;->finished:Z

    return-void
.end method

.method public final setNextByte(I)V
    .registers 2
    .param p1, "<set-?>"    # I

    .line 18
    iput p1, p0, Lkotlin/io/ByteStreamsKt$iterator$1;->nextByte:I

    return-void
.end method

.method public final setNextPrepared(Z)V
    .registers 2
    .param p1, "<set-?>"    # Z

    .line 20
    iput-boolean p1, p0, Lkotlin/io/ByteStreamsKt$iterator$1;->nextPrepared:Z

    return-void
.end method
