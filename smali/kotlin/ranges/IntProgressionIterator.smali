###### Class kotlin.ranges.IntProgressionIterator (kotlin.ranges.IntProgressionIterator)
.class public final Lkotlin/ranges/IntProgressionIterator;
.super Lkotlin/collections/IntIterator;
.source "ProgressionIterators.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000b\u001a\u00020\u000cH\u0096\u0002J\u0008\u0010\u000e\u001a\u00020\u0003H\u0016R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lkotlin/ranges/IntProgressionIterator;",
        "Lkotlin/collections/IntIterator;",
        "first",
        "",
        "last",
        "step",
        "<init>",
        "(III)V",
        "getStep",
        "()I",
        "finalElement",
        "hasNext",
        "",
        "next",
        "nextInt",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final finalElement:I

.field private hasNext:Z

.field private next:I

.field private final step:I


# direct methods
.method public constructor <init>(III)V
    .registers 7
    .param p1, "first"    # I
    .param p2, "last"    # I
    .param p3, "step"    # I

    .line 40
    invoke-direct {p0}, Lkotlin/collections/IntIterator;-><init>()V

    iput p3, p0, Lkotlin/ranges/IntProgressionIterator;->step:I

    .line 41
    iput p2, p0, Lkotlin/ranges/IntProgressionIterator;->finalElement:I

    .line 42
    iget v0, p0, Lkotlin/ranges/IntProgressionIterator;->step:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_10

    if-gt p1, p2, :cond_13

    goto :goto_12

    :cond_10
    if-lt p1, p2, :cond_13

    :goto_12
    goto :goto_14

    :cond_13
    move v1, v2

    :goto_14
    iput-boolean v1, p0, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    .line 43
    iget-boolean v0, p0, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    if-eqz v0, :cond_1c

    move v0, p1

    goto :goto_1e

    :cond_1c
    iget v0, p0, Lkotlin/ranges/IntProgressionIterator;->finalElement:I

    :goto_1e
    iput v0, p0, Lkotlin/ranges/IntProgressionIterator;->next:I

    .line 40
    return-void
.end method


# virtual methods
.method public final getStep()I
    .registers 2

    .line 40
    iget v0, p0, Lkotlin/ranges/IntProgressionIterator;->step:I

    return v0
.end method

.method public hasNext()Z
    .registers 2

    .line 45
    iget-boolean v0, p0, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    return v0
.end method

.method public nextInt()I
    .registers 4

    .line 48
    iget v0, p0, Lkotlin/ranges/IntProgressionIterator;->next:I

    .line 49
    .local v0, "value":I
    iget v1, p0, Lkotlin/ranges/IntProgressionIterator;->finalElement:I

    if-ne v0, v1, :cond_14

    .line 50
    iget-boolean v1, p0, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    if-eqz v1, :cond_e

    .line 51
    const/4 v1, 0x0

    iput-boolean v1, p0, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    goto :goto_1b

    .line 50
    :cond_e
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 54
    :cond_14
    iget v1, p0, Lkotlin/ranges/IntProgressionIterator;->next:I

    iget v2, p0, Lkotlin/ranges/IntProgressionIterator;->step:I

    add-int/2addr v1, v2

    iput v1, p0, Lkotlin/ranges/IntProgressionIterator;->next:I

    .line 56
    :goto_1b
    return v0
.end method
