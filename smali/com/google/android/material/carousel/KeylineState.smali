###### Class com.google.android.material.carousel.KeylineState (com.google.android.material.carousel.KeylineState)
.class final Lcom/google/android/material/carousel/KeylineState;
.super Ljava/lang/Object;
.source "KeylineState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/carousel/KeylineState$Keyline;,
        Lcom/google/android/material/carousel/KeylineState$Builder;
    }
.end annotation


# instance fields
.field private final firstFocalKeylineIndex:I

.field private final itemSize:F

.field private final keylines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState$Keyline;",
            ">;"
        }
    .end annotation
.end field

.field private final lastFocalKeylineIndex:I


# direct methods
.method private constructor <init>(FLjava/util/List;II)V
    .registers 6
    .param p1, "itemSize"    # F
    .param p3, "firstFocalKeylineIndex"    # I
    .param p4, "lastFocalKeylineIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState$Keyline;",
            ">;II)V"
        }
    .end annotation

    .line 59
    .local p2, "keylines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/carousel/KeylineState$Keyline;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Lcom/google/android/material/carousel/KeylineState;->itemSize:F

    .line 61
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    .line 62
    iput p3, p0, Lcom/google/android/material/carousel/KeylineState;->firstFocalKeylineIndex:I

    .line 63
    iput p4, p0, Lcom/google/android/material/carousel/KeylineState;->lastFocalKeylineIndex:I

    .line 64
    return-void
.end method

.method synthetic constructor <init>(FLjava/util/List;IILcom/google/android/material/carousel/KeylineState$1;)V
    .registers 6
    .param p1, "x0"    # F
    .param p2, "x1"    # Ljava/util/List;
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Lcom/google/android/material/carousel/KeylineState$1;

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/carousel/KeylineState;-><init>(FLjava/util/List;II)V

    return-void
.end method

.method static lerp(Lcom/google/android/material/carousel/KeylineState;Lcom/google/android/material/carousel/KeylineState;F)Lcom/google/android/material/carousel/KeylineState;
    .registers 10
    .param p0, "from"    # Lcom/google/android/material/carousel/KeylineState;
    .param p1, "to"    # Lcom/google/android/material/carousel/KeylineState;
    .param p2, "progress"    # F

    .line 119
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_70

    .line 123
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v0

    .line 124
    .local v0, "fromKeylines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/carousel/KeylineState$Keyline;>;"
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    .line 125
    .local v1, "toKeylines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/carousel/KeylineState$Keyline;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_68

    .line 130
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v2, "keylines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/carousel/KeylineState$Keyline;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_24
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_44

    .line 132
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/carousel/KeylineState$Keyline;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/carousel/KeylineState$Keyline;

    invoke-static {v4, v5, p2}, Lcom/google/android/material/carousel/KeylineState$Keyline;->lerp(Lcom/google/android/material/carousel/KeylineState$Keyline;Lcom/google/android/material/carousel/KeylineState$Keyline;F)Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 135
    .end local v3    # "i":I
    :cond_44
    nop

    .line 137
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    move-result v4

    .line 136
    invoke-static {v3, v4, p2}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    move-result v3

    .line 138
    .local v3, "focalKeylineFirstIndex":I
    nop

    .line 140
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    move-result v5

    .line 139
    invoke-static {v4, v5, p2}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    move-result v4

    .line 142
    .local v4, "focalKeylineLastIndex":I
    new-instance v5, Lcom/google/android/material/carousel/KeylineState;

    .line 143
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v6

    invoke-direct {v5, v6, v2, v3, v4}, Lcom/google/android/material/carousel/KeylineState;-><init>(FLjava/util/List;II)V

    .line 142
    return-object v5

    .line 126
    .end local v2    # "keylines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/carousel/KeylineState$Keyline;>;"
    .end local v3    # "focalKeylineFirstIndex":I
    .end local v4    # "focalKeylineLastIndex":I
    :cond_68
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Keylines being linearly interpolated must have the same number of keylines."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 120
    .end local v0    # "fromKeylines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/carousel/KeylineState$Keyline;>;"
    .end local v1    # "toKeylines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/carousel/KeylineState$Keyline;>;"
    :cond_70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Keylines being linearly interpolated must have the same item size."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static reverse(Lcom/google/android/material/carousel/KeylineState;)Lcom/google/android/material/carousel/KeylineState;
    .registers 11
    .param p0, "keylineState"    # Lcom/google/android/material/carousel/KeylineState;

    .line 156
    new-instance v0, Lcom/google/android/material/carousel/KeylineState$Builder;

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/material/carousel/KeylineState$Builder;-><init>(F)V

    .line 158
    .local v0, "builder":Lcom/google/android/material/carousel/KeylineState$Builder;
    nop

    .line 159
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v1

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    .line 160
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v2

    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 161
    .local v1, "start":F
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    .local v2, "i":I
    :goto_24
    if-ltz v2, :cond_51

    .line 162
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 163
    .local v5, "k":Lcom/google/android/material/carousel/KeylineState$Keyline;
    iget v6, v5, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    div-float/2addr v6, v3

    add-float/2addr v6, v1

    .line 164
    .local v6, "offset":F
    nop

    .line 165
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    move-result v7

    if-lt v2, v7, :cond_43

    .line 166
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    move-result v7

    if-gt v2, v7, :cond_43

    move v7, v4

    goto :goto_44

    :cond_43
    const/4 v7, 0x0

    .line 167
    .local v7, "isFocal":Z
    :goto_44
    iget v8, v5, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    iget v9, v5, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    invoke-virtual {v0, v6, v8, v9, v7}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFFZ)Lcom/google/android/material/carousel/KeylineState$Builder;

    .line 168
    iget v8, v5, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    add-float/2addr v1, v8

    .line 161
    .end local v5    # "k":Lcom/google/android/material/carousel/KeylineState$Keyline;
    .end local v6    # "offset":F
    .end local v7    # "isFocal":Z
    add-int/lit8 v2, v2, -0x1

    goto :goto_24

    .line 171
    .end local v2    # "i":I
    :cond_51
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState$Builder;->build()Lcom/google/android/material/carousel/KeylineState;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;
    .registers 3

    .line 82
    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    iget v1, p0, Lcom/google/android/material/carousel/KeylineState;->firstFocalKeylineIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/carousel/KeylineState$Keyline;

    return-object v0
.end method

.method getFirstFocalKeylineIndex()I
    .registers 2

    .line 87
    iget v0, p0, Lcom/google/android/material/carousel/KeylineState;->firstFocalKeylineIndex:I

    return v0
.end method

.method getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/carousel/KeylineState$Keyline;

    return-object v0
.end method

.method getItemSize()F
    .registers 2

    .line 72
    iget v0, p0, Lcom/google/android/material/carousel/KeylineState;->itemSize:F

    return v0
.end method

.method getKeylines()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState$Keyline;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    return-object v0
.end method

.method getLastFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    iget v1, p0, Lcom/google/android/material/carousel/KeylineState;->lastFocalKeylineIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/carousel/KeylineState$Keyline;

    return-object v0
.end method

.method getLastFocalKeylineIndex()I
    .registers 2

    .line 97
    iget v0, p0, Lcom/google/android/material/carousel/KeylineState;->lastFocalKeylineIndex:I

    return v0
.end method

.method getLastKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;
    .registers 3

    .line 107
    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/carousel/KeylineState$Keyline;

    return-object v0
.end method

###### Class com.google.android.material.carousel.KeylineState.AnonymousClass1 (com.google.android.material.carousel.KeylineState$1)
.class synthetic Lcom/google/android/material/carousel/KeylineState$1;
.super Ljava/lang/Object;
.source "KeylineState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/carousel/KeylineState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.material.carousel.KeylineState.Builder (com.google.android.material.carousel.KeylineState$Builder)
.class final Lcom/google/android/material/carousel/KeylineState$Builder;
.super Ljava/lang/Object;
.source "KeylineState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/carousel/KeylineState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# static fields
.field private static final NO_INDEX:I = -0x1

.field private static final UNKNOWN_LOC:F = 1.4E-45f


# instance fields
.field private firstFocalKeylineIndex:I

.field private final itemSize:F

.field private lastFocalKeylineIndex:I

.field private lastKeylineMaskedSize:F

.field private tmpFirstFocalKeyline:Lcom/google/android/material/carousel/KeylineState$Keyline;

.field private final tmpKeylines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState$Keyline;",
            ">;"
        }
    .end annotation
.end field

.field private tmpLastFocalKeyline:Lcom/google/android/material/carousel/KeylineState$Keyline;


# direct methods
.method constructor <init>(F)V
    .registers 3
    .param p1, "itemSize"    # F

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->tmpKeylines:Ljava/util/List;

    .line 206
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->firstFocalKeylineIndex:I

    .line 207
    iput v0, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->lastFocalKeylineIndex:I

    .line 209
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->lastKeylineMaskedSize:F

    .line 218
    iput p1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->itemSize:F

    .line 219
    return-void
.end method

.method private static calculateKeylineLocationForItemPosition(FFII)F
    .registers 6
    .param p0, "firstFocalLoc"    # F
    .param p1, "itemSize"    # F
    .param p2, "firstFocalPosition"    # I
    .param p3, "itemPosition"    # I

    .line 391
    int-to-float v0, p2

    mul-float/2addr v0, p1

    sub-float v0, p0, v0

    int-to-float v1, p3

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method addKeyline(FFF)Lcom/google/android/material/carousel/KeylineState$Builder;
    .registers 5
    .param p1, "offsetLoc"    # F
    .param p2, "mask"    # F
    .param p3, "maskedItemSize"    # F

    .line 231
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFFZ)Lcom/google/android/material/carousel/KeylineState$Builder;

    move-result-object v0

    return-object v0
.end method

.method addKeyline(FFFZ)Lcom/google/android/material/carousel/KeylineState$Builder;
    .registers 8
    .param p1, "offsetLoc"    # F
    .param p2, "mask"    # F
    .param p3, "maskedItemSize"    # F
    .param p4, "isFocal"    # Z

    .line 258
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_6

    .line 259
    return-object p0

    .line 262
    :cond_6
    new-instance v0, Lcom/google/android/material/carousel/KeylineState$Keyline;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/google/android/material/carousel/KeylineState$Keyline;-><init>(FFFF)V

    .line 263
    .local v0, "tmpKeyline":Lcom/google/android/material/carousel/KeylineState$Keyline;
    nop

    .line 281
    iget-object v1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->tmpFirstFocalKeyline:Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 263
    if-eqz p4, :cond_52

    .line 264
    if-nez v1, :cond_1d

    .line 265
    iput-object v0, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->tmpFirstFocalKeyline:Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 266
    iget-object v1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->tmpKeylines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->firstFocalKeylineIndex:I

    .line 269
    :cond_1d
    iget v1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->lastFocalKeylineIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_37

    iget-object v1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->tmpKeylines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->lastFocalKeylineIndex:I

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    if-gt v1, v2, :cond_2f

    goto :goto_37

    .line 270
    :cond_2f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Keylines marked as focal must be placed next to each other. There cannot be non-focal keylines between focal keylines."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 274
    :cond_37
    :goto_37
    iget-object v1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->tmpFirstFocalKeyline:Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    cmpl-float v1, p3, v1

    if-nez v1, :cond_4a

    .line 278
    iput-object v0, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->tmpLastFocalKeyline:Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 279
    iget-object v1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->tmpKeylines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->lastFocalKeylineIndex:I

    goto :goto_7a

    .line 275
    :cond_4a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Keylines that are marked as focal must all have the same masked item size."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 281
    :cond_52
    if-nez v1, :cond_65

    iget v1, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    iget v2, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->lastKeylineMaskedSize:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_5d

    goto :goto_65

    .line 282
    :cond_5d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Keylines before the first focal keyline must be ordered by incrementing masked item size."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 285
    :cond_65
    :goto_65
    iget-object v1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->tmpLastFocalKeyline:Lcom/google/android/material/carousel/KeylineState$Keyline;

    if-eqz v1, :cond_7a

    iget v1, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    iget v2, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->lastKeylineMaskedSize:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_72

    goto :goto_7a

    .line 287
    :cond_72
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Keylines after the last focal keyline must be ordered by decreasing masked item size."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 292
    :cond_7a
    :goto_7a
    iget v1, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    iput v1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->lastKeylineMaskedSize:F

    .line 293
    iget-object v1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->tmpKeylines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    return-object p0
.end method

.method addKeylineRange(FFFI)Lcom/google/android/material/carousel/KeylineState$Builder;
    .registers 11
    .param p1, "offsetLoc"    # F
    .param p2, "mask"    # F
    .param p3, "maskedItemSize"    # F
    .param p4, "count"    # I

    .line 311
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "offsetLoc":F
    .end local p2    # "mask":F
    .end local p3    # "maskedItemSize":F
    .end local p4    # "count":I
    .local v1, "offsetLoc":F
    .local v2, "mask":F
    .local v3, "maskedItemSize":F
    .local v4, "count":I
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeylineRange(FFFIZ)Lcom/google/android/material/carousel/KeylineState$Builder;

    move-result-object p1

    return-object p1
.end method

.method addKeylineRange(FFFIZ)Lcom/google/android/material/carousel/KeylineState$Builder;
    .registers 8
    .param p1, "offsetLoc"    # F
    .param p2, "mask"    # F
    .param p3, "maskedItemSize"    # F
    .param p4, "count"    # I
    .param p5, "isFocal"    # Z

    .line 341
    if-lez p4, :cond_15

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_8

    goto :goto_15

    .line 345
    :cond_8
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    if-ge v0, p4, :cond_14

    .line 346
    int-to-float v1, v0

    mul-float/2addr v1, p3

    add-float/2addr v1, p1

    .line 347
    .local v1, "loc":F
    invoke-virtual {p0, v1, p2, p3, p5}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFFZ)Lcom/google/android/material/carousel/KeylineState$Builder;

    .line 345
    .end local v1    # "loc":F
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 350
    .end local v0    # "i":I
    :cond_14
    return-object p0

    .line 342
    :cond_15
    :goto_15
    return-object p0
.end method

.method build()Lcom/google/android/material/carousel/KeylineState;
    .registers 9

    .line 356
    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->tmpFirstFocalKeyline:Lcom/google/android/material/carousel/KeylineState$Keyline;

    if-eqz v0, :cond_45

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 361
    .local v3, "keylines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/carousel/KeylineState$Keyline;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget-object v1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->tmpKeylines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_38

    .line 362
    iget-object v1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->tmpKeylines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 363
    .local v1, "tmpKeyline":Lcom/google/android/material/carousel/KeylineState$Keyline;
    new-instance v2, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget-object v4, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->tmpFirstFocalKeyline:Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v4, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    iget v5, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->itemSize:F

    iget v6, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->firstFocalKeylineIndex:I

    .line 365
    invoke-static {v4, v5, v6, v0}, Lcom/google/android/material/carousel/KeylineState$Builder;->calculateKeylineLocationForItemPosition(FFII)F

    move-result v4

    iget v5, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    iget v6, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    iget v7, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/google/android/material/carousel/KeylineState$Keyline;-><init>(FFFF)V

    .line 370
    .local v2, "keyline":Lcom/google/android/material/carousel/KeylineState$Keyline;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    .end local v1    # "tmpKeyline":Lcom/google/android/material/carousel/KeylineState$Keyline;
    .end local v2    # "keyline":Lcom/google/android/material/carousel/KeylineState$Keyline;
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 373
    .end local v0    # "i":I
    :cond_38
    new-instance v1, Lcom/google/android/material/carousel/KeylineState;

    iget v2, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->itemSize:F

    iget v4, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->firstFocalKeylineIndex:I

    iget v5, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->lastFocalKeylineIndex:I

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/carousel/KeylineState;-><init>(FLjava/util/List;IILcom/google/android/material/carousel/KeylineState$1;)V

    return-object v1

    .line 357
    .end local v3    # "keylines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/carousel/KeylineState$Keyline;>;"
    :cond_45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There must be a keyline marked as focal."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class com.google.android.material.carousel.KeylineState.Keyline (com.google.android.material.carousel.KeylineState$Keyline)
.class final Lcom/google/android/material/carousel/KeylineState$Keyline;
.super Ljava/lang/Object;
.source "KeylineState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/carousel/KeylineState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Keyline"
.end annotation


# instance fields
.field final loc:F

.field final locOffset:F

.field final mask:F

.field final maskedItemSize:F


# direct methods
.method constructor <init>(FFFF)V
    .registers 5
    .param p1, "loc"    # F
    .param p2, "locOffset"    # F
    .param p3, "mask"    # F
    .param p4, "maskedItemSize"    # F

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    iput p1, p0, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    .line 418
    iput p2, p0, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    .line 419
    iput p3, p0, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    .line 420
    iput p4, p0, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    .line 421
    return-void
.end method

.method static lerp(Lcom/google/android/material/carousel/KeylineState$Keyline;Lcom/google/android/material/carousel/KeylineState$Keyline;F)Lcom/google/android/material/carousel/KeylineState$Keyline;
    .registers 9
    .param p0, "from"    # Lcom/google/android/material/carousel/KeylineState$Keyline;
    .param p1, "to"    # Lcom/google/android/material/carousel/KeylineState$Keyline;
    .param p2, "progress"    # F

    .line 425
    new-instance v0, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v1, p0, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    iget v2, p1, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    .line 426
    invoke-static {v1, v2, p2}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v1

    iget v2, p0, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    iget v3, p1, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    .line 427
    invoke-static {v2, v3, p2}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v2

    iget v3, p0, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    iget v4, p1, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    .line 428
    invoke-static {v3, v4, p2}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v3

    iget v4, p0, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    iget v5, p1, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    .line 429
    invoke-static {v4, v5, p2}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/material/carousel/KeylineState$Keyline;-><init>(FFFF)V

    .line 425
    return-object v0
.end method
