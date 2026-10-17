###### Class androidx.core.view.NestedScrollingChildHelper (androidx.core.view.NestedScrollingChildHelper)
.class public Landroidx/core/view/NestedScrollingChildHelper;
.super Ljava/lang/Object;
.source "NestedScrollingChildHelper.java"


# instance fields
.field private mIsNestedScrollingEnabled:Z

.field private mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

.field private mNestedScrollingParentTouch:Landroid/view/ViewParent;

.field private mTempNestedScrollConsumed:[I

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 58
    return-void
.end method

.method private dispatchNestedScrollInternal(IIII[II[I)Z
    .registers 21
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I
    .param p6, "type"    # I
    .param p7, "consumed"    # [I

    .line 238
    move-object/from16 v0, p5

    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_60

    .line 239
    move/from16 v9, p6

    invoke-direct {p0, v9}, Landroidx/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v3

    .line 240
    .local v3, "parent":Landroid/view/ViewParent;
    if-nez v3, :cond_12

    .line 241
    return v2

    .line 244
    :cond_12
    const/4 v1, 0x1

    if-nez p1, :cond_23

    if-nez p2, :cond_23

    if-nez p3, :cond_23

    if-eqz p4, :cond_1c

    goto :goto_23

    .line 268
    :cond_1c
    if-eqz v0, :cond_60

    .line 270
    aput v2, v0, v2

    .line 271
    aput v2, v0, v1

    goto :goto_60

    .line 245
    :cond_23
    :goto_23
    const/4 v4, 0x0

    .line 246
    .local v4, "startX":I
    const/4 v5, 0x0

    .line 247
    .local v5, "startY":I
    if-eqz v0, :cond_33

    .line 248
    iget-object v6, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 249
    aget v4, v0, v2

    .line 250
    aget v5, v0, v1

    move v11, v4

    move v12, v5

    goto :goto_35

    .line 247
    :cond_33
    move v11, v4

    move v12, v5

    .line 253
    .end local v4    # "startX":I
    .end local v5    # "startY":I
    .local v11, "startX":I
    .local v12, "startY":I
    :goto_35
    if-nez p7, :cond_41

    .line 254
    invoke-direct {p0}, Landroidx/core/view/NestedScrollingChildHelper;->getTempNestedScrollConsumed()[I

    move-result-object v4

    .line 255
    .end local p7    # "consumed":[I
    .local v4, "consumed":[I
    aput v2, v4, v2

    .line 256
    aput v2, v4, v1

    move-object v10, v4

    goto :goto_43

    .line 253
    .end local v4    # "consumed":[I
    .restart local p7    # "consumed":[I
    :cond_41
    move-object/from16 v10, p7

    .line 259
    .end local p7    # "consumed":[I
    .local v10, "consumed":[I
    :goto_43
    iget-object v4, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    move v5, p1

    move v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-static/range {v3 .. v10}, Landroidx/core/view/ViewParentCompat;->onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIIII[I)V

    .line 262
    if-eqz v0, :cond_5f

    .line 263
    iget-object v4, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 264
    aget v4, v0, v2

    sub-int/2addr v4, v11

    aput v4, v0, v2

    .line 265
    aget v2, v0, v1

    sub-int/2addr v2, v12

    aput v2, v0, v1

    .line 267
    :cond_5f
    return v1

    .line 274
    .end local v3    # "parent":Landroid/view/ViewParent;
    .end local v10    # "consumed":[I
    .end local v11    # "startX":I
    .end local v12    # "startY":I
    .restart local p7    # "consumed":[I
    :cond_60
    :goto_60
    return v2
.end method

.method private getNestedScrollingParentForType(I)Landroid/view/ViewParent;
    .registers 3
    .param p1, "type"    # I

    .line 404
    packed-switch p1, :pswitch_data_c

    .line 410
    const/4 v0, 0x0

    return-object v0

    .line 408
    :pswitch_5
    iget-object v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

    return-object v0

    .line 406
    :pswitch_8
    iget-object v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mNestedScrollingParentTouch:Landroid/view/ViewParent;

    return-object v0

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private getTempNestedScrollConsumed()[I
    .registers 2

    .line 425
    iget-object v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    if-nez v0, :cond_9

    .line 426
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    .line 428
    :cond_9
    iget-object v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    return-object v0
.end method

.method private setNestedScrollingParentForType(ILandroid/view/ViewParent;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "p"    # Landroid/view/ViewParent;

    .line 414
    packed-switch p1, :pswitch_data_c

    goto :goto_a

    .line 419
    :pswitch_4
    iput-object p2, p0, Landroidx/core/view/NestedScrollingChildHelper;->mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

    goto :goto_a

    .line 416
    :pswitch_7
    iput-object p2, p0, Landroidx/core/view/NestedScrollingChildHelper;->mNestedScrollingParentTouch:Landroid/view/ViewParent;

    .line 417
    nop

    .line 422
    :goto_a
    return-void

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public dispatchNestedFling(FFZ)Z
    .registers 6
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "consumed"    # Z

    .line 348
    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 349
    invoke-direct {p0, v1}, Landroidx/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v0

    .line 350
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_14

    .line 351
    iget-object v1, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v1, p1, p2, p3}, Landroidx/core/view/ViewParentCompat;->onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result v1

    return v1

    .line 355
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_14
    return v1
.end method

.method public dispatchNestedPreFling(FF)Z
    .registers 5
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .line 368
    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 369
    invoke-direct {p0, v1}, Landroidx/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v0

    .line 370
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_14

    .line 371
    iget-object v1, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v1, p1, p2}, Landroidx/core/view/ViewParentCompat;->onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result v1

    return v1

    .line 375
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_14
    return v1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .registers 11
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
    .param p4, "offsetInWindow"    # [I

    .line 288
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "dx":I
    .end local p2    # "dy":I
    .end local p3    # "consumed":[I
    .end local p4    # "offsetInWindow":[I
    .local v1, "dx":I
    .local v2, "dy":I
    .local v3, "consumed":[I
    .local v4, "offsetInWindow":[I
    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[II)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .registers 16
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
    .param p4, "offsetInWindow"    # [I
    .param p5, "type"    # I

    .line 302
    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_64

    .line 303
    invoke-direct {p0, p5}, Landroidx/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v2

    .line 304
    .local v2, "parent":Landroid/view/ViewParent;
    if-nez v2, :cond_e

    .line 305
    return v1

    .line 308
    :cond_e
    const/4 v0, 0x1

    if-nez p1, :cond_22

    if-eqz p2, :cond_14

    goto :goto_22

    .line 330
    :cond_14
    if-eqz p4, :cond_1e

    .line 331
    aput v1, p4, v1

    .line 332
    aput v1, p4, v0

    move v4, p1

    move v5, p2

    move v7, p5

    goto :goto_67

    .line 330
    :cond_1e
    move v4, p1

    move v5, p2

    move v7, p5

    goto :goto_67

    .line 309
    :cond_22
    :goto_22
    const/4 v3, 0x0

    .line 310
    .local v3, "startX":I
    const/4 v4, 0x0

    .line 311
    .local v4, "startY":I
    if-eqz p4, :cond_32

    .line 312
    iget-object v5, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v5, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 313
    aget v3, p4, v1

    .line 314
    aget v4, p4, v0

    move v8, v3

    move v9, v4

    goto :goto_34

    .line 311
    :cond_32
    move v8, v3

    move v9, v4

    .line 317
    .end local v3    # "startX":I
    .end local v4    # "startY":I
    .local v8, "startX":I
    .local v9, "startY":I
    :goto_34
    if-nez p3, :cond_3c

    .line 318
    invoke-direct {p0}, Landroidx/core/view/NestedScrollingChildHelper;->getTempNestedScrollConsumed()[I

    move-result-object p3

    move-object v6, p3

    goto :goto_3d

    .line 317
    :cond_3c
    move-object v6, p3

    .line 320
    .end local p3    # "consumed":[I
    .local v6, "consumed":[I
    :goto_3d
    aput v1, v6, v1

    .line 321
    aput v1, v6, v0

    .line 322
    iget-object v3, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    move v4, p1

    move v5, p2

    move v7, p5

    .end local p1    # "dx":I
    .end local p2    # "dy":I
    .end local p5    # "type":I
    .local v4, "dx":I
    .local v5, "dy":I
    .local v7, "type":I
    invoke-static/range {v2 .. v7}, Landroidx/core/view/ViewParentCompat;->onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[II)V

    .line 324
    if-eqz p4, :cond_5a

    .line 325
    iget-object p1, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 326
    aget p1, p4, v1

    sub-int/2addr p1, v8

    aput p1, p4, v1

    .line 327
    aget p1, p4, v0

    sub-int/2addr p1, v9

    aput p1, p4, v0

    .line 329
    :cond_5a
    aget p1, v6, v1

    if-nez p1, :cond_62

    aget p1, v6, v0

    if-eqz p1, :cond_63

    :cond_62
    move v1, v0

    :cond_63
    return v1

    .line 302
    .end local v2    # "parent":Landroid/view/ViewParent;
    .end local v4    # "dx":I
    .end local v5    # "dy":I
    .end local v6    # "consumed":[I
    .end local v7    # "type":I
    .end local v8    # "startX":I
    .end local v9    # "startY":I
    .restart local p1    # "dx":I
    .restart local p2    # "dy":I
    .restart local p3    # "consumed":[I
    .restart local p5    # "type":I
    :cond_64
    move v4, p1

    move v5, p2

    move v7, p5

    .line 335
    .end local p1    # "dx":I
    .end local p2    # "dy":I
    .end local p5    # "type":I
    .restart local v4    # "dx":I
    .restart local v5    # "dy":I
    .restart local v7    # "type":I
    :goto_67
    return v1
.end method

.method public dispatchNestedScroll(IIII[II[I)V
    .registers 8
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I
    .param p6, "type"    # I
    .param p7, "consumed"    # [I

    .line 231
    invoke-direct/range {p0 .. p7}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScrollInternal(IIII[II[I)Z

    .line 233
    return-void
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .registers 14
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I

    .line 204
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .end local p1    # "dxConsumed":I
    .end local p2    # "dyConsumed":I
    .end local p3    # "dxUnconsumed":I
    .end local p4    # "dyUnconsumed":I
    .end local p5    # "offsetInWindow":[I
    .local v1, "dxConsumed":I
    .local v2, "dyConsumed":I
    .local v3, "dxUnconsumed":I
    .local v4, "dyUnconsumed":I
    .local v5, "offsetInWindow":[I
    invoke-direct/range {v0 .. v7}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScrollInternal(IIII[II[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .registers 15
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I
    .param p6, "type"    # I

    .line 218
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    .end local p1    # "dxConsumed":I
    .end local p2    # "dyConsumed":I
    .end local p3    # "dxUnconsumed":I
    .end local p4    # "dyUnconsumed":I
    .end local p5    # "offsetInWindow":[I
    .end local p6    # "type":I
    .local v1, "dxConsumed":I
    .local v2, "dyConsumed":I
    .local v3, "dxUnconsumed":I
    .local v4, "dyUnconsumed":I
    .local v5, "offsetInWindow":[I
    .local v6, "type":I
    invoke-direct/range {v0 .. v7}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScrollInternal(IIII[II[I)Z

    move-result p1

    return p1
.end method

.method public hasNestedScrollingParent()Z
    .registers 2

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .registers 3
    .param p1, "type"    # I

    .line 114
    invoke-direct {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .registers 2

    .line 86
    iget-boolean v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    return v0
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .line 387
    iget-object v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    .line 388
    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 400
    iget-object v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    .line 401
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 70
    iget-boolean v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    if-eqz v0, :cond_9

    .line 71
    iget-object v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    .line 73
    :cond_9
    iput-boolean p1, p0, Landroidx/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    .line 74
    return-void
.end method

.method public startNestedScroll(I)Z
    .registers 3
    .param p1, "axes"    # I

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    move-result v0

    return v0
.end method

.method public startNestedScroll(II)Z
    .registers 7
    .param p1, "axes"    # I
    .param p2, "type"    # I

    .line 145
    invoke-virtual {p0, p2}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 147
    return v1

    .line 149
    :cond_8
    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 150
    iget-object v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 151
    .local v0, "p":Landroid/view/ViewParent;
    iget-object v2, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 152
    .local v2, "child":Landroid/view/View;
    :goto_16
    if-eqz v0, :cond_35

    .line 153
    iget-object v3, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v2, v3, p1, p2}, Landroidx/core/view/ViewParentCompat;->onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 154
    invoke-direct {p0, p2, v0}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingParentForType(ILandroid/view/ViewParent;)V

    .line 155
    iget-object v3, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v2, v3, p1, p2}, Landroidx/core/view/ViewParentCompat;->onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V

    .line 156
    return v1

    .line 158
    :cond_29
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_30

    .line 159
    move-object v2, v0

    check-cast v2, Landroid/view/View;

    .line 161
    :cond_30
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_16

    .line 164
    .end local v0    # "p":Landroid/view/ViewParent;
    .end local v2    # "child":Landroid/view/View;
    :cond_35
    const/4 v0, 0x0

    return v0
.end method

.method public stopNestedScroll()V
    .registers 2

    .line 175
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    .line 176
    return-void
.end method

.method public stopNestedScroll(I)V
    .registers 4
    .param p1, "type"    # I

    .line 186
    invoke-direct {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v0

    .line 187
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_f

    .line 188
    iget-object v1, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v1, p1}, Landroidx/core/view/ViewParentCompat;->onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;I)V

    .line 189
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingParentForType(ILandroid/view/ViewParent;)V

    .line 191
    :cond_f
    return-void
.end method
