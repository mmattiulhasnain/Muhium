###### Class kotlin.io.LineReader (kotlin.io.LineReader)
.class public final Lkotlin/io/LineReader;
.super Ljava/lang/Object;
.source "Console.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConsole.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Console.kt\nkotlin/io/LineReader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,302:1\n1#2:303\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aJ\u0010\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\tH\u0002J\u0008\u0010\u001d\u001a\u00020\u0005H\u0002J\u0018\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u0005H\u0002J\u0010\u0010!\u001a\u00020\"2\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0008\u0010#\u001a\u00020\"H\u0002J\u0008\u0010$\u001a\u00020\"H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00060\u0013j\u0002`\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lkotlin/io/LineReader;",
        "",
        "<init>",
        "()V",
        "BUFFER_SIZE",
        "",
        "decoder",
        "Ljava/nio/charset/CharsetDecoder;",
        "directEOL",
        "",
        "bytes",
        "",
        "chars",
        "",
        "byteBuf",
        "Ljava/nio/ByteBuffer;",
        "charBuf",
        "Ljava/nio/CharBuffer;",
        "sb",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "readLine",
        "",
        "inputStream",
        "Ljava/io/InputStream;",
        "charset",
        "Ljava/nio/charset/Charset;",
        "decode",
        "endOfInput",
        "compactBytes",
        "decodeEndOfInput",
        "nBytes",
        "nChars",
        "updateCharset",
        "",
        "resetAll",
        "trimStringBuilder",
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
.field private static final BUFFER_SIZE:I = 0x20

.field public static final INSTANCE:Lkotlin/io/LineReader;

.field private static final byteBuf:Ljava/nio/ByteBuffer;

.field private static final bytes:[B

.field private static final charBuf:Ljava/nio/CharBuffer;

.field private static final chars:[C

.field private static decoder:Ljava/nio/charset/CharsetDecoder;

.field private static directEOL:Z

.field private static final sb:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlin/io/LineReader;

    invoke-direct {v0}, Lkotlin/io/LineReader;-><init>()V

    sput-object v0, Lkotlin/io/LineReader;->INSTANCE:Lkotlin/io/LineReader;

    .line 180
    const/16 v0, 0x20

    new-array v1, v0, [B

    sput-object v1, Lkotlin/io/LineReader;->bytes:[B

    .line 181
    new-array v0, v0, [C

    sput-object v0, Lkotlin/io/LineReader;->chars:[C

    .line 182
    sget-object v0, Lkotlin/io/LineReader;->bytes:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-string/jumbo v1, "wrap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/io/LineReader;->byteBuf:Ljava/nio/ByteBuffer;

    .line 183
    sget-object v0, Lkotlin/io/LineReader;->chars:[C

    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/io/LineReader;->charBuf:Ljava/nio/CharBuffer;

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lkotlin/io/LineReader;->sb:Ljava/lang/StringBuilder;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final compactBytes()I
    .registers 7

    .line 260
    sget-object v0, Lkotlin/io/LineReader;->byteBuf:Ljava/nio/ByteBuffer;

    .local v0, "$this$compactBytes_u24lambda_u241":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .line 261
    .local v1, "$i$a$-with-LineReader$compactBytes$1":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 262
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    move v3, v2

    .line 303
    .local v3, "it":I
    const/4 v4, 0x0

    .line 262
    .local v4, "$i$a$-also-LineReader$compactBytes$1$1":I
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .end local v3    # "it":I
    .end local v4    # "$i$a$-also-LineReader$compactBytes$1$1":I
    return v2
.end method

.method private final decode(Z)I
    .registers 8
    .param p1, "endOfInput"    # Z

    .line 243
    nop

    :goto_1
    nop

    .line 244
    sget-object v0, Lkotlin/io/LineReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    if-nez v0, :cond_c

    const-string v0, "decoder"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_c
    sget-object v1, Lkotlin/io/LineReader;->byteBuf:Ljava/nio/ByteBuffer;

    sget-object v2, Lkotlin/io/LineReader;->charBuf:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1, v2, p1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    const-string v1, "decode(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    .local v0, "coderResult":Ljava/nio/charset/CoderResult;
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 246
    invoke-direct {p0}, Lkotlin/io/LineReader;->resetAll()V

    .line 247
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 249
    :cond_25
    sget-object v1, Lkotlin/io/LineReader;->charBuf:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    .line 250
    .local v1, "nChars":I
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v2

    if-nez v2, :cond_32

    return v1

    .line 252
    :cond_32
    sget-object v2, Lkotlin/io/LineReader;->sb:Ljava/lang/StringBuilder;

    sget-object v3, Lkotlin/io/LineReader;->chars:[C

    add-int/lit8 v4, v1, -0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 253
    sget-object v2, Lkotlin/io/LineReader;->charBuf:Ljava/nio/CharBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 254
    sget-object v2, Lkotlin/io/LineReader;->charBuf:Ljava/nio/CharBuffer;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 255
    sget-object v2, Lkotlin/io/LineReader;->charBuf:Ljava/nio/CharBuffer;

    sget-object v3, Lkotlin/io/LineReader;->chars:[C

    add-int/lit8 v4, v1, -0x1

    aget-char v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    goto :goto_1
.end method

.method private final decodeEndOfInput(II)I
    .registers 8
    .param p1, "nBytes"    # I
    .param p2, "nChars"    # I

    .line 267
    sget-object v0, Lkotlin/io/LineReader;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 268
    sget-object v0, Lkotlin/io/LineReader;->charBuf:Ljava/nio/CharBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 269
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/io/LineReader;->decode(Z)I

    move-result v0

    move v1, v0

    .local v1, "it":I
    const/4 v2, 0x0

    .line 271
    .local v2, "$i$a$-also-LineReader$decodeEndOfInput$1":I
    sget-object v3, Lkotlin/io/LineReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    if-nez v3, :cond_1b

    const-string v3, "decoder"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_1b
    invoke-virtual {v3}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 272
    sget-object v3, Lkotlin/io/LineReader;->byteBuf:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 273
    nop

    .line 269
    .end local v1    # "it":I
    .end local v2    # "$i$a$-also-LineReader$decodeEndOfInput$1":I
    return v0
.end method

.method private final resetAll()V
    .registers 3

    .line 291
    sget-object v0, Lkotlin/io/LineReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    if-nez v0, :cond_a

    const-string v0, "decoder"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_a
    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 292
    sget-object v0, Lkotlin/io/LineReader;->byteBuf:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 293
    sget-object v0, Lkotlin/io/LineReader;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 294
    return-void
.end method

.method private final trimStringBuilder()V
    .registers 3

    .line 298
    sget-object v0, Lkotlin/io/LineReader;->sb:Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 299
    sget-object v0, Lkotlin/io/LineReader;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->trimToSize()V

    .line 300
    return-void
.end method

.method private final updateCharset(Ljava/nio/charset/Charset;)V
    .registers 7
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 278
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    const-string v1, "newDecoder(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/io/LineReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 280
    sget-object v0, Lkotlin/io/LineReader;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 281
    sget-object v0, Lkotlin/io/LineReader;->charBuf:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 282
    sget-object v0, Lkotlin/io/LineReader;->byteBuf:Ljava/nio/ByteBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 283
    sget-object v0, Lkotlin/io/LineReader;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 284
    sget-object v0, Lkotlin/io/LineReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    if-nez v0, :cond_2b

    const-string v0, "decoder"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_2b
    sget-object v2, Lkotlin/io/LineReader;->byteBuf:Ljava/nio/ByteBuffer;

    sget-object v3, Lkotlin/io/LineReader;->charBuf:Ljava/nio/CharBuffer;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 285
    sget-object v0, Lkotlin/io/LineReader;->charBuf:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_45

    sget-object v0, Lkotlin/io/LineReader;->charBuf:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/CharBuffer;->get(I)C

    move-result v0

    if-ne v0, v1, :cond_45

    move v4, v2

    :cond_45
    sput-boolean v4, Lkotlin/io/LineReader;->directEOL:Z

    .line 286
    invoke-direct {p0}, Lkotlin/io/LineReader;->resetAll()V

    .line 287
    return-void
.end method


# virtual methods
.method public final declared-synchronized readLine(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 14
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    monitor-enter p0

    :try_start_1
    const-string v0, "inputStream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    sget-object v0, Lkotlin/io/LineReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    sget-object v0, Lkotlin/io/LineReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    if-nez v0, :cond_1a

    const-string v0, "decoder"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    .end local p0    # "this":Lkotlin/io/LineReader;
    :cond_1a
    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    :cond_24
    invoke-direct {p0, p2}, Lkotlin/io/LineReader;->updateCharset(Ljava/nio/charset/Charset;)V

    .line 195
    :cond_27
    const/4 v0, 0x0

    .line 196
    .local v0, "nBytes":I
    const/4 v2, 0x0

    .line 197
    .local v2, "nChars":I
    :goto_29
    nop

    .line 198
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 199
    .local v3, "readByte":I
    const/16 v4, 0x20

    const/16 v5, 0xa

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v3, v6, :cond_51

    .line 201
    sget-object v6, Lkotlin/io/LineReader;->sb:Ljava/lang/StringBuilder;

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_df

    if-nez v6, :cond_43

    move v6, v7

    goto :goto_44

    :cond_43
    move v6, v8

    :goto_44
    if-eqz v6, :cond_4c

    if-nez v0, :cond_4c

    if-nez v2, :cond_4c

    .line 202
    monitor-exit p0

    return-object v1

    .line 204
    :cond_4c
    :try_start_4c
    invoke-direct {p0, v0, v2}, Lkotlin/io/LineReader;->decodeEndOfInput(II)I

    move-result v1

    .line 205
    .end local v2    # "nChars":I
    .local v1, "nChars":I
    goto :goto_83

    .line 208
    .end local v1    # "nChars":I
    .restart local v2    # "nChars":I
    :cond_51
    sget-object v6, Lkotlin/io/LineReader;->bytes:[B

    add-int/lit8 v9, v0, 0x1

    .end local v0    # "nBytes":I
    .local v9, "nBytes":I
    int-to-byte v10, v3

    aput-byte v10, v6, v0

    .line 211
    if-eq v3, v5, :cond_63

    if-eq v9, v4, :cond_63

    sget-boolean v0, Lkotlin/io/LineReader;->directEOL:Z

    if-nez v0, :cond_61

    goto :goto_63

    :cond_61
    move v0, v9

    goto :goto_29

    .line 213
    :cond_63
    :goto_63
    sget-object v0, Lkotlin/io/LineReader;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 214
    sget-object v0, Lkotlin/io/LineReader;->charBuf:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 215
    invoke-direct {p0, v8}, Lkotlin/io/LineReader;->decode(Z)I

    move-result v0

    move v2, v0

    .line 217
    if-lez v2, :cond_d9

    sget-object v0, Lkotlin/io/LineReader;->chars:[C

    add-int/lit8 v6, v2, -0x1

    aget-char v0, v0, v6

    if-ne v0, v5, :cond_d9

    .line 218
    sget-object v0, Lkotlin/io/LineReader;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 219
    move v1, v2

    move v0, v9

    .line 226
    .end local v2    # "nChars":I
    .end local v3    # "readByte":I
    .end local v9    # "nBytes":I
    .restart local v0    # "nBytes":I
    .restart local v1    # "nChars":I
    :goto_83
    if-lez v1, :cond_9d

    sget-object v2, Lkotlin/io/LineReader;->chars:[C

    add-int/lit8 v3, v1, -0x1

    aget-char v2, v2, v3

    if-ne v2, v5, :cond_9d

    .line 227
    add-int/lit8 v1, v1, -0x1

    .line 228
    if-lez v1, :cond_9d

    sget-object v2, Lkotlin/io/LineReader;->chars:[C

    add-int/lit8 v3, v1, -0x1

    aget-char v2, v2, v3

    const/16 v3, 0xd

    if-ne v2, v3, :cond_9d

    add-int/lit8 v1, v1, -0x1

    .line 231
    :cond_9d
    sget-object v2, Lkotlin/io/LineReader;->sb:Ljava/lang/StringBuilder;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_a8

    goto :goto_a9

    :cond_a8
    move v7, v8

    :goto_a9
    if-eqz v7, :cond_b4

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lkotlin/io/LineReader;->chars:[C

    invoke-direct {v2, v3, v8, v1}, Ljava/lang/String;-><init>([CII)V
    :try_end_b2
    .catchall {:try_start_4c .. :try_end_b2} :catchall_df

    monitor-exit p0

    return-object v2

    .line 233
    :cond_b4
    :try_start_b4
    sget-object v2, Lkotlin/io/LineReader;->sb:Ljava/lang/StringBuilder;

    sget-object v3, Lkotlin/io/LineReader;->chars:[C

    invoke-virtual {v2, v3, v8, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 235
    sget-object v2, Lkotlin/io/LineReader;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "toString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    .local v2, "result":Ljava/lang/String;
    sget-object v3, Lkotlin/io/LineReader;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-le v3, v4, :cond_d2

    invoke-direct {p0}, Lkotlin/io/LineReader;->trimStringBuilder()V

    .line 237
    :cond_d2
    sget-object v3, Lkotlin/io/LineReader;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_d7
    .catchall {:try_start_b4 .. :try_end_d7} :catchall_df

    .line 238
    monitor-exit p0

    return-object v2

    .line 222
    .end local v0    # "nBytes":I
    .end local v1    # "nChars":I
    .local v2, "nChars":I
    .restart local v3    # "readByte":I
    .restart local v9    # "nBytes":I
    :cond_d9
    :try_start_d9
    invoke-direct {p0}, Lkotlin/io/LineReader;->compactBytes()I

    move-result v0

    .end local v3    # "readByte":I
    .end local v9    # "nBytes":I
    .restart local v0    # "nBytes":I
    goto/16 :goto_29

    .line 193
    .end local v0    # "nBytes":I
    .end local v2    # "nChars":I
    .end local p1    # "inputStream":Ljava/io/InputStream;
    .end local p2    # "charset":Ljava/nio/charset/Charset;
    :catchall_df
    move-exception p1

    monitor-exit p0
    :try_end_e1
    .catchall {:try_start_d9 .. :try_end_e1} :catchall_df

    throw p1
.end method
