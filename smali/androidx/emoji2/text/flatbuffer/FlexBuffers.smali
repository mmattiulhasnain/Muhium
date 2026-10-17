###### Class androidx.emoji2.text.flatbuffer.FlexBuffers (androidx.emoji2.text.flatbuffer.FlexBuffers)
.class public Landroidx/emoji2/text/flatbuffer/FlexBuffers;
.super Ljava/lang/Object;
.source "FlexBuffers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/flatbuffer/FlexBuffers$Unsigned;,
        Landroidx/emoji2/text/flatbuffer/FlexBuffers$FlexBufferException;,
        Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;,
        Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;,
        Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;,
        Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;,
        Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;,
        Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;,
        Landroidx/emoji2/text/flatbuffer/FlexBuffers$Sized;,
        Landroidx/emoji2/text/flatbuffer/FlexBuffers$Object;,
        Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final EMPTY_BB:Landroidx/emoji2/text/flatbuffer/ReadBuf;

.field public static final FBT_BLOB:I = 0x19

.field public static final FBT_BOOL:I = 0x1a

.field public static final FBT_FLOAT:I = 0x3

.field public static final FBT_INDIRECT_FLOAT:I = 0x8

.field public static final FBT_INDIRECT_INT:I = 0x6

.field public static final FBT_INDIRECT_UINT:I = 0x7

.field public static final FBT_INT:I = 0x1

.field public static final FBT_KEY:I = 0x4

.field public static final FBT_MAP:I = 0x9

.field public static final FBT_NULL:I = 0x0

.field public static final FBT_STRING:I = 0x5

.field public static final FBT_UINT:I = 0x2

.field public static final FBT_VECTOR:I = 0xa

.field public static final FBT_VECTOR_BOOL:I = 0x24

.field public static final FBT_VECTOR_FLOAT:I = 0xd

.field public static final FBT_VECTOR_FLOAT2:I = 0x12

.field public static final FBT_VECTOR_FLOAT3:I = 0x15

.field public static final FBT_VECTOR_FLOAT4:I = 0x18

.field public static final FBT_VECTOR_INT:I = 0xb

.field public static final FBT_VECTOR_INT2:I = 0x10

.field public static final FBT_VECTOR_INT3:I = 0x13

.field public static final FBT_VECTOR_INT4:I = 0x16

.field public static final FBT_VECTOR_KEY:I = 0xe

.field public static final FBT_VECTOR_STRING_DEPRECATED:I = 0xf

.field public static final FBT_VECTOR_UINT:I = 0xc

.field public static final FBT_VECTOR_UINT2:I = 0x11

.field public static final FBT_VECTOR_UINT3:I = 0x14

.field public static final FBT_VECTOR_UINT4:I = 0x17


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 45
    nop

    .line 103
    new-instance v0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte v3, v2, v3

    invoke-direct {v0, v2, v1}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;-><init>([BI)V

    sput-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->EMPTY_BB:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroidx/emoji2/text/flatbuffer/ReadBuf;
    .registers 1

    .line 45
    sget-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->EMPTY_BB:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I
    .registers 4
    .param p0, "x0"    # Landroidx/emoji2/text/flatbuffer/ReadBuf;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 45
    invoke-static {p0, p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->readInt(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I
    .registers 4
    .param p0, "x0"    # Landroidx/emoji2/text/flatbuffer/ReadBuf;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 45
    invoke-static {p0, p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->indirect(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)J
    .registers 5
    .param p0, "x0"    # Landroidx/emoji2/text/flatbuffer/ReadBuf;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 45
    invoke-static {p0, p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->readUInt(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)D
    .registers 5
    .param p0, "x0"    # Landroidx/emoji2/text/flatbuffer/ReadBuf;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 45
    invoke-static {p0, p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->readDouble(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)J
    .registers 5
    .param p0, "x0"    # Landroidx/emoji2/text/flatbuffer/ReadBuf;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 45
    invoke-static {p0, p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->readLong(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getRoot(Landroidx/emoji2/text/flatbuffer/ReadBuf;)Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;
    .registers 5
    .param p0, "buffer"    # Landroidx/emoji2/text/flatbuffer/ReadBuf;

    .line 214
    invoke-interface {p0}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->limit()I

    move-result v0

    .line 215
    .local v0, "end":I
    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->get(I)B

    move-result v1

    .line 216
    .local v1, "byteWidth":I
    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->get(I)B

    move-result v2

    invoke-static {v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Unsigned;->byteToUnsignedInt(B)I

    move-result v2

    .line 217
    .local v2, "packetType":I
    sub-int/2addr v0, v1

    .line 218
    new-instance v3, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;

    invoke-direct {v3, p0, v0, v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;III)V

    return-object v3
.end method

.method public static getRoot(Ljava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;
    .registers 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 202
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;-><init>([BI)V

    goto :goto_19

    :cond_14
    new-instance v0, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;

    invoke-direct {v0, p0}, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;-><init>(Ljava/nio/ByteBuffer;)V

    :goto_19
    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->getRoot(Landroidx/emoji2/text/flatbuffer/ReadBuf;)Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;

    move-result-object v0

    return-object v0
.end method

.method private static indirect(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I
    .registers 7
    .param p0, "bb"    # Landroidx/emoji2/text/flatbuffer/ReadBuf;
    .param p1, "offset"    # I
    .param p2, "byteWidth"    # I

    .line 156
    int-to-long v0, p1

    invoke-static {p0, p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->readUInt(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method static isTypeInline(I)Z
    .registers 2
    .param p0, "type"    # I

    .line 122
    const/4 v0, 0x3

    if-le p0, v0, :cond_a

    const/16 v0, 0x1a

    if-ne p0, v0, :cond_8

    goto :goto_a

    :cond_8
    const/4 v0, 0x0

    goto :goto_b

    :cond_a
    :goto_a
    const/4 v0, 0x1

    :goto_b
    return v0
.end method

.method static isTypedVector(I)Z
    .registers 2
    .param p0, "type"    # I

    .line 112
    const/16 v0, 0xb

    if-lt p0, v0, :cond_8

    const/16 v0, 0xf

    if-le p0, v0, :cond_c

    :cond_8
    const/16 v0, 0x24

    if-ne p0, v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method static isTypedVectorElementType(I)Z
    .registers 3
    .param p0, "type"    # I

    .line 150
    const/4 v0, 0x1

    if-lt p0, v0, :cond_6

    const/4 v1, 0x4

    if-le p0, v1, :cond_a

    :cond_6
    const/16 v1, 0x1a

    if-ne p0, v1, :cond_b

    :cond_a
    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private static readDouble(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)D
    .registers 5
    .param p0, "buff"    # Landroidx/emoji2/text/flatbuffer/ReadBuf;
    .param p1, "end"    # I
    .param p2, "byteWidth"    # I

    .line 187
    sparse-switch p2, :sswitch_data_12

    .line 190
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0

    .line 189
    :sswitch_6
    invoke-interface {p0, p1}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->getDouble(I)D

    move-result-wide v0

    return-wide v0

    .line 188
    :sswitch_b
    invoke-interface {p0, p1}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->getFloat(I)F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    nop

    :sswitch_data_12
    .sparse-switch
        0x4 -> :sswitch_b
        0x8 -> :sswitch_6
    .end sparse-switch
.end method

.method private static readInt(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I
    .registers 5
    .param p0, "buff"    # Landroidx/emoji2/text/flatbuffer/ReadBuf;
    .param p1, "end"    # I
    .param p2, "byteWidth"    # I

    .line 172
    invoke-static {p0, p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->readLong(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private static readLong(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)J
    .registers 5
    .param p0, "buff"    # Landroidx/emoji2/text/flatbuffer/ReadBuf;
    .param p1, "end"    # I
    .param p2, "byteWidth"    # I

    .line 177
    sparse-switch p2, :sswitch_data_1e

    .line 182
    const-wide/16 v0, -0x1

    return-wide v0

    .line 181
    :sswitch_6
    invoke-interface {p0, p1}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->getLong(I)J

    move-result-wide v0

    return-wide v0

    .line 180
    :sswitch_b
    invoke-interface {p0, p1}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 179
    :sswitch_11
    invoke-interface {p0, p1}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->getShort(I)S

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 178
    :sswitch_17
    invoke-interface {p0, p1}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->get(I)B

    move-result v0

    int-to-long v0, v0

    return-wide v0

    nop

    :sswitch_data_1e
    .sparse-switch
        0x1 -> :sswitch_17
        0x2 -> :sswitch_11
        0x4 -> :sswitch_b
        0x8 -> :sswitch_6
    .end sparse-switch
.end method

.method private static readUInt(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)J
    .registers 5
    .param p0, "buff"    # Landroidx/emoji2/text/flatbuffer/ReadBuf;
    .param p1, "end"    # I
    .param p2, "byteWidth"    # I

    .line 161
    sparse-switch p2, :sswitch_data_28

    .line 166
    const-wide/16 v0, -0x1

    return-wide v0

    .line 165
    :sswitch_6
    invoke-interface {p0, p1}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->getLong(I)J

    move-result-wide v0

    return-wide v0

    .line 164
    :sswitch_b
    invoke-interface {p0, p1}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->getInt(I)I

    move-result v0

    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Unsigned;->intToUnsignedLong(I)J

    move-result-wide v0

    return-wide v0

    .line 163
    :sswitch_14
    invoke-interface {p0, p1}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->getShort(I)S

    move-result v0

    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Unsigned;->shortToUnsignedInt(S)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 162
    :sswitch_1e
    invoke-interface {p0, p1}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->get(I)B

    move-result v0

    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Unsigned;->byteToUnsignedInt(B)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :sswitch_data_28
    .sparse-switch
        0x1 -> :sswitch_1e
        0x2 -> :sswitch_14
        0x4 -> :sswitch_b
        0x8 -> :sswitch_6
    .end sparse-switch
.end method

.method static toTypedVector(II)I
    .registers 3
    .param p0, "type"    # I
    .param p1, "fixedLength"    # I

    .line 137
    invoke-static {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->isTypedVectorElementType(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 138
    packed-switch p1, :pswitch_data_2a

    .line 144
    :pswitch_9
    goto :goto_1e

    .line 142
    :pswitch_a
    add-int/lit8 v0, p0, -0x1

    add-int/lit8 v0, v0, 0x16

    return v0

    .line 141
    :pswitch_f
    add-int/lit8 v0, p0, -0x1

    add-int/lit8 v0, v0, 0x13

    return v0

    .line 140
    :pswitch_14
    add-int/lit8 v0, p0, -0x1

    add-int/lit8 v0, v0, 0x10

    return v0

    .line 139
    :pswitch_19
    add-int/lit8 v0, p0, -0x1

    add-int/lit8 v0, v0, 0xb

    return v0

    .line 144
    :goto_1e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 137
    :cond_24
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_19
        :pswitch_9
        :pswitch_14
        :pswitch_f
        :pswitch_a
    .end packed-switch
.end method

.method static toTypedVectorElementType(I)I
    .registers 2
    .param p0, "original_type"    # I

    .line 126
    add-int/lit8 v0, p0, -0xb

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

###### Class androidx.emoji2.text.flatbuffer.FlexBuffers.Blob (androidx.emoji2.text.flatbuffer.FlexBuffers$Blob)
.class public Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;
.super Landroidx/emoji2/text/flatbuffer/FlexBuffers$Sized;
.source "FlexBuffers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/FlexBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Blob"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final EMPTY:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 673
    const-class v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers;

    .line 674
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;

    invoke-static {}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$000()Landroidx/emoji2/text/flatbuffer/ReadBuf;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V

    sput-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->EMPTY:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;

    return-void
.end method

.method constructor <init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V
    .registers 4
    .param p1, "buff"    # Landroidx/emoji2/text/flatbuffer/ReadBuf;
    .param p2, "end"    # I
    .param p3, "byteWidth"    # I

    .line 677
    invoke-direct {p0, p1, p2, p3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Sized;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V

    .line 678
    return-void
.end method

.method public static empty()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;
    .registers 1

    .line 682
    sget-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->EMPTY:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;

    return-object v0
.end method


# virtual methods
.method public data()Ljava/nio/ByteBuffer;
    .registers 4

    .line 690
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    invoke-interface {v0}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->data()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 691
    .local v0, "dup":Ljava/nio/ByteBuffer;
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->end:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 692
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->end:I

    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 693
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public get(I)B
    .registers 4
    .param p1, "pos"    # I

    .line 714
    if-ltz p1, :cond_12

    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->size()I

    move-result v0

    if-gt p1, v0, :cond_12

    .line 715
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->end:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->get(I)B

    move-result v0

    return v0

    .line 714
    :cond_12
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getBytes()[B
    .registers 6

    .line 701
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->size()I

    move-result v0

    .line 702
    .local v0, "size":I
    new-array v1, v0, [B

    .line 703
    .local v1, "result":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_17

    .line 704
    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->end:I

    add-int/2addr v4, v2

    invoke-interface {v3, v4}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->get(I)B

    move-result v3

    aput-byte v3, v1, v2

    .line 703
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 706
    .end local v2    # "i":I
    :cond_17
    return-object v1
.end method

.method public bridge synthetic size()I
    .registers 2

    .line 673
    invoke-super {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Sized;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 723
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->end:I

    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->getString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 731
    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 732
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->end:I

    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->size()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->getString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

###### Class androidx.emoji2.text.flatbuffer.FlexBuffers.FlexBufferException (androidx.emoji2.text.flatbuffer.FlexBuffers$FlexBufferException)
.class public Landroidx/emoji2/text/flatbuffer/FlexBuffers$FlexBufferException;
.super Ljava/lang/RuntimeException;
.source "FlexBuffers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/FlexBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlexBufferException"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 1083
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1084
    return-void
.end method

###### Class androidx.emoji2.text.flatbuffer.FlexBuffers.Key (androidx.emoji2.text.flatbuffer.FlexBuffers$Key)
.class public Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;
.super Landroidx/emoji2/text/flatbuffer/FlexBuffers$Object;
.source "FlexBuffers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/FlexBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# static fields
.field private static final EMPTY:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 743
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;

    invoke-static {}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$000()Landroidx/emoji2/text/flatbuffer/ReadBuf;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V

    sput-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->EMPTY:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;

    return-void
.end method

.method constructor <init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V
    .registers 4
    .param p1, "buff"    # Landroidx/emoji2/text/flatbuffer/ReadBuf;
    .param p2, "end"    # I
    .param p3, "byteWidth"    # I

    .line 746
    invoke-direct {p0, p1, p2, p3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Object;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V

    .line 747
    return-void
.end method

.method static synthetic access$700()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;
    .registers 1

    .line 741
    sget-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->EMPTY:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;

    return-object v0
.end method

.method public static empty()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;
    .registers 1

    .line 754
    sget-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->EMPTY:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;

    return-object v0
.end method


# virtual methods
.method compareTo([B)I
    .registers 7
    .param p1, "other"    # [B

    .line 778
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->end:I

    .line 779
    .local v0, "ia":I
    const/4 v1, 0x0

    .line 782
    .local v1, "io":I
    :cond_3
    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    invoke-interface {v2, v0}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->get(I)B

    move-result v2

    .line 783
    .local v2, "c1":B
    aget-byte v3, p1, v1

    .line 784
    .local v3, "c2":B
    if-nez v2, :cond_10

    .line 785
    sub-int v4, v2, v3

    return v4

    .line 786
    :cond_10
    add-int/lit8 v0, v0, 0x1

    .line 787
    add-int/lit8 v1, v1, 0x1

    .line 788
    array-length v4, p1

    if-ne v1, v4, :cond_1a

    .line 791
    sub-int v4, v2, v3

    return v4

    .line 794
    :cond_1a
    if-eq v2, v3, :cond_3

    .line 795
    sub-int v4, v2, v3

    return v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 805
    instance-of v0, p1, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 806
    return v1

    .line 808
    :cond_6
    move-object v0, p1

    check-cast v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;

    iget v0, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->end:I

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->end:I

    if-ne v0, v2, :cond_19

    move-object v0, p1

    check-cast v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;

    iget v0, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->byteWidth:I

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->byteWidth:I

    if-ne v0, v2, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 812
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->end:I

    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->byteWidth:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 768
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->end:I

    .line 769
    .local v0, "i":I
    :goto_2
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    invoke-interface {v1, v0}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->get(I)B

    move-result v1

    if-nez v1, :cond_18

    .line 770
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->end:I

    sub-int v1, v0, v1

    .line 771
    .local v1, "size":I
    nop

    .line 774
    .end local v0    # "i":I
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->end:I

    invoke-interface {v0, v2, v1}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->getString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 768
    .end local v1    # "size":I
    .restart local v0    # "i":I
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 762
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

###### Class androidx.emoji2.text.flatbuffer.FlexBuffers.KeyVector (androidx.emoji2.text.flatbuffer.FlexBuffers$KeyVector)
.class public Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;
.super Ljava/lang/Object;
.source "FlexBuffers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/FlexBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyVector"
.end annotation


# instance fields
.field private final vec:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;


# direct methods
.method constructor <init>(Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;)V
    .registers 2
    .param p1, "vec"    # Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    .line 1039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1040
    iput-object p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;->vec:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    .line 1041
    return-void
.end method


# virtual methods
.method public get(I)Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;
    .registers 8
    .param p1, "pos"    # I

    .line 1050
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;->size()I

    move-result v0

    .line 1051
    .local v0, "len":I
    if-lt p1, v0, :cond_b

    invoke-static {}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->access$700()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;

    move-result-object v1

    return-object v1

    .line 1052
    :cond_b
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;->vec:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    iget v1, v1, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->end:I

    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;->vec:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    iget v2, v2, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->byteWidth:I

    mul-int/2addr v2, p1

    add-int/2addr v1, v2

    .line 1053
    .local v1, "childPos":I
    new-instance v2, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;

    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;->vec:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    iget-object v3, v3, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget-object v4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;->vec:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    iget-object v4, v4, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget-object v5, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;->vec:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    iget v5, v5, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->byteWidth:I

    invoke-static {v4, v1, v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$200(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    move-result v4

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V

    return-object v2
.end method

.method public size()I
    .registers 2

    .line 1062
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;->vec:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1069
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1070
    .local v0, "b":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1071
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;->vec:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    invoke-virtual {v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 1072
    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;->vec:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    invoke-virtual {v2, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->get(I)Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 1073
    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;->vec:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    invoke-virtual {v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_2b

    .line 1074
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1077
    .end local v1    # "i":I
    :cond_2e
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

###### Class androidx.emoji2.text.flatbuffer.FlexBuffers.Map (androidx.emoji2.text.flatbuffer.FlexBuffers$Map)
.class public Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;
.super Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;
.source "FlexBuffers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/FlexBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Map"
.end annotation


# static fields
.field private static final EMPTY_MAP:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 820
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;

    invoke-static {}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$000()Landroidx/emoji2/text/flatbuffer/ReadBuf;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V

    sput-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;->EMPTY_MAP:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;

    return-void
.end method

.method constructor <init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V
    .registers 4
    .param p1, "bb"    # Landroidx/emoji2/text/flatbuffer/ReadBuf;
    .param p2, "end"    # I
    .param p3, "byteWidth"    # I

    .line 823
    invoke-direct {p0, p1, p2, p3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V

    .line 824
    return-void
.end method

.method private binarySearch(Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;[B)I
    .registers 8
    .param p1, "keys"    # Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;
    .param p2, "searchedKey"    # [B

    .line 902
    const/4 v0, 0x0

    .line 903
    .local v0, "low":I
    invoke-virtual {p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 905
    .local v1, "high":I
    :goto_7
    if-gt v0, v1, :cond_20

    .line 906
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 907
    .local v2, "mid":I
    invoke-virtual {p1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;->get(I)Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;

    move-result-object v3

    .line 908
    .local v3, "k":Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;
    invoke-virtual {v3, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->compareTo([B)I

    move-result v4

    .line 909
    .local v4, "cmp":I
    if-gez v4, :cond_1a

    .line 910
    add-int/lit8 v0, v2, 0x1

    goto :goto_1e

    .line 911
    :cond_1a
    if-lez v4, :cond_1f

    .line 912
    add-int/lit8 v1, v2, -0x1

    .line 915
    .end local v2    # "mid":I
    .end local v3    # "k":Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;
    .end local v4    # "cmp":I
    :goto_1e
    goto :goto_7

    .line 914
    .restart local v2    # "mid":I
    .restart local v3    # "k":Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;
    .restart local v4    # "cmp":I
    :cond_1f
    return v2

    .line 916
    .end local v2    # "mid":I
    .end local v3    # "k":Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;
    .end local v4    # "cmp":I
    :cond_20
    add-int/lit8 v2, v0, 0x1

    neg-int v2, v2

    return v2
.end method

.method public static empty()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;
    .registers 1

    .line 831
    sget-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;->EMPTY_MAP:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 839
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;->get([B)Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;

    move-result-object v0

    return-object v0
.end method

.method public get([B)Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;
    .registers 6
    .param p1, "key"    # [B

    .line 847
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;->keys()Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;

    move-result-object v0

    .line 848
    .local v0, "keys":Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;
    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;->size()I

    move-result v1

    .line 849
    .local v1, "size":I
    invoke-direct {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;->binarySearch(Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;[B)I

    move-result v2

    .line 850
    .local v2, "index":I
    if-ltz v2, :cond_15

    if-ge v2, v1, :cond_15

    .line 851
    invoke-virtual {p0, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;->get(I)Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;

    move-result-object v3

    return-object v3

    .line 853
    :cond_15
    invoke-static {}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->access$600()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;

    move-result-object v3

    return-object v3
.end method

.method public keys()Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;
    .registers 10

    .line 862
    const/4 v0, 0x3

    .line 863
    .local v0, "num_prefixed_fields":I
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;->end:I

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;->byteWidth:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    .line 864
    .local v1, "keysOffset":I
    new-instance v2, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;

    new-instance v3, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    iget-object v4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget-object v5, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v6, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;->byteWidth:I

    .line 865
    invoke-static {v5, v1, v6}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$200(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    move-result v5

    iget-object v6, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v7, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;->byteWidth:I

    add-int/2addr v7, v1

    iget v8, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;->byteWidth:I

    .line 866
    invoke-static {v6, v7, v8}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$100(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    move-result v6

    const/4 v7, 0x4

    invoke-direct {v3, v4, v5, v6, v7}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;III)V

    invoke-direct {v2, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;-><init>(Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;)V

    .line 864
    return-object v2
.end method

.method public toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 8
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .line 884
    const-string/jumbo v0, "{ "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;->keys()Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;

    move-result-object v0

    .line 886
    .local v0, "keys":Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;->size()I

    move-result v1

    .line 887
    .local v1, "size":I
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;->values()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;

    move-result-object v2

    .line 888
    .local v2, "vals":Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    if-ge v3, v1, :cond_43

    .line 889
    const/16 v4, 0x22

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 890
    invoke-virtual {v0, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;->get(I)Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 891
    const-string v5, "\" : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    invoke-virtual {v2, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->get(I)Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    add-int/lit8 v4, v1, -0x1

    if-eq v3, v4, :cond_40

    .line 894
    const-string v4, ", "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 896
    .end local v3    # "i":I
    :cond_43
    const-string v3, " }"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    return-object p1
.end method

.method public values()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;
    .registers 5

    .line 874
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;

    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;->end:I

    iget v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;->byteWidth:I

    invoke-direct {v0, v1, v2, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V

    return-object v0
.end method

###### Class androidx.emoji2.text.flatbuffer.FlexBuffers.Object (androidx.emoji2.text.flatbuffer.FlexBuffers$Object)
.class abstract Landroidx/emoji2/text/flatbuffer/FlexBuffers$Object;
.super Ljava/lang/Object;
.source "FlexBuffers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/FlexBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Object"
.end annotation


# instance fields
.field bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

.field byteWidth:I

.field end:I


# direct methods
.method constructor <init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V
    .registers 4
    .param p1, "buff"    # Landroidx/emoji2/text/flatbuffer/ReadBuf;
    .param p2, "end"    # I
    .param p3, "byteWidth"    # I

    .line 637
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 638
    iput-object p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Object;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    .line 639
    iput p2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Object;->end:I

    .line 640
    iput p3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Object;->byteWidth:I

    .line 641
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Object;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
.end method

###### Class androidx.emoji2.text.flatbuffer.FlexBuffers.Reference (androidx.emoji2.text.flatbuffer.FlexBuffers$Reference)
.class public Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;
.super Ljava/lang/Object;
.source "FlexBuffers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/FlexBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Reference"
.end annotation


# static fields
.field private static final NULL_REFERENCE:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;


# instance fields
.field private bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

.field private byteWidth:I

.field private end:I

.field private parentWidth:I

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 226
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;

    invoke-static {}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$000()Landroidx/emoji2/text/flatbuffer/ReadBuf;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;III)V

    sput-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->NULL_REFERENCE:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;

    return-void
.end method

.method constructor <init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;III)V
    .registers 13
    .param p1, "bb"    # Landroidx/emoji2/text/flatbuffer/ReadBuf;
    .param p2, "end"    # I
    .param p3, "parentWidth"    # I
    .param p4, "packedType"    # I

    .line 234
    and-int/lit8 v0, p4, 0x3

    const/4 v1, 0x1

    shl-int v6, v1, v0

    shr-int/lit8 v7, p4, 0x2

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .end local p1    # "bb":Landroidx/emoji2/text/flatbuffer/ReadBuf;
    .end local p2    # "end":I
    .end local p3    # "parentWidth":I
    .local v3, "bb":Landroidx/emoji2/text/flatbuffer/ReadBuf;
    .local v4, "end":I
    .local v5, "parentWidth":I
    invoke-direct/range {v2 .. v7}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;IIII)V

    .line 235
    return-void
.end method

.method constructor <init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;IIII)V
    .registers 6
    .param p1, "bb"    # Landroidx/emoji2/text/flatbuffer/ReadBuf;
    .param p2, "end"    # I
    .param p3, "parentWidth"    # I
    .param p4, "byteWidth"    # I
    .param p5, "type"    # I

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-object p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    .line 239
    iput p2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->end:I

    .line 240
    iput p3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->parentWidth:I

    .line 241
    iput p4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->byteWidth:I

    .line 242
    iput p5, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->type:I

    .line 243
    return-void
.end method

.method static synthetic access$600()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;
    .registers 1

    .line 224
    sget-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->NULL_REFERENCE:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;

    return-object v0
.end method


# virtual methods
.method public asBlob()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;
    .registers 6

    .line 546
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->isBlob()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->isString()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_12

    .line 549
    :cond_d
    invoke-static {}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->empty()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;

    move-result-object v0

    return-object v0

    .line 547
    :cond_12
    :goto_12
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;

    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->end:I

    iget v4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v2, v3, v4}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$200(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    move-result v2

    iget v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->byteWidth:I

    invoke-direct {v0, v1, v2, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V

    return-object v0
.end method

.method public asBoolean()Z
    .registers 8

    .line 559
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->isBoolean()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    .line 560
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->end:I

    invoke-interface {v0, v3}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->get(I)B

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_14

    :cond_13
    move v1, v2

    :goto_14
    return v1

    .line 562
    :cond_15
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->asUInt()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_20

    goto :goto_21

    :cond_20
    move v1, v2

    :goto_21
    return v1
.end method

.method public asFloat()D
    .registers 5

    .line 457
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    .line 459
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->end:I

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$400(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)D

    move-result-wide v0

    return-wide v0

    .line 461
    :cond_10
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->type:I

    const-wide/16 v1, 0x0

    sparse-switch v0, :sswitch_data_80

    .line 474
    return-wide v1

    .line 471
    :sswitch_18
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->asVector()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->size()I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 462
    :sswitch_22
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->end:I

    iget v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v1, v2, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$200(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    move-result v1

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->byteWidth:I

    invoke-static {v0, v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$400(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)D

    move-result-wide v0

    return-wide v0

    .line 468
    :sswitch_35
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->end:I

    iget v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v1, v2, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$200(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    move-result v1

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->byteWidth:I

    invoke-static {v0, v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$300(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0

    .line 467
    :sswitch_49
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->end:I

    iget v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v1, v2, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$200(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    move-result v1

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->byteWidth:I

    invoke-static {v0, v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$100(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 470
    :sswitch_5d
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    .line 466
    :sswitch_66
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->end:I

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$300(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0

    .line 463
    :sswitch_72
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->end:I

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$100(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 469
    :sswitch_7e
    return-wide v1

    nop

    :sswitch_data_80
    .sparse-switch
        0x0 -> :sswitch_7e
        0x1 -> :sswitch_72
        0x2 -> :sswitch_66
        0x5 -> :sswitch_5d
        0x6 -> :sswitch_49
        0x7 -> :sswitch_35
        0x8 -> :sswitch_22
        0xa -> :sswitch_18
        0x1a -> :sswitch_66
    .end sparse-switch
.end method

.method public asInt()I
    .registers 5

    .line 366
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 368
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->end:I

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$100(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    move-result v0

    return v0

    .line 370
    :cond_10
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->type:I

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_88

    .line 382
    return v1

    .line 379
    :sswitch_17
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->end:I

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$100(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    move-result v0

    return v0

    .line 378
    :sswitch_22
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->asVector()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->size()I

    move-result v0

    return v0

    .line 375
    :sswitch_2b
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->end:I

    iget v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v1, v2, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$200(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    move-result v1

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->byteWidth:I

    invoke-static {v0, v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$400(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    .line 373
    :sswitch_3f
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->end:I

    iget v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v1, v2, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$200(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    move-result v1

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$300(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 371
    :sswitch_53
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->end:I

    iget v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v1, v2, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$200(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    move-result v1

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->byteWidth:I

    invoke-static {v0, v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$100(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    move-result v0

    return v0

    .line 377
    :sswitch_66
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 374
    :sswitch_6f
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->end:I

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$400(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    .line 372
    :sswitch_7b
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->end:I

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$300(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 376
    :sswitch_87
    return v1

    :sswitch_data_88
    .sparse-switch
        0x0 -> :sswitch_87
        0x2 -> :sswitch_7b
        0x3 -> :sswitch_6f
        0x5 -> :sswitch_66
        0x6 -> :sswitch_53
        0x7 -> :sswitch_3f
        0x8 -> :sswitch_2b
        0xa -> :sswitch_22
        0x1a -> :sswitch_17
    .end sparse-switch
.end method

.method public asKey()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;
    .registers 6

    .line 483
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->isKey()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 484
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;

    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->end:I

    iget v4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v2, v3, v4}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$200(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    move-result v2

    iget v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->byteWidth:I

    invoke-direct {v0, v1, v2, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V

    return-object v0

    .line 486
    :cond_1a
    invoke-static {}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->empty()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;

    move-result-object v0

    return-object v0
.end method

.method public asLong()J
    .registers 5

    .line 424
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 426
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->end:I

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$500(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)J

    move-result-wide v0

    return-wide v0

    .line 428
    :cond_10
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->type:I

    const-wide/16 v1, 0x0

    sparse-switch v0, :sswitch_data_8c

    .line 446
    return-wide v1

    .line 443
    :sswitch_18
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->end:I

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$100(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 442
    :sswitch_24
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->asVector()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 433
    :sswitch_2e
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->end:I

    iget v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v1, v2, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$200(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    move-result v1

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->byteWidth:I

    invoke-static {v0, v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$400(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0

    .line 431
    :sswitch_42
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->end:I

    iget v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v1, v2, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$200(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    move-result v1

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$300(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)J

    move-result-wide v0

    return-wide v0

    .line 429
    :sswitch_55
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->end:I

    iget v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v1, v2, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$200(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    move-result v1

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->byteWidth:I

    invoke-static {v0, v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$500(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)J

    move-result-wide v0

    return-wide v0

    .line 437
    :sswitch_68
    :try_start_68
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_70
    .catch Ljava/lang/NumberFormatException; {:try_start_68 .. :try_end_70} :catch_71

    return-wide v0

    .line 438
    :catch_71
    move-exception v0

    .line 439
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return-wide v1

    .line 432
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    :sswitch_73
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->end:I

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$400(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0

    .line 430
    :sswitch_7f
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->end:I

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$300(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)J

    move-result-wide v0

    return-wide v0

    .line 434
    :sswitch_8a
    return-wide v1

    nop

    :sswitch_data_8c
    .sparse-switch
        0x0 -> :sswitch_8a
        0x2 -> :sswitch_7f
        0x3 -> :sswitch_73
        0x5 -> :sswitch_68
        0x6 -> :sswitch_55
        0x7 -> :sswitch_42
        0x8 -> :sswitch_2e
        0xa -> :sswitch_24
        0x1a -> :sswitch_18
    .end sparse-switch
.end method

.method public asMap()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;
    .registers 6

    .line 517
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->isMap()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 518
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;

    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->end:I

    iget v4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v2, v3, v4}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$200(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    move-result v2

    iget v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->byteWidth:I

    invoke-direct {v0, v1, v2, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V

    return-object v0

    .line 520
    :cond_1a
    invoke-static {}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;->empty()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;

    move-result-object v0

    return-object v0
.end method

.method public asString()Ljava/lang/String;
    .registers 5

    .line 495
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->isString()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 496
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->end:I

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$200(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    move-result v0

    .line 497
    .local v0, "start":I
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->byteWidth:I

    sub-int v2, v0, v2

    iget v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->byteWidth:I

    invoke-static {v1, v2, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$300(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)J

    move-result-wide v1

    long-to-int v1, v1

    .line 498
    .local v1, "size":I
    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    invoke-interface {v2, v0, v1}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->getString(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 500
    .end local v0    # "start":I
    .end local v1    # "size":I
    :cond_24
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->isKey()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 501
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->end:I

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->byteWidth:I

    invoke-static {v0, v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$200(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    move-result v0

    .line 502
    .restart local v0    # "start":I
    move v1, v0

    .line 503
    .local v1, "i":I
    :goto_35
    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    invoke-interface {v2, v1}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->get(I)B

    move-result v2

    if-nez v2, :cond_46

    .line 504
    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    sub-int v3, v1, v0

    invoke-interface {v2, v0, v3}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->getString(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 502
    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 508
    .end local v0    # "start":I
    .end local v1    # "i":I
    :cond_49
    const-string v0, ""

    return-object v0
.end method

.method public asUInt()J
    .registers 5

    .line 395
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 397
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->end:I

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$300(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)J

    move-result-wide v0

    return-wide v0

    .line 399
    :cond_10
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->type:I

    const-wide/16 v1, 0x0

    sparse-switch v0, :sswitch_data_8a

    .line 411
    return-wide v1

    .line 408
    :sswitch_18
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->end:I

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$100(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 407
    :sswitch_24
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->asVector()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 404
    :sswitch_2e
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->end:I

    iget v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v1, v2, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$200(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    move-result v1

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$400(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0

    .line 400
    :sswitch_42
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->end:I

    iget v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v1, v2, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$200(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    move-result v1

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->byteWidth:I

    invoke-static {v0, v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$300(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)J

    move-result-wide v0

    return-wide v0

    .line 402
    :sswitch_55
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->end:I

    iget v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v1, v2, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$200(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    move-result v1

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->byteWidth:I

    invoke-static {v0, v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$500(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)J

    move-result-wide v0

    return-wide v0

    .line 406
    :sswitch_68
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 403
    :sswitch_71
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->end:I

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$400(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0

    .line 401
    :sswitch_7d
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->end:I

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$500(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)J

    move-result-wide v0

    return-wide v0

    .line 405
    :sswitch_88
    return-wide v1

    nop

    :sswitch_data_8a
    .sparse-switch
        0x0 -> :sswitch_88
        0x1 -> :sswitch_7d
        0x3 -> :sswitch_71
        0x5 -> :sswitch_68
        0x6 -> :sswitch_55
        0x7 -> :sswitch_42
        0x8 -> :sswitch_2e
        0xa -> :sswitch_24
        0x1a -> :sswitch_18
    .end sparse-switch
.end method

.method public asVector()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;
    .registers 6

    .line 529
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->isVector()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 530
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;

    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->end:I

    iget v4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v2, v3, v4}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$200(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    move-result v2

    iget v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->byteWidth:I

    invoke-direct {v0, v1, v2, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V

    return-object v0

    .line 531
    :cond_1a
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->type:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_35

    .line 533
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->end:I

    iget v4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v2, v3, v4}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$200(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    move-result v2

    iget v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->byteWidth:I

    const/4 v4, 0x4

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;III)V

    return-object v0

    .line 534
    :cond_35
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->type:I

    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->isTypedVector(I)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 535
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->end:I

    iget v4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v2, v3, v4}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$200(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    move-result v2

    iget v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->byteWidth:I

    iget v4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->type:I

    invoke-static {v4}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->toTypedVectorElementType(I)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;III)V

    return-object v0

    .line 537
    :cond_57
    invoke-static {}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->empty()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 250
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->type:I

    return v0
.end method

.method public isBlob()Z
    .registers 3

    .line 354
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->type:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isBoolean()Z
    .registers 3

    .line 266
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->type:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isFloat()Z
    .registers 3

    .line 290
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->type:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x1

    :goto_f
    return v0
.end method

.method public isInt()Z
    .registers 4

    .line 298
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->type:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :cond_c
    :goto_c
    return v1
.end method

.method public isIntOrUInt()Z
    .registers 2

    .line 282
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->isInt()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->isUInt()Z

    move-result v0

    if-eqz v0, :cond_d

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

.method public isKey()Z
    .registers 3

    .line 322
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isMap()Z
    .registers 3

    .line 346
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->type:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isNull()Z
    .registers 2

    .line 258
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->type:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isNumeric()Z
    .registers 2

    .line 274
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->isIntOrUInt()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->isFloat()Z

    move-result v0

    if-eqz v0, :cond_d

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

.method public isString()Z
    .registers 3

    .line 314
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isTypedVector()Z
    .registers 2

    .line 338
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->type:I

    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->isTypedVector(I)Z

    move-result v0

    return v0
.end method

.method public isUInt()Z
    .registers 3

    .line 306
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->type:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public isVector()Z
    .registers 3

    .line 330
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->type:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_f

    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->type:I

    const/16 v1, 0x9

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

.method public toString()Ljava/lang/String;
    .registers 3

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 580
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->type:I

    const/16 v1, 0x22

    packed-switch v0, :pswitch_data_94

    .line 623
    :pswitch_7
    return-object p1

    .line 603
    :pswitch_8
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->asBoolean()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0

    .line 601
    :pswitch_11
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->asBlob()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0

    .line 621
    :pswitch_1a
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$FlexBufferException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not_implemented:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$FlexBufferException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
    :pswitch_35
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->asVector()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0

    .line 599
    :pswitch_3e
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->asVector()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0

    .line 597
    :pswitch_47
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->asMap()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0

    .line 595
    :pswitch_50
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0

    .line 593
    :pswitch_61
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->asKey()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;

    move-result-object v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0

    .line 591
    :pswitch_72
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->asFloat()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0

    .line 588
    :pswitch_7b
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->asUInt()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0

    .line 585
    :pswitch_84
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->asLong()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0

    .line 582
    :pswitch_8d
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_8d
        :pswitch_84
        :pswitch_7b
        :pswitch_72
        :pswitch_61
        :pswitch_50
        :pswitch_84
        :pswitch_7b
        :pswitch_72
        :pswitch_47
        :pswitch_3e
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_11
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_35
    .end packed-switch
.end method

###### Class androidx.emoji2.text.flatbuffer.FlexBuffers.Sized (androidx.emoji2.text.flatbuffer.FlexBuffers$Sized)
.class abstract Landroidx/emoji2/text/flatbuffer/FlexBuffers$Sized;
.super Landroidx/emoji2/text/flatbuffer/FlexBuffers$Object;
.source "FlexBuffers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/FlexBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Sized"
.end annotation


# instance fields
.field protected final size:I


# direct methods
.method constructor <init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V
    .registers 6
    .param p1, "buff"    # Landroidx/emoji2/text/flatbuffer/ReadBuf;
    .param p2, "end"    # I
    .param p3, "byteWidth"    # I

    .line 657
    invoke-direct {p0, p1, p2, p3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Object;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V

    .line 658
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Sized;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    sub-int v1, p2, p3

    invoke-static {v0, v1, p3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$100(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    move-result v0

    iput v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Sized;->size:I

    .line 659
    return-void
.end method


# virtual methods
.method public size()I
    .registers 2

    .line 662
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Sized;->size:I

    return v0
.end method

###### Class androidx.emoji2.text.flatbuffer.FlexBuffers.TypedVector (androidx.emoji2.text.flatbuffer.FlexBuffers$TypedVector)
.class public Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;
.super Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;
.source "FlexBuffers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/FlexBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypedVector"
.end annotation


# static fields
.field private static final EMPTY_VECTOR:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;


# instance fields
.field private final elemType:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 986
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    invoke-static {}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$000()Landroidx/emoji2/text/flatbuffer/ReadBuf;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;III)V

    sput-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->EMPTY_VECTOR:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    return-void
.end method

.method constructor <init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;III)V
    .registers 5
    .param p1, "bb"    # Landroidx/emoji2/text/flatbuffer/ReadBuf;
    .param p2, "end"    # I
    .param p3, "byteWidth"    # I
    .param p4, "elemType"    # I

    .line 991
    invoke-direct {p0, p1, p2, p3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V

    .line 992
    iput p4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->elemType:I

    .line 993
    return-void
.end method

.method public static empty()Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;
    .registers 1

    .line 996
    sget-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->EMPTY_VECTOR:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    return-object v0
.end method


# virtual methods
.method public get(I)Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;
    .registers 11
    .param p1, "pos"    # I

    .line 1025
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->size()I

    move-result v0

    .line 1026
    .local v0, "len":I
    if-lt p1, v0, :cond_b

    invoke-static {}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->access$600()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;

    move-result-object v1

    return-object v1

    .line 1027
    :cond_b
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->end:I

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->byteWidth:I

    mul-int/2addr v2, p1

    add-int v5, v1, v2

    .line 1028
    .local v5, "childPos":I
    new-instance v3, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;

    iget-object v4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v6, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->byteWidth:I

    const/4 v7, 0x1

    iget v8, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->elemType:I

    invoke-direct/range {v3 .. v8}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;IIII)V

    return-object v3
.end method

.method public getElemType()I
    .registers 2

    .line 1014
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->elemType:I

    return v0
.end method

.method public isEmptyVector()Z
    .registers 2

    .line 1005
    sget-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->EMPTY_VECTOR:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

###### Class androidx.emoji2.text.flatbuffer.FlexBuffers.Unsigned (androidx.emoji2.text.flatbuffer.FlexBuffers$Unsigned)
.class Landroidx/emoji2/text/flatbuffer/FlexBuffers$Unsigned;
.super Ljava/lang/Object;
.source "FlexBuffers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/FlexBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Unsigned"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1087
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static byteToUnsignedInt(B)I
    .registers 2
    .param p0, "x"    # B

    .line 1090
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method static intToUnsignedLong(I)J
    .registers 5
    .param p0, "x"    # I

    .line 1098
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method static shortToUnsignedInt(S)I
    .registers 2
    .param p0, "x"    # S

    .line 1094
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

###### Class androidx.emoji2.text.flatbuffer.FlexBuffers.Vector (androidx.emoji2.text.flatbuffer.FlexBuffers$Vector)
.class public Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;
.super Landroidx/emoji2/text/flatbuffer/FlexBuffers$Sized;
.source "FlexBuffers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/FlexBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Vector"
.end annotation


# static fields
.field private static final EMPTY_VECTOR:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 925
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;

    invoke-static {}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$000()Landroidx/emoji2/text/flatbuffer/ReadBuf;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V

    sput-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->EMPTY_VECTOR:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;

    return-void
.end method

.method constructor <init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V
    .registers 4
    .param p1, "bb"    # Landroidx/emoji2/text/flatbuffer/ReadBuf;
    .param p2, "end"    # I
    .param p3, "byteWidth"    # I

    .line 928
    invoke-direct {p0, p1, p2, p3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Sized;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V

    .line 929
    return-void
.end method

.method public static empty()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;
    .registers 1

    .line 936
    sget-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->EMPTY_VECTOR:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;

    return-object v0
.end method


# virtual methods
.method public get(I)Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;
    .registers 9
    .param p1, "index"    # I

    .line 971
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->size()I

    move-result v0

    int-to-long v0, v0

    .line 972
    .local v0, "len":J
    int-to-long v2, p1

    cmp-long v2, v2, v0

    if-ltz v2, :cond_f

    .line 973
    invoke-static {}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->access$600()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;

    move-result-object v2

    return-object v2

    .line 975
    :cond_f
    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->end:I

    int-to-long v3, v3

    iget v5, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->byteWidth:I

    int-to-long v5, v5

    mul-long/2addr v5, v0

    add-long/2addr v3, v5

    int-to-long v5, p1

    add-long/2addr v3, v5

    long-to-int v3, v3

    invoke-interface {v2, v3}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->get(I)B

    move-result v2

    invoke-static {v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Unsigned;->byteToUnsignedInt(B)I

    move-result v2

    .line 976
    .local v2, "packedType":I
    iget v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->end:I

    iget v4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->byteWidth:I

    mul-int/2addr v4, p1

    add-int/2addr v3, v4

    .line 977
    .local v3, "obj_end":I
    new-instance v4, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;

    iget-object v5, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v6, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->byteWidth:I

    invoke-direct {v4, v5, v3, v6, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;III)V

    return-object v4
.end method

.method public isEmpty()Z
    .registers 2

    .line 944
    sget-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->EMPTY_VECTOR:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public bridge synthetic size()I
    .registers 2

    .line 923
    invoke-super {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Sized;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .registers 2

    .line 923
    invoke-super {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Sized;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 952
    const-string v0, "[ "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->size()I

    move-result v0

    .line 954
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_1f

    .line 955
    invoke-virtual {p0, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->get(I)Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 956
    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_1c

    .line 957
    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 960
    .end local v1    # "i":I
    :cond_1f
    const-string v1, " ]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    return-object p1
.end method
