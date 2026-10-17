###### Class androidx.core.graphics.BitmapCompat (androidx.core.graphics.BitmapCompat)
.class public final Landroidx/core/graphics/BitmapCompat;
.super Ljava/lang/Object;
.source "BitmapCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/BitmapCompat$Api17Impl;,
        Landroidx/core/graphics/BitmapCompat$Api19Impl;,
        Landroidx/core/graphics/BitmapCompat$Api27Impl;,
        Landroidx/core/graphics/BitmapCompat$Api29Impl;,
        Landroidx/core/graphics/BitmapCompat$Api31Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    return-void
.end method

.method public static createScaledBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Rect;Z)Landroid/graphics/Bitmap;
    .registers 35
    .param p0, "srcBm"    # Landroid/graphics/Bitmap;
    .param p1, "dstW"    # I
    .param p2, "dstH"    # I
    .param p3, "srcRect"    # Landroid/graphics/Rect;
    .param p4, "scaleInLinearSpace"    # Z

    .line 133
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    if-lez v1, :cond_24e

    if-lez v2, :cond_24e

    .line 137
    if-eqz v3, :cond_35

    .line 138
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2d

    iget v4, v3, Landroid/graphics/Rect;->left:I

    if-ltz v4, :cond_2d

    iget v4, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-gt v4, v5, :cond_2d

    iget v4, v3, Landroid/graphics/Rect;->top:I

    if-ltz v4, :cond_2d

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 139
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-gt v4, v5, :cond_2d

    goto :goto_35

    .line 140
    :cond_2d
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "srcRect must be contained by srcBm!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 144
    :cond_35
    :goto_35
    move-object/from16 v4, p0

    .line 145
    .local v4, "src":Landroid/graphics/Bitmap;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1b

    if-lt v5, v6, :cond_41

    .line 148
    invoke-static {v0}, Landroidx/core/graphics/BitmapCompat$Api27Impl;->copyBitmapIfHardware(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 151
    :cond_41
    if-eqz v3, :cond_48

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    goto :goto_4c

    :cond_48
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 152
    .local v5, "srcW":I
    :goto_4c
    if-eqz v3, :cond_53

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    goto :goto_57

    :cond_53
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 154
    .local v7, "srcH":I
    :goto_57
    int-to-float v8, v1

    int-to-float v9, v5

    div-float/2addr v8, v9

    .line 155
    .local v8, "sx":F
    int-to-float v9, v2

    int-to-float v10, v7

    div-float/2addr v9, v10

    .line 157
    .local v9, "sy":F
    if-eqz v3, :cond_62

    iget v11, v3, Landroid/graphics/Rect;->left:I

    goto :goto_63

    :cond_62
    const/4 v11, 0x0

    .line 158
    .local v11, "srcX":I
    :goto_63
    if-eqz v3, :cond_68

    iget v12, v3, Landroid/graphics/Rect;->top:I

    goto :goto_69

    :cond_68
    const/4 v12, 0x0

    .line 161
    .local v12, "srcY":I
    :goto_69
    const/4 v13, 0x1

    if-nez v11, :cond_8c

    if-nez v12, :cond_8c

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    if-ne v1, v14, :cond_8c

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    if-ne v2, v14, :cond_8c

    .line 163
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v6

    if-eqz v6, :cond_8b

    if-ne v0, v4, :cond_8b

    .line 164
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-virtual {v0, v6, v13}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    return-object v6

    .line 167
    :cond_8b
    return-object v4

    .line 171
    :cond_8c
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14, v13}, Landroid/graphics/Paint;-><init>(I)V

    .line 172
    .local v14, "paint":Landroid/graphics/Paint;
    invoke-virtual {v14, v13}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 173
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1d

    if-lt v15, v10, :cond_9e

    .line 174
    invoke-static {v14}, Landroidx/core/graphics/BitmapCompat$Api29Impl;->setPaintBlendMode(Landroid/graphics/Paint;)V

    goto :goto_a8

    .line 176
    :cond_9e
    new-instance v10, Landroid/graphics/PorterDuffXfermode;

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v15}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v14, v10}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 180
    :goto_a8
    if-ne v5, v1, :cond_c1

    if-ne v7, v2, :cond_c1

    .line 181
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-static {v1, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 182
    .local v6, "out":Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 183
    .local v10, "canvasForCopy":Landroid/graphics/Canvas;
    neg-int v13, v11

    int-to-float v13, v13

    neg-int v15, v12

    int-to-float v15, v15

    invoke-virtual {v10, v4, v13, v15, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 184
    return-object v6

    .line 188
    .end local v6    # "out":Landroid/graphics/Bitmap;
    .end local v10    # "canvasForCopy":Landroid/graphics/Canvas;
    :cond_c1
    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->log(D)D

    move-result-wide v17

    .line 189
    .local v17, "log2":D
    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v15, v8, v10

    if-lez v15, :cond_dd

    move/from16 v19, v10

    move v15, v11

    .end local v11    # "srcX":I
    .local v15, "srcX":I
    float-to-double v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    div-double v10, v10, v17

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    goto :goto_ec

    .line 190
    .end local v15    # "srcX":I
    .restart local v11    # "srcX":I
    :cond_dd
    move/from16 v19, v10

    move v15, v11

    .end local v11    # "srcX":I
    .restart local v15    # "srcX":I
    float-to-double v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    div-double v10, v10, v17

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v10, v10

    :goto_ec
    nop

    .line 191
    .local v10, "stepsX":I
    cmpl-float v11, v9, v19

    if-lez v11, :cond_ff

    move-object v11, v14

    .end local v14    # "paint":Landroid/graphics/Paint;
    .local v11, "paint":Landroid/graphics/Paint;
    float-to-double v13, v9

    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    div-double v13, v13, v17

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v13, v13

    goto :goto_10c

    .line 192
    .end local v11    # "paint":Landroid/graphics/Paint;
    .restart local v14    # "paint":Landroid/graphics/Paint;
    :cond_ff
    move-object v11, v14

    .end local v14    # "paint":Landroid/graphics/Paint;
    .restart local v11    # "paint":Landroid/graphics/Paint;
    float-to-double v13, v9

    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    div-double v13, v13, v17

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v13, v13

    :goto_10c
    nop

    .line 193
    .local v13, "stepsY":I
    move v14, v10

    .line 194
    .local v14, "totalStepsX":I
    move/from16 v20, v13

    .line 200
    .local v20, "totalStepsY":I
    const/16 v21, 0x0

    .line 203
    .local v21, "dst":Landroid/graphics/Bitmap;
    const/16 v22, 0x0

    .line 204
    .local v22, "needFinalConversion":Z
    if-eqz p4, :cond_16d

    .line 205
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_164

    invoke-static {v0}, Landroidx/core/graphics/BitmapCompat$Api27Impl;->isAlreadyF16AndLinear(Landroid/graphics/Bitmap;)Z

    move-result v3

    if-nez v3, :cond_164

    .line 206
    if-lez v10, :cond_128

    const/4 v3, 0x1

    invoke-static {v5, v1, v3, v14}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    move-result v19

    goto :goto_12b

    :cond_128
    const/4 v3, 0x1

    move/from16 v19, v5

    :goto_12b
    move/from16 v23, v19

    .line 207
    .local v23, "allocW":I
    if-lez v13, :cond_136

    move/from16 v6, v20

    .end local v20    # "totalStepsY":I
    .local v6, "totalStepsY":I
    invoke-static {v7, v2, v3, v6}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    move-result v20

    goto :goto_13a

    .end local v6    # "totalStepsY":I
    .restart local v20    # "totalStepsY":I
    :cond_136
    move/from16 v6, v20

    .end local v20    # "totalStepsY":I
    .restart local v6    # "totalStepsY":I
    move/from16 v20, v7

    :goto_13a
    move/from16 v24, v20

    .line 208
    .local v24, "allocH":I
    move/from16 v20, v8

    move/from16 v8, v23

    move/from16 v23, v9

    move/from16 v9, v24

    move/from16 v24, v10

    .end local v10    # "stepsX":I
    .local v8, "allocW":I
    .local v9, "allocH":I
    .local v20, "sx":F
    .local v23, "sy":F
    .local v24, "stepsX":I
    invoke-static {v8, v9, v0, v3}, Landroidx/core/graphics/BitmapCompat$Api27Impl;->createBitmapWithSourceColorspace(IILandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 210
    .end local v21    # "dst":Landroid/graphics/Bitmap;
    .local v10, "dst":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 211
    .local v3, "canvasForCopy":Landroid/graphics/Canvas;
    move/from16 v25, v8

    .end local v8    # "allocW":I
    .local v25, "allocW":I
    neg-int v8, v15

    int-to-float v8, v8

    move/from16 v26, v9

    .end local v9    # "allocH":I
    .local v26, "allocH":I
    neg-int v9, v12

    int-to-float v9, v9

    invoke-virtual {v3, v4, v8, v9, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 212
    const/4 v8, 0x0

    .line 213
    .end local v15    # "srcX":I
    .local v8, "srcX":I
    const/4 v12, 0x0

    .line 214
    move-object v9, v10

    .line 215
    .local v9, "swap":Landroid/graphics/Bitmap;
    move-object/from16 v21, v4

    .line 216
    .end local v10    # "dst":Landroid/graphics/Bitmap;
    .restart local v21    # "dst":Landroid/graphics/Bitmap;
    move-object v4, v9

    .line 217
    const/16 v22, 0x1

    move v15, v8

    goto :goto_175

    .line 205
    .end local v3    # "canvasForCopy":Landroid/graphics/Canvas;
    .end local v6    # "totalStepsY":I
    .end local v23    # "sy":F
    .end local v24    # "stepsX":I
    .end local v25    # "allocW":I
    .end local v26    # "allocH":I
    .local v8, "sx":F
    .local v9, "sy":F
    .local v10, "stepsX":I
    .restart local v15    # "srcX":I
    .local v20, "totalStepsY":I
    :cond_164
    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v6, v20

    move/from16 v20, v8

    .end local v8    # "sx":F
    .end local v9    # "sy":F
    .end local v10    # "stepsX":I
    .restart local v6    # "totalStepsY":I
    .local v20, "sx":F
    .restart local v23    # "sy":F
    .restart local v24    # "stepsX":I
    goto :goto_175

    .line 204
    .end local v6    # "totalStepsY":I
    .end local v23    # "sy":F
    .end local v24    # "stepsX":I
    .restart local v8    # "sx":F
    .restart local v9    # "sy":F
    .restart local v10    # "stepsX":I
    .local v20, "totalStepsY":I
    :cond_16d
    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v6, v20

    move/from16 v20, v8

    .line 221
    .end local v8    # "sx":F
    .end local v9    # "sy":F
    .end local v10    # "stepsX":I
    .restart local v6    # "totalStepsY":I
    .local v20, "sx":F
    .restart local v23    # "sy":F
    .restart local v24    # "stepsX":I
    :goto_175
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v15, v12, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 222
    .local v3, "currRect":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v9, v21

    move/from16 v10, v24

    .line 224
    .end local v21    # "dst":Landroid/graphics/Bitmap;
    .end local v24    # "stepsX":I
    .local v8, "nextRect":Landroid/graphics/Rect;
    .local v9, "dst":Landroid/graphics/Bitmap;
    .restart local v10    # "stepsX":I
    :goto_183
    if-nez v10, :cond_190

    if-eqz v13, :cond_188

    goto :goto_190

    .line 310
    :cond_188
    if-eq v9, v0, :cond_18f

    if-eqz v9, :cond_18f

    .line 311
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 313
    :cond_18f
    return-object v4

    .line 225
    :cond_190
    :goto_190
    if-gez v10, :cond_195

    .line 226
    add-int/lit8 v10, v10, 0x1

    goto :goto_199

    .line 227
    :cond_195
    if-lez v10, :cond_199

    .line 228
    add-int/lit8 v10, v10, -0x1

    .line 230
    :cond_199
    :goto_199
    if-gez v13, :cond_19e

    .line 231
    add-int/lit8 v13, v13, 0x1

    goto :goto_1a2

    .line 232
    :cond_19e
    if-lez v13, :cond_1a2

    .line 233
    add-int/lit8 v13, v13, -0x1

    .line 235
    :cond_1a2
    :goto_1a2
    move/from16 v21, v12

    .end local v12    # "srcY":I
    .local v21, "srcY":I
    invoke-static {v5, v1, v10, v14}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    move-result v12

    .line 236
    .local v12, "nextW":I
    move/from16 v24, v10

    .end local v10    # "stepsX":I
    .restart local v24    # "stepsX":I
    invoke-static {v7, v2, v13, v6}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    move-result v10

    .line 237
    .local v10, "nextH":I
    move/from16 v25, v13

    const/4 v13, 0x0

    .end local v13    # "stepsY":I
    .local v25, "stepsY":I
    invoke-virtual {v8, v13, v13, v12, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 255
    if-nez v24, :cond_1bb

    if-nez v25, :cond_1bb

    const/16 v16, 0x1

    goto :goto_1bd

    :cond_1bb
    move/from16 v16, v13

    .line 256
    .local v16, "lastStep":Z
    :goto_1bd
    if-eqz v9, :cond_1cd

    .line 257
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    if-ne v13, v1, :cond_1cd

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    if-ne v13, v2, :cond_1cd

    const/4 v13, 0x1

    goto :goto_1ce

    :cond_1cd
    const/4 v13, 0x0

    .line 258
    .local v13, "dstSizeIsFinal":Z
    :goto_1ce
    if-eqz v9, :cond_1f5

    if-eq v9, v0, :cond_1f5

    if-eqz p4, :cond_1e5

    move/from16 v27, v10

    .end local v10    # "nextH":I
    .local v27, "nextH":I
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v28, v12

    const/16 v12, 0x1b

    .end local v12    # "nextW":I
    .local v28, "nextW":I
    if-lt v10, v12, :cond_1e9

    .line 267
    invoke-static {v9}, Landroidx/core/graphics/BitmapCompat$Api27Impl;->isAlreadyF16AndLinear(Landroid/graphics/Bitmap;)Z

    move-result v10

    if-eqz v10, :cond_1ef

    goto :goto_1e9

    .line 258
    .end local v27    # "nextH":I
    .end local v28    # "nextW":I
    .restart local v10    # "nextH":I
    .restart local v12    # "nextW":I
    :cond_1e5
    move/from16 v27, v10

    move/from16 v28, v12

    .line 267
    .end local v10    # "nextH":I
    .end local v12    # "nextW":I
    .restart local v27    # "nextH":I
    .restart local v28    # "nextW":I
    :cond_1e9
    :goto_1e9
    if-eqz v16, :cond_1f0

    if-eqz v13, :cond_1ef

    if-eqz v22, :cond_1f0

    :cond_1ef
    goto :goto_1f9

    .line 301
    :cond_1f0
    move/from16 v29, v5

    const/16 v5, 0x1b

    goto :goto_232

    .line 258
    .end local v27    # "nextH":I
    .end local v28    # "nextW":I
    .restart local v10    # "nextH":I
    .restart local v12    # "nextW":I
    :cond_1f5
    move/from16 v27, v10

    move/from16 v28, v12

    .line 274
    .end local v10    # "nextH":I
    .end local v12    # "nextW":I
    .restart local v27    # "nextH":I
    .restart local v28    # "nextW":I
    :goto_1f9
    if-eq v9, v0, :cond_200

    if-eqz v9, :cond_200

    .line 275
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 283
    :cond_200
    move/from16 v10, v22

    .line 284
    .local v10, "lastScratchStep":I
    if-lez v24, :cond_206

    move v12, v10

    goto :goto_208

    :cond_206
    move/from16 v12, v24

    :goto_208
    invoke-static {v5, v1, v12, v14}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    move-result v12

    .line 286
    .local v12, "allocW":I
    if-lez v25, :cond_210

    move v1, v10

    goto :goto_212

    :cond_210
    move/from16 v1, v25

    :goto_212
    invoke-static {v7, v2, v1, v6}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    move-result v1

    .line 290
    .local v1, "allocH":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v29, v5

    const/16 v5, 0x1b

    .end local v5    # "srcW":I
    .local v29, "srcW":I
    if-lt v2, v5, :cond_22a

    .line 291
    if-eqz p4, :cond_224

    if-nez v16, :cond_224

    const/4 v2, 0x1

    goto :goto_225

    :cond_224
    const/4 v2, 0x0

    .line 292
    .local v2, "linear":Z
    :goto_225
    invoke-static {v12, v1, v0, v2}, Landroidx/core/graphics/BitmapCompat$Api27Impl;->createBitmapWithSourceColorspace(IILandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 294
    .end local v2    # "linear":Z
    goto :goto_232

    .line 295
    :cond_22a
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v12, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 301
    .end local v1    # "allocH":I
    .end local v10    # "lastScratchStep":I
    .end local v12    # "allocW":I
    :goto_232
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 302
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, v4, v3, v8, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 305
    move-object v2, v4

    .line 306
    .local v2, "swap":Landroid/graphics/Bitmap;
    move-object v4, v9

    .line 307
    move-object v9, v2

    .line 308
    invoke-virtual {v3, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 309
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "swap":Landroid/graphics/Bitmap;
    .end local v13    # "dstSizeIsFinal":Z
    .end local v16    # "lastStep":Z
    .end local v27    # "nextH":I
    .end local v28    # "nextW":I
    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v12, v21

    move/from16 v13, v25

    move/from16 v5, v29

    move/from16 v10, v24

    goto/16 :goto_183

    .line 134
    .end local v3    # "currRect":Landroid/graphics/Rect;
    .end local v4    # "src":Landroid/graphics/Bitmap;
    .end local v6    # "totalStepsY":I
    .end local v7    # "srcH":I
    .end local v8    # "nextRect":Landroid/graphics/Rect;
    .end local v9    # "dst":Landroid/graphics/Bitmap;
    .end local v11    # "paint":Landroid/graphics/Paint;
    .end local v14    # "totalStepsX":I
    .end local v15    # "srcX":I
    .end local v17    # "log2":D
    .end local v20    # "sx":F
    .end local v21    # "srcY":I
    .end local v22    # "needFinalConversion":Z
    .end local v23    # "sy":F
    .end local v24    # "stepsX":I
    .end local v25    # "stepsY":I
    .end local v29    # "srcW":I
    :cond_24e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "dstW and dstH must be > 0!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getAllocationByteCount(Landroid/graphics/Bitmap;)I
    .registers 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 96
    nop

    .line 97
    invoke-static {p0}, Landroidx/core/graphics/BitmapCompat$Api19Impl;->getAllocationByteCount(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public static hasMipMap(Landroid/graphics/Bitmap;)Z
    .registers 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 57
    nop

    .line 58
    invoke-static {p0}, Landroidx/core/graphics/BitmapCompat$Api17Impl;->hasMipMap(Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method public static setHasMipMap(Landroid/graphics/Bitmap;Z)V
    .registers 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "hasMipMap"    # Z

    .line 83
    nop

    .line 84
    invoke-static {p0, p1}, Landroidx/core/graphics/BitmapCompat$Api17Impl;->setHasMipMap(Landroid/graphics/Bitmap;Z)V

    .line 86
    return-void
.end method

.method public static sizeAtStep(IIII)I
    .registers 6
    .param p0, "srcSize"    # I
    .param p1, "dstSize"    # I
    .param p2, "step"    # I
    .param p3, "totalSteps"    # I

    .line 324
    if-nez p2, :cond_3

    .line 325
    return p1

    .line 326
    :cond_3
    const/4 v0, 0x1

    if-lez p2, :cond_b

    .line 327
    sub-int v1, p3, p2

    shl-int/2addr v0, v1

    mul-int/2addr v0, p0

    return v0

    .line 329
    :cond_b
    neg-int v1, p2

    sub-int/2addr v1, v0

    shl-int v0, p1, v1

    return v0
.end method

###### Class androidx.core.graphics.BitmapCompat.Api17Impl (androidx.core.graphics.BitmapCompat$Api17Impl)
.class Landroidx/core/graphics/BitmapCompat$Api17Impl;
.super Ljava/lang/Object;
.source "BitmapCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/BitmapCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api17Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    return-void
.end method

.method static hasMipMap(Landroid/graphics/Bitmap;)Z
    .registers 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 345
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasMipMap()Z

    move-result v0

    return v0
.end method

.method static setHasMipMap(Landroid/graphics/Bitmap;Z)V
    .registers 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "hasMipMap"    # Z

    .line 350
    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->setHasMipMap(Z)V

    .line 351
    return-void
.end method

###### Class androidx.core.graphics.BitmapCompat.Api19Impl (androidx.core.graphics.BitmapCompat$Api19Impl)
.class Landroidx/core/graphics/BitmapCompat$Api19Impl;
.super Ljava/lang/Object;
.source "BitmapCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/BitmapCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api19Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    return-void
.end method

.method static getAllocationByteCount(Landroid/graphics/Bitmap;)I
    .registers 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 362
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    return v0
.end method

###### Class androidx.core.graphics.BitmapCompat.Api27Impl (androidx.core.graphics.BitmapCompat$Api27Impl)
.class Landroidx/core/graphics/BitmapCompat$Api27Impl;
.super Ljava/lang/Object;
.source "BitmapCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/BitmapCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api27Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    return-void
.end method

.method static copyBitmapIfHardware(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .line 397
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_1a

    .line 398
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 399
    .local v0, "newConfig":Landroid/graphics/Bitmap$Config;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_14

    .line 400
    invoke-static {p0}, Landroidx/core/graphics/BitmapCompat$Api31Impl;->getHardwareBitmapConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 402
    :cond_14
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 404
    .end local v0    # "newConfig":Landroid/graphics/Bitmap$Config;
    :cond_1a
    return-object p0
.end method

.method static createBitmapWithSourceColorspace(IILandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .registers 9
    .param p0, "w"    # I
    .param p1, "h"    # I
    .param p2, "src"    # Landroid/graphics/Bitmap;
    .param p3, "linear"    # Z

    .line 373
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 374
    .local v0, "config":Landroid/graphics/Bitmap$Config;
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v1

    .line 375
    .local v1, "colorSpace":Landroid/graphics/ColorSpace;
    sget-object v2, Landroid/graphics/ColorSpace$Named;->LINEAR_EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v2}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v2

    .line 376
    .local v2, "linearCs":Landroid/graphics/ColorSpace;
    if-eqz p3, :cond_1e

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/ColorSpace;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 378
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    .line 379
    move-object v1, v2

    goto :goto_32

    .line 380
    :cond_1e
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v3, v4, :cond_32

    .line 381
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 382
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-lt v3, v4, :cond_32

    .line 383
    invoke-static {p2}, Landroidx/core/graphics/BitmapCompat$Api31Impl;->getHardwareBitmapConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 386
    :cond_32
    :goto_32
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v3

    invoke-static {p0, p1, v0, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3
.end method

.method static isAlreadyF16AndLinear(Landroid/graphics/Bitmap;)Z
    .registers 4
    .param p0, "b"    # Landroid/graphics/Bitmap;

    .line 391
    sget-object v0, Landroid/graphics/ColorSpace$Named;->LINEAR_EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 392
    .local v0, "linearCs":Landroid/graphics/ColorSpace;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_1a

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/ColorSpace;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method

###### Class androidx.core.graphics.BitmapCompat.Api29Impl (androidx.core.graphics.BitmapCompat$Api29Impl)
.class Landroidx/core/graphics/BitmapCompat$Api29Impl;
.super Ljava/lang/Object;
.source "BitmapCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/BitmapCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api29Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    return-void
.end method

.method static setPaintBlendMode(Landroid/graphics/Paint;)V
    .registers 2
    .param p0, "paint"    # Landroid/graphics/Paint;

    .line 416
    sget-object v0, Landroid/graphics/BlendMode;->SRC:Landroid/graphics/BlendMode;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 417
    return-void
.end method

###### Class androidx.core.graphics.BitmapCompat.Api31Impl (androidx.core.graphics.BitmapCompat$Api31Impl)
.class Landroidx/core/graphics/BitmapCompat$Api31Impl;
.super Ljava/lang/Object;
.source "BitmapCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/BitmapCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api31Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    return-void
.end method

.method static getHardwareBitmapConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .registers 3
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .line 427
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_f

    .line 428
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    return-object v0

    .line 430
    :cond_f
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method
