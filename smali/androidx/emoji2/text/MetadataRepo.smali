###### Class androidx.emoji2.text.MetadataRepo (androidx.emoji2.text.MetadataRepo)
.class public final Landroidx/emoji2/text/MetadataRepo;
.super Ljava/lang/Object;
.source "MetadataRepo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/MetadataRepo$Node;
    }
.end annotation


# static fields
.field private static final DEFAULT_ROOT_SIZE:I = 0x400

.field private static final S_TRACE_CREATE_REPO:Ljava/lang/String; = "EmojiCompat.MetadataRepo.create"


# instance fields
.field private final mEmojiCharArray:[C

.field private final mMetadataList:Landroidx/emoji2/text/flatbuffer/MetadataList;

.field private final mRootNode:Landroidx/emoji2/text/MetadataRepo$Node;

.field private final mTypeface:Landroid/graphics/Typeface;


# direct methods
.method private constructor <init>(Landroid/graphics/Typeface;Landroidx/emoji2/text/flatbuffer/MetadataList;)V
    .registers 5
    .param p1, "typeface"    # Landroid/graphics/Typeface;
    .param p2, "metadataList"    # Landroidx/emoji2/text/flatbuffer/MetadataList;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Landroidx/emoji2/text/MetadataRepo;->mTypeface:Landroid/graphics/Typeface;

    .line 77
    iput-object p2, p0, Landroidx/emoji2/text/MetadataRepo;->mMetadataList:Landroidx/emoji2/text/flatbuffer/MetadataList;

    .line 78
    new-instance v0, Landroidx/emoji2/text/MetadataRepo$Node;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Landroidx/emoji2/text/MetadataRepo$Node;-><init>(I)V

    iput-object v0, p0, Landroidx/emoji2/text/MetadataRepo;->mRootNode:Landroidx/emoji2/text/MetadataRepo$Node;

    .line 79
    iget-object v0, p0, Landroidx/emoji2/text/MetadataRepo;->mMetadataList:Landroidx/emoji2/text/flatbuffer/MetadataList;

    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/MetadataList;->listLength()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    iput-object v0, p0, Landroidx/emoji2/text/MetadataRepo;->mEmojiCharArray:[C

    .line 80
    iget-object v0, p0, Landroidx/emoji2/text/MetadataRepo;->mMetadataList:Landroidx/emoji2/text/flatbuffer/MetadataList;

    invoke-direct {p0, v0}, Landroidx/emoji2/text/MetadataRepo;->constructIndex(Landroidx/emoji2/text/flatbuffer/MetadataList;)V

    .line 81
    return-void
.end method

.method private constructIndex(Landroidx/emoji2/text/flatbuffer/MetadataList;)V
    .registers 8
    .param p1, "metadataList"    # Landroidx/emoji2/text/flatbuffer/MetadataList;

    .line 160
    invoke-virtual {p1}, Landroidx/emoji2/text/flatbuffer/MetadataList;->listLength()I

    move-result v0

    .line 161
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_1d

    .line 162
    new-instance v2, Landroidx/emoji2/text/EmojiMetadata;

    invoke-direct {v2, p0, v1}, Landroidx/emoji2/text/EmojiMetadata;-><init>(Landroidx/emoji2/text/MetadataRepo;I)V

    .line 166
    .local v2, "metadata":Landroidx/emoji2/text/EmojiMetadata;
    invoke-virtual {v2}, Landroidx/emoji2/text/EmojiMetadata;->getId()I

    move-result v3

    iget-object v4, p0, Landroidx/emoji2/text/MetadataRepo;->mEmojiCharArray:[C

    mul-int/lit8 v5, v1, 0x2

    invoke-static {v3, v4, v5}, Ljava/lang/Character;->toChars(I[CI)I

    .line 167
    invoke-virtual {p0, v2}, Landroidx/emoji2/text/MetadataRepo;->put(Landroidx/emoji2/text/EmojiMetadata;)V

    .line 161
    .end local v2    # "metadata":Landroidx/emoji2/text/EmojiMetadata;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 169
    .end local v1    # "i":I
    :cond_1d
    return-void
.end method

.method public static create(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroidx/emoji2/text/MetadataRepo;
    .registers 5
    .param p0, "assetManager"    # Landroid/content/res/AssetManager;
    .param p1, "assetPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    :try_start_0
    const-string v0, "EmojiCompat.MetadataRepo.create"

    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 148
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 149
    .local v0, "typeface":Landroid/graphics/Typeface;
    new-instance v1, Landroidx/emoji2/text/MetadataRepo;

    .line 150
    invoke-static {p0, p1}, Landroidx/emoji2/text/MetadataListReader;->read(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroidx/emoji2/text/flatbuffer/MetadataList;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroidx/emoji2/text/MetadataRepo;-><init>(Landroid/graphics/Typeface;Landroidx/emoji2/text/flatbuffer/MetadataList;)V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_16

    .line 152
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 149
    return-object v1

    .line 152
    .end local v0    # "typeface":Landroid/graphics/Typeface;
    :catchall_16
    move-exception v0

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 153
    throw v0
.end method

.method public static create(Landroid/graphics/Typeface;)Landroidx/emoji2/text/MetadataRepo;
    .registers 3
    .param p0, "typeface"    # Landroid/graphics/Typeface;

    .line 93
    :try_start_0
    const-string v0, "EmojiCompat.MetadataRepo.create"

    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 94
    new-instance v0, Landroidx/emoji2/text/MetadataRepo;

    new-instance v1, Landroidx/emoji2/text/flatbuffer/MetadataList;

    invoke-direct {v1}, Landroidx/emoji2/text/flatbuffer/MetadataList;-><init>()V

    invoke-direct {v0, p0, v1}, Landroidx/emoji2/text/MetadataRepo;-><init>(Landroid/graphics/Typeface;Landroidx/emoji2/text/flatbuffer/MetadataList;)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_13

    .line 96
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 94
    return-object v0

    .line 96
    :catchall_13
    move-exception v0

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 97
    throw v0
.end method

.method public static create(Landroid/graphics/Typeface;Ljava/io/InputStream;)Landroidx/emoji2/text/MetadataRepo;
    .registers 4
    .param p0, "typeface"    # Landroid/graphics/Typeface;
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    :try_start_0
    const-string v0, "EmojiCompat.MetadataRepo.create"

    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 112
    new-instance v0, Landroidx/emoji2/text/MetadataRepo;

    invoke-static {p1}, Landroidx/emoji2/text/MetadataListReader;->read(Ljava/io/InputStream;)Landroidx/emoji2/text/flatbuffer/MetadataList;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/emoji2/text/MetadataRepo;-><init>(Landroid/graphics/Typeface;Landroidx/emoji2/text/flatbuffer/MetadataList;)V
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_12

    .line 114
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 112
    return-object v0

    .line 114
    :catchall_12
    move-exception v0

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 115
    throw v0
.end method

.method public static create(Landroid/graphics/Typeface;Ljava/nio/ByteBuffer;)Landroidx/emoji2/text/MetadataRepo;
    .registers 4
    .param p0, "typeface"    # Landroid/graphics/Typeface;
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    :try_start_0
    const-string v0, "EmojiCompat.MetadataRepo.create"

    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 130
    new-instance v0, Landroidx/emoji2/text/MetadataRepo;

    invoke-static {p1}, Landroidx/emoji2/text/MetadataListReader;->read(Ljava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataList;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/emoji2/text/MetadataRepo;-><init>(Landroid/graphics/Typeface;Landroidx/emoji2/text/flatbuffer/MetadataList;)V
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_12

    .line 132
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 130
    return-object v0

    .line 132
    :catchall_12
    move-exception v0

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 133
    throw v0
.end method


# virtual methods
.method public getEmojiCharArray()[C
    .registers 2

    .line 203
    iget-object v0, p0, Landroidx/emoji2/text/MetadataRepo;->mEmojiCharArray:[C

    return-object v0
.end method

.method public getMetadataList()Landroidx/emoji2/text/flatbuffer/MetadataList;
    .registers 2

    .line 212
    iget-object v0, p0, Landroidx/emoji2/text/MetadataRepo;->mMetadataList:Landroidx/emoji2/text/flatbuffer/MetadataList;

    return-object v0
.end method

.method getMetadataVersion()I
    .registers 2

    .line 185
    iget-object v0, p0, Landroidx/emoji2/text/MetadataRepo;->mMetadataList:Landroidx/emoji2/text/flatbuffer/MetadataList;

    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/MetadataList;->version()I

    move-result v0

    return v0
.end method

.method getRootNode()Landroidx/emoji2/text/MetadataRepo$Node;
    .registers 2

    .line 194
    iget-object v0, p0, Landroidx/emoji2/text/MetadataRepo;->mRootNode:Landroidx/emoji2/text/MetadataRepo$Node;

    return-object v0
.end method

.method getTypeface()Landroid/graphics/Typeface;
    .registers 2

    .line 177
    iget-object v0, p0, Landroidx/emoji2/text/MetadataRepo;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method put(Landroidx/emoji2/text/EmojiMetadata;)V
    .registers 6
    .param p1, "data"    # Landroidx/emoji2/text/EmojiMetadata;

    .line 223
    const-string v0, "emoji metadata cannot be null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    invoke-virtual {p1}, Landroidx/emoji2/text/EmojiMetadata;->getCodepointsLength()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_f

    move v0, v1

    goto :goto_10

    :cond_f
    move v0, v2

    :goto_10
    const-string v3, "invalid metadata codepoint length"

    invoke-static {v0, v3}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 227
    iget-object v0, p0, Landroidx/emoji2/text/MetadataRepo;->mRootNode:Landroidx/emoji2/text/MetadataRepo$Node;

    invoke-virtual {p1}, Landroidx/emoji2/text/EmojiMetadata;->getCodepointsLength()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v0, p1, v2, v3}, Landroidx/emoji2/text/MetadataRepo$Node;->put(Landroidx/emoji2/text/EmojiMetadata;II)V

    .line 228
    return-void
.end method

###### Class androidx.emoji2.text.MetadataRepo.Node (androidx.emoji2.text.MetadataRepo$Node)
.class Landroidx/emoji2/text/MetadataRepo$Node;
.super Ljava/lang/Object;
.source "MetadataRepo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/MetadataRepo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Node"
.end annotation


# instance fields
.field private final mChildren:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/emoji2/text/MetadataRepo$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mData:Landroidx/emoji2/text/EmojiMetadata;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 242
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/emoji2/text/MetadataRepo$Node;-><init>(I)V

    .line 243
    return-void
.end method

.method constructor <init>(I)V
    .registers 3
    .param p1, "defaultChildrenSize"    # I

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, p1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroidx/emoji2/text/MetadataRepo$Node;->mChildren:Landroid/util/SparseArray;

    .line 248
    return-void
.end method


# virtual methods
.method get(I)Landroidx/emoji2/text/MetadataRepo$Node;
    .registers 3
    .param p1, "key"    # I

    .line 251
    iget-object v0, p0, Landroidx/emoji2/text/MetadataRepo$Node;->mChildren:Landroid/util/SparseArray;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_e

    :cond_6
    iget-object v0, p0, Landroidx/emoji2/text/MetadataRepo$Node;->mChildren:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/emoji2/text/MetadataRepo$Node;

    :goto_e
    return-object v0
.end method

.method final getData()Landroidx/emoji2/text/EmojiMetadata;
    .registers 2

    .line 255
    iget-object v0, p0, Landroidx/emoji2/text/MetadataRepo$Node;->mData:Landroidx/emoji2/text/EmojiMetadata;

    return-object v0
.end method

.method put(Landroidx/emoji2/text/EmojiMetadata;II)V
    .registers 7
    .param p1, "data"    # Landroidx/emoji2/text/EmojiMetadata;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 260
    invoke-virtual {p1, p2}, Landroidx/emoji2/text/EmojiMetadata;->getCodepointAt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/MetadataRepo$Node;->get(I)Landroidx/emoji2/text/MetadataRepo$Node;

    move-result-object v0

    .line 261
    .local v0, "node":Landroidx/emoji2/text/MetadataRepo$Node;
    if-nez v0, :cond_19

    .line 262
    new-instance v1, Landroidx/emoji2/text/MetadataRepo$Node;

    invoke-direct {v1}, Landroidx/emoji2/text/MetadataRepo$Node;-><init>()V

    move-object v0, v1

    .line 263
    iget-object v1, p0, Landroidx/emoji2/text/MetadataRepo$Node;->mChildren:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroidx/emoji2/text/EmojiMetadata;->getCodepointAt(I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 266
    :cond_19
    if-le p3, p2, :cond_21

    .line 267
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, p1, v1, p3}, Landroidx/emoji2/text/MetadataRepo$Node;->put(Landroidx/emoji2/text/EmojiMetadata;II)V

    goto :goto_23

    .line 269
    :cond_21
    iput-object p1, v0, Landroidx/emoji2/text/MetadataRepo$Node;->mData:Landroidx/emoji2/text/EmojiMetadata;

    .line 271
    :goto_23
    return-void
.end method
