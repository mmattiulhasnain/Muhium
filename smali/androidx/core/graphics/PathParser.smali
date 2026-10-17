###### Class androidx.core.graphics.PathParser (androidx.core.graphics.PathParser)
.class public Landroidx/core/graphics/PathParser;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/PathParser$PathDataNode;,
        Landroidx/core/graphics/PathParser$ExtractFloatResult;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "PathParser"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 795
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 796
    return-void
.end method

.method private static addNode(Ljava/util/ArrayList;C[F)V
    .registers 4
    .param p1, "cmd"    # C
    .param p2, "val"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/core/graphics/PathParser$PathDataNode;",
            ">;C[F)V"
        }
    .end annotation

    .line 190
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/graphics/PathParser$PathDataNode;>;"
    new-instance v0, Landroidx/core/graphics/PathParser$PathDataNode;

    invoke-direct {v0, p1, p2}, Landroidx/core/graphics/PathParser$PathDataNode;-><init>(C[F)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    return-void
.end method

.method public static canMorph([Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;)Z
    .registers 6
    .param p0, "nodesFrom"    # [Landroidx/core/graphics/PathParser$PathDataNode;
    .param p1, "nodesTo"    # [Landroidx/core/graphics/PathParser$PathDataNode;

    .line 137
    const/4 v0, 0x0

    if-eqz p0, :cond_2c

    if-nez p1, :cond_6

    goto :goto_2c

    .line 141
    :cond_6
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_b

    .line 142
    return v0

    .line 145
    :cond_b
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    array-length v2, p0

    if-ge v1, v2, :cond_2a

    .line 146
    aget-object v2, p0, v1

    iget-char v2, v2, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    aget-object v3, p1, v1

    iget-char v3, v3, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    if-ne v2, v3, :cond_29

    aget-object v2, p0, v1

    iget-object v2, v2, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v2, v2

    aget-object v3, p1, v1

    iget-object v3, v3, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v3, v3

    if-eq v2, v3, :cond_26

    goto :goto_29

    .line 145
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 148
    :cond_29
    :goto_29
    return v0

    .line 151
    .end local v1    # "i":I
    :cond_2a
    const/4 v0, 0x1

    return v0

    .line 138
    :cond_2c
    :goto_2c
    return v0
.end method

.method static copyOfRange([FII)[F
    .registers 8
    .param p0, "original"    # [F
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 54
    if-gt p1, p2, :cond_1c

    .line 57
    array-length v0, p0

    .line 58
    .local v0, "originalLength":I
    if-ltz p1, :cond_16

    if-gt p1, v0, :cond_16

    .line 61
    sub-int v1, p2, p1

    .line 62
    .local v1, "resultLength":I
    sub-int v2, v0, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 63
    .local v2, "copyLength":I
    new-array v3, v1, [F

    .line 64
    .local v3, "result":[F
    const/4 v4, 0x0

    invoke-static {p0, p1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    return-object v3

    .line 59
    .end local v1    # "resultLength":I
    .end local v2    # "copyLength":I
    .end local v3    # "result":[F
    :cond_16
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 55
    .end local v0    # "originalLength":I
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static createNodesFromPathData(Ljava/lang/String;)[Landroidx/core/graphics/PathParser$PathDataNode;
    .registers 7
    .param p0, "pathData"    # Ljava/lang/String;

    .line 91
    if-nez p0, :cond_4

    .line 92
    const/4 v0, 0x0

    return-object v0

    .line 94
    :cond_4
    const/4 v0, 0x0

    .line 95
    .local v0, "start":I
    const/4 v1, 0x1

    .line 97
    .local v1, "end":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/graphics/PathParser$PathDataNode;>;"
    :goto_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    if-ge v1, v3, :cond_34

    .line 99
    invoke-static {p0, v1}, Landroidx/core/graphics/PathParser;->nextStart(Ljava/lang/String;I)I

    move-result v1

    .line 100
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2f

    .line 102
    invoke-static {v3}, Landroidx/core/graphics/PathParser;->getFloats(Ljava/lang/String;)[F

    move-result-object v5

    .line 103
    .local v5, "val":[F
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v2, v4, v5}, Landroidx/core/graphics/PathParser;->addNode(Ljava/util/ArrayList;C[F)V

    .line 106
    .end local v5    # "val":[F
    :cond_2f
    move v0, v1

    .line 107
    nop

    .end local v3    # "s":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 108
    goto :goto_b

    .line 109
    :cond_34
    sub-int v3, v1, v0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_48

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_48

    .line 110
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    new-array v4, v4, [F

    invoke-static {v2, v3, v4}, Landroidx/core/graphics/PathParser;->addNode(Ljava/util/ArrayList;C[F)V

    .line 112
    :cond_48
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroidx/core/graphics/PathParser$PathDataNode;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroidx/core/graphics/PathParser$PathDataNode;

    return-object v3
.end method

.method public static createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;
    .registers 7
    .param p0, "pathData"    # Ljava/lang/String;

    .line 73
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 74
    .local v0, "path":Landroid/graphics/Path;
    invoke-static {p0}, Landroidx/core/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroidx/core/graphics/PathParser$PathDataNode;

    move-result-object v1

    .line 75
    .local v1, "nodes":[Landroidx/core/graphics/PathParser$PathDataNode;
    if-eqz v1, :cond_2a

    .line 77
    :try_start_b
    invoke-static {v1, v0}, Landroidx/core/graphics/PathParser$PathDataNode;->nodesToPath([Landroidx/core/graphics/PathParser$PathDataNode;Landroid/graphics/Path;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_e} :catch_10

    .line 80
    nop

    .line 81
    return-object v0

    .line 78
    :catch_10
    move-exception v2

    .line 79
    .local v2, "e":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 83
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_2a
    const/4 v2, 0x0

    return-object v2
.end method

.method public static deepCopyNodes([Landroidx/core/graphics/PathParser$PathDataNode;)[Landroidx/core/graphics/PathParser$PathDataNode;
    .registers 5
    .param p0, "source"    # [Landroidx/core/graphics/PathParser$PathDataNode;

    .line 120
    if-nez p0, :cond_4

    .line 121
    const/4 v0, 0x0

    return-object v0

    .line 123
    :cond_4
    array-length v0, p0

    new-array v0, v0, [Landroidx/core/graphics/PathParser$PathDataNode;

    .line 124
    .local v0, "copy":[Landroidx/core/graphics/PathParser$PathDataNode;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_17

    .line 125
    new-instance v2, Landroidx/core/graphics/PathParser$PathDataNode;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Landroidx/core/graphics/PathParser$PathDataNode;-><init>(Landroidx/core/graphics/PathParser$PathDataNode;)V

    aput-object v2, v0, v1

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 127
    .end local v1    # "i":I
    :cond_17
    return-object v0
.end method

.method private static extract(Ljava/lang/String;ILandroidx/core/graphics/PathParser$ExtractFloatResult;)V
    .registers 10
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "result"    # Landroidx/core/graphics/PathParser$ExtractFloatResult;

    .line 258
    move v0, p1

    .line 259
    .local v0, "currentIndex":I
    const/4 v1, 0x0

    .line 260
    .local v1, "foundSeparator":Z
    const/4 v2, 0x0

    iput-boolean v2, p2, Landroidx/core/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    .line 261
    const/4 v2, 0x0

    .line 262
    .local v2, "secondDot":Z
    const/4 v3, 0x0

    .line 263
    .local v3, "isExponential":Z
    :goto_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_32

    .line 264
    move v4, v3

    .line 265
    .local v4, "isPrevExponential":Z
    const/4 v3, 0x0

    .line 266
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 267
    .local v5, "currentChar":C
    const/4 v6, 0x1

    sparse-switch v5, :sswitch_data_36

    goto :goto_2c

    .line 290
    :sswitch_18
    const/4 v3, 0x1

    goto :goto_2c

    .line 280
    :sswitch_1a
    if-nez v2, :cond_1e

    .line 281
    const/4 v2, 0x1

    goto :goto_2c

    .line 284
    :cond_1e
    const/4 v1, 0x1

    .line 285
    iput-boolean v6, p2, Landroidx/core/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    .line 287
    goto :goto_2c

    .line 274
    :sswitch_22
    if-eq v0, p1, :cond_2c

    if-nez v4, :cond_2c

    .line 275
    const/4 v1, 0x1

    .line 276
    iput-boolean v6, p2, Landroidx/core/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    goto :goto_2c

    .line 270
    :sswitch_2a
    const/4 v1, 0x1

    .line 271
    nop

    .line 293
    :cond_2c
    :goto_2c
    if-eqz v1, :cond_2f

    .line 294
    goto :goto_32

    .line 263
    .end local v4    # "isPrevExponential":Z
    .end local v5    # "currentChar":C
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 299
    :cond_32
    :goto_32
    iput v0, p2, Landroidx/core/graphics/PathParser$ExtractFloatResult;->mEndPosition:I

    .line 300
    return-void

    nop

    :sswitch_data_36
    .sparse-switch
        0x20 -> :sswitch_2a
        0x2c -> :sswitch_2a
        0x2d -> :sswitch_22
        0x2e -> :sswitch_1a
        0x45 -> :sswitch_18
        0x65 -> :sswitch_18
    .end sparse-switch
.end method

.method private static getFloats(Ljava/lang/String;)[F
    .registers 10
    .param p0, "s"    # Ljava/lang/String;

    .line 211
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7a

    if-eq v1, v2, :cond_69

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_12

    goto :goto_69

    .line 215
    :cond_12
    :try_start_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [F

    .line 216
    .local v1, "results":[F
    const/4 v2, 0x0

    .line 217
    .local v2, "count":I
    const/4 v3, 0x1

    .line 218
    .local v3, "startPosition":I
    const/4 v4, 0x0

    .line 220
    .local v4, "endPosition":I
    new-instance v5, Landroidx/core/graphics/PathParser$ExtractFloatResult;

    invoke-direct {v5}, Landroidx/core/graphics/PathParser$ExtractFloatResult;-><init>()V

    .line 221
    .local v5, "result":Landroidx/core/graphics/PathParser$ExtractFloatResult;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 226
    .local v6, "totalLength":I
    :goto_24
    if-ge v3, v6, :cond_44

    .line 227
    invoke-static {p0, v3, v5}, Landroidx/core/graphics/PathParser;->extract(Ljava/lang/String;ILandroidx/core/graphics/PathParser$ExtractFloatResult;)V

    .line 228
    iget v7, v5, Landroidx/core/graphics/PathParser$ExtractFloatResult;->mEndPosition:I

    move v4, v7

    .line 230
    if-ge v3, v4, :cond_3b

    .line 231
    add-int/lit8 v7, v2, 0x1

    .line 232
    .end local v2    # "count":I
    .local v7, "count":I
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 231
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aput v8, v1, v2

    move v2, v7

    .line 235
    .end local v7    # "count":I
    .restart local v2    # "count":I
    :cond_3b
    iget-boolean v7, v5, Landroidx/core/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    if-eqz v7, :cond_41

    .line 237
    move v3, v4

    goto :goto_24

    .line 239
    :cond_41
    add-int/lit8 v3, v4, 0x1

    goto :goto_24

    .line 242
    :cond_44
    invoke-static {v1, v0, v2}, Landroidx/core/graphics/PathParser;->copyOfRange([FII)[F

    move-result-object v0
    :try_end_48
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_48} :catch_49

    return-object v0

    .line 243
    .end local v1    # "results":[F
    .end local v2    # "count":I
    .end local v3    # "startPosition":I
    .end local v4    # "endPosition":I
    .end local v5    # "result":Landroidx/core/graphics/PathParser$ExtractFloatResult;
    .end local v6    # "totalLength":I
    :catch_49
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error in parsing \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 212
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_69
    :goto_69
    new-array v0, v0, [F

    return-object v0
.end method

.method public static interpolatePathDataNodes([Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;F)Z
    .registers 8
    .param p0, "target"    # [Landroidx/core/graphics/PathParser$PathDataNode;
    .param p1, "from"    # [Landroidx/core/graphics/PathParser$PathDataNode;
    .param p2, "to"    # [Landroidx/core/graphics/PathParser$PathDataNode;
    .param p3, "fraction"    # F

    .line 315
    if-eqz p0, :cond_30

    if-eqz p1, :cond_30

    if-eqz p2, :cond_30

    .line 320
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_28

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_28

    .line 325
    invoke-static {p1, p2}, Landroidx/core/graphics/PathParser;->canMorph([Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 326
    const/4 v0, 0x0

    return v0

    .line 329
    :cond_16
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    array-length v1, p0

    if-ge v0, v1, :cond_26

    .line 330
    aget-object v1, p0, v0

    aget-object v2, p1, v0

    aget-object v3, p2, v0

    invoke-virtual {v1, v2, v3, p3}, Landroidx/core/graphics/PathParser$PathDataNode;->interpolatePathDataNode(Landroidx/core/graphics/PathParser$PathDataNode;Landroidx/core/graphics/PathParser$PathDataNode;F)V

    .line 329
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 332
    .end local v0    # "i":I
    :cond_26
    const/4 v0, 0x1

    return v0

    .line 321
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The nodes to be interpolated and resulting nodes must have the same length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The nodes to be interpolated and resulting nodes cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static nextStart(Ljava/lang/String;I)I
    .registers 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "end"    # I

    .line 174
    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_25

    .line 175
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 180
    .local v0, "c":C
    add-int/lit8 v1, v0, -0x41

    add-int/lit8 v2, v0, -0x5a

    mul-int/2addr v1, v2

    if-lez v1, :cond_19

    add-int/lit8 v1, v0, -0x61

    add-int/lit8 v2, v0, -0x7a

    mul-int/2addr v1, v2

    if-gtz v1, :cond_22

    :cond_19
    const/16 v1, 0x65

    if-eq v0, v1, :cond_22

    const/16 v1, 0x45

    if-eq v0, v1, :cond_22

    .line 182
    return p1

    .line 184
    :cond_22
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 186
    .end local v0    # "c":C
    :cond_25
    return p1
.end method

.method public static updateNodes([Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;)V
    .registers 6
    .param p0, "target"    # [Landroidx/core/graphics/PathParser$PathDataNode;
    .param p1, "source"    # [Landroidx/core/graphics/PathParser$PathDataNode;

    .line 163
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_26

    .line 164
    aget-object v1, p0, v0

    aget-object v2, p1, v0

    iget-char v2, v2, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    iput-char v2, v1, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    .line 165
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_d
    aget-object v2, p1, v0

    iget-object v2, v2, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v2, v2

    if-ge v1, v2, :cond_23

    .line 166
    aget-object v2, p0, v0

    iget-object v2, v2, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    aget-object v3, p1, v0

    iget-object v3, v3, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    aget v3, v3, v1

    aput v3, v2, v1

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 163
    .end local v1    # "j":I
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 169
    .end local v0    # "i":I
    :cond_26
    return-void
.end method

###### Class androidx.core.graphics.PathParser.ExtractFloatResult (androidx.core.graphics.PathParser$ExtractFloatResult)
.class Landroidx/core/graphics/PathParser$ExtractFloatResult;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/PathParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtractFloatResult"
.end annotation


# instance fields
.field mEndPosition:I

.field mEndWithNegOrDot:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    return-void
.end method

###### Class androidx.core.graphics.PathParser.PathDataNode (androidx.core.graphics.PathParser$PathDataNode)
.class public Landroidx/core/graphics/PathParser$PathDataNode;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/PathParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathDataNode"
.end annotation


# instance fields
.field public mParams:[F

.field public mType:C


# direct methods
.method constructor <init>(C[F)V
    .registers 3
    .param p1, "type"    # C
    .param p2, "params"    # [F

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-char p1, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    .line 354
    iput-object p2, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    .line 355
    return-void
.end method

.method constructor <init>(Landroidx/core/graphics/PathParser$PathDataNode;)V
    .registers 5
    .param p1, "n"    # Landroidx/core/graphics/PathParser$PathDataNode;

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    iget-char v0, p1, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    iput-char v0, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    .line 359
    iget-object v0, p1, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    iget-object v1, p1, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroidx/core/graphics/PathParser;->copyOfRange([FII)[F

    move-result-object v0

    iput-object v0, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    .line 360
    return-void
.end method

.method private static addCommand(Landroid/graphics/Path;[FCC[F)V
    .registers 32
    .param p0, "path"    # Landroid/graphics/Path;
    .param p1, "current"    # [F
    .param p2, "previousCmd"    # C
    .param p3, "cmd"    # C
    .param p4, "val"    # [F

    .line 398
    move-object/from16 v0, p0

    move-object/from16 v10, p4

    const/4 v1, 0x2

    .line 399
    .local v1, "incr":I
    const/4 v11, 0x0

    aget v2, p1, v11

    .line 400
    .local v2, "currentX":F
    const/4 v12, 0x1

    aget v3, p1, v12

    .line 401
    .local v3, "currentY":F
    const/4 v13, 0x2

    aget v4, p1, v13

    .line 402
    .local v4, "ctrlPointX":F
    const/4 v14, 0x3

    aget v5, p1, v14

    .line 403
    .local v5, "ctrlPointY":F
    const/4 v15, 0x4

    aget v6, p1, v15

    .line 404
    .local v6, "currentSegmentStartX":F
    const/16 v16, 0x5

    aget v7, p1, v16

    .line 408
    .local v7, "currentSegmentStartY":F
    sparse-switch p3, :sswitch_data_414

    move/from16 v17, v1

    goto :goto_3e

    .line 411
    :sswitch_1e
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 415
    move v2, v6

    .line 416
    move v3, v7

    .line 417
    move v4, v6

    .line 418
    move v5, v7

    .line 419
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 420
    move/from16 v17, v1

    goto :goto_3e

    .line 443
    :sswitch_2b
    const/4 v1, 0x4

    .line 444
    move/from16 v17, v1

    goto :goto_3e

    .line 427
    :sswitch_2f
    const/4 v1, 0x2

    .line 428
    move/from16 v17, v1

    goto :goto_3e

    .line 433
    :sswitch_33
    const/4 v1, 0x1

    .line 434
    move/from16 v17, v1

    goto :goto_3e

    .line 437
    :sswitch_37
    const/4 v1, 0x6

    .line 438
    move/from16 v17, v1

    goto :goto_3e

    .line 447
    :sswitch_3b
    const/4 v1, 0x7

    move/from16 v17, v1

    .line 451
    .end local v1    # "incr":I
    .local v17, "incr":I
    :goto_3e
    const/4 v1, 0x0

    move v8, v1

    move v9, v2

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v7

    move/from16 v7, p2

    .end local v2    # "currentX":F
    .end local v3    # "currentY":F
    .end local v4    # "ctrlPointX":F
    .end local v5    # "ctrlPointY":F
    .end local v6    # "currentSegmentStartX":F
    .end local p2    # "previousCmd":C
    .local v7, "previousCmd":C
    .local v8, "k":I
    .local v9, "currentX":F
    .local v18, "currentY":F
    .local v19, "ctrlPointX":F
    .local v20, "ctrlPointY":F
    .local v21, "currentSegmentStartX":F
    .local v22, "currentSegmentStartY":F
    :goto_4d
    array-length v1, v10

    if-ge v8, v1, :cond_3fe

    .line 452
    const/16 v1, 0x54

    const/16 v2, 0x53

    const/16 v3, 0x51

    const/16 v4, 0x43

    const/16 v5, 0x74

    const/16 v6, 0x73

    move/from16 v23, v11

    const/16 v11, 0x71

    move/from16 v24, v12

    const/16 v12, 0x63

    const/high16 v25, 0x40000000    # 2.0f

    move/from16 v26, v13

    const/4 v13, 0x0

    sparse-switch p3, :sswitch_data_466

    move v11, v7

    move v1, v9

    move/from16 v2, v18

    move/from16 v18, v8

    .end local v7    # "previousCmd":C
    .end local v8    # "k":I
    .end local v9    # "currentX":F
    .local v1, "currentX":F
    .local v2, "currentY":F
    .local v11, "previousCmd":C
    .local v18, "k":I
    move v1, v2

    goto/16 :goto_3ee

    .line 500
    .end local v1    # "currentX":F
    .end local v2    # "currentY":F
    .end local v11    # "previousCmd":C
    .restart local v7    # "previousCmd":C
    .restart local v8    # "k":I
    .restart local v9    # "currentX":F
    .local v18, "currentY":F
    :sswitch_75
    add-int/lit8 v1, v8, 0x0

    aget v1, v10, v1

    invoke-virtual {v0, v13, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 501
    add-int/lit8 v1, v8, 0x0

    aget v1, v10, v1

    add-float v18, v18, v1

    .line 502
    move v11, v7

    move/from16 v1, v18

    move/from16 v18, v8

    goto/16 :goto_3ee

    .line 572
    :sswitch_89
    const/4 v2, 0x0

    .line 573
    .local v2, "reflectiveCtrlPointX":F
    const/4 v4, 0x0

    .line 574
    .local v4, "reflectiveCtrlPointY":F
    if-eq v7, v11, :cond_93

    if-eq v7, v5, :cond_93

    if-eq v7, v3, :cond_93

    if-ne v7, v1, :cond_97

    .line 576
    :cond_93
    sub-float v2, v9, v19

    .line 577
    sub-float v4, v18, v20

    .line 579
    :cond_97
    add-int/lit8 v1, v8, 0x0

    aget v1, v10, v1

    add-int/lit8 v3, v8, 0x1

    aget v3, v10, v3

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 581
    add-float v1, v9, v2

    .line 582
    .end local v19    # "ctrlPointX":F
    .local v1, "ctrlPointX":F
    add-float v3, v18, v4

    .line 583
    .end local v20    # "ctrlPointY":F
    .local v3, "ctrlPointY":F
    add-int/lit8 v5, v8, 0x0

    aget v5, v10, v5

    add-float/2addr v9, v5

    .line 584
    add-int/lit8 v5, v8, 0x1

    aget v5, v10, v5

    add-float v18, v18, v5

    .line 585
    move/from16 v19, v1

    move/from16 v20, v3

    move v11, v7

    move/from16 v1, v18

    move/from16 v18, v8

    goto/16 :goto_3ee

    .line 526
    .end local v1    # "ctrlPointX":F
    .end local v2    # "reflectiveCtrlPointX":F
    .end local v3    # "ctrlPointY":F
    .end local v4    # "reflectiveCtrlPointY":F
    .restart local v19    # "ctrlPointX":F
    .restart local v20    # "ctrlPointY":F
    :sswitch_bc
    const/4 v1, 0x0

    .line 527
    .local v1, "reflectiveCtrlPointX":F
    const/4 v3, 0x0

    .line 528
    .local v3, "reflectiveCtrlPointY":F
    if-eq v7, v12, :cond_c9

    if-eq v7, v6, :cond_c9

    if-eq v7, v4, :cond_c9

    if-ne v7, v2, :cond_c7

    goto :goto_c9

    :cond_c7
    move v2, v3

    goto :goto_ce

    .line 530
    :cond_c9
    :goto_c9
    sub-float v1, v9, v19

    .line 531
    sub-float v3, v18, v20

    move v2, v3

    .line 533
    .end local v3    # "reflectiveCtrlPointY":F
    .local v2, "reflectiveCtrlPointY":F
    :goto_ce
    add-int/lit8 v3, v8, 0x0

    aget v3, v10, v3

    add-int/lit8 v4, v8, 0x1

    aget v4, v10, v4

    add-int/lit8 v5, v8, 0x2

    aget v5, v10, v5

    add-int/lit8 v6, v8, 0x3

    aget v6, v10, v6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 537
    add-int/lit8 v3, v8, 0x0

    aget v3, v10, v3

    add-float/2addr v3, v9

    .line 538
    .end local v19    # "ctrlPointX":F
    .local v3, "ctrlPointX":F
    add-int/lit8 v4, v8, 0x1

    aget v4, v10, v4

    add-float v4, v18, v4

    .line 539
    .end local v20    # "ctrlPointY":F
    .local v4, "ctrlPointY":F
    add-int/lit8 v5, v8, 0x2

    aget v5, v10, v5

    add-float/2addr v9, v5

    .line 540
    add-int/lit8 v5, v8, 0x3

    aget v5, v10, v5

    add-float v18, v18, v5

    .line 541
    move/from16 v19, v3

    move/from16 v20, v4

    move v11, v7

    move/from16 v1, v18

    move/from16 v18, v8

    goto/16 :goto_3ee

    .line 558
    .end local v1    # "reflectiveCtrlPointX":F
    .end local v2    # "reflectiveCtrlPointY":F
    .end local v3    # "ctrlPointX":F
    .end local v4    # "ctrlPointY":F
    .restart local v19    # "ctrlPointX":F
    .restart local v20    # "ctrlPointY":F
    :sswitch_102
    add-int/lit8 v1, v8, 0x0

    aget v1, v10, v1

    add-int/lit8 v2, v8, 0x1

    aget v2, v10, v2

    add-int/lit8 v3, v8, 0x2

    aget v3, v10, v3

    add-int/lit8 v4, v8, 0x3

    aget v4, v10, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 559
    add-int/lit8 v1, v8, 0x0

    aget v1, v10, v1

    add-float/2addr v1, v9

    .line 560
    .end local v19    # "ctrlPointX":F
    .local v1, "ctrlPointX":F
    add-int/lit8 v2, v8, 0x1

    aget v2, v10, v2

    add-float v2, v18, v2

    .line 561
    .end local v20    # "ctrlPointY":F
    .local v2, "ctrlPointY":F
    add-int/lit8 v3, v8, 0x2

    aget v3, v10, v3

    add-float/2addr v9, v3

    .line 562
    add-int/lit8 v3, v8, 0x3

    aget v3, v10, v3

    add-float v18, v18, v3

    .line 563
    move/from16 v19, v1

    move/from16 v20, v2

    move v11, v7

    move/from16 v1, v18

    move/from16 v18, v8

    goto/16 :goto_3ee

    .line 454
    .end local v1    # "ctrlPointX":F
    .end local v2    # "ctrlPointY":F
    .restart local v19    # "ctrlPointX":F
    .restart local v20    # "ctrlPointY":F
    :sswitch_136
    add-int/lit8 v1, v8, 0x0

    aget v1, v10, v1

    add-float/2addr v9, v1

    .line 455
    add-int/lit8 v1, v8, 0x1

    aget v1, v10, v1

    add-float v18, v18, v1

    .line 456
    if-lez v8, :cond_155

    .line 460
    add-int/lit8 v1, v8, 0x0

    aget v1, v10, v1

    add-int/lit8 v2, v8, 0x1

    aget v2, v10, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    move v11, v7

    move/from16 v1, v18

    move/from16 v18, v8

    goto/16 :goto_3ee

    .line 462
    :cond_155
    add-int/lit8 v1, v8, 0x0

    aget v1, v10, v1

    add-int/lit8 v2, v8, 0x1

    aget v2, v10, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 463
    move v1, v9

    .line 464
    .end local v21    # "currentSegmentStartX":F
    .local v1, "currentSegmentStartX":F
    move/from16 v2, v18

    .line 466
    .end local v22    # "currentSegmentStartY":F
    .local v2, "currentSegmentStartY":F
    move/from16 v21, v1

    move/from16 v22, v2

    move v11, v7

    move/from16 v1, v18

    move/from16 v18, v8

    goto/16 :goto_3ee

    .line 482
    .end local v1    # "currentSegmentStartX":F
    .end local v2    # "currentSegmentStartY":F
    .restart local v21    # "currentSegmentStartX":F
    .restart local v22    # "currentSegmentStartY":F
    :sswitch_16e
    add-int/lit8 v1, v8, 0x0

    aget v1, v10, v1

    add-int/lit8 v2, v8, 0x1

    aget v2, v10, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 483
    add-int/lit8 v1, v8, 0x0

    aget v1, v10, v1

    add-float/2addr v9, v1

    .line 484
    add-int/lit8 v1, v8, 0x1

    aget v1, v10, v1

    add-float v18, v18, v1

    .line 485
    move v11, v7

    move/from16 v1, v18

    move/from16 v18, v8

    goto/16 :goto_3ee

    .line 492
    :sswitch_18b
    add-int/lit8 v1, v8, 0x0

    aget v1, v10, v1

    invoke-virtual {v0, v1, v13}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 493
    add-int/lit8 v1, v8, 0x0

    aget v1, v10, v1

    add-float/2addr v9, v1

    .line 494
    move v11, v7

    move/from16 v1, v18

    move/from16 v18, v8

    goto/16 :goto_3ee

    .line 508
    :sswitch_19e
    add-int/lit8 v1, v8, 0x0

    aget v1, v10, v1

    add-int/lit8 v2, v8, 0x1

    aget v2, v10, v2

    add-int/lit8 v3, v8, 0x2

    aget v3, v10, v3

    add-int/lit8 v4, v8, 0x3

    aget v4, v10, v4

    add-int/lit8 v5, v8, 0x4

    aget v5, v10, v5

    add-int/lit8 v6, v8, 0x5

    aget v6, v10, v6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 511
    add-int/lit8 v0, v8, 0x2

    aget v0, v10, v0

    add-float/2addr v0, v9

    .line 512
    .end local v19    # "ctrlPointX":F
    .local v0, "ctrlPointX":F
    add-int/lit8 v1, v8, 0x3

    aget v1, v10, v1

    add-float v1, v18, v1

    .line 513
    .end local v20    # "ctrlPointY":F
    .local v1, "ctrlPointY":F
    add-int/lit8 v2, v8, 0x4

    aget v2, v10, v2

    add-float/2addr v9, v2

    .line 514
    add-int/lit8 v2, v8, 0x5

    aget v2, v10, v2

    add-float v18, v18, v2

    .line 516
    move/from16 v19, v0

    move/from16 v20, v1

    move v11, v7

    move/from16 v1, v18

    move/from16 v18, v8

    goto/16 :goto_3ee

    .line 603
    .end local v0    # "ctrlPointX":F
    .end local v1    # "ctrlPointY":F
    .restart local v19    # "ctrlPointX":F
    .restart local v20    # "ctrlPointY":F
    :sswitch_1da
    add-int/lit8 v0, v8, 0x5

    aget v0, v10, v0

    add-float v3, v0, v9

    add-int/lit8 v0, v8, 0x6

    aget v0, v10, v0

    add-float v4, v0, v18

    add-int/lit8 v0, v8, 0x0

    aget v5, v10, v0

    add-int/lit8 v0, v8, 0x1

    aget v6, v10, v0

    add-int/lit8 v0, v8, 0x2

    aget v0, v10, v0

    add-int/lit8 v1, v8, 0x3

    aget v1, v10, v1

    cmpl-float v1, v1, v13

    if-eqz v1, :cond_1fe

    move v1, v8

    move/from16 v8, v24

    goto :goto_201

    :cond_1fe
    move v1, v8

    move/from16 v8, v23

    .end local v8    # "k":I
    .local v1, "k":I
    :goto_201
    add-int/lit8 v2, v1, 0x4

    aget v2, v10, v2

    cmpl-float v2, v2, v13

    if-eqz v2, :cond_20e

    move v2, v1

    move v1, v9

    move/from16 v9, v24

    goto :goto_212

    :cond_20e
    move v2, v1

    move v1, v9

    move/from16 v9, v23

    .end local v9    # "currentX":F
    .local v1, "currentX":F
    .local v2, "k":I
    :goto_212
    move/from16 v13, v18

    move/from16 v18, v2

    move v2, v13

    move v13, v7

    move v7, v0

    move-object/from16 v0, p0

    .end local v7    # "previousCmd":C
    .local v2, "currentY":F
    .local v13, "previousCmd":C
    .local v18, "k":I
    invoke-static/range {v0 .. v9}, Landroidx/core/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 613
    move v7, v1

    move v8, v2

    .end local v1    # "currentX":F
    .end local v2    # "currentY":F
    .local v7, "currentX":F
    .local v8, "currentY":F
    add-int/lit8 v1, v18, 0x5

    aget v1, v10, v1

    add-float v9, v7, v1

    .line 614
    .end local v7    # "currentX":F
    .restart local v9    # "currentX":F
    add-int/lit8 v1, v18, 0x6

    aget v1, v10, v1

    add-float/2addr v1, v8

    .line 615
    .end local v8    # "currentY":F
    .local v1, "currentY":F
    move v2, v9

    .line 616
    .end local v19    # "ctrlPointX":F
    .local v2, "ctrlPointX":F
    move v3, v1

    .line 617
    .end local v20    # "ctrlPointY":F
    .local v3, "ctrlPointY":F
    move/from16 v19, v2

    move/from16 v20, v3

    move v11, v13

    goto/16 :goto_3ee

    .line 504
    .end local v1    # "currentY":F
    .end local v2    # "ctrlPointX":F
    .end local v3    # "ctrlPointY":F
    .end local v13    # "previousCmd":C
    .local v7, "previousCmd":C
    .local v8, "k":I
    .local v18, "currentY":F
    .restart local v19    # "ctrlPointX":F
    .restart local v20    # "ctrlPointY":F
    :sswitch_234
    move/from16 v13, v18

    move/from16 v18, v8

    move v8, v13

    move v13, v7

    move v7, v9

    .end local v9    # "currentX":F
    .local v7, "currentX":F
    .local v8, "currentY":F
    .restart local v13    # "previousCmd":C
    .local v18, "k":I
    add-int/lit8 v1, v18, 0x0

    aget v1, v10, v1

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 505
    add-int/lit8 v1, v18, 0x0

    aget v1, v10, v1

    .line 506
    .end local v8    # "currentY":F
    .restart local v1    # "currentY":F
    move v11, v13

    goto/16 :goto_3ee

    .line 587
    .end local v1    # "currentY":F
    .end local v13    # "previousCmd":C
    .local v7, "previousCmd":C
    .local v8, "k":I
    .restart local v9    # "currentX":F
    .local v18, "currentY":F
    :sswitch_249
    move/from16 v13, v18

    move/from16 v18, v8

    move v8, v13

    move v13, v7

    move v7, v9

    .end local v9    # "currentX":F
    .local v7, "currentX":F
    .local v8, "currentY":F
    .restart local v13    # "previousCmd":C
    .local v18, "k":I
    move v2, v7

    .line 588
    .local v2, "reflectiveCtrlPointX":F
    move v4, v8

    .line 589
    .local v4, "reflectiveCtrlPointY":F
    if-eq v13, v11, :cond_25a

    if-eq v13, v5, :cond_25a

    if-eq v13, v3, :cond_25a

    if-ne v13, v1, :cond_262

    .line 591
    :cond_25a
    mul-float v9, v7, v25

    sub-float v2, v9, v19

    .line 592
    mul-float v1, v8, v25

    sub-float v4, v1, v20

    .line 594
    :cond_262
    add-int/lit8 v1, v18, 0x0

    aget v1, v10, v1

    add-int/lit8 v3, v18, 0x1

    aget v3, v10, v3

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 596
    move v1, v2

    .line 597
    .end local v19    # "ctrlPointX":F
    .local v1, "ctrlPointX":F
    move v3, v4

    .line 598
    .end local v20    # "ctrlPointY":F
    .restart local v3    # "ctrlPointY":F
    add-int/lit8 v5, v18, 0x0

    aget v5, v10, v5

    .line 599
    .end local v7    # "currentX":F
    .local v5, "currentX":F
    add-int/lit8 v6, v18, 0x1

    aget v6, v10, v6

    .line 600
    .end local v8    # "currentY":F
    .local v6, "currentY":F
    move/from16 v19, v1

    move/from16 v20, v3

    move v9, v5

    move v1, v6

    move v11, v13

    goto/16 :goto_3ee

    .line 543
    .end local v1    # "ctrlPointX":F
    .end local v2    # "reflectiveCtrlPointX":F
    .end local v3    # "ctrlPointY":F
    .end local v4    # "reflectiveCtrlPointY":F
    .end local v5    # "currentX":F
    .end local v6    # "currentY":F
    .end local v13    # "previousCmd":C
    .local v7, "previousCmd":C
    .local v8, "k":I
    .restart local v9    # "currentX":F
    .local v18, "currentY":F
    .restart local v19    # "ctrlPointX":F
    .restart local v20    # "ctrlPointY":F
    :sswitch_280
    move/from16 v13, v18

    move/from16 v18, v8

    move v8, v13

    move v13, v7

    move v7, v9

    .end local v9    # "currentX":F
    .local v7, "currentX":F
    .local v8, "currentY":F
    .restart local v13    # "previousCmd":C
    .local v18, "k":I
    move v1, v7

    .line 544
    .local v1, "reflectiveCtrlPointX":F
    move v3, v8

    .line 545
    .local v3, "reflectiveCtrlPointY":F
    if-eq v13, v12, :cond_294

    if-eq v13, v6, :cond_294

    if-eq v13, v4, :cond_294

    if-ne v13, v2, :cond_292

    goto :goto_294

    :cond_292
    move v2, v3

    goto :goto_29d

    .line 547
    :cond_294
    :goto_294
    mul-float v9, v7, v25

    sub-float v1, v9, v19

    .line 548
    mul-float v2, v8, v25

    sub-float v3, v2, v20

    move v2, v3

    .line 550
    .end local v3    # "reflectiveCtrlPointY":F
    .local v2, "reflectiveCtrlPointY":F
    :goto_29d
    add-int/lit8 v3, v18, 0x0

    aget v3, v10, v3

    add-int/lit8 v4, v18, 0x1

    aget v4, v10, v4

    add-int/lit8 v5, v18, 0x2

    aget v5, v10, v5

    add-int/lit8 v6, v18, 0x3

    aget v6, v10, v6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 552
    add-int/lit8 v3, v18, 0x0

    aget v3, v10, v3

    .line 553
    .end local v19    # "ctrlPointX":F
    .local v3, "ctrlPointX":F
    add-int/lit8 v4, v18, 0x1

    aget v4, v10, v4

    .line 554
    .end local v20    # "ctrlPointY":F
    .local v4, "ctrlPointY":F
    add-int/lit8 v5, v18, 0x2

    aget v5, v10, v5

    .line 555
    .end local v7    # "currentX":F
    .restart local v5    # "currentX":F
    add-int/lit8 v6, v18, 0x3

    aget v6, v10, v6

    .line 556
    .end local v8    # "currentY":F
    .restart local v6    # "currentY":F
    move/from16 v19, v3

    move/from16 v20, v4

    move v9, v5

    move v1, v6

    move v11, v13

    goto/16 :goto_3ee

    .line 565
    .end local v1    # "reflectiveCtrlPointX":F
    .end local v2    # "reflectiveCtrlPointY":F
    .end local v3    # "ctrlPointX":F
    .end local v4    # "ctrlPointY":F
    .end local v5    # "currentX":F
    .end local v6    # "currentY":F
    .end local v13    # "previousCmd":C
    .local v7, "previousCmd":C
    .local v8, "k":I
    .restart local v9    # "currentX":F
    .local v18, "currentY":F
    .restart local v19    # "ctrlPointX":F
    .restart local v20    # "ctrlPointY":F
    :sswitch_2c9
    move/from16 v13, v18

    move/from16 v18, v8

    move v8, v13

    move v13, v7

    move v7, v9

    .end local v9    # "currentX":F
    .local v7, "currentX":F
    .local v8, "currentY":F
    .restart local v13    # "previousCmd":C
    .local v18, "k":I
    add-int/lit8 v1, v18, 0x0

    aget v1, v10, v1

    add-int/lit8 v2, v18, 0x1

    aget v2, v10, v2

    add-int/lit8 v3, v18, 0x2

    aget v3, v10, v3

    add-int/lit8 v4, v18, 0x3

    aget v4, v10, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 566
    add-int/lit8 v1, v18, 0x0

    aget v1, v10, v1

    .line 567
    .end local v19    # "ctrlPointX":F
    .local v1, "ctrlPointX":F
    add-int/lit8 v2, v18, 0x1

    aget v2, v10, v2

    .line 568
    .end local v20    # "ctrlPointY":F
    .local v2, "ctrlPointY":F
    add-int/lit8 v3, v18, 0x2

    aget v3, v10, v3

    .line 569
    .end local v7    # "currentX":F
    .local v3, "currentX":F
    add-int/lit8 v4, v18, 0x3

    aget v4, v10, v4

    .line 570
    .end local v8    # "currentY":F
    .local v4, "currentY":F
    move/from16 v19, v1

    move/from16 v20, v2

    move v9, v3

    move v1, v4

    move v11, v13

    goto/16 :goto_3ee

    .line 468
    .end local v1    # "ctrlPointX":F
    .end local v2    # "ctrlPointY":F
    .end local v3    # "currentX":F
    .end local v4    # "currentY":F
    .end local v13    # "previousCmd":C
    .local v7, "previousCmd":C
    .local v8, "k":I
    .restart local v9    # "currentX":F
    .local v18, "currentY":F
    .restart local v19    # "ctrlPointX":F
    .restart local v20    # "ctrlPointY":F
    :sswitch_2fc
    move/from16 v13, v18

    move/from16 v18, v8

    move v8, v13

    move v13, v7

    move v7, v9

    .end local v9    # "currentX":F
    .local v7, "currentX":F
    .local v8, "currentY":F
    .restart local v13    # "previousCmd":C
    .local v18, "k":I
    add-int/lit8 v1, v18, 0x0

    aget v1, v10, v1

    .line 469
    .end local v7    # "currentX":F
    .local v1, "currentX":F
    add-int/lit8 v2, v18, 0x1

    aget v2, v10, v2

    .line 470
    .end local v8    # "currentY":F
    .local v2, "currentY":F
    if-lez v18, :cond_31d

    .line 474
    add-int/lit8 v8, v18, 0x0

    aget v3, v10, v8

    add-int/lit8 v8, v18, 0x1

    aget v4, v10, v8

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move v9, v1

    move v1, v2

    move v11, v13

    goto/16 :goto_3ee

    .line 476
    :cond_31d
    add-int/lit8 v8, v18, 0x0

    aget v3, v10, v8

    add-int/lit8 v8, v18, 0x1

    aget v4, v10, v8

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 477
    move v3, v1

    .line 478
    .end local v21    # "currentSegmentStartX":F
    .local v3, "currentSegmentStartX":F
    move v4, v2

    .line 480
    .end local v22    # "currentSegmentStartY":F
    .local v4, "currentSegmentStartY":F
    move v9, v1

    move v1, v2

    move/from16 v21, v3

    move/from16 v22, v4

    move v11, v13

    goto/16 :goto_3ee

    .line 487
    .end local v1    # "currentX":F
    .end local v2    # "currentY":F
    .end local v3    # "currentSegmentStartX":F
    .end local v4    # "currentSegmentStartY":F
    .end local v13    # "previousCmd":C
    .local v7, "previousCmd":C
    .local v8, "k":I
    .restart local v9    # "currentX":F
    .local v18, "currentY":F
    .restart local v21    # "currentSegmentStartX":F
    .restart local v22    # "currentSegmentStartY":F
    :sswitch_333
    move/from16 v13, v18

    move/from16 v18, v8

    move v8, v13

    move v13, v7

    move v7, v9

    .end local v9    # "currentX":F
    .local v7, "currentX":F
    .local v8, "currentY":F
    .restart local v13    # "previousCmd":C
    .local v18, "k":I
    add-int/lit8 v1, v18, 0x0

    aget v1, v10, v1

    add-int/lit8 v2, v18, 0x1

    aget v2, v10, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 488
    add-int/lit8 v1, v18, 0x0

    aget v1, v10, v1

    .line 489
    .end local v7    # "currentX":F
    .restart local v1    # "currentX":F
    add-int/lit8 v2, v18, 0x1

    aget v2, v10, v2

    .line 490
    .end local v8    # "currentY":F
    .restart local v2    # "currentY":F
    move v9, v1

    move v1, v2

    move v11, v13

    goto/16 :goto_3ee

    .line 496
    .end local v1    # "currentX":F
    .end local v2    # "currentY":F
    .end local v13    # "previousCmd":C
    .local v7, "previousCmd":C
    .local v8, "k":I
    .restart local v9    # "currentX":F
    .local v18, "currentY":F
    :sswitch_352
    move/from16 v13, v18

    move/from16 v18, v8

    move v8, v13

    move v13, v7

    move v7, v9

    .end local v9    # "currentX":F
    .local v7, "currentX":F
    .local v8, "currentY":F
    .restart local v13    # "previousCmd":C
    .local v18, "k":I
    add-int/lit8 v1, v18, 0x0

    aget v1, v10, v1

    invoke-virtual {v0, v1, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 497
    add-int/lit8 v1, v18, 0x0

    aget v1, v10, v1

    .line 498
    .end local v7    # "currentX":F
    .restart local v1    # "currentX":F
    move v9, v1

    move v1, v8

    move v11, v13

    goto/16 :goto_3ee

    .line 518
    .end local v1    # "currentX":F
    .end local v13    # "previousCmd":C
    .local v7, "previousCmd":C
    .local v8, "k":I
    .restart local v9    # "currentX":F
    .local v18, "currentY":F
    :sswitch_369
    move/from16 v13, v18

    move/from16 v18, v8

    move v8, v13

    move v13, v7

    move v7, v9

    .end local v9    # "currentX":F
    .local v7, "currentX":F
    .local v8, "currentY":F
    .restart local v13    # "previousCmd":C
    .local v18, "k":I
    add-int/lit8 v1, v18, 0x0

    aget v1, v10, v1

    add-int/lit8 v2, v18, 0x1

    aget v2, v10, v2

    add-int/lit8 v3, v18, 0x2

    aget v3, v10, v3

    add-int/lit8 v4, v18, 0x3

    aget v4, v10, v4

    add-int/lit8 v5, v18, 0x4

    aget v5, v10, v5

    add-int/lit8 v6, v18, 0x5

    aget v6, v10, v6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 520
    add-int/lit8 v0, v18, 0x4

    aget v0, v10, v0

    .line 521
    .end local v7    # "currentX":F
    .local v0, "currentX":F
    add-int/lit8 v1, v18, 0x5

    aget v1, v10, v1

    .line 522
    .end local v8    # "currentY":F
    .local v1, "currentY":F
    add-int/lit8 v8, v18, 0x2

    aget v2, v10, v8

    .line 523
    .end local v19    # "ctrlPointX":F
    .local v2, "ctrlPointX":F
    add-int/lit8 v8, v18, 0x3

    aget v3, v10, v8

    .line 524
    .end local v20    # "ctrlPointY":F
    .local v3, "ctrlPointY":F
    move v9, v0

    move/from16 v19, v2

    move/from16 v20, v3

    move v11, v13

    goto :goto_3ee

    .line 619
    .end local v0    # "currentX":F
    .end local v1    # "currentY":F
    .end local v2    # "ctrlPointX":F
    .end local v3    # "ctrlPointY":F
    .end local v13    # "previousCmd":C
    .local v7, "previousCmd":C
    .local v8, "k":I
    .restart local v9    # "currentX":F
    .local v18, "currentY":F
    .restart local v19    # "ctrlPointX":F
    .restart local v20    # "ctrlPointY":F
    :sswitch_3a2
    move/from16 v11, v18

    move/from16 v18, v8

    move v8, v11

    move v11, v7

    move v7, v9

    .end local v9    # "currentX":F
    .local v7, "currentX":F
    .local v8, "currentY":F
    .restart local v11    # "previousCmd":C
    .local v18, "k":I
    add-int/lit8 v0, v18, 0x5

    aget v3, v10, v0

    add-int/lit8 v0, v18, 0x6

    aget v4, v10, v0

    add-int/lit8 v0, v18, 0x0

    aget v5, v10, v0

    add-int/lit8 v0, v18, 0x1

    aget v6, v10, v0

    add-int/lit8 v0, v18, 0x2

    aget v0, v10, v0

    add-int/lit8 v1, v18, 0x3

    aget v1, v10, v1

    cmpl-float v1, v1, v13

    move v2, v8

    if-eqz v1, :cond_3c9

    move/from16 v8, v24

    goto :goto_3cb

    :cond_3c9
    move/from16 v8, v23

    .end local v8    # "currentY":F
    .local v2, "currentY":F
    :goto_3cb
    add-int/lit8 v1, v18, 0x4

    aget v1, v10, v1

    cmpl-float v1, v1, v13

    if-eqz v1, :cond_3d6

    move/from16 v9, v24

    goto :goto_3d8

    :cond_3d6
    move/from16 v9, v23

    :goto_3d8
    move v1, v7

    move v7, v0

    move-object/from16 v0, p0

    .end local v7    # "currentX":F
    .local v1, "currentX":F
    invoke-static/range {v0 .. v9}, Landroidx/core/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 629
    add-int/lit8 v8, v18, 0x5

    aget v0, v10, v8

    .line 630
    .end local v1    # "currentX":F
    .restart local v0    # "currentX":F
    add-int/lit8 v8, v18, 0x6

    aget v1, v10, v8

    .line 631
    .end local v2    # "currentY":F
    .local v1, "currentY":F
    move v2, v0

    .line 632
    .end local v19    # "ctrlPointX":F
    .local v2, "ctrlPointX":F
    move v3, v1

    move v9, v0

    move/from16 v19, v2

    move/from16 v20, v3

    .line 635
    .end local v0    # "currentX":F
    .end local v2    # "ctrlPointX":F
    .restart local v9    # "currentX":F
    .restart local v19    # "ctrlPointX":F
    :goto_3ee
    move/from16 v7, p3

    .line 451
    .end local v11    # "previousCmd":C
    .local v7, "previousCmd":C
    add-int v8, v18, v17

    move-object/from16 v0, p0

    move/from16 v18, v1

    move/from16 v11, v23

    move/from16 v12, v24

    move/from16 v13, v26

    .end local v18    # "k":I
    .local v8, "k":I
    goto/16 :goto_4d

    .end local v1    # "currentY":F
    .local v18, "currentY":F
    :cond_3fe
    move v1, v9

    move/from16 v23, v11

    move/from16 v24, v12

    move/from16 v26, v13

    move/from16 v2, v18

    .line 637
    .end local v8    # "k":I
    .end local v9    # "currentX":F
    .end local v18    # "currentY":F
    .local v1, "currentX":F
    .local v2, "currentY":F
    aput v1, p1, v23

    .line 638
    aput v2, p1, v24

    .line 639
    aput v19, p1, v26

    .line 640
    aput v20, p1, v14

    .line 641
    aput v21, p1, v15

    .line 642
    aput v22, p1, v16

    .line 643
    return-void

    :sswitch_data_414
    .sparse-switch
        0x41 -> :sswitch_3b
        0x43 -> :sswitch_37
        0x48 -> :sswitch_33
        0x4c -> :sswitch_2f
        0x4d -> :sswitch_2f
        0x51 -> :sswitch_2b
        0x53 -> :sswitch_2b
        0x54 -> :sswitch_2f
        0x56 -> :sswitch_33
        0x5a -> :sswitch_1e
        0x61 -> :sswitch_3b
        0x63 -> :sswitch_37
        0x68 -> :sswitch_33
        0x6c -> :sswitch_2f
        0x6d -> :sswitch_2f
        0x71 -> :sswitch_2b
        0x73 -> :sswitch_2b
        0x74 -> :sswitch_2f
        0x76 -> :sswitch_33
        0x7a -> :sswitch_1e
    .end sparse-switch

    :sswitch_data_466
    .sparse-switch
        0x41 -> :sswitch_3a2
        0x43 -> :sswitch_369
        0x48 -> :sswitch_352
        0x4c -> :sswitch_333
        0x4d -> :sswitch_2fc
        0x51 -> :sswitch_2c9
        0x53 -> :sswitch_280
        0x54 -> :sswitch_249
        0x56 -> :sswitch_234
        0x61 -> :sswitch_1da
        0x63 -> :sswitch_19e
        0x68 -> :sswitch_18b
        0x6c -> :sswitch_16e
        0x6d -> :sswitch_136
        0x71 -> :sswitch_102
        0x73 -> :sswitch_bc
        0x74 -> :sswitch_89
        0x76 -> :sswitch_75
    .end sparse-switch
.end method

.method private static arcToBezier(Landroid/graphics/Path;DDDDDDDDD)V
    .registers 77
    .param p0, "p"    # Landroid/graphics/Path;
    .param p1, "cx"    # D
    .param p3, "cy"    # D
    .param p5, "a"    # D
    .param p7, "b"    # D
    .param p9, "e1x"    # D
    .param p11, "e1y"    # D
    .param p13, "theta"    # D
    .param p15, "start"    # D
    .param p17, "sweep"    # D

    .line 750
    move-wide/from16 v0, p5

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double v4, p17, v2

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 752
    .local v4, "numSegments":I
    move-wide/from16 v5, p15

    .line 753
    .local v5, "eta1":D
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    .line 754
    .local v7, "cosTheta":D
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    .line 755
    .local v9, "sinTheta":D
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    .line 756
    .local v11, "cosEta1":D
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    .line 757
    .local v13, "sinEta1":D
    move-wide v15, v2

    neg-double v2, v0

    mul-double/2addr v2, v7

    mul-double/2addr v2, v13

    mul-double v17, p7, v9

    mul-double v17, v17, v11

    sub-double v2, v2, v17

    .line 758
    .local v2, "ep1x":D
    move-wide/from16 v17, v2

    .end local v2    # "ep1x":D
    .local v17, "ep1x":D
    neg-double v2, v0

    mul-double/2addr v2, v9

    mul-double/2addr v2, v13

    mul-double v19, p7, v7

    mul-double v19, v19, v11

    add-double v2, v2, v19

    .line 760
    .local v2, "ep1y":D
    move-wide/from16 v19, v2

    .end local v2    # "ep1y":D
    .local v19, "ep1y":D
    int-to-double v2, v4

    div-double v2, p17, v2

    .line 761
    .local v2, "anglePerSegment":D
    const/16 v21, 0x0

    move-wide/from16 v23, v5

    move-wide/from16 v25, v15

    move/from16 v15, v21

    move-wide/from16 v5, p9

    move-wide/from16 v21, v17

    move-wide/from16 v17, p11

    .end local p9    # "e1x":D
    .end local p11    # "e1y":D
    .local v5, "e1x":D
    .local v15, "i":I
    .local v17, "e1y":D
    .local v21, "ep1x":D
    .local v23, "eta1":D
    :goto_4f
    if-ge v15, v4, :cond_109

    .line 762
    add-double v27, v23, v2

    .line 763
    .local v27, "eta2":D
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sin(D)D

    move-result-wide v29

    .line 764
    .local v29, "sinEta2":D
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->cos(D)D

    move-result-wide v31

    .line 765
    .local v31, "cosEta2":D
    mul-double v33, v0, v7

    mul-double v33, v33, v31

    add-double v33, p1, v33

    mul-double v35, p7, v9

    mul-double v35, v35, v29

    move-wide/from16 v37, v2

    .end local v2    # "anglePerSegment":D
    .local v37, "anglePerSegment":D
    sub-double v2, v33, v35

    .line 766
    .local v2, "e2x":D
    mul-double v33, v0, v9

    mul-double v33, v33, v31

    add-double v33, p3, v33

    mul-double v35, p7, v7

    mul-double v35, v35, v29

    move/from16 v16, v4

    move-wide/from16 p9, v5

    .end local v4    # "numSegments":I
    .end local v5    # "e1x":D
    .local v16, "numSegments":I
    .restart local p9    # "e1x":D
    add-double v4, v33, v35

    .line 767
    .local v4, "e2y":D
    move-wide/from16 v33, v7

    .end local v7    # "cosTheta":D
    .local v33, "cosTheta":D
    neg-double v6, v0

    mul-double v6, v6, v33

    mul-double v6, v6, v29

    mul-double v35, p7, v9

    mul-double v35, v35, v31

    sub-double v6, v6, v35

    .line 768
    .local v6, "ep2x":D
    move-wide/from16 p11, v6

    .end local v6    # "ep2x":D
    .local p11, "ep2x":D
    neg-double v6, v0

    mul-double/2addr v6, v9

    mul-double v6, v6, v29

    mul-double v35, p7, v33

    mul-double v35, v35, v31

    add-double v6, v6, v35

    .line 769
    .local v6, "ep2y":D
    sub-double v35, v27, v23

    const-wide/high16 v39, 0x4000000000000000L    # 2.0

    div-double v35, v35, v39

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->tan(D)D

    move-result-wide v35

    .line 770
    .local v35, "tanDiff2":D
    sub-double v39, v27, v23

    .line 771
    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->sin(D)D

    move-result-wide v39

    const-wide/high16 v41, 0x4008000000000000L    # 3.0

    mul-double v43, v35, v41

    mul-double v43, v43, v35

    add-double v43, v43, v25

    invoke-static/range {v43 .. v44}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v43

    const-wide/high16 v45, 0x3ff0000000000000L    # 1.0

    sub-double v43, v43, v45

    mul-double v39, v39, v43

    div-double v39, v39, v41

    .line 772
    .local v39, "alpha":D
    mul-double v41, v39, v21

    add-double v0, p9, v41

    .line 773
    .local v0, "q1x":D
    mul-double v41, v39, v19

    move-wide/from16 v43, v6

    .end local v6    # "ep2y":D
    .local v43, "ep2y":D
    add-double v6, v17, v41

    .line 774
    .local v6, "q1y":D
    mul-double v41, v39, p11

    move-wide/from16 v45, v9

    .end local v9    # "sinTheta":D
    .local v45, "sinTheta":D
    sub-double v8, v2, v41

    .line 775
    .local v8, "q2x":D
    mul-double v41, v39, v43

    move-wide/from16 v47, v11

    .end local v11    # "cosEta1":D
    .local v47, "cosEta1":D
    sub-double v10, v4, v41

    .line 778
    .local v10, "q2y":D
    const/4 v12, 0x0

    move-wide/from16 v41, v13

    move-object/from16 v13, p0

    .end local v13    # "sinEta1":D
    .local v41, "sinEta1":D
    invoke-virtual {v13, v12, v12}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 780
    double-to-float v12, v0

    double-to-float v14, v6

    move-wide/from16 v56, v0

    .end local v0    # "q1x":D
    .local v56, "q1x":D
    double-to-float v0, v8

    double-to-float v1, v10

    move/from16 v52, v0

    double-to-float v0, v2

    move/from16 v54, v0

    double-to-float v0, v4

    move/from16 v55, v0

    move/from16 v53, v1

    move/from16 v50, v12

    move-object/from16 v49, v13

    move/from16 v51, v14

    invoke-virtual/range {v49 .. v55}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 786
    move-wide/from16 v23, v27

    .line 787
    move-wide v0, v2

    .line 788
    .end local p9    # "e1x":D
    .local v0, "e1x":D
    move-wide/from16 v17, v4

    .line 789
    move-wide/from16 v21, p11

    .line 790
    move-wide/from16 v19, v43

    .line 761
    .end local v2    # "e2x":D
    .end local v4    # "e2y":D
    .end local v6    # "q1y":D
    .end local v8    # "q2x":D
    .end local v10    # "q2y":D
    .end local v27    # "eta2":D
    .end local v29    # "sinEta2":D
    .end local v31    # "cosEta2":D
    .end local v35    # "tanDiff2":D
    .end local v39    # "alpha":D
    .end local v43    # "ep2y":D
    .end local v56    # "q1x":D
    .end local p11    # "ep2x":D
    add-int/lit8 v15, v15, 0x1

    move-wide v5, v0

    move/from16 v4, v16

    move-wide/from16 v7, v33

    move-wide/from16 v2, v37

    move-wide/from16 v13, v41

    move-wide/from16 v9, v45

    move-wide/from16 v11, v47

    move-wide/from16 v0, p5

    goto/16 :goto_4f

    .line 792
    .end local v0    # "e1x":D
    .end local v15    # "i":I
    .end local v16    # "numSegments":I
    .end local v33    # "cosTheta":D
    .end local v37    # "anglePerSegment":D
    .end local v41    # "sinEta1":D
    .end local v45    # "sinTheta":D
    .end local v47    # "cosEta1":D
    .local v2, "anglePerSegment":D
    .local v4, "numSegments":I
    .restart local v5    # "e1x":D
    .restart local v7    # "cosTheta":D
    .restart local v9    # "sinTheta":D
    .restart local v11    # "cosEta1":D
    .restart local v13    # "sinEta1":D
    :cond_109
    return-void
.end method

.method private static drawArc(Landroid/graphics/Path;FFFFFFFZZ)V
    .registers 71
    .param p0, "p"    # Landroid/graphics/Path;
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "x1"    # F
    .param p4, "y1"    # F
    .param p5, "a"    # F
    .param p6, "b"    # F
    .param p7, "theta"    # F
    .param p8, "isMoreThanHalf"    # Z
    .param p9, "isPositiveArc"    # Z

    .line 657
    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v7, p7

    float-to-double v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v25

    .line 659
    .local v25, "thetaD":D
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->cos(D)D

    move-result-wide v31

    .line 660
    .local v31, "cosTheta":D
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sin(D)D

    move-result-wide v33

    .line 663
    .local v33, "sinTheta":D
    float-to-double v5, v1

    mul-double v5, v5, v31

    float-to-double v8, v2

    mul-double v8, v8, v33

    add-double/2addr v5, v8

    float-to-double v8, v10

    div-double v35, v5, v8

    .line 664
    .local v35, "x0p":D
    neg-float v0, v1

    float-to-double v5, v0

    mul-double v5, v5, v33

    float-to-double v8, v2

    mul-double v8, v8, v31

    add-double/2addr v5, v8

    float-to-double v8, v11

    div-double v37, v5, v8

    .line 665
    .local v37, "y0p":D
    float-to-double v5, v3

    mul-double v5, v5, v31

    float-to-double v8, v4

    mul-double v8, v8, v33

    add-double/2addr v5, v8

    float-to-double v8, v10

    div-double v39, v5, v8

    .line 666
    .local v39, "x1p":D
    neg-float v0, v3

    float-to-double v5, v0

    mul-double v5, v5, v33

    float-to-double v8, v4

    mul-double v8, v8, v31

    add-double/2addr v5, v8

    float-to-double v8, v11

    div-double v41, v5, v8

    .line 669
    .local v41, "y1p":D
    sub-double v43, v35, v39

    .line 670
    .local v43, "dx":D
    sub-double v45, v37, v41

    .line 671
    .local v45, "dy":D
    add-double v5, v35, v39

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double v47, v5, v8

    .line 672
    .local v47, "xm":D
    add-double v5, v37, v41

    div-double v49, v5, v8

    .line 674
    .local v49, "ym":D
    mul-double v5, v43, v43

    mul-double v8, v45, v45

    add-double v12, v5, v8

    .line 675
    .local v12, "dsq":D
    const-wide/16 v5, 0x0

    cmpl-double v0, v12, v5

    const-string v8, "PathParser"

    if-nez v0, :cond_67

    .line 676
    const-string v0, " Points are coincident"

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    return-void

    .line 679
    :cond_67
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    div-double/2addr v14, v12

    const-wide/high16 v16, 0x3fd0000000000000L    # 0.25

    sub-double v51, v14, v16

    .line 680
    .local v51, "disc":D
    cmpg-double v0, v51, v5

    if-gez v0, :cond_a1

    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Points are too far apart "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    const-wide v8, 0x3ffffff583a53b8eL    # 1.99999

    div-double/2addr v5, v8

    double-to-float v14, v5

    .line 683
    .local v14, "adjust":F
    mul-float v5, v10, v14

    mul-float v6, v11, v14

    move-object/from16 v0, p0

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v0 .. v9}, Landroidx/core/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 685
    return-void

    .line 687
    .end local v14    # "adjust":F
    :cond_a1
    move/from16 v9, p9

    invoke-static/range {v51 .. v52}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 688
    .local v3, "s":D
    mul-double v7, v3, v43

    .line 689
    .local v7, "sdx":D
    mul-double v53, v3, v45

    .line 692
    .local v53, "sdy":D
    move/from16 v0, p8

    if-ne v0, v9, :cond_b4

    .line 693
    sub-double v14, v47, v53

    .line 694
    .local v14, "cx":D
    add-double v16, v49, v7

    .local v16, "cy":D
    goto :goto_b8

    .line 696
    .end local v14    # "cx":D
    .end local v16    # "cy":D
    :cond_b4
    add-double v14, v47, v53

    .line 697
    .restart local v14    # "cx":D
    sub-double v16, v49, v7

    .line 700
    .restart local v16    # "cy":D
    :goto_b8
    move-wide/from16 v18, v5

    sub-double v5, v37, v16

    move-wide/from16 v55, v3

    .end local v3    # "s":D
    .local v55, "s":D
    sub-double v3, v35, v14

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v27

    .line 702
    .local v27, "eta0":D
    sub-double v3, v41, v16

    sub-double v5, v39, v14

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    .line 704
    .local v3, "eta1":D
    sub-double v5, v3, v27

    .line 705
    .local v5, "sweep":D
    cmpl-double v20, v5, v18

    if-ltz v20, :cond_d5

    const/16 v20, 0x1

    goto :goto_d7

    :cond_d5
    const/16 v20, 0x0

    :goto_d7
    move/from16 v0, v20

    if-eq v9, v0, :cond_ee

    .line 706
    cmpl-double v0, v5, v18

    const-wide v18, 0x401921fb54442d18L    # 6.283185307179586

    if-lez v0, :cond_e9

    .line 707
    sub-double v5, v5, v18

    move-wide/from16 v29, v5

    goto :goto_f0

    .line 709
    :cond_e9
    add-double v5, v5, v18

    move-wide/from16 v29, v5

    goto :goto_f0

    .line 705
    :cond_ee
    move-wide/from16 v29, v5

    .line 713
    .end local v5    # "sweep":D
    .local v29, "sweep":D
    :goto_f0
    float-to-double v5, v10

    mul-double/2addr v14, v5

    .line 714
    float-to-double v5, v11

    mul-double v16, v16, v5

    .line 715
    move-wide v5, v14

    .line 716
    .local v5, "tcx":D
    mul-double v18, v14, v31

    mul-double v20, v16, v33

    sub-double v18, v18, v20

    .line 717
    .end local v14    # "cx":D
    .local v18, "cx":D
    mul-double v14, v5, v33

    mul-double v20, v16, v31

    add-double v15, v14, v20

    .line 719
    .end local v16    # "cy":D
    .local v15, "cy":D
    move-wide/from16 v57, v3

    .end local v3    # "eta1":D
    .local v57, "eta1":D
    float-to-double v3, v10

    move-wide/from16 v20, v3

    float-to-double v3, v11

    move-wide/from16 v22, v3

    float-to-double v3, v1

    float-to-double v0, v2

    move-wide/from16 v59, v12

    move-object/from16 v12, p0

    move-wide/from16 v13, v18

    move-wide/from16 v17, v20

    move-wide/from16 v19, v22

    move-wide/from16 v23, v0

    move-wide/from16 v21, v3

    move-wide/from16 v0, v59

    .end local v12    # "dsq":D
    .end local v18    # "cx":D
    .local v0, "dsq":D
    .local v13, "cx":D
    invoke-static/range {v12 .. v30}, Landroidx/core/graphics/PathParser$PathDataNode;->arcToBezier(Landroid/graphics/Path;DDDDDDDDD)V

    .line 720
    return-void
.end method

.method public static nodesToPath([Landroidx/core/graphics/PathParser$PathDataNode;Landroid/graphics/Path;)V
    .registers 7
    .param p0, "node"    # [Landroidx/core/graphics/PathParser$PathDataNode;
    .param p1, "path"    # Landroid/graphics/Path;

    .line 369
    const/4 v0, 0x6

    new-array v0, v0, [F

    .line 370
    .local v0, "current":[F
    const/16 v1, 0x6d

    .line 371
    .local v1, "previousCommand":C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    array-length v3, p0

    if-ge v2, v3, :cond_1b

    .line 372
    aget-object v3, p0, v2

    iget-char v3, v3, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    aget-object v4, p0, v2

    iget-object v4, v4, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    invoke-static {p1, v0, v1, v3, v4}, Landroidx/core/graphics/PathParser$PathDataNode;->addCommand(Landroid/graphics/Path;[FCC[F)V

    .line 373
    aget-object v3, p0, v2

    iget-char v1, v3, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    .line 371
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 375
    .end local v2    # "i":I
    :cond_1b
    return-void
.end method


# virtual methods
.method public interpolatePathDataNode(Landroidx/core/graphics/PathParser$PathDataNode;Landroidx/core/graphics/PathParser$PathDataNode;F)V
    .registers 8
    .param p1, "nodeFrom"    # Landroidx/core/graphics/PathParser$PathDataNode;
    .param p2, "nodeTo"    # Landroidx/core/graphics/PathParser$PathDataNode;
    .param p3, "fraction"    # F

    .line 388
    iget-char v0, p1, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    iput-char v0, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    .line 389
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p1, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v1, v1

    if-ge v0, v1, :cond_1f

    .line 390
    iget-object v1, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    iget-object v2, p1, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    aget v2, v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p3

    mul-float/2addr v2, v3

    iget-object v3, p2, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    aget v3, v3, v0

    mul-float/2addr v3, p3

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 389
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 393
    .end local v0    # "i":I
    :cond_1f
    return-void
.end method
