###### Class androidx.recyclerview.widget.DiffUtil (androidx.recyclerview.widget.DiffUtil)
.class public Landroidx/recyclerview/widget/DiffUtil;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;,
        Landroidx/recyclerview/widget/DiffUtil$DiffResult;,
        Landroidx/recyclerview/widget/DiffUtil$Range;,
        Landroidx/recyclerview/widget/DiffUtil$Snake;,
        Landroidx/recyclerview/widget/DiffUtil$ItemCallback;,
        Landroidx/recyclerview/widget/DiffUtil$Callback;
    }
.end annotation


# static fields
.field private static final SNAKE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/recyclerview/widget/DiffUtil$Snake;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 84
    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$1;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DiffUtil$1;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/DiffUtil;->SNAKE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public static calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    .registers 2
    .param p0, "cb"    # Landroidx/recyclerview/widget/DiffUtil$Callback;

    .line 105
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v0

    return-object v0
.end method

.method public static calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    .registers 17
    .param p0, "cb"    # Landroidx/recyclerview/widget/DiffUtil$Callback;
    .param p1, "detectMoves"    # Z

    .line 123
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getOldListSize()I

    move-result v0

    .line 124
    .local v0, "oldSize":I
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getNewListSize()I

    move-result v1

    .line 126
    .local v1, "newSize":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v2

    .line 130
    .local v5, "snakes":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/DiffUtil$Snake;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v2, "stack":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/DiffUtil$Range;>;"
    new-instance v3, Landroidx/recyclerview/widget/DiffUtil$Range;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v4, v1}, Landroidx/recyclerview/widget/DiffUtil$Range;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    add-int v3, v0, v1

    sub-int v4, v0, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int v13, v3, v4

    .line 138
    .local v13, "max":I
    mul-int/lit8 v3, v13, 0x2

    new-array v6, v3, [I

    .line 139
    .local v6, "forward":[I
    mul-int/lit8 v3, v13, 0x2

    new-array v7, v3, [I

    .line 142
    .local v7, "backward":[I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v3

    .line 143
    .local v14, "rangePool":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/DiffUtil$Range;>;"
    :goto_34
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f9

    .line 144
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/DiffUtil$Range;

    .line 145
    .local v3, "range":Landroidx/recyclerview/widget/DiffUtil$Range;
    move-object v12, v7

    .end local v7    # "backward":[I
    .local v12, "backward":[I
    iget v7, v3, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iget v8, v3, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iget v9, v3, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    iget v10, v3, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    move-object v11, v6

    move-object v6, p0

    .end local v6    # "forward":[I
    .local v11, "forward":[I
    invoke-static/range {v6 .. v13}, Landroidx/recyclerview/widget/DiffUtil;->diffPartial(Landroidx/recyclerview/widget/DiffUtil$Callback;IIII[I[II)Landroidx/recyclerview/widget/DiffUtil$Snake;

    move-result-object v4

    .line 147
    move-object v6, v11

    .end local v11    # "forward":[I
    .local v4, "snake":Landroidx/recyclerview/widget/DiffUtil$Snake;
    .restart local v6    # "forward":[I
    if-eqz v4, :cond_f3

    .line 148
    iget v7, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    if-lez v7, :cond_5f

    .line 149
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_5f
    iget v7, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iget v8, v3, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    add-int/2addr v7, v8

    iput v7, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    .line 153
    iget v7, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    iget v8, v3, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    add-int/2addr v7, v8

    iput v7, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    .line 156
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_79

    new-instance v7, Landroidx/recyclerview/widget/DiffUtil$Range;

    invoke-direct {v7}, Landroidx/recyclerview/widget/DiffUtil$Range;-><init>()V

    goto :goto_85

    .line 157
    :cond_79
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .line 156
    invoke-interface {v14, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/DiffUtil$Range;

    .line 158
    .local v7, "left":Landroidx/recyclerview/widget/DiffUtil$Range;
    :goto_85
    iget v8, v3, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iput v8, v7, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 159
    iget v8, v3, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    iput v8, v7, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 160
    iget-boolean v8, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    if-eqz v8, :cond_9a

    .line 161
    iget v8, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iput v8, v7, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 162
    iget v8, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    iput v8, v7, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    goto :goto_b3

    .line 164
    :cond_9a
    iget-boolean v8, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->removal:Z

    if-eqz v8, :cond_a9

    .line 165
    iget v8, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 166
    iget v8, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    iput v8, v7, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    goto :goto_b3

    .line 168
    :cond_a9
    iget v8, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iput v8, v7, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 169
    iget v8, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    .line 172
    :goto_b3
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    move-object v8, v3

    .line 177
    .local v8, "right":Landroidx/recyclerview/widget/DiffUtil$Range;
    iget-boolean v9, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    if-eqz v9, :cond_e1

    .line 178
    iget-boolean v9, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->removal:Z

    if-eqz v9, :cond_d0

    .line 179
    iget v9, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iget v10, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 180
    iget v9, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    iget v10, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    add-int/2addr v9, v10

    iput v9, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    goto :goto_ef

    .line 182
    :cond_d0
    iget v9, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iget v10, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    add-int/2addr v9, v10

    iput v9, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 183
    iget v9, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    iget v10, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    goto :goto_ef

    .line 186
    :cond_e1
    iget v9, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iget v10, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    add-int/2addr v9, v10

    iput v9, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 187
    iget v9, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    iget v10, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    add-int/2addr v9, v10

    iput v9, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 189
    :goto_ef
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    .end local v7    # "left":Landroidx/recyclerview/widget/DiffUtil$Range;
    .end local v8    # "right":Landroidx/recyclerview/widget/DiffUtil$Range;
    goto :goto_f6

    .line 191
    :cond_f3
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    .end local v3    # "range":Landroidx/recyclerview/widget/DiffUtil$Range;
    .end local v4    # "snake":Landroidx/recyclerview/widget/DiffUtil$Snake;
    :goto_f6
    move-object v7, v12

    goto/16 :goto_34

    .line 196
    .end local v12    # "backward":[I
    .local v7, "backward":[I
    :cond_f9
    sget-object v3, Landroidx/recyclerview/widget/DiffUtil;->SNAKE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v5, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 198
    new-instance v3, Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-object v4, p0

    move/from16 v8, p1

    invoke-direct/range {v3 .. v8}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;-><init>(Landroidx/recyclerview/widget/DiffUtil$Callback;Ljava/util/List;[I[IZ)V

    return-object v3
.end method

.method private static diffPartial(Landroidx/recyclerview/widget/DiffUtil$Callback;IIII[I[II)Landroidx/recyclerview/widget/DiffUtil$Snake;
    .registers 26
    .param p0, "cb"    # Landroidx/recyclerview/widget/DiffUtil$Callback;
    .param p1, "startOld"    # I
    .param p2, "endOld"    # I
    .param p3, "startNew"    # I
    .param p4, "endNew"    # I
    .param p5, "forward"    # [I
    .param p6, "backward"    # [I
    .param p7, "kOffset"    # I

    .line 204
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    sub-int v3, p2, p1

    .line 205
    .local v3, "oldSize":I
    sub-int v4, p4, p3

    .line 207
    .local v4, "newSize":I
    sub-int v5, p2, p1

    const/4 v6, 0x1

    if-lt v5, v6, :cond_15c

    sub-int v5, p4, p3

    if-ge v5, v6, :cond_15

    goto/16 :goto_15c

    .line 211
    :cond_15
    sub-int v5, v3, v4

    .line 212
    .local v5, "delta":I
    add-int v7, v3, v4

    add-int/2addr v7, v6

    div-int/lit8 v7, v7, 0x2

    .line 213
    .local v7, "dLimit":I
    sub-int v8, p7, v7

    sub-int/2addr v8, v6

    add-int v9, p7, v7

    add-int/2addr v9, v6

    const/4 v10, 0x0

    invoke-static {v1, v8, v9, v10}, Ljava/util/Arrays;->fill([IIII)V

    .line 214
    sub-int v8, p7, v7

    sub-int/2addr v8, v6

    add-int/2addr v8, v5

    add-int v9, p7, v7

    add-int/2addr v9, v6

    add-int/2addr v9, v5

    invoke-static {v2, v8, v9, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 215
    rem-int/lit8 v8, v5, 0x2

    if-eqz v8, :cond_37

    move v8, v6

    goto :goto_38

    :cond_37
    move v8, v10

    .line 216
    .local v8, "checkInFwd":Z
    :goto_38
    const/4 v9, 0x0

    .local v9, "d":I
    :goto_39
    if-gt v9, v7, :cond_154

    .line 217
    neg-int v11, v9

    .local v11, "k":I
    :goto_3c
    if-gt v11, v9, :cond_bb

    .line 222
    neg-int v12, v9

    if-eq v11, v12, :cond_58

    if-eq v11, v9, :cond_50

    add-int v12, p7, v11

    sub-int/2addr v12, v6

    aget v12, v1, v12

    add-int v13, p7, v11

    add-int/2addr v13, v6

    aget v13, v1, v13

    if-ge v12, v13, :cond_50

    goto :goto_58

    .line 226
    :cond_50
    add-int v12, p7, v11

    sub-int/2addr v12, v6

    aget v12, v1, v12

    add-int/2addr v12, v6

    .line 227
    .local v12, "x":I
    const/4 v13, 0x1

    .local v13, "removal":Z
    goto :goto_5e

    .line 223
    .end local v12    # "x":I
    .end local v13    # "removal":Z
    :cond_58
    :goto_58
    add-int v12, p7, v11

    add-int/2addr v12, v6

    aget v12, v1, v12

    .line 224
    .restart local v12    # "x":I
    const/4 v13, 0x0

    .line 230
    .restart local v13    # "removal":Z
    :goto_5e
    sub-int v14, v12, v11

    .line 232
    .local v14, "y":I
    :goto_60
    if-ge v12, v3, :cond_77

    if-ge v14, v4, :cond_77

    add-int v15, p1, v12

    move/from16 v16, v6

    add-int v6, p3, v14

    .line 233
    invoke-virtual {v0, v15, v6}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v6

    if-eqz v6, :cond_79

    .line 234
    add-int/lit8 v12, v12, 0x1

    .line 235
    add-int/lit8 v14, v14, 0x1

    move/from16 v6, v16

    goto :goto_60

    .line 232
    :cond_77
    move/from16 v16, v6

    .line 237
    :cond_79
    add-int v6, p7, v11

    aput v12, v1, v6

    .line 238
    if-eqz v8, :cond_b6

    sub-int v6, v5, v9

    add-int/lit8 v6, v6, 0x1

    if-lt v11, v6, :cond_b6

    add-int v6, v5, v9

    add-int/lit8 v6, v6, -0x1

    if-gt v11, v6, :cond_b6

    .line 239
    add-int v6, p7, v11

    aget v6, v1, v6

    add-int v15, p7, v11

    aget v15, v2, v15

    if-lt v6, v15, :cond_b6

    .line 240
    new-instance v6, Landroidx/recyclerview/widget/DiffUtil$Snake;

    invoke-direct {v6}, Landroidx/recyclerview/widget/DiffUtil$Snake;-><init>()V

    .line 241
    .local v6, "outSnake":Landroidx/recyclerview/widget/DiffUtil$Snake;
    add-int v15, p7, v11

    aget v15, v2, v15

    iput v15, v6, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    .line 242
    iget v15, v6, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    sub-int/2addr v15, v11

    iput v15, v6, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    .line 243
    add-int v15, p7, v11

    aget v15, v1, v15

    add-int v16, p7, v11

    aget v16, v2, v16

    sub-int v15, v15, v16

    iput v15, v6, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    .line 244
    iput-boolean v13, v6, Landroidx/recyclerview/widget/DiffUtil$Snake;->removal:Z

    .line 245
    iput-boolean v10, v6, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    .line 246
    return-object v6

    .line 217
    .end local v6    # "outSnake":Landroidx/recyclerview/widget/DiffUtil$Snake;
    .end local v12    # "x":I
    .end local v13    # "removal":Z
    .end local v14    # "y":I
    :cond_b6
    add-int/lit8 v11, v11, 0x2

    move/from16 v6, v16

    goto :goto_3c

    :cond_bb
    move/from16 v16, v6

    .line 250
    .end local v11    # "k":I
    neg-int v6, v9

    .local v6, "k":I
    :goto_be
    if-gt v6, v9, :cond_14c

    .line 252
    add-int v11, v6, v5

    .line 255
    .local v11, "backwardK":I
    add-int v12, v9, v5

    if-eq v11, v12, :cond_e3

    neg-int v12, v9

    add-int/2addr v12, v5

    if-eq v11, v12, :cond_d9

    add-int v12, p7, v11

    add-int/lit8 v12, v12, -0x1

    aget v12, v2, v12

    add-int v13, p7, v11

    add-int/lit8 v13, v13, 0x1

    aget v13, v2, v13

    if-ge v12, v13, :cond_d9

    goto :goto_e3

    .line 260
    :cond_d9
    add-int v12, p7, v11

    add-int/lit8 v12, v12, 0x1

    aget v12, v2, v12

    add-int/lit8 v12, v12, -0x1

    .line 261
    .restart local v12    # "x":I
    const/4 v13, 0x1

    .restart local v13    # "removal":Z
    goto :goto_ea

    .line 257
    .end local v12    # "x":I
    .end local v13    # "removal":Z
    :cond_e3
    :goto_e3
    add-int v12, p7, v11

    add-int/lit8 v12, v12, -0x1

    aget v12, v2, v12

    .line 258
    .restart local v12    # "x":I
    const/4 v13, 0x0

    .line 265
    .restart local v13    # "removal":Z
    :goto_ea
    sub-int v14, v12, v11

    .line 267
    .restart local v14    # "y":I
    :goto_ec
    if-lez v12, :cond_104

    if-lez v14, :cond_104

    add-int v15, p1, v12

    add-int/lit8 v15, v15, -0x1

    add-int v17, p3, v14

    add-int/lit8 v10, v17, -0x1

    .line 268
    invoke-virtual {v0, v15, v10}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v10

    if-eqz v10, :cond_104

    .line 269
    add-int/lit8 v12, v12, -0x1

    .line 270
    add-int/lit8 v14, v14, -0x1

    const/4 v10, 0x0

    goto :goto_ec

    .line 272
    :cond_104
    add-int v10, p7, v11

    aput v12, v2, v10

    .line 273
    if-nez v8, :cond_143

    add-int v10, v6, v5

    neg-int v15, v9

    if-lt v10, v15, :cond_143

    add-int v10, v6, v5

    if-gt v10, v9, :cond_143

    .line 274
    add-int v10, p7, v11

    aget v10, v1, v10

    add-int v15, p7, v11

    aget v15, v2, v15

    if-lt v10, v15, :cond_140

    .line 275
    new-instance v10, Landroidx/recyclerview/widget/DiffUtil$Snake;

    invoke-direct {v10}, Landroidx/recyclerview/widget/DiffUtil$Snake;-><init>()V

    .line 276
    .local v10, "outSnake":Landroidx/recyclerview/widget/DiffUtil$Snake;
    add-int v15, p7, v11

    aget v15, v2, v15

    iput v15, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    .line 277
    iget v15, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    sub-int/2addr v15, v11

    iput v15, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    .line 278
    add-int v15, p7, v11

    aget v15, v1, v15

    add-int v17, p7, v11

    aget v17, v2, v17

    sub-int v15, v15, v17

    iput v15, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    .line 280
    iput-boolean v13, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->removal:Z

    .line 281
    move/from16 v15, v16

    iput-boolean v15, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    .line 282
    return-object v10

    .line 274
    .end local v10    # "outSnake":Landroidx/recyclerview/widget/DiffUtil$Snake;
    :cond_140
    move/from16 v15, v16

    goto :goto_145

    .line 273
    :cond_143
    move/from16 v15, v16

    .line 250
    .end local v11    # "backwardK":I
    .end local v12    # "x":I
    .end local v13    # "removal":Z
    .end local v14    # "y":I
    :goto_145
    add-int/lit8 v6, v6, 0x2

    move/from16 v16, v15

    const/4 v10, 0x0

    goto/16 :goto_be

    :cond_14c
    move/from16 v15, v16

    .line 216
    .end local v6    # "k":I
    add-int/lit8 v9, v9, 0x1

    move v6, v15

    const/4 v10, 0x0

    goto/16 :goto_39

    .line 287
    .end local v9    # "d":I
    :cond_154
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v9, "DiffUtil hit an unexpected case while trying to calculate the optimal path. Please make sure your data is not changing during the diff calculation."

    invoke-direct {v6, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 208
    .end local v5    # "delta":I
    .end local v7    # "dLimit":I
    .end local v8    # "checkInFwd":Z
    :cond_15c
    :goto_15c
    const/4 v5, 0x0

    return-object v5
.end method

###### Class androidx.recyclerview.widget.DiffUtil.AnonymousClass1 (androidx.recyclerview.widget.DiffUtil$1)
.class final Landroidx/recyclerview/widget/DiffUtil$1;
.super Ljava/lang/Object;
.source "DiffUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/recyclerview/widget/DiffUtil$Snake;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroidx/recyclerview/widget/DiffUtil$Snake;Landroidx/recyclerview/widget/DiffUtil$Snake;)I
    .registers 6
    .param p1, "o1"    # Landroidx/recyclerview/widget/DiffUtil$Snake;
    .param p2, "o2"    # Landroidx/recyclerview/widget/DiffUtil$Snake;

    .line 87
    iget v0, p1, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iget v1, p2, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    sub-int/2addr v0, v1

    .line 88
    .local v0, "cmpX":I
    if-nez v0, :cond_d

    iget v1, p1, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    iget v2, p2, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    sub-int/2addr v1, v2

    goto :goto_e

    :cond_d
    move v1, v0

    :goto_e
    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 84
    check-cast p1, Landroidx/recyclerview/widget/DiffUtil$Snake;

    check-cast p2, Landroidx/recyclerview/widget/DiffUtil$Snake;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/DiffUtil$1;->compare(Landroidx/recyclerview/widget/DiffUtil$Snake;Landroidx/recyclerview/widget/DiffUtil$Snake;)I

    move-result p1

    return p1
.end method

###### Class androidx.recyclerview.widget.DiffUtil.Callback (androidx.recyclerview.widget.DiffUtil$Callback)
.class public abstract Landroidx/recyclerview/widget/DiffUtil$Callback;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract areContentsTheSame(II)Z
.end method

.method public abstract areItemsTheSame(II)Z
.end method

.method public getChangePayload(II)Ljava/lang/Object;
    .registers 4
    .param p1, "oldItemPosition"    # I
    .param p2, "newItemPosition"    # I

    .line 360
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getNewListSize()I
.end method

.method public abstract getOldListSize()I
.end method

###### Class androidx.recyclerview.widget.DiffUtil.DiffResult (androidx.recyclerview.widget.DiffUtil$DiffResult)
.class public Landroidx/recyclerview/widget/DiffUtil$DiffResult;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiffResult"
.end annotation


# static fields
.field private static final FLAG_CHANGED:I = 0x2

.field private static final FLAG_IGNORE:I = 0x10

.field private static final FLAG_MASK:I = 0x1f

.field private static final FLAG_MOVED_CHANGED:I = 0x4

.field private static final FLAG_MOVED_NOT_CHANGED:I = 0x8

.field private static final FLAG_NOT_CHANGED:I = 0x1

.field private static final FLAG_OFFSET:I = 0x5

.field public static final NO_POSITION:I = -0x1


# instance fields
.field private final mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

.field private final mDetectMoves:Z

.field private final mNewItemStatuses:[I

.field private final mNewListSize:I

.field private final mOldItemStatuses:[I

.field private final mOldListSize:I

.field private final mSnakes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/DiffUtil$Snake;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/DiffUtil$Callback;Ljava/util/List;[I[IZ)V
    .registers 8
    .param p1, "callback"    # Landroidx/recyclerview/widget/DiffUtil$Callback;
    .param p3, "oldItemStatuses"    # [I
    .param p4, "newItemStatuses"    # [I
    .param p5, "detectMoves"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/DiffUtil$Callback;",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/DiffUtil$Snake;",
            ">;[I[IZ)V"
        }
    .end annotation

    .line 567
    .local p2, "snakes":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/DiffUtil$Snake;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    iput-object p2, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    .line 569
    iput-object p3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    .line 570
    iput-object p4, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    .line 571
    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 572
    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 573
    iput-object p1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    .line 574
    invoke-virtual {p1}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getOldListSize()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    .line 575
    invoke-virtual {p1}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getNewListSize()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    .line 576
    iput-boolean p5, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDetectMoves:Z

    .line 577
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->addRootSnake()V

    .line 578
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->findMatchingItems()V

    .line 579
    return-void
.end method

.method private addRootSnake()V
    .registers 5

    .line 586
    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    goto :goto_13

    :cond_b
    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$Snake;

    .line 587
    .local v0, "firstSnake":Landroidx/recyclerview/widget/DiffUtil$Snake;
    :goto_13
    if-eqz v0, :cond_1d

    iget v2, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    if-nez v2, :cond_1d

    iget v2, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    if-eqz v2, :cond_31

    .line 588
    :cond_1d
    new-instance v2, Landroidx/recyclerview/widget/DiffUtil$Snake;

    invoke-direct {v2}, Landroidx/recyclerview/widget/DiffUtil$Snake;-><init>()V

    .line 589
    .local v2, "root":Landroidx/recyclerview/widget/DiffUtil$Snake;
    iput v1, v2, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    .line 590
    iput v1, v2, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    .line 591
    iput-boolean v1, v2, Landroidx/recyclerview/widget/DiffUtil$Snake;->removal:Z

    .line 592
    iput v1, v2, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    .line 593
    iput-boolean v1, v2, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    .line 594
    iget-object v3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v3, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 596
    .end local v2    # "root":Landroidx/recyclerview/widget/DiffUtil$Snake;
    :cond_31
    return-void
.end method

.method private dispatchAdditions(Ljava/util/List;Landroidx/recyclerview/widget/ListUpdateCallback;III)V
    .registers 13
    .param p2, "updateCallback"    # Landroidx/recyclerview/widget/ListUpdateCallback;
    .param p3, "start"    # I
    .param p4, "count"    # I
    .param p5, "globalIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;",
            ">;",
            "Landroidx/recyclerview/widget/ListUpdateCallback;",
            "III)V"
        }
    .end annotation

    .line 873
    .local p1, "postponedUpdates":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;>;"
    iget-boolean v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDetectMoves:Z

    if-nez v0, :cond_8

    .line 874
    invoke-interface {p2, p3, p4}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    .line 875
    return-void

    .line 877
    :cond_8
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_8d

    .line 878
    iget-object v1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    add-int v2, p5, v0

    aget v1, v1, v2

    and-int/lit8 v1, v1, 0x1f

    .line 879
    .local v1, "status":I
    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_8e

    .line 904
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown flag for pos "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int v4, p5, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    int-to-long v4, v1

    .line 906
    invoke-static {v4, v5}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 901
    :sswitch_43
    new-instance v2, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    add-int v3, p5, v0

    const/4 v4, 0x0

    invoke-direct {v2, v3, p3, v4}, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 902
    goto :goto_89

    .line 888
    :sswitch_4f
    iget-object v3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    add-int v4, p5, v0

    aget v3, v3, v4

    shr-int/lit8 v3, v3, 0x5

    .line 889
    .local v3, "pos":I
    invoke-static {p1, v3, v2}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->removePostponedUpdate(Ljava/util/List;IZ)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    move-result-object v4

    .line 893
    .local v4, "update":Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    iget v5, v4, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    invoke-interface {p2, v5, p3}, Landroidx/recyclerview/widget/ListUpdateCallback;->onMoved(II)V

    .line 894
    const/4 v5, 0x4

    if-ne v1, v5, :cond_89

    .line 896
    iget-object v5, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    add-int v6, p5, v0

    .line 897
    invoke-virtual {v5, v3, v6}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v5

    .line 896
    invoke-interface {p2, p3, v2, v5}, Landroidx/recyclerview/widget/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_89

    .line 881
    .end local v3    # "pos":I
    .end local v4    # "update":Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    :sswitch_6f
    invoke-interface {p2, p3, v2}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    .line 882
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_76
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_88

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    .line 883
    .restart local v4    # "update":Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    iget v5, v4, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    add-int/2addr v5, v2

    iput v5, v4, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    .line 884
    .end local v4    # "update":Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    goto :goto_76

    .line 885
    :cond_88
    nop

    .line 877
    .end local v1    # "status":I
    :cond_89
    :goto_89
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_a

    .line 909
    .end local v0    # "i":I
    :cond_8d
    return-void

    :sswitch_data_8e
    .sparse-switch
        0x0 -> :sswitch_6f
        0x4 -> :sswitch_4f
        0x8 -> :sswitch_4f
        0x10 -> :sswitch_43
    .end sparse-switch
.end method

.method private dispatchRemovals(Ljava/util/List;Landroidx/recyclerview/widget/ListUpdateCallback;III)V
    .registers 14
    .param p2, "updateCallback"    # Landroidx/recyclerview/widget/ListUpdateCallback;
    .param p3, "start"    # I
    .param p4, "count"    # I
    .param p5, "globalIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;",
            ">;",
            "Landroidx/recyclerview/widget/ListUpdateCallback;",
            "III)V"
        }
    .end annotation

    .line 913
    .local p1, "postponedUpdates":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;>;"
    iget-boolean v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDetectMoves:Z

    if-nez v0, :cond_8

    .line 914
    invoke-interface {p2, p3, p4}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    .line 915
    return-void

    .line 917
    :cond_8
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_97

    .line 918
    iget-object v1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    add-int v2, p5, v0

    aget v1, v1, v2

    and-int/lit8 v1, v1, 0x1f

    .line 919
    .local v1, "status":I
    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_98

    .line 945
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown flag for pos "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int v4, p5, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    int-to-long v4, v1

    .line 947
    invoke-static {v4, v5}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 942
    :sswitch_43
    new-instance v3, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    add-int v4, p5, v0

    add-int v5, p3, v0

    invoke-direct {v3, v4, v5, v2}, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 943
    goto :goto_93

    .line 928
    :sswitch_50
    iget-object v3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    add-int v4, p5, v0

    aget v3, v3, v4

    shr-int/lit8 v3, v3, 0x5

    .line 929
    .local v3, "pos":I
    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->removePostponedUpdate(Ljava/util/List;IZ)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    move-result-object v4

    .line 934
    .local v4, "update":Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    add-int v5, p3, v0

    iget v6, v4, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    sub-int/2addr v6, v2

    invoke-interface {p2, v5, v6}, Landroidx/recyclerview/widget/ListUpdateCallback;->onMoved(II)V

    .line 935
    const/4 v5, 0x4

    if-ne v1, v5, :cond_93

    .line 937
    iget v5, v4, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    sub-int/2addr v5, v2

    iget-object v6, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    add-int v7, p5, v0

    .line 938
    invoke-virtual {v6, v7, v3}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v6

    .line 937
    invoke-interface {p2, v5, v2, v6}, Landroidx/recyclerview/widget/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_93

    .line 921
    .end local v3    # "pos":I
    .end local v4    # "update":Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    :sswitch_77
    add-int v3, p3, v0

    invoke-interface {p2, v3, v2}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    .line 922
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_80
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_92

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    .line 923
    .restart local v4    # "update":Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    iget v5, v4, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    .line 924
    .end local v4    # "update":Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    goto :goto_80

    .line 925
    :cond_92
    nop

    .line 917
    .end local v1    # "status":I
    :cond_93
    :goto_93
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_a

    .line 950
    .end local v0    # "i":I
    :cond_97
    return-void

    :sswitch_data_98
    .sparse-switch
        0x0 -> :sswitch_77
        0x4 -> :sswitch_50
        0x8 -> :sswitch_50
        0x10 -> :sswitch_43
    .end sparse-switch
.end method

.method private findAddition(III)V
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "snakeIndex"    # I

    .line 646
    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    if-eqz v0, :cond_9

    .line 647
    return-void

    .line 649
    :cond_9
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->findMatchingItem(IIIZ)Z

    .line 650
    return-void
.end method

.method private findMatchingItem(IIIZ)Z
    .registers 19
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "snakeIndex"    # I
    .param p4, "removal"    # Z

    .line 723
    if-eqz p4, :cond_8

    .line 724
    add-int/lit8 v0, p2, -0x1

    .line 725
    .local v0, "myItemPos":I
    move v1, p1

    .line 726
    .local v1, "curX":I
    add-int/lit8 v2, p2, -0x1

    .local v2, "curY":I
    goto :goto_e

    .line 728
    .end local v0    # "myItemPos":I
    .end local v1    # "curX":I
    .end local v2    # "curY":I
    :cond_8
    add-int/lit8 v0, p1, -0x1

    .line 729
    .restart local v0    # "myItemPos":I
    add-int/lit8 v1, p1, -0x1

    .line 730
    .restart local v1    # "curX":I
    move/from16 v2, p2

    .line 732
    .restart local v2    # "curY":I
    :goto_e
    move/from16 v3, p3

    .local v3, "i":I
    :goto_10
    if-ltz v3, :cond_88

    .line 733
    iget-object v4, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/DiffUtil$Snake;

    .line 734
    .local v4, "snake":Landroidx/recyclerview/widget/DiffUtil$Snake;
    iget v5, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iget v6, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    add-int/2addr v5, v6

    .line 735
    .local v5, "endX":I
    iget v6, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    iget v7, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    add-int/2addr v6, v7

    .line 736
    .local v6, "endY":I
    const/16 v7, 0x8

    const/4 v8, 0x4

    const/4 v9, 0x1

    if-eqz p4, :cond_54

    .line 738
    add-int/lit8 v10, v1, -0x1

    .local v10, "pos":I
    :goto_2c
    if-lt v10, v5, :cond_53

    .line 739
    iget-object v11, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    invoke-virtual {v11, v10, v0}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v11

    if-eqz v11, :cond_50

    .line 741
    iget-object v11, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    invoke-virtual {v11, v10, v0}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v11

    .line 742
    .local v11, "theSame":Z
    if-eqz v11, :cond_3f

    goto :goto_40

    :cond_3f
    move v7, v8

    .line 744
    .local v7, "changeFlag":I
    :goto_40
    iget-object v8, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    shl-int/lit8 v12, v10, 0x5

    or-int/lit8 v12, v12, 0x10

    aput v12, v8, v0

    .line 745
    iget-object v8, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    shl-int/lit8 v12, v0, 0x5

    or-int/2addr v12, v7

    aput v12, v8, v10

    .line 746
    return v9

    .line 738
    .end local v7    # "changeFlag":I
    .end local v11    # "theSame":Z
    :cond_50
    add-int/lit8 v10, v10, -0x1

    goto :goto_2c

    .end local v10    # "pos":I
    :cond_53
    goto :goto_81

    .line 751
    :cond_54
    add-int/lit8 v10, v2, -0x1

    .restart local v10    # "pos":I
    :goto_56
    if-lt v10, v6, :cond_81

    .line 752
    iget-object v11, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    invoke-virtual {v11, v0, v10}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v11

    if-eqz v11, :cond_7e

    .line 754
    iget-object v11, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    invoke-virtual {v11, v0, v10}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v11

    .line 755
    .restart local v11    # "theSame":Z
    if-eqz v11, :cond_69

    goto :goto_6a

    :cond_69
    move v7, v8

    .line 757
    .restart local v7    # "changeFlag":I
    :goto_6a
    iget-object v8, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    add-int/lit8 v12, p1, -0x1

    shl-int/lit8 v13, v10, 0x5

    or-int/lit8 v13, v13, 0x10

    aput v13, v8, v12

    .line 758
    iget-object v8, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    add-int/lit8 v12, p1, -0x1

    shl-int/lit8 v12, v12, 0x5

    or-int/2addr v12, v7

    aput v12, v8, v10

    .line 759
    return v9

    .line 751
    .end local v7    # "changeFlag":I
    .end local v11    # "theSame":Z
    :cond_7e
    add-int/lit8 v10, v10, -0x1

    goto :goto_56

    .line 763
    .end local v10    # "pos":I
    :cond_81
    :goto_81
    iget v1, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    .line 764
    iget v2, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    .line 732
    .end local v4    # "snake":Landroidx/recyclerview/widget/DiffUtil$Snake;
    .end local v5    # "endX":I
    .end local v6    # "endY":I
    add-int/lit8 v3, v3, -0x1

    goto :goto_10

    .line 766
    .end local v3    # "i":I
    :cond_88
    const/4 v3, 0x0

    return v3
.end method

.method private findMatchingItems()V
    .registers 15

    .line 610
    iget v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    .line 611
    .local v0, "posOld":I
    iget v1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    .line 613
    .local v1, "posNew":I
    iget-object v2, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_c
    if-ltz v2, :cond_62

    .line 614
    iget-object v4, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/DiffUtil$Snake;

    .line 615
    .local v4, "snake":Landroidx/recyclerview/widget/DiffUtil$Snake;
    iget v5, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iget v6, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    add-int/2addr v5, v6

    .line 616
    .local v5, "endX":I
    iget v6, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    iget v7, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    add-int/2addr v6, v7

    .line 617
    .local v6, "endY":I
    iget-boolean v7, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDetectMoves:Z

    if-eqz v7, :cond_34

    .line 618
    :goto_24
    if-le v0, v5, :cond_2c

    .line 620
    invoke-direct {p0, v0, v1, v2}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->findAddition(III)V

    .line 621
    add-int/lit8 v0, v0, -0x1

    goto :goto_24

    .line 623
    :cond_2c
    :goto_2c
    if-le v1, v6, :cond_34

    .line 626
    invoke-direct {p0, v0, v1, v2}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->findRemoval(III)V

    .line 627
    add-int/lit8 v1, v1, -0x1

    goto :goto_2c

    .line 630
    :cond_34
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_35
    iget v8, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    if-ge v7, v8, :cond_5b

    .line 632
    iget v8, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    add-int/2addr v8, v7

    .line 633
    .local v8, "oldItemPos":I
    iget v9, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    add-int/2addr v9, v7

    .line 634
    .local v9, "newItemPos":I
    iget-object v10, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    .line 635
    invoke-virtual {v10, v8, v9}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v10

    .line 636
    .local v10, "theSame":Z
    if-eqz v10, :cond_49

    move v11, v3

    goto :goto_4a

    :cond_49
    const/4 v11, 0x2

    .line 637
    .local v11, "changeFlag":I
    :goto_4a
    iget-object v12, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    shl-int/lit8 v13, v9, 0x5

    or-int/2addr v13, v11

    aput v13, v12, v8

    .line 638
    iget-object v12, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    shl-int/lit8 v13, v8, 0x5

    or-int/2addr v13, v11

    aput v13, v12, v9

    .line 630
    .end local v8    # "oldItemPos":I
    .end local v9    # "newItemPos":I
    .end local v10    # "theSame":Z
    .end local v11    # "changeFlag":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_35

    .line 640
    .end local v7    # "j":I
    :cond_5b
    iget v0, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    .line 641
    iget v1, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    .line 613
    .end local v4    # "snake":Landroidx/recyclerview/widget/DiffUtil$Snake;
    .end local v5    # "endX":I
    .end local v6    # "endY":I
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    .line 643
    .end local v2    # "i":I
    :cond_62
    return-void
.end method

.method private findRemoval(III)V
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "snakeIndex"    # I

    .line 653
    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    add-int/lit8 v1, p2, -0x1

    aget v0, v0, v1

    if-eqz v0, :cond_9

    .line 654
    return-void

    .line 656
    :cond_9
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->findMatchingItem(IIIZ)Z

    .line 657
    return-void
.end method

.method private static removePostponedUpdate(Ljava/util/List;IZ)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    .registers 10
    .param p1, "pos"    # I
    .param p2, "removal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;",
            ">;IZ)",
            "Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;"
        }
    .end annotation

    .line 857
    .local p0, "updates":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_37

    .line 858
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    .line 859
    .local v2, "update":Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    iget v3, v2, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->posInOwnerList:I

    if-ne v3, p1, :cond_34

    iget-boolean v3, v2, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->removal:Z

    if-ne v3, p2, :cond_34

    .line 860
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 861
    move v3, v0

    .local v3, "j":I
    :goto_1a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_33

    .line 863
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    iget v5, v4, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    if-eqz p2, :cond_2c

    move v6, v1

    goto :goto_2d

    :cond_2c
    const/4 v6, -0x1

    :goto_2d
    add-int/2addr v5, v6

    iput v5, v4, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    .line 861
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 865
    .end local v3    # "j":I
    :cond_33
    return-object v2

    .line 857
    .end local v2    # "update":Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    :cond_34
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 868
    .end local v0    # "i":I
    :cond_37
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public convertNewPositionToOld(I)I
    .registers 5
    .param p1, "newListPosition"    # I

    .line 695
    if-ltz p1, :cond_13

    iget v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    if-ge p1, v0, :cond_13

    .line 699
    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    aget v0, v0, p1

    .line 700
    .local v0, "status":I
    and-int/lit8 v1, v0, 0x1f

    if-nez v1, :cond_10

    .line 701
    const/4 v1, -0x1

    return v1

    .line 703
    :cond_10
    shr-int/lit8 v1, v0, 0x5

    return v1

    .line 696
    .end local v0    # "status":I
    :cond_13
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index out of bounds - passed position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new list size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public convertOldPositionToNew(I)I
    .registers 5
    .param p1, "oldListPosition"    # I

    .line 671
    if-ltz p1, :cond_13

    iget v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    if-ge p1, v0, :cond_13

    .line 675
    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    aget v0, v0, p1

    .line 676
    .local v0, "status":I
    and-int/lit8 v1, v0, 0x1f

    if-nez v1, :cond_10

    .line 677
    const/4 v1, -0x1

    return v1

    .line 679
    :cond_10
    shr-int/lit8 v1, v0, 0x5

    return v1

    .line 672
    .end local v0    # "status":I
    :cond_13
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index out of bounds - passed position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", old list size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V
    .registers 18
    .param p1, "updateCallback"    # Landroidx/recyclerview/widget/ListUpdateCallback;

    .line 816
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    if-eqz v2, :cond_d

    .line 817
    move-object v2, v1

    check-cast v2, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    move-object v6, v1

    .local v2, "batchingCallback":Landroidx/recyclerview/widget/BatchingListUpdateCallback;
    goto :goto_14

    .line 819
    .end local v2    # "batchingCallback":Landroidx/recyclerview/widget/BatchingListUpdateCallback;
    :cond_d
    new-instance v2, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    invoke-direct {v2, v1}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;-><init>(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    .line 823
    .restart local v2    # "batchingCallback":Landroidx/recyclerview/widget/BatchingListUpdateCallback;
    move-object v1, v2

    move-object v6, v1

    .line 827
    .end local p1    # "updateCallback":Landroidx/recyclerview/widget/ListUpdateCallback;
    .local v6, "updateCallback":Landroidx/recyclerview/widget/ListUpdateCallback;
    :goto_14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 828
    .local v1, "postponedUpdates":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;>;"
    iget v3, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    .line 829
    .local v3, "posOld":I
    iget v4, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    .line 830
    .local v4, "posNew":I
    iget-object v5, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    move v8, v3

    move v9, v4

    move v10, v5

    .end local v3    # "posOld":I
    .end local v4    # "posNew":I
    .local v8, "posOld":I
    .local v9, "posNew":I
    .local v10, "snakeIndex":I
    :goto_28
    if-ltz v10, :cond_83

    .line 831
    iget-object v3, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroidx/recyclerview/widget/DiffUtil$Snake;

    .line 832
    .local v11, "snake":Landroidx/recyclerview/widget/DiffUtil$Snake;
    iget v12, v11, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    .line 833
    .local v12, "snakeSize":I
    iget v3, v11, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    add-int/2addr v3, v12

    .line 834
    .local v3, "endX":I
    iget v4, v11, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    add-int v13, v4, v12

    .line 835
    .local v13, "endY":I
    if-ge v3, v8, :cond_44

    .line 836
    sub-int v4, v8, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchRemovals(Ljava/util/List;Landroidx/recyclerview/widget/ListUpdateCallback;III)V

    .line 839
    :cond_44
    if-ge v13, v9, :cond_4f

    .line 840
    sub-int v4, v9, v13

    move-object/from16 v0, p0

    move v5, v13

    .end local v13    # "endY":I
    .local v5, "endY":I
    invoke-direct/range {v0 .. v5}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchAdditions(Ljava/util/List;Landroidx/recyclerview/widget/ListUpdateCallback;III)V

    goto :goto_52

    .line 839
    .end local v5    # "endY":I
    .restart local v13    # "endY":I
    :cond_4f
    move-object/from16 v0, p0

    move v5, v13

    .line 843
    .end local v13    # "endY":I
    .restart local v5    # "endY":I
    :goto_52
    add-int/lit8 v4, v12, -0x1

    .local v4, "i":I
    :goto_54
    if-ltz v4, :cond_7b

    .line 844
    iget-object v13, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    iget v14, v11, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    add-int/2addr v14, v4

    aget v13, v13, v14

    and-int/lit8 v13, v13, 0x1f

    const/4 v14, 0x2

    if-ne v13, v14, :cond_76

    .line 845
    iget v13, v11, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    add-int/2addr v13, v4

    iget-object v14, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    iget v15, v11, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    add-int/2addr v15, v4

    iget v7, v11, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    add-int/2addr v7, v4

    .line 846
    invoke-virtual {v14, v15, v7}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v7

    .line 845
    const/4 v14, 0x1

    invoke-virtual {v2, v13, v14, v7}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_77

    .line 844
    :cond_76
    move v14, v7

    .line 843
    :goto_77
    add-int/lit8 v4, v4, -0x1

    move v7, v14

    goto :goto_54

    :cond_7b
    move v14, v7

    .line 849
    .end local v4    # "i":I
    iget v8, v11, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    .line 850
    iget v9, v11, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    .line 830
    .end local v3    # "endX":I
    .end local v5    # "endY":I
    .end local v11    # "snake":Landroidx/recyclerview/widget/DiffUtil$Snake;
    .end local v12    # "snakeSize":I
    add-int/lit8 v10, v10, -0x1

    goto :goto_28

    .line 852
    .end local v10    # "snakeIndex":I
    :cond_83
    invoke-virtual {v2}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 853
    return-void
.end method

.method public dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 3
    .param p1, "adapter"    # Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 802
    new-instance v0, Landroidx/recyclerview/widget/AdapterListUpdateCallback;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/AdapterListUpdateCallback;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    .line 803
    return-void
.end method

.method getSnakes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/DiffUtil$Snake;",
            ">;"
        }
    .end annotation

    .line 954
    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    return-object v0
.end method

###### Class androidx.recyclerview.widget.DiffUtil.ItemCallback (androidx.recyclerview.widget.DiffUtil$ItemCallback)
.class public abstract Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 373
    .local p0, "this":Landroidx/recyclerview/widget/DiffUtil$ItemCallback;, "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation
.end method

.method public abstract areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation
.end method

.method public getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 434
    .local p0, "this":Landroidx/recyclerview/widget/DiffUtil$ItemCallback;, "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<TT;>;"
    .local p1, "oldItem":Ljava/lang/Object;, "TT;"
    .local p2, "newItem":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    return-object v0
.end method

###### Class androidx.recyclerview.widget.DiffUtil.PostponedUpdate (androidx.recyclerview.widget.DiffUtil$PostponedUpdate)
.class Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PostponedUpdate"
.end annotation


# instance fields
.field currentPos:I

.field posInOwnerList:I

.field removal:Z


# direct methods
.method public constructor <init>(IIZ)V
    .registers 4
    .param p1, "posInOwnerList"    # I
    .param p2, "currentPos"    # I
    .param p3, "removal"    # Z

    .line 973
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 974
    iput p1, p0, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->posInOwnerList:I

    .line 975
    iput p2, p0, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    .line 976
    iput-boolean p3, p0, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->removal:Z

    .line 977
    return-void
.end method

###### Class androidx.recyclerview.widget.DiffUtil.Range (androidx.recyclerview.widget.DiffUtil$Range)
.class Landroidx/recyclerview/widget/DiffUtil$Range;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Range"
.end annotation


# instance fields
.field newListEnd:I

.field newListStart:I

.field oldListEnd:I

.field oldListStart:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5
    .param p1, "oldListStart"    # I
    .param p2, "oldListEnd"    # I
    .param p3, "newListStart"    # I
    .param p4, "newListEnd"    # I

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    iput p1, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 487
    iput p2, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 488
    iput p3, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 489
    iput p4, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    .line 490
    return-void
.end method

###### Class androidx.recyclerview.widget.DiffUtil.Snake (androidx.recyclerview.widget.DiffUtil$Snake)
.class Landroidx/recyclerview/widget/DiffUtil$Snake;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Snake"
.end annotation


# instance fields
.field removal:Z

.field reverse:Z

.field size:I

.field x:I

.field y:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
