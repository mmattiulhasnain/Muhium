###### Class androidx.emoji2.text.MetadataListReader (androidx.emoji2.text.MetadataListReader)
.class Landroidx/emoji2/text/MetadataListReader;
.super Ljava/lang/Object;
.source "MetadataListReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;,
        Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;,
        Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;,
        Landroidx/emoji2/text/MetadataListReader$OffsetInfo;
    }
.end annotation


# static fields
.field private static final EMJI_TAG:I = 0x456d6a69

.field private static final EMJI_TAG_DEPRECATED:I = 0x656d6a69

.field private static final META_TABLE_NAME:I = 0x6d657461


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    return-void
.end method

.method private static findOffsetInfo(Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;)Landroidx/emoji2/text/MetadataListReader$OffsetInfo;
    .registers 15
    .param p0, "reader"    # Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    const/4 v0, 0x4

    invoke-interface {p0, v0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->skip(I)V

    .line 122
    invoke-interface {p0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->readUnsignedShort()I

    move-result v1

    .line 123
    .local v1, "tableCount":I
    const/16 v2, 0x64

    const-string v3, "Cannot read metadata."

    if-gt v1, v2, :cond_76

    .line 128
    const/4 v2, 0x6

    invoke-interface {p0, v2}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->skip(I)V

    .line 130
    const-wide/16 v4, -0x1

    .line 131
    .local v4, "metaOffset":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    if-ge v2, v1, :cond_2f

    .line 132
    invoke-interface {p0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->readTag()I

    move-result v6

    .line 134
    .local v6, "tag":I
    invoke-interface {p0, v0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->skip(I)V

    .line 135
    invoke-interface {p0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->readUnsignedInt()J

    move-result-wide v7

    .line 137
    .local v7, "offset":J
    invoke-interface {p0, v0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->skip(I)V

    .line 138
    const v9, 0x6d657461

    if-ne v9, v6, :cond_2c

    .line 139
    move-wide v4, v7

    .line 140
    goto :goto_2f

    .line 131
    .end local v6    # "tag":I
    .end local v7    # "offset":J
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 144
    .end local v2    # "i":I
    :cond_2f
    :goto_2f
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_70

    .line 146
    invoke-interface {p0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->getPosition()J

    move-result-wide v6

    sub-long v6, v4, v6

    long-to-int v0, v6

    invoke-interface {p0, v0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->skip(I)V

    .line 148
    const/16 v0, 0xc

    invoke-interface {p0, v0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->skip(I)V

    .line 150
    invoke-interface {p0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->readUnsignedInt()J

    move-result-wide v6

    .line 151
    .local v6, "mapsCount":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_49
    int-to-long v8, v0

    cmp-long v2, v8, v6

    if-gez v2, :cond_70

    .line 152
    invoke-interface {p0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->readTag()I

    move-result v2

    .line 153
    .local v2, "tag":I
    invoke-interface {p0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->readUnsignedInt()J

    move-result-wide v8

    .line 154
    .local v8, "dataOffset":J
    invoke-interface {p0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->readUnsignedInt()J

    move-result-wide v10

    .line 155
    .local v10, "dataLength":J
    const v12, 0x456d6a69

    if-eq v12, v2, :cond_68

    const v12, 0x656d6a69

    if-ne v12, v2, :cond_65

    goto :goto_68

    .line 151
    .end local v2    # "tag":I
    .end local v8    # "dataOffset":J
    .end local v10    # "dataLength":J
    :cond_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 156
    .restart local v2    # "tag":I
    .restart local v8    # "dataOffset":J
    .restart local v10    # "dataLength":J
    :cond_68
    :goto_68
    new-instance v3, Landroidx/emoji2/text/MetadataListReader$OffsetInfo;

    add-long v12, v8, v4

    invoke-direct {v3, v12, v13, v10, v11}, Landroidx/emoji2/text/MetadataListReader$OffsetInfo;-><init>(JJ)V

    return-object v3

    .line 161
    .end local v0    # "i":I
    .end local v2    # "tag":I
    .end local v6    # "mapsCount":J
    .end local v8    # "dataOffset":J
    .end local v10    # "dataLength":J
    :cond_70
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    .end local v4    # "metaOffset":J
    :cond_76
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static read(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroidx/emoji2/text/flatbuffer/MetadataList;
    .registers 5
    .param p0, "assetManager"    # Landroid/content/res/AssetManager;
    .param p1, "assetPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 107
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_4
    invoke-static {v0}, Landroidx/emoji2/text/MetadataListReader;->read(Ljava/io/InputStream;)Landroidx/emoji2/text/flatbuffer/MetadataList;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_e

    .line 108
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 107
    :cond_d
    return-object v1

    .line 106
    :catchall_e
    move-exception v1

    if-eqz v0, :cond_19

    :try_start_11
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    goto :goto_19

    :catchall_15
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_19
    :goto_19
    throw v1
.end method

.method static read(Ljava/io/InputStream;)Landroidx/emoji2/text/flatbuffer/MetadataList;
    .registers 9
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    new-instance v0, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;

    invoke-direct {v0, p0}, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;-><init>(Ljava/io/InputStream;)V

    .line 70
    .local v0, "openTypeReader":Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;
    invoke-static {v0}, Landroidx/emoji2/text/MetadataListReader;->findOffsetInfo(Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;)Landroidx/emoji2/text/MetadataListReader$OffsetInfo;

    move-result-object v1

    .line 72
    .local v1, "offsetInfo":Landroidx/emoji2/text/MetadataListReader$OffsetInfo;
    invoke-virtual {v1}, Landroidx/emoji2/text/MetadataListReader$OffsetInfo;->getStartOffset()J

    move-result-wide v2

    invoke-interface {v0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->getPosition()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    invoke-interface {v0, v2}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->skip(I)V

    .line 74
    invoke-virtual {v1}, Landroidx/emoji2/text/MetadataListReader$OffsetInfo;->getLength()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 75
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 76
    .local v3, "numRead":I
    int-to-long v4, v3

    invoke-virtual {v1}, Landroidx/emoji2/text/MetadataListReader$OffsetInfo;->getLength()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_35

    .line 80
    invoke-static {v2}, Landroidx/emoji2/text/flatbuffer/MetadataList;->getRootAsMetadataList(Ljava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataList;

    move-result-object v4

    return-object v4

    .line 77
    :cond_35
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Needed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroidx/emoji2/text/MetadataListReader$OffsetInfo;->getLength()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes, got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method static read(Ljava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataList;
    .registers 6
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 90
    .local v0, "newBuffer":Ljava/nio/ByteBuffer;
    new-instance v1, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;

    invoke-direct {v1, v0}, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 91
    .local v1, "reader":Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;
    invoke-static {v1}, Landroidx/emoji2/text/MetadataListReader;->findOffsetInfo(Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;)Landroidx/emoji2/text/MetadataListReader$OffsetInfo;

    move-result-object v2

    .line 93
    .local v2, "offsetInfo":Landroidx/emoji2/text/MetadataListReader$OffsetInfo;
    invoke-virtual {v2}, Landroidx/emoji2/text/MetadataListReader$OffsetInfo;->getStartOffset()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 94
    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/MetadataList;->getRootAsMetadataList(Ljava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataList;

    move-result-object v3

    return-object v3
.end method

.method static toUnsignedInt(I)J
    .registers 5
    .param p0, "value"    # I

    .line 192
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method static toUnsignedShort(S)I
    .registers 2
    .param p0, "value"    # S

    .line 187
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

###### Class androidx.emoji2.text.MetadataListReader.ByteBufferReader (androidx.emoji2.text.MetadataListReader$ByteBufferReader)
.class Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;
.super Ljava/lang/Object;
.source "MetadataListReader.java"

# interfaces
.implements Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/MetadataListReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteBufferReader"
.end annotation


# instance fields
.field private final mByteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p1, p0, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 317
    iget-object v0, p0, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 318
    return-void
.end method


# virtual methods
.method public getPosition()J
    .registers 3

    .line 342
    iget-object v0, p0, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public readTag()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    iget-object v0, p0, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public readUnsignedInt()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 327
    iget-object v0, p0, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Landroidx/emoji2/text/MetadataListReader;->toUnsignedInt(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public readUnsignedShort()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    iget-object v0, p0, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Landroidx/emoji2/text/MetadataListReader;->toUnsignedShort(S)I

    move-result v0

    return v0
.end method

.method public skip(I)V
    .registers 4
    .param p1, "numOfBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    iget-object v0, p0, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 338
    return-void
.end method

###### Class androidx.emoji2.text.MetadataListReader.InputStreamOpenTypeReader (androidx.emoji2.text.MetadataListReader$InputStreamOpenTypeReader)
.class Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;
.super Ljava/lang/Object;
.source "MetadataListReader.java"

# interfaces
.implements Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/MetadataListReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputStreamOpenTypeReader"
.end annotation


# instance fields
.field private final mByteArray:[B

.field private final mByteBuffer:Ljava/nio/ByteBuffer;

.field private final mInputStream:Ljava/io/InputStream;

.field private mPosition:J


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .registers 4
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;->mPosition:J

    .line 250
    iput-object p1, p0, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;->mInputStream:Ljava/io/InputStream;

    .line 251
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;->mByteArray:[B

    .line 252
    iget-object v0, p0, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;->mByteArray:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 253
    iget-object v0, p0, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 254
    return-void
.end method

.method private read(I)V
    .registers 6
    .param p1, "numOfBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    iget-object v0, p0, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;->mInputStream:Ljava/io/InputStream;

    iget-object v1, p0, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;->mByteArray:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ne v0, p1, :cond_12

    .line 299
    iget-wide v0, p0, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;->mPosition:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;->mPosition:J

    .line 300
    return-void

    .line 297
    :cond_12
    new-instance v0, Ljava/io/IOException;

    const-string v1, "read failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getPosition()J
    .registers 3

    .line 291
    iget-wide v0, p0, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;->mPosition:J

    return-wide v0
.end method

.method public readTag()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    iget-object v0, p0, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 273
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;->read(I)V

    .line 274
    iget-object v0, p0, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public readUnsignedInt()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    iget-object v0, p0, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 266
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;->read(I)V

    .line 267
    iget-object v0, p0, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Landroidx/emoji2/text/MetadataListReader;->toUnsignedInt(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public readUnsignedShort()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    iget-object v0, p0, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 259
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;->read(I)V

    .line 260
    iget-object v0, p0, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Landroidx/emoji2/text/MetadataListReader;->toUnsignedShort(S)I

    move-result v0

    return v0
.end method

.method public skip(I)V
    .registers 7
    .param p1, "numOfBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    nop

    :goto_1
    if-lez p1, :cond_1e

    .line 280
    iget-object v0, p0, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;->mInputStream:Ljava/io/InputStream;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    long-to-int v0, v0

    .line 281
    .local v0, "skipped":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_16

    .line 284
    sub-int/2addr p1, v0

    .line 285
    iget-wide v1, p0, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;->mPosition:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;->mPosition:J

    .line 286
    .end local v0    # "skipped":I
    goto :goto_1

    .line 282
    .restart local v0    # "skipped":I
    :cond_16
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Skip didn\'t move at least 1 byte forward"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 287
    .end local v0    # "skipped":I
    :cond_1e
    return-void
.end method

###### Class androidx.emoji2.text.MetadataListReader.OffsetInfo (androidx.emoji2.text.MetadataListReader$OffsetInfo)
.class Landroidx/emoji2/text/MetadataListReader$OffsetInfo;
.super Ljava/lang/Object;
.source "MetadataListReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/MetadataListReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OffsetInfo"
.end annotation


# instance fields
.field private final mLength:J

.field private final mStartOffset:J


# direct methods
.method constructor <init>(JJ)V
    .registers 5
    .param p1, "startOffset"    # J
    .param p3, "length"    # J

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-wide p1, p0, Landroidx/emoji2/text/MetadataListReader$OffsetInfo;->mStartOffset:J

    .line 173
    iput-wide p3, p0, Landroidx/emoji2/text/MetadataListReader$OffsetInfo;->mLength:J

    .line 174
    return-void
.end method


# virtual methods
.method getLength()J
    .registers 3

    .line 181
    iget-wide v0, p0, Landroidx/emoji2/text/MetadataListReader$OffsetInfo;->mLength:J

    return-wide v0
.end method

.method getStartOffset()J
    .registers 3

    .line 177
    iget-wide v0, p0, Landroidx/emoji2/text/MetadataListReader$OffsetInfo;->mStartOffset:J

    return-wide v0
.end method

###### Class androidx.emoji2.text.MetadataListReader.OpenTypeReader (androidx.emoji2.text.MetadataListReader$OpenTypeReader)
.class interface abstract Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;
.super Ljava/lang/Object;
.source "MetadataListReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/MetadataListReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "OpenTypeReader"
.end annotation


# static fields
.field public static final UINT16_BYTE_COUNT:I = 0x2

.field public static final UINT32_BYTE_COUNT:I = 0x4


# virtual methods
.method public abstract getPosition()J
.end method

.method public abstract readTag()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readUnsignedInt()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readUnsignedShort()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract skip(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
