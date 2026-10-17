###### Class androidx.emoji2.viewsintegration.EmojiTextViewHelper (androidx.emoji2.viewsintegration.EmojiTextViewHelper)
.class public final Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;
.super Ljava/lang/Object;
.source "EmojiTextViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;,
        Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$SkippingHelper19;,
        Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal;
    }
.end annotation


# instance fields
.field private final mHelper:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .registers 3
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 75
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;-><init>(Landroid/widget/TextView;Z)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;Z)V
    .registers 4
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "expectInitializedEmojiCompat"    # Z

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const-string/jumbo v0, "textView cannot be null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    nop

    .line 100
    if-nez p2, :cond_14

    .line 101
    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$SkippingHelper19;

    invoke-direct {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$SkippingHelper19;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;->mHelper:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal;

    goto :goto_1b

    .line 103
    :cond_14
    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;

    invoke-direct {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;->mHelper:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal;

    .line 105
    :goto_1b
    return-void
.end method


# virtual methods
.method public getFilters([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .registers 3
    .param p1, "filters"    # [Landroid/text/InputFilter;

    .line 132
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;->mHelper:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal;

    invoke-virtual {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal;->getFilters([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 180
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;->mHelper:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal;

    invoke-virtual {v0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public setAllCaps(Z)V
    .registers 3
    .param p1, "allCaps"    # Z

    .line 173
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;->mHelper:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal;

    invoke-virtual {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal;->setAllCaps(Z)V

    .line 174
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 163
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;->mHelper:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal;

    invoke-virtual {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal;->setEnabled(Z)V

    .line 164
    return-void
.end method

.method public updateTransformationMethod()V
    .registers 2

    .line 115
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;->mHelper:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal;

    invoke-virtual {v0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal;->updateTransformationMethod()V

    .line 116
    return-void
.end method

.method public wrapTransformationMethod(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .registers 3
    .param p1, "transformationMethod"    # Landroid/text/method/TransformationMethod;

    .line 145
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;->mHelper:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal;

    invoke-virtual {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal;->wrapTransformationMethod(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;

    move-result-object v0

    return-object v0
.end method

###### Class androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal (androidx.emoji2.viewsintegration.EmojiTextViewHelper$HelperInternal)
.class Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal;
.super Ljava/lang/Object;
.source "EmojiTextViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HelperInternal"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getFilters([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .registers 2
    .param p1, "filters"    # [Landroid/text/InputFilter;

    .line 192
    return-object p1
.end method

.method public isEnabled()Z
    .registers 2

    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method setAllCaps(Z)V
    .registers 2
    .param p1, "allCaps"    # Z

    .line 203
    return-void
.end method

.method setEnabled(Z)V
    .registers 2
    .param p1, "processEmoji"    # Z

    .line 207
    return-void
.end method

.method updateTransformationMethod()V
    .registers 1

    .line 188
    return-void
.end method

.method wrapTransformationMethod(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .registers 2
    .param p1, "transformationMethod"    # Landroid/text/method/TransformationMethod;

    .line 198
    return-object p1
.end method

###### Class androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal19 (androidx.emoji2.viewsintegration.EmojiTextViewHelper$HelperInternal19)
.class Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;
.super Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal;
.source "EmojiTextViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HelperInternal19"
.end annotation


# instance fields
.field private final mEmojiInputFilter:Landroidx/emoji2/viewsintegration/EmojiInputFilter;

.field private mEnabled:Z

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .registers 3
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 322
    invoke-direct {p0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal;-><init>()V

    .line 323
    iput-object p1, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->mTextView:Landroid/widget/TextView;

    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->mEnabled:Z

    .line 325
    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiInputFilter;

    invoke-direct {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiInputFilter;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->mEmojiInputFilter:Landroidx/emoji2/viewsintegration/EmojiInputFilter;

    .line 326
    return-void
.end method

.method private addEmojiInputFilterIfMissing([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .registers 6
    .param p1, "filters"    # [Landroid/text/InputFilter;

    .line 365
    array-length v0, p1

    .line 366
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_e

    .line 367
    aget-object v2, p1, v1

    iget-object v3, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->mEmojiInputFilter:Landroidx/emoji2/viewsintegration/EmojiInputFilter;

    if-ne v2, v3, :cond_b

    .line 368
    return-object p1

    .line 366
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 371
    .end local v1    # "i":I
    :cond_e
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    .line 372
    .local v1, "newFilters":[Landroid/text/InputFilter;
    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 373
    iget-object v2, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->mEmojiInputFilter:Landroidx/emoji2/viewsintegration/EmojiInputFilter;

    aput-object v2, v1, v0

    .line 374
    return-object v1
.end method

.method private getEmojiInputFilterPositionArray([Landroid/text/InputFilter;)Landroid/util/SparseArray;
    .registers 5
    .param p1, "filters"    # [Landroid/text/InputFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/text/InputFilter;",
            ")",
            "Landroid/util/SparseArray<",
            "Landroid/text/InputFilter;",
            ">;"
        }
    .end annotation

    .line 409
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 410
    .local v0, "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/text/InputFilter;>;"
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_7
    array-length v2, p1

    if-ge v1, v2, :cond_18

    .line 411
    aget-object v2, p1, v1

    instance-of v2, v2, Landroidx/emoji2/viewsintegration/EmojiInputFilter;

    if-eqz v2, :cond_15

    .line 412
    aget-object v2, p1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 410
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 415
    .end local v1    # "pos":I
    :cond_18
    return-object v0
.end method

.method private removeEmojiInputFilterIfPresent([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .registers 9
    .param p1, "filters"    # [Landroid/text/InputFilter;

    .line 385
    invoke-direct {p0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->getEmojiInputFilterPositionArray([Landroid/text/InputFilter;)Landroid/util/SparseArray;

    move-result-object v0

    .line 386
    .local v0, "filterSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/text/InputFilter;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_b

    .line 387
    return-object p1

    .line 391
    :cond_b
    array-length v1, p1

    .line 392
    .local v1, "inCount":I
    array-length v2, p1

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int/2addr v2, v3

    .line 393
    .local v2, "outCount":I
    new-array v3, v2, [Landroid/text/InputFilter;

    .line 394
    .local v3, "result":[Landroid/text/InputFilter;
    const/4 v4, 0x0

    .line 395
    .local v4, "destPosition":I
    const/4 v5, 0x0

    .local v5, "srcPosition":I
    :goto_16
    if-ge v5, v1, :cond_27

    .line 396
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v6

    if-gez v6, :cond_24

    .line 397
    aget-object v6, p1, v5

    aput-object v6, v3, v4

    .line 398
    add-int/lit8 v4, v4, 0x1

    .line 395
    :cond_24
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 401
    .end local v5    # "srcPosition":I
    :cond_27
    return-object v3
.end method

.method private unwrapForDisabled(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .registers 4
    .param p1, "transformationMethod"    # Landroid/text/method/TransformationMethod;

    .line 435
    instance-of v0, p1, Landroidx/emoji2/viewsintegration/EmojiTransformationMethod;

    if-eqz v0, :cond_c

    .line 436
    move-object v0, p1

    check-cast v0, Landroidx/emoji2/viewsintegration/EmojiTransformationMethod;

    .line 438
    .local v0, "etm":Landroidx/emoji2/viewsintegration/EmojiTransformationMethod;
    invoke-virtual {v0}, Landroidx/emoji2/viewsintegration/EmojiTransformationMethod;->getOriginalTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v1

    return-object v1

    .line 440
    .end local v0    # "etm":Landroidx/emoji2/viewsintegration/EmojiTransformationMethod;
    :cond_c
    return-object p1
.end method

.method private updateFilters()V
    .registers 4

    .line 342
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    .line 343
    .local v0, "oldFilters":[Landroid/text/InputFilter;
    iget-object v1, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->getFilters([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 344
    return-void
.end method

.method private wrapForEnabled(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .registers 3
    .param p1, "transformationMethod"    # Landroid/text/method/TransformationMethod;

    .line 452
    instance-of v0, p1, Landroidx/emoji2/viewsintegration/EmojiTransformationMethod;

    if-eqz v0, :cond_5

    .line 453
    return-object p1

    .line 454
    :cond_5
    instance-of v0, p1, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v0, :cond_a

    .line 455
    return-object p1

    .line 457
    :cond_a
    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiTransformationMethod;

    invoke-direct {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiTransformationMethod;-><init>(Landroid/text/method/TransformationMethod;)V

    return-object v0
.end method


# virtual methods
.method getFilters([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .registers 3
    .param p1, "filters"    # [Landroid/text/InputFilter;

    .line 349
    iget-boolean v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->mEnabled:Z

    if-nez v0, :cond_9

    .line 351
    invoke-direct {p0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->removeEmojiInputFilterIfPresent([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object v0

    return-object v0

    .line 353
    :cond_9
    invoke-direct {p0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->addEmojiInputFilterIfMissing([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 479
    iget-boolean v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->mEnabled:Z

    return v0
.end method

.method setAllCaps(Z)V
    .registers 2
    .param p1, "allCaps"    # Z

    .line 465
    if-eqz p1, :cond_5

    .line 466
    invoke-virtual {p0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->updateTransformationMethod()V

    .line 468
    :cond_5
    return-void
.end method

.method setEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 472
    iput-boolean p1, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->mEnabled:Z

    .line 473
    invoke-virtual {p0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->updateTransformationMethod()V

    .line 474
    invoke-direct {p0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->updateFilters()V

    .line 475
    return-void
.end method

.method setEnabledUnsafe(Z)V
    .registers 2
    .param p1, "processEmoji"    # Z

    .line 491
    iput-boolean p1, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->mEnabled:Z

    .line 492
    return-void
.end method

.method updateTransformationMethod()V
    .registers 3

    .line 333
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->mTextView:Landroid/widget/TextView;

    .line 334
    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->wrapTransformationMethod(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;

    move-result-object v0

    .line 335
    .local v0, "tm":Landroid/text/method/TransformationMethod;
    iget-object v1, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 336
    return-void
.end method

.method wrapTransformationMethod(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .registers 3
    .param p1, "transformationMethod"    # Landroid/text/method/TransformationMethod;

    .line 422
    iget-boolean v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->mEnabled:Z

    if-eqz v0, :cond_9

    .line 423
    invoke-direct {p0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->wrapForEnabled(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;

    move-result-object v0

    return-object v0

    .line 425
    :cond_9
    invoke-direct {p0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->unwrapForDisabled(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;

    move-result-object v0

    return-object v0
.end method

###### Class androidx.emoji2.viewsintegration.EmojiTextViewHelper.SkippingHelper19 (androidx.emoji2.viewsintegration.EmojiTextViewHelper$SkippingHelper19)
.class Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$SkippingHelper19;
.super Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal;
.source "EmojiTextViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SkippingHelper19"
.end annotation


# instance fields
.field private final mHelperDelegate:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .registers 3
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 232
    invoke-direct {p0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal;-><init>()V

    .line 233
    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;

    invoke-direct {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$SkippingHelper19;->mHelperDelegate:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;

    .line 234
    return-void
.end method

.method private skipBecauseEmojiCompatNotInitialized()Z
    .registers 2

    .line 237
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->isConfigured()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method getFilters([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .registers 3
    .param p1, "filters"    # [Landroid/text/InputFilter;

    .line 261
    invoke-direct {p0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$SkippingHelper19;->skipBecauseEmojiCompatNotInitialized()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 262
    return-object p1

    .line 264
    :cond_7
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$SkippingHelper19;->mHelperDelegate:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;

    invoke-virtual {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->getFilters([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 312
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$SkippingHelper19;->mHelperDelegate:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;

    invoke-virtual {v0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->isEnabled()Z

    move-result v0

    return v0
.end method

.method setAllCaps(Z)V
    .registers 3
    .param p1, "allCaps"    # Z

    .line 289
    invoke-direct {p0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$SkippingHelper19;->skipBecauseEmojiCompatNotInitialized()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 290
    return-void

    .line 292
    :cond_7
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$SkippingHelper19;->mHelperDelegate:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;

    invoke-virtual {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->setAllCaps(Z)V

    .line 293
    return-void
.end method

.method setEnabled(Z)V
    .registers 4
    .param p1, "processEmoji"    # Z

    .line 303
    invoke-direct {p0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$SkippingHelper19;->skipBecauseEmojiCompatNotInitialized()Z

    move-result v0

    .line 306
    iget-object v1, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$SkippingHelper19;->mHelperDelegate:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;

    .line 303
    if-eqz v0, :cond_c

    .line 304
    invoke-virtual {v1, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->setEnabledUnsafe(Z)V

    goto :goto_f

    .line 306
    :cond_c
    invoke-virtual {v1, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->setEnabled(Z)V

    .line 308
    :goto_f
    return-void
.end method

.method updateTransformationMethod()V
    .registers 2

    .line 247
    invoke-direct {p0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$SkippingHelper19;->skipBecauseEmojiCompatNotInitialized()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 248
    return-void

    .line 250
    :cond_7
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$SkippingHelper19;->mHelperDelegate:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;

    invoke-virtual {v0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->updateTransformationMethod()V

    .line 251
    return-void
.end method

.method wrapTransformationMethod(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .registers 3
    .param p1, "transformationMethod"    # Landroid/text/method/TransformationMethod;

    .line 276
    invoke-direct {p0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$SkippingHelper19;->skipBecauseEmojiCompatNotInitialized()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 277
    return-object p1

    .line 279
    :cond_7
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$SkippingHelper19;->mHelperDelegate:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;

    invoke-virtual {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->wrapTransformationMethod(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;

    move-result-object v0

    return-object v0
.end method
