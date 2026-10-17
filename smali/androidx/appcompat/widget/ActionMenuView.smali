###### Class androidx.appcompat.widget.ActionMenuView (androidx.appcompat.widget.ActionMenuView)
.class public Landroidx/appcompat/widget/ActionMenuView;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "ActionMenuView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuBuilder$ItemInvoker;
.implements Landroidx/appcompat/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ActionMenuView$LayoutParams;,
        Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;,
        Landroidx/appcompat/widget/ActionMenuView$ActionMenuPresenterCallback;,
        Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;,
        Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"


# instance fields
.field private mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

.field private mMinCellSize:I

.field mOnMenuItemClickListener:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 83
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionMenuView;->setBaselineAligned(Z)V

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 86
    .local v1, "density":F
    const/high16 v2, 0x42600000    # 56.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Landroidx/appcompat/widget/ActionMenuView;->mMinCellSize:I

    .line 87
    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Landroidx/appcompat/widget/ActionMenuView;->mGeneratedItemPadding:I

    .line 88
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 89
    iput v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupTheme:I

    .line 90
    return-void
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .registers 19
    .param p0, "child"    # Landroid/view/View;
    .param p1, "cellSize"    # I
    .param p2, "cellsRemaining"    # I
    .param p3, "parentHeightMeasureSpec"    # I
    .param p4, "parentHeightPadding"    # I

    .line 407
    move/from16 v0, p2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 409
    .local v1, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    sub-int v2, v2, p4

    .line 411
    .local v2, "childHeightSize":I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 412
    .local v3, "childHeightMode":I
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 414
    .local v4, "childHeightSpec":I
    instance-of v5, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz v5, :cond_1e

    .line 415
    move-object v5, p0

    check-cast v5, Landroidx/appcompat/view/menu/ActionMenuItemView;

    goto :goto_1f

    :cond_1e
    const/4 v5, 0x0

    .line 416
    .local v5, "itemView":Landroidx/appcompat/view/menu/ActionMenuItemView;
    :goto_1f
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_2b

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/ActionMenuItemView;->hasText()Z

    move-result v8

    if-eqz v8, :cond_2b

    move v8, v7

    goto :goto_2c

    :cond_2b
    move v8, v6

    .line 418
    .local v8, "hasText":Z
    :goto_2c
    const/4 v9, 0x0

    .line 419
    .local v9, "cellsUsed":I
    if-lez v0, :cond_50

    const/4 v10, 0x2

    if-eqz v8, :cond_34

    if-lt v0, v10, :cond_50

    .line 420
    :cond_34
    mul-int v11, p1, v0

    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 422
    .local v11, "childWidthSpec":I
    invoke-virtual {p0, v11, v4}, Landroid/view/View;->measure(II)V

    .line 424
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    .line 425
    .local v12, "measuredWidth":I
    div-int v9, v12, p1

    .line 426
    rem-int v13, v12, p1

    if-eqz v13, :cond_4b

    add-int/lit8 v9, v9, 0x1

    .line 427
    :cond_4b
    if-eqz v8, :cond_50

    if-ge v9, v10, :cond_50

    const/4 v9, 0x2

    .line 430
    .end local v11    # "childWidthSpec":I
    .end local v12    # "measuredWidth":I
    :cond_50
    iget-boolean v10, v1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v10, :cond_57

    if-eqz v8, :cond_57

    move v6, v7

    .line 431
    .local v6, "expandable":Z
    :cond_57
    iput-boolean v6, v1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 433
    iput v9, v1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 434
    mul-int v7, v9, p1

    .line 435
    .local v7, "targetWidth":I
    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {p0, v10, v4}, Landroid/view/View;->measure(II)V

    .line 437
    return v9
.end method

.method private onMeasureExactFormat(II)V
    .registers 42
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 181
    move-object/from16 v0, p0

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 182
    .local v1, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 183
    .local v2, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 185
    .local v3, "heightSize":I
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 186
    .local v4, "widthPadding":I
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingTop()I

    move-result v5

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    .line 188
    .local v5, "heightPadding":I
    const/4 v6, -0x2

    move/from16 v7, p2

    invoke-static {v7, v5, v6}, Landroidx/appcompat/widget/ActionMenuView;->getChildMeasureSpec(III)I

    move-result v6

    .line 191
    .local v6, "itemHeightSpec":I
    sub-int/2addr v2, v4

    .line 194
    iget v8, v0, Landroidx/appcompat/widget/ActionMenuView;->mMinCellSize:I

    div-int v8, v2, v8

    .line 195
    .local v8, "cellCount":I
    iget v9, v0, Landroidx/appcompat/widget/ActionMenuView;->mMinCellSize:I

    rem-int v9, v2, v9

    .line 197
    .local v9, "cellSizeRemaining":I
    const/4 v10, 0x0

    if-nez v8, :cond_37

    .line 199
    invoke-virtual {v0, v2, v10}, Landroidx/appcompat/widget/ActionMenuView;->setMeasuredDimension(II)V

    .line 200
    return-void

    .line 203
    :cond_37
    iget v11, v0, Landroidx/appcompat/widget/ActionMenuView;->mMinCellSize:I

    div-int v12, v9, v8

    add-int/2addr v11, v12

    .line 205
    .local v11, "cellSize":I
    move v12, v8

    .line 206
    .local v12, "cellsRemaining":I
    const/4 v13, 0x0

    .line 207
    .local v13, "maxChildHeight":I
    const/4 v14, 0x0

    .line 208
    .local v14, "maxCellsUsed":I
    const/4 v15, 0x0

    .line 209
    .local v15, "expandableItemCount":I
    const/16 v16, 0x0

    .line 210
    .local v16, "visibleItemCount":I
    const/16 v17, 0x0

    .line 213
    .local v17, "hasOverflow":Z
    const-wide/16 v18, 0x0

    .line 215
    .local v18, "smallestItemsAt":J
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v10

    .line 216
    .local v10, "childCount":I
    const/16 v21, 0x0

    move/from16 v38, v16

    move/from16 v16, v3

    move/from16 v3, v38

    move/from16 v38, v21

    move/from16 v21, v4

    move/from16 v4, v38

    .local v3, "visibleItemCount":I
    .local v4, "i":I
    .local v16, "heightSize":I
    .local v21, "widthPadding":I
    :goto_58
    if-ge v4, v10, :cond_ef

    .line 217
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 218
    .local v7, "child":Landroid/view/View;
    move/from16 v23, v4

    .end local v4    # "i":I
    .local v23, "i":I
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v4

    move/from16 v24, v8

    .end local v8    # "cellCount":I
    .local v24, "cellCount":I
    const/16 v8, 0x8

    if-ne v4, v8, :cond_6c

    goto/16 :goto_e7

    .line 220
    :cond_6c
    instance-of v4, v7, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 221
    .local v4, "isGeneratedItem":Z
    add-int/lit8 v3, v3, 0x1

    .line 223
    if-eqz v4, :cond_7f

    .line 226
    iget v8, v0, Landroidx/appcompat/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v25, v3

    .end local v3    # "visibleItemCount":I
    .local v25, "visibleItemCount":I
    iget v3, v0, Landroidx/appcompat/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v26, v4

    const/4 v4, 0x0

    .end local v4    # "isGeneratedItem":Z
    .local v26, "isGeneratedItem":Z
    invoke-virtual {v7, v8, v4, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_84

    .line 223
    .end local v25    # "visibleItemCount":I
    .end local v26    # "isGeneratedItem":Z
    .restart local v3    # "visibleItemCount":I
    .restart local v4    # "isGeneratedItem":Z
    :cond_7f
    move/from16 v25, v3

    move/from16 v26, v4

    const/4 v4, 0x0

    .line 229
    .end local v3    # "visibleItemCount":I
    .end local v4    # "isGeneratedItem":Z
    .restart local v25    # "visibleItemCount":I
    .restart local v26    # "isGeneratedItem":Z
    :goto_84
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 230
    .local v3, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    iput-boolean v4, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 231
    iput v4, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 232
    iput v4, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 233
    iput-boolean v4, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 234
    iput v4, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 235
    iput v4, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 236
    if-eqz v26, :cond_a3

    move-object v4, v7

    check-cast v4, Landroidx/appcompat/view/menu/ActionMenuItemView;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/ActionMenuItemView;->hasText()Z

    move-result v4

    if-eqz v4, :cond_a3

    const/4 v4, 0x1

    goto :goto_a4

    :cond_a3
    const/4 v4, 0x0

    :goto_a4
    iput-boolean v4, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 239
    iget-boolean v4, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v4, :cond_ac

    const/4 v4, 0x1

    goto :goto_ad

    :cond_ac
    move v4, v12

    .line 241
    .local v4, "cellsAvailable":I
    :goto_ad
    invoke-static {v7, v11, v4, v6, v5}, Landroidx/appcompat/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v8

    .line 244
    .local v8, "cellsUsed":I
    invoke-static {v14, v8}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 245
    move/from16 v27, v4

    .end local v4    # "cellsAvailable":I
    .local v27, "cellsAvailable":I
    iget-boolean v4, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    if-eqz v4, :cond_bd

    add-int/lit8 v15, v15, 0x1

    .line 246
    :cond_bd
    iget-boolean v4, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v4, :cond_c3

    const/16 v17, 0x1

    .line 248
    :cond_c3
    sub-int/2addr v12, v8

    .line 249
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v13, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 250
    .end local v13    # "maxChildHeight":I
    .local v4, "maxChildHeight":I
    const/4 v13, 0x1

    if-ne v8, v13, :cond_df

    shl-int v13, v13, v23

    move-object/from16 v22, v3

    move/from16 v28, v4

    .end local v3    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .end local v4    # "maxChildHeight":I
    .local v22, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .local v28, "maxChildHeight":I
    int-to-long v3, v13

    or-long v3, v18, v3

    move-wide/from16 v18, v3

    move/from16 v3, v25

    move/from16 v13, v28

    .end local v18    # "smallestItemsAt":J
    .local v3, "smallestItemsAt":J
    goto :goto_e7

    .end local v22    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .end local v28    # "maxChildHeight":I
    .local v3, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .restart local v4    # "maxChildHeight":I
    .restart local v18    # "smallestItemsAt":J
    :cond_df
    move-object/from16 v22, v3

    move/from16 v28, v4

    .end local v3    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .end local v4    # "maxChildHeight":I
    .restart local v22    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .restart local v28    # "maxChildHeight":I
    move/from16 v3, v25

    move/from16 v13, v28

    .line 216
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "cellsUsed":I
    .end local v22    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .end local v25    # "visibleItemCount":I
    .end local v26    # "isGeneratedItem":Z
    .end local v27    # "cellsAvailable":I
    .end local v28    # "maxChildHeight":I
    .local v3, "visibleItemCount":I
    .restart local v13    # "maxChildHeight":I
    :goto_e7
    add-int/lit8 v4, v23, 0x1

    move/from16 v7, p2

    move/from16 v8, v24

    .end local v23    # "i":I
    .local v4, "i":I
    goto/16 :goto_58

    .end local v24    # "cellCount":I
    .local v8, "cellCount":I
    :cond_ef
    move/from16 v23, v4

    move/from16 v24, v8

    .line 255
    .end local v4    # "i":I
    .end local v8    # "cellCount":I
    .restart local v24    # "cellCount":I
    const/4 v4, 0x2

    if-eqz v17, :cond_fa

    if-ne v3, v4, :cond_fa

    const/4 v7, 0x1

    goto :goto_fb

    :cond_fa
    const/4 v7, 0x0

    .line 260
    .local v7, "centerSingleExpandedItem":Z
    :goto_fb
    const/4 v8, 0x0

    .line 261
    .local v8, "needsExpansion":Z
    :goto_fc
    const-wide/16 v25, 0x1

    const-wide/16 v27, 0x0

    if-lez v15, :cond_1bb

    if-lez v12, :cond_1bb

    .line 262
    const v23, 0x7fffffff

    .line 263
    .local v23, "minCells":I
    const-wide/16 v29, 0x0

    .line 264
    .local v29, "minCellsAt":J
    const/16 v31, 0x0

    .line 265
    .local v31, "minCellsItemCount":I
    const/16 v32, 0x0

    move/from16 v33, v4

    move/from16 v4, v23

    move/from16 v23, v5

    move/from16 v5, v31

    move/from16 v31, v7

    move/from16 v7, v32

    .local v4, "minCells":I
    .local v5, "minCellsItemCount":I
    .local v7, "i":I
    .local v23, "heightPadding":I
    .local v31, "centerSingleExpandedItem":Z
    :goto_119
    if-ge v7, v10, :cond_149

    .line 266
    invoke-virtual {v0, v7}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    .line 267
    .local v32, "child":Landroid/view/View;
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    move/from16 v35, v7

    .end local v7    # "i":I
    .local v35, "i":I
    move-object/from16 v7, v34

    check-cast v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 270
    .local v7, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    move/from16 v34, v8

    .end local v8    # "needsExpansion":Z
    .local v34, "needsExpansion":Z
    iget-boolean v8, v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    if-nez v8, :cond_130

    goto :goto_144

    .line 273
    :cond_130
    iget v8, v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ge v8, v4, :cond_13a

    .line 274
    iget v4, v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 275
    shl-long v29, v25, v35

    .line 276
    const/4 v5, 0x1

    goto :goto_144

    .line 277
    :cond_13a
    iget v8, v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ne v8, v4, :cond_144

    .line 278
    shl-long v36, v25, v35

    or-long v29, v29, v36

    .line 279
    add-int/lit8 v5, v5, 0x1

    .line 265
    .end local v7    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .end local v32    # "child":Landroid/view/View;
    :cond_144
    :goto_144
    add-int/lit8 v7, v35, 0x1

    move/from16 v8, v34

    .end local v35    # "i":I
    .local v7, "i":I
    goto :goto_119

    .end local v34    # "needsExpansion":Z
    .restart local v8    # "needsExpansion":Z
    :cond_149
    move/from16 v35, v7

    move/from16 v34, v8

    .line 284
    .end local v7    # "i":I
    .end local v8    # "needsExpansion":Z
    .restart local v34    # "needsExpansion":Z
    or-long v18, v18, v29

    .line 286
    if-le v5, v12, :cond_157

    move/from16 v35, v1

    move/from16 v36, v2

    goto/16 :goto_1c7

    .line 289
    :cond_157
    add-int/lit8 v4, v4, 0x1

    .line 291
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_15a
    if-ge v7, v10, :cond_1aa

    .line 292
    invoke-virtual {v0, v7}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 293
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    move/from16 v32, v5

    .end local v5    # "minCellsItemCount":I
    .local v32, "minCellsItemCount":I
    move-object/from16 v5, v25

    check-cast v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 294
    .local v5, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    move/from16 v25, v7

    const/16 v22, 0x1

    .end local v7    # "i":I
    .local v25, "i":I
    shl-int v7, v22, v25

    move/from16 v35, v1

    move/from16 v36, v2

    .end local v1    # "heightMode":I
    .end local v2    # "widthSize":I
    .local v35, "heightMode":I
    .local v36, "widthSize":I
    int-to-long v1, v7

    and-long v1, v29, v1

    cmp-long v1, v1, v27

    if-nez v1, :cond_185

    .line 296
    iget v1, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ne v1, v4, :cond_1a1

    shl-int v1, v22, v25

    int-to-long v1, v1

    or-long v18, v18, v1

    goto :goto_1a1

    .line 300
    :cond_185
    if-eqz v31, :cond_197

    iget-boolean v1, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-eqz v1, :cond_197

    const/4 v1, 0x1

    if-ne v12, v1, :cond_197

    .line 302
    iget v1, v0, Landroidx/appcompat/widget/ActionMenuView;->mGeneratedItemPadding:I

    add-int/2addr v1, v11

    iget v2, v0, Landroidx/appcompat/widget/ActionMenuView;->mGeneratedItemPadding:I

    const/4 v7, 0x0

    invoke-virtual {v8, v1, v7, v2, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 304
    :cond_197
    iget v1, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 305
    iput-boolean v2, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 306
    add-int/lit8 v12, v12, -0x1

    .line 291
    .end local v5    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .end local v8    # "child":Landroid/view/View;
    :cond_1a1
    :goto_1a1
    add-int/lit8 v7, v25, 0x1

    move/from16 v5, v32

    move/from16 v1, v35

    move/from16 v2, v36

    .end local v25    # "i":I
    .restart local v7    # "i":I
    goto :goto_15a

    .end local v32    # "minCellsItemCount":I
    .end local v35    # "heightMode":I
    .end local v36    # "widthSize":I
    .restart local v1    # "heightMode":I
    .restart local v2    # "widthSize":I
    .local v5, "minCellsItemCount":I
    :cond_1aa
    move/from16 v35, v1

    move/from16 v36, v2

    move/from16 v32, v5

    move/from16 v25, v7

    .line 309
    .end local v1    # "heightMode":I
    .end local v2    # "widthSize":I
    .end local v5    # "minCellsItemCount":I
    .end local v7    # "i":I
    .restart local v32    # "minCellsItemCount":I
    .restart local v35    # "heightMode":I
    .restart local v36    # "widthSize":I
    const/4 v8, 0x1

    .line 310
    .end local v4    # "minCells":I
    .end local v29    # "minCellsAt":J
    .end local v32    # "minCellsItemCount":I
    .end local v34    # "needsExpansion":Z
    .local v8, "needsExpansion":Z
    move/from16 v5, v23

    move/from16 v7, v31

    move/from16 v4, v33

    goto/16 :goto_fc

    .line 261
    .end local v23    # "heightPadding":I
    .end local v31    # "centerSingleExpandedItem":Z
    .end local v35    # "heightMode":I
    .end local v36    # "widthSize":I
    .restart local v1    # "heightMode":I
    .restart local v2    # "widthSize":I
    .local v5, "heightPadding":I
    .local v7, "centerSingleExpandedItem":Z
    :cond_1bb
    move/from16 v35, v1

    move/from16 v36, v2

    move/from16 v33, v4

    move/from16 v23, v5

    move/from16 v31, v7

    move/from16 v34, v8

    .line 315
    .end local v1    # "heightMode":I
    .end local v2    # "widthSize":I
    .end local v5    # "heightPadding":I
    .end local v7    # "centerSingleExpandedItem":Z
    .end local v8    # "needsExpansion":Z
    .restart local v23    # "heightPadding":I
    .restart local v31    # "centerSingleExpandedItem":Z
    .restart local v34    # "needsExpansion":Z
    .restart local v35    # "heightMode":I
    .restart local v36    # "widthSize":I
    :goto_1c7
    if-nez v17, :cond_1ce

    const/4 v1, 0x1

    if-ne v3, v1, :cond_1ce

    const/4 v1, 0x1

    goto :goto_1cf

    :cond_1ce
    const/4 v1, 0x0

    .line 316
    .local v1, "singleItem":Z
    :goto_1cf
    if-lez v12, :cond_290

    cmp-long v2, v18, v27

    if-eqz v2, :cond_290

    add-int/lit8 v2, v3, -0x1

    if-lt v12, v2, :cond_1e3

    if-nez v1, :cond_1e3

    const/4 v2, 0x1

    if-le v14, v2, :cond_1df

    goto :goto_1e3

    :cond_1df
    move/from16 v20, v1

    goto/16 :goto_292

    .line 318
    :cond_1e3
    :goto_1e3
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->bitCount(J)I

    move-result v2

    int-to-float v2, v2

    .line 320
    .local v2, "expandCount":F
    if-nez v1, :cond_223

    .line 322
    and-long v4, v18, v25

    cmp-long v4, v4, v27

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v4, :cond_203

    .line 323
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 324
    .local v7, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    iget-boolean v8, v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v8, :cond_204

    sub-float/2addr v2, v5

    goto :goto_204

    .line 322
    .end local v7    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    :cond_203
    const/4 v4, 0x0

    .line 326
    :cond_204
    :goto_204
    add-int/lit8 v7, v10, -0x1

    const/16 v22, 0x1

    shl-int v7, v22, v7

    int-to-long v7, v7

    and-long v7, v18, v7

    cmp-long v7, v7, v27

    if-eqz v7, :cond_224

    .line 327
    add-int/lit8 v7, v10, -0x1

    invoke-virtual {v0, v7}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 328
    .restart local v7    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    iget-boolean v8, v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v8, :cond_224

    sub-float/2addr v2, v5

    goto :goto_224

    .line 320
    .end local v7    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    :cond_223
    const/4 v4, 0x0

    .line 332
    :cond_224
    :goto_224
    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-lez v5, :cond_22f

    .line 333
    mul-int v4, v12, v11

    int-to-float v4, v4

    div-float/2addr v4, v2

    float-to-int v4, v4

    goto :goto_230

    :cond_22f
    nop

    .line 335
    .local v4, "extraPixels":I
    :goto_230
    const/4 v5, 0x0

    move/from16 v8, v34

    .end local v34    # "needsExpansion":Z
    .local v5, "i":I
    .restart local v8    # "needsExpansion":Z
    :goto_233
    if-ge v5, v10, :cond_28a

    .line 336
    const/16 v22, 0x1

    shl-int v7, v22, v5

    move/from16 v20, v1

    move/from16 v25, v2

    .end local v1    # "singleItem":Z
    .end local v2    # "expandCount":F
    .local v20, "singleItem":Z
    .local v25, "expandCount":F
    int-to-long v1, v7

    and-long v1, v18, v1

    cmp-long v1, v1, v27

    if-nez v1, :cond_245

    goto :goto_283

    .line 338
    :cond_245
    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 339
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 340
    .local v2, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    instance-of v7, v1, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz v7, :cond_265

    .line 342
    iput v4, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 343
    const/4 v7, 0x1

    iput-boolean v7, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 344
    if-nez v5, :cond_263

    iget-boolean v7, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v7, :cond_263

    .line 347
    neg-int v7, v4

    div-int/lit8 v7, v7, 0x2

    iput v7, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 349
    :cond_263
    const/4 v8, 0x1

    goto :goto_283

    .line 350
    :cond_265
    iget-boolean v7, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v7, :cond_275

    .line 351
    iput v4, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 352
    const/4 v7, 0x1

    iput-boolean v7, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 353
    neg-int v7, v4

    div-int/lit8 v7, v7, 0x2

    iput v7, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 354
    const/4 v8, 0x1

    goto :goto_283

    .line 359
    :cond_275
    if-eqz v5, :cond_27b

    .line 360
    div-int/lit8 v7, v4, 0x2

    iput v7, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 362
    :cond_27b
    add-int/lit8 v7, v10, -0x1

    if-eq v5, v7, :cond_283

    .line 363
    div-int/lit8 v7, v4, 0x2

    iput v7, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 335
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    :cond_283
    :goto_283
    add-int/lit8 v5, v5, 0x1

    move/from16 v1, v20

    move/from16 v2, v25

    goto :goto_233

    .end local v20    # "singleItem":Z
    .end local v25    # "expandCount":F
    .local v1, "singleItem":Z
    .local v2, "expandCount":F
    :cond_28a
    move/from16 v20, v1

    move/from16 v25, v2

    .line 368
    .end local v1    # "singleItem":Z
    .end local v2    # "expandCount":F
    .end local v5    # "i":I
    .restart local v20    # "singleItem":Z
    .restart local v25    # "expandCount":F
    const/4 v12, 0x0

    goto :goto_294

    .line 316
    .end local v4    # "extraPixels":I
    .end local v8    # "needsExpansion":Z
    .end local v20    # "singleItem":Z
    .end local v25    # "expandCount":F
    .restart local v1    # "singleItem":Z
    .restart local v34    # "needsExpansion":Z
    :cond_290
    move/from16 v20, v1

    .line 372
    .end local v1    # "singleItem":Z
    .restart local v20    # "singleItem":Z
    :goto_292
    move/from16 v8, v34

    .end local v34    # "needsExpansion":Z
    .restart local v8    # "needsExpansion":Z
    :goto_294
    if-eqz v8, :cond_2c0

    .line 373
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_297
    if-ge v2, v10, :cond_2be

    .line 374
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 375
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 377
    .local v5, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    iget-boolean v7, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    if-nez v7, :cond_2aa

    move/from16 v25, v2

    goto :goto_2bb

    .line 379
    :cond_2aa
    iget v7, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    mul-int/2addr v7, v11

    iget v1, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    add-int/2addr v7, v1

    .line 380
    .local v7, "width":I
    move/from16 v25, v2

    const/high16 v1, 0x40000000    # 2.0f

    .end local v2    # "i":I
    .local v25, "i":I
    invoke-static {v7, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v4, v2, v6}, Landroid/view/View;->measure(II)V

    .line 373
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .end local v7    # "width":I
    :goto_2bb
    add-int/lit8 v2, v25, 0x1

    .end local v25    # "i":I
    .restart local v2    # "i":I
    goto :goto_297

    :cond_2be
    move/from16 v25, v2

    .line 385
    .end local v2    # "i":I
    :cond_2c0
    move/from16 v1, v35

    const/high16 v2, 0x40000000    # 2.0f

    .end local v35    # "heightMode":I
    .local v1, "heightMode":I
    if-eq v1, v2, :cond_2c8

    .line 386
    move v2, v13

    .end local v16    # "heightSize":I
    .local v2, "heightSize":I
    goto :goto_2ca

    .line 385
    .end local v2    # "heightSize":I
    .restart local v16    # "heightSize":I
    :cond_2c8
    move/from16 v2, v16

    .line 389
    .end local v16    # "heightSize":I
    .restart local v2    # "heightSize":I
    :goto_2ca
    move/from16 v4, v36

    .end local v36    # "widthSize":I
    .local v4, "widthSize":I
    invoke-virtual {v0, v4, v2}, Landroidx/appcompat/widget/ActionMenuView;->setMeasuredDimension(II)V

    .line 390
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 610
    instance-of v0, p1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    return v0
.end method

.method public dismissPopupMenus()V
    .registers 2

    .line 723
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_9

    .line 724
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 726
    :cond_9
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 750
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 50
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .registers 3

    .line 583
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(II)V

    .line 585
    .local v0, "params":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 586
    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .registers 2

    .line 50
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 50
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 50
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 591
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .registers 4
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 596
    if-eqz p1, :cond_1e

    .line 597
    instance-of v0, p1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_f

    .line 598
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(Landroidx/appcompat/widget/ActionMenuView$LayoutParams;)V

    goto :goto_14

    .line 599
    :cond_f
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_14
    nop

    .line 600
    .local v0, "result":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    iget v1, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->gravity:I

    if-gtz v1, :cond_1d

    .line 601
    const/16 v1, 0x10

    iput v1, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 603
    :cond_1d
    return-object v0

    .line 605
    .end local v0    # "result":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    :cond_1e
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .registers 2

    .line 50
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .registers 2

    .line 50
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateOverflowButtonLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .registers 3

    .line 616
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    .line 617
    .local v0, "result":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 618
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 5

    .line 651
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-nez v0, :cond_45

    .line 652
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 653
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 654
    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    new-instance v2, Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;-><init>(Landroidx/appcompat/widget/ActionMenuView;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->setCallback(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 655
    new-instance v1, Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 656
    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 657
    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz v2, :cond_2f

    .line 658
    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    goto :goto_34

    :cond_2f
    new-instance v2, Landroidx/appcompat/widget/ActionMenuView$ActionMenuPresenterCallback;

    invoke-direct {v2}, Landroidx/appcompat/widget/ActionMenuView$ActionMenuPresenterCallback;-><init>()V

    .line 657
    :goto_34
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionMenuPresenter;->setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    .line 659
    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v3, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 660
    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->setMenuView(Landroidx/appcompat/widget/ActionMenuView;)V

    .line 663
    .end local v0    # "context":Landroid/content/Context;
    :cond_45
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 565
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 566
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPopupTheme()I
    .registers 2

    .line 116
    iget v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupTheme:I

    return v0
.end method

.method public getWindowAnimations()I
    .registers 2

    .line 632
    const/4 v0, 0x0

    return v0
.end method

.method protected hasSupportDividerBeforeChildAt(I)Z
    .registers 6
    .param p1, "childIndex"    # I

    .line 733
    if-nez p1, :cond_4

    .line 734
    const/4 v0, 0x0

    return v0

    .line 736
    :cond_4
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 737
    .local v0, "childBefore":Landroid/view/View;
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 738
    .local v1, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 739
    .local v2, "result":Z
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_21

    instance-of v3, v0, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_21

    .line 740
    move-object v3, v0

    check-cast v3, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v3}, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v3

    or-int/2addr v2, v3

    .line 742
    :cond_21
    if-lez p1, :cond_2f

    instance-of v3, v1, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_2f

    .line 743
    move-object v3, v1

    check-cast v3, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v3}, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v3

    or-int/2addr v2, v3

    .line 745
    :cond_2f
    return v2
.end method

.method public hideOverflowMenu()Z
    .registers 2

    .line 700
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .registers 2
    .param p1, "menu"    # Landroidx/appcompat/view/menu/MenuBuilder;

    .line 639
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 640
    return-void
.end method

.method public invokeItem(Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .registers 4
    .param p1, "item"    # Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 625
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .registers 2

    .line 716
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isOverflowMenuShowing()Z
    .registers 2

    .line 710
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isOverflowReserved()Z
    .registers 2

    .line 572
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 131
    invoke-super {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 133
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_1f

    .line 134
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 136
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 137
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 138
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->showOverflowMenu()Z

    .line 141
    :cond_1f
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    .line 544
    invoke-super {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    .line 545
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->dismissPopupMenus()V

    .line 546
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 26
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 442
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    if-nez v1, :cond_a

    .line 443
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    .line 444
    return-void

    .line 447
    :cond_a
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v1

    .line 448
    .local v1, "childCount":I
    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x2

    .line 449
    .local v2, "midVertical":I
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getDividerWidth()I

    move-result v3

    .line 450
    .local v3, "dividerWidth":I
    const/4 v4, 0x0

    .line 451
    .local v4, "overflowWidth":I
    const/4 v5, 0x0

    .line 452
    .local v5, "nonOverflowCount":I
    sub-int v6, p4, p2

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    .line 453
    .local v6, "widthRemaining":I
    const/4 v7, 0x0

    .line 454
    .local v7, "hasOverflow":Z
    invoke-static {v0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v8

    .line 455
    .local v8, "isLayoutRtl":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2a
    const/16 v10, 0x8

    if-ge v9, v1, :cond_95

    .line 456
    invoke-virtual {v0, v9}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 457
    .local v11, "v":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-ne v12, v10, :cond_3b

    .line 458
    move/from16 v16, v2

    goto :goto_90

    .line 461
    :cond_3b
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 462
    .local v10, "p":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    iget-boolean v12, v10, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v12, :cond_7e

    .line 463
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 464
    invoke-virtual {v0, v9}, Landroidx/appcompat/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v12

    if-eqz v12, :cond_50

    .line 465
    add-int/2addr v4, v3

    .line 467
    :cond_50
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 470
    .local v12, "height":I
    if-eqz v8, :cond_60

    .line 471
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    move-result v13

    iget v14, v10, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v13, v14

    .line 472
    .local v13, "l":I
    add-int v14, v13, v4

    .local v14, "r":I
    goto :goto_6f

    .line 474
    .end local v13    # "l":I
    .end local v14    # "r":I
    :cond_60
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getWidth()I

    move-result v13

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    move-result v14

    sub-int/2addr v13, v14

    iget v14, v10, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int v14, v13, v14

    .line 475
    .restart local v14    # "r":I
    sub-int v13, v14, v4

    .line 477
    .restart local v13    # "l":I
    :goto_6f
    div-int/lit8 v15, v12, 0x2

    sub-int v15, v2, v15

    .line 478
    .local v15, "t":I
    move/from16 v16, v2

    .end local v2    # "midVertical":I
    .local v16, "midVertical":I
    add-int v2, v15, v12

    .line 479
    .local v2, "b":I
    invoke-virtual {v11, v13, v15, v14, v2}, Landroid/view/View;->layout(IIII)V

    .line 481
    sub-int/2addr v6, v4

    .line 482
    const/4 v2, 0x1

    .line 483
    .end local v7    # "hasOverflow":Z
    .end local v12    # "height":I
    .end local v13    # "l":I
    .end local v14    # "r":I
    .end local v15    # "t":I
    .local v2, "hasOverflow":Z
    move v7, v2

    goto :goto_90

    .line 484
    .end local v16    # "midVertical":I
    .local v2, "midVertical":I
    .restart local v7    # "hasOverflow":Z
    :cond_7e
    move/from16 v16, v2

    .end local v2    # "midVertical":I
    .restart local v16    # "midVertical":I
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v12, v10, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v2, v12

    iget v12, v10, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v2, v12

    .line 485
    .local v2, "size":I
    sub-int/2addr v6, v2

    .line 486
    invoke-virtual {v0, v9}, Landroidx/appcompat/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    .line 488
    add-int/lit8 v5, v5, 0x1

    .line 455
    .end local v2    # "size":I
    .end local v10    # "p":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .end local v11    # "v":Landroid/view/View;
    :goto_90
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, v16

    goto :goto_2a

    .end local v16    # "midVertical":I
    .local v2, "midVertical":I
    :cond_95
    move/from16 v16, v2

    .line 492
    .end local v2    # "midVertical":I
    .end local v9    # "i":I
    .restart local v16    # "midVertical":I
    const/4 v2, 0x0

    const/4 v9, 0x1

    if-ne v1, v9, :cond_bd

    if-nez v7, :cond_bd

    .line 494
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 495
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 496
    .local v9, "width":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 497
    .local v10, "height":I
    sub-int v11, p4, p2

    div-int/lit8 v11, v11, 0x2

    .line 498
    .local v11, "midHorizontal":I
    div-int/lit8 v12, v9, 0x2

    sub-int v12, v11, v12

    .line 499
    .local v12, "l":I
    div-int/lit8 v13, v10, 0x2

    sub-int v13, v16, v13

    .line 500
    .local v13, "t":I
    add-int v14, v12, v9

    add-int v15, v13, v10

    invoke-virtual {v2, v12, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 501
    return-void

    .line 504
    .end local v2    # "v":Landroid/view/View;
    .end local v9    # "width":I
    .end local v10    # "height":I
    .end local v11    # "midHorizontal":I
    .end local v12    # "l":I
    .end local v13    # "t":I
    :cond_bd
    xor-int/lit8 v9, v7, 0x1

    sub-int v9, v5, v9

    .line 505
    .local v9, "spacerCount":I
    if-lez v9, :cond_c6

    div-int v11, v6, v9

    goto :goto_c7

    :cond_c6
    move v11, v2

    :goto_c7
    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 507
    .local v2, "spacerSize":I
    if-eqz v8, :cond_125

    .line 508
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getWidth()I

    move-result v11

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    .line 509
    .local v11, "startRight":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_d7
    if-ge v12, v1, :cond_120

    .line 510
    invoke-virtual {v0, v12}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 511
    .local v13, "v":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 512
    .local v14, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-eq v15, v10, :cond_113

    iget-boolean v15, v14, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v15, :cond_f2

    .line 513
    move/from16 v18, v2

    move/from16 v19, v3

    goto :goto_117

    .line 516
    :cond_f2
    iget v15, v14, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int/2addr v11, v15

    .line 517
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 518
    .local v15, "width":I
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    .line 519
    .local v17, "height":I
    div-int/lit8 v18, v17, 0x2

    sub-int v10, v16, v18

    .line 520
    .local v10, "t":I
    move/from16 v18, v2

    .end local v2    # "spacerSize":I
    .local v18, "spacerSize":I
    sub-int v2, v11, v15

    move/from16 v19, v3

    .end local v3    # "dividerWidth":I
    .local v19, "dividerWidth":I
    add-int v3, v10, v17

    invoke-virtual {v13, v2, v10, v11, v3}, Landroid/view/View;->layout(IIII)V

    .line 521
    iget v2, v14, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v2, v15

    add-int v2, v2, v18

    sub-int/2addr v11, v2

    goto :goto_117

    .line 512
    .end local v10    # "t":I
    .end local v15    # "width":I
    .end local v17    # "height":I
    .end local v18    # "spacerSize":I
    .end local v19    # "dividerWidth":I
    .restart local v2    # "spacerSize":I
    .restart local v3    # "dividerWidth":I
    :cond_113
    move/from16 v18, v2

    move/from16 v19, v3

    .line 509
    .end local v2    # "spacerSize":I
    .end local v3    # "dividerWidth":I
    .end local v13    # "v":Landroid/view/View;
    .end local v14    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .restart local v18    # "spacerSize":I
    .restart local v19    # "dividerWidth":I
    :goto_117
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v18

    move/from16 v3, v19

    const/16 v10, 0x8

    goto :goto_d7

    .end local v18    # "spacerSize":I
    .end local v19    # "dividerWidth":I
    .restart local v2    # "spacerSize":I
    .restart local v3    # "dividerWidth":I
    :cond_120
    move/from16 v18, v2

    move/from16 v19, v3

    .line 523
    .end local v2    # "spacerSize":I
    .end local v3    # "dividerWidth":I
    .end local v11    # "startRight":I
    .end local v12    # "i":I
    .restart local v18    # "spacerSize":I
    .restart local v19    # "dividerWidth":I
    goto :goto_168

    .line 524
    .end local v18    # "spacerSize":I
    .end local v19    # "dividerWidth":I
    .restart local v2    # "spacerSize":I
    .restart local v3    # "dividerWidth":I
    :cond_125
    move/from16 v18, v2

    move/from16 v19, v3

    .end local v2    # "spacerSize":I
    .end local v3    # "dividerWidth":I
    .restart local v18    # "spacerSize":I
    .restart local v19    # "dividerWidth":I
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    move-result v2

    .line 525
    .local v2, "startLeft":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12e
    if-ge v3, v1, :cond_168

    .line 526
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 527
    .local v10, "v":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 528
    .local v11, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_163

    iget-boolean v12, v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v12, :cond_147

    .line 529
    goto :goto_163

    .line 532
    :cond_147
    iget v12, v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v2, v12

    .line 533
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    .line 534
    .local v12, "width":I
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 535
    .local v14, "height":I
    div-int/lit8 v15, v14, 0x2

    sub-int v15, v16, v15

    .line 536
    .local v15, "t":I
    add-int v13, v2, v12

    add-int v0, v15, v14

    invoke-virtual {v10, v2, v15, v13, v0}, Landroid/view/View;->layout(IIII)V

    .line 537
    iget v0, v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v0, v12

    add-int v0, v0, v18

    add-int/2addr v2, v0

    .line 525
    .end local v10    # "v":Landroid/view/View;
    .end local v11    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .end local v12    # "width":I
    .end local v14    # "height":I
    .end local v15    # "t":I
    :cond_163
    :goto_163
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    goto :goto_12e

    .line 540
    .end local v2    # "startLeft":I
    .end local v3    # "i":I
    :cond_168
    :goto_168
    return-void
.end method

.method protected onMeasure(II)V
    .registers 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 150
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    .line 151
    .local v0, "wasFormatted":Z
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_e

    move v1, v3

    goto :goto_f

    :cond_e
    move v1, v4

    :goto_f
    iput-boolean v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    .line 153
    iget-boolean v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    if-eq v0, v1, :cond_17

    .line 154
    iput v4, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 159
    :cond_17
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 160
    .local v1, "widthSize":I
    iget-boolean v2, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v2, :cond_2e

    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v2, :cond_2e

    iget v2, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItemsWidth:I

    if-eq v1, v2, :cond_2e

    .line 161
    iput v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 162
    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 165
    :cond_2e
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v2

    .line 166
    .local v2, "childCount":I
    iget-boolean v3, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v3, :cond_3c

    if-lez v2, :cond_3c

    .line 167
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/ActionMenuView;->onMeasureExactFormat(II)V

    goto :goto_53

    .line 170
    :cond_3c
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3d
    if-ge v3, v2, :cond_50

    .line 171
    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 172
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 173
    .local v6, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    iput v4, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    iput v4, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 170
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    .line 175
    .end local v3    # "i":I
    :cond_50
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 177
    :goto_53
    return-void
.end method

.method public peekMenu()Landroidx/appcompat/view/menu/MenuBuilder;
    .registers 2

    .line 682
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object v0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .registers 3
    .param p1, "exclusive"    # Z

    .line 756
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 757
    return-void
.end method

.method public setMenuCallbacks(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V
    .registers 3
    .param p1, "pcb"    # Landroidx/appcompat/view/menu/MenuPresenter$Callback;
    .param p2, "mcb"    # Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    .line 672
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 673
    iput-object p2, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    .line 674
    return-void
.end method

.method public setOnMenuItemClickListener(Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;)V
    .registers 2
    .param p1, "listener"    # Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

    .line 144
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mOnMenuItemClickListener:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

    .line 145
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 554
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 555
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 556
    return-void
.end method

.method public setOverflowReserved(Z)V
    .registers 2
    .param p1, "reserveOverflow"    # Z

    .line 578
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mReserveOverflow:Z

    .line 579
    return-void
.end method

.method public setPopupTheme(I)V
    .registers 4
    .param p1, "resId"    # I

    .line 100
    iget v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupTheme:I

    if-eq v0, p1, :cond_1a

    .line 101
    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupTheme:I

    .line 102
    if-nez p1, :cond_f

    .line 103
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    goto :goto_1a

    .line 105
    :cond_f
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 108
    :cond_1a
    :goto_1a
    return-void
.end method

.method public setPresenter(Landroidx/appcompat/widget/ActionMenuPresenter;)V
    .registers 3
    .param p1, "presenter"    # Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 125
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 126
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->setMenuView(Landroidx/appcompat/widget/ActionMenuView;)V

    .line 127
    return-void
.end method

.method public showOverflowMenu()Z
    .registers 2

    .line 691
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

###### Class androidx.appcompat.widget.ActionMenuView.ActionMenuChildView (androidx.appcompat.widget.ActionMenuView$ActionMenuChildView)
.class public interface abstract Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;
.super Ljava/lang/Object;
.source "ActionMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActionMenuChildView"
.end annotation


# virtual methods
.method public abstract needsDividerAfter()Z
.end method

.method public abstract needsDividerBefore()Z
.end method

###### Class androidx.appcompat.widget.ActionMenuView.ActionMenuPresenterCallback (androidx.appcompat.widget.ActionMenuView$ActionMenuPresenterCallback)
.class Landroidx/appcompat/widget/ActionMenuView$ActionMenuPresenterCallback;
.super Ljava/lang/Object;
.source "ActionMenuView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActionMenuPresenterCallback"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 794
    return-void
.end method


# virtual methods
.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .registers 3
    .param p1, "menu"    # Landroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 798
    return-void
.end method

.method public onOpenSubMenu(Landroidx/appcompat/view/menu/MenuBuilder;)Z
    .registers 3
    .param p1, "subMenu"    # Landroidx/appcompat/view/menu/MenuBuilder;

    .line 802
    const/4 v0, 0x0

    return v0
.end method

###### Class androidx.appcompat.widget.ActionMenuView.LayoutParams (androidx.appcompat.widget.ActionMenuView$LayoutParams)
.class public Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
.super Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
.source "ActionMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public cellsUsed:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public expandable:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field expanded:Z

.field public extraPixels:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public isOverflowButton:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public preventEdgeOffset:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 846
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    .line 847
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 848
    return-void
.end method

.method constructor <init>(IIZ)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "isOverflowButton"    # Z

    .line 851
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    .line 852
    iput-boolean p3, p0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 853
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 833
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 834
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2
    .param p1, "other"    # Landroid/view/ViewGroup$LayoutParams;

    .line 837
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 838
    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/ActionMenuView$LayoutParams;)V
    .registers 3
    .param p1, "other"    # Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 841
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 842
    iget-boolean v0, p1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    iput-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 843
    return-void
.end method

###### Class androidx.appcompat.widget.ActionMenuView.MenuBuilderCallback (androidx.appcompat.widget.ActionMenuView$MenuBuilderCallback)
.class Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;
.super Ljava/lang/Object;
.source "ActionMenuView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuBuilderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/ActionMenuView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ActionMenuView;)V
    .registers 2

    .line 775
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;->this$0:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 776
    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "menu"    # Landroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 780
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;->this$0:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->mOnMenuItemClickListener:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;->this$0:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->mOnMenuItemClickListener:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

    .line 781
    invoke-interface {v0, p2}, Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 780
    :goto_13
    return v0
.end method

.method public onMenuModeChange(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .registers 3
    .param p1, "menu"    # Landroidx/appcompat/view/menu/MenuBuilder;

    .line 786
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;->this$0:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    if-eqz v0, :cond_d

    .line 787
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;->this$0:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder$Callback;->onMenuModeChange(Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 789
    :cond_d
    return-void
.end method

###### Class androidx.appcompat.widget.ActionMenuView.OnMenuItemClickListener (androidx.appcompat.widget.ActionMenuView$OnMenuItemClickListener)
.class public interface abstract Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;
.super Ljava/lang/Object;
.source "ActionMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnMenuItemClickListener"
.end annotation


# virtual methods
.method public abstract onMenuItemClick(Landroid/view/MenuItem;)Z
.end method
