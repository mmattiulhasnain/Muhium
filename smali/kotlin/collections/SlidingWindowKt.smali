###### Class kotlin.collections.SlidingWindowKt (kotlin.collections.SlidingWindowKt)
.class public final Lkotlin/collections/SlidingWindowKt;
.super Ljava/lang/Object;
.source "SlidingWindow.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010(\n\u0002\u0008\u0002\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0000\u001aD\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00080\u00070\u0006\"\u0004\u0008\u0000\u0010\u0008*\u0008\u0012\u0004\u0012\u0002H\u00080\u00062\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0000\u001aH\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00080\u00070\r\"\u0004\u0008\u0000\u0010\u00082\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\r2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "checkWindowSizeStep",
        "",
        "size",
        "",
        "step",
        "windowedSequence",
        "Lkotlin/sequences/Sequence;",
        "",
        "T",
        "partialWindows",
        "",
        "reuseBuffer",
        "windowedIterator",
        "",
        "iterator",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final checkWindowSizeStep(II)V
    .registers 6
    .param p0, "size"    # I
    .param p1, "step"    # I

    .line 9
    if-lez p0, :cond_6

    if-lez p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    if-nez v0, :cond_51

    const/4 v0, 0x0

    .line 10
    .local v0, "$i$a$-require-SlidingWindowKt$checkWindowSizeStep$1":I
    const-string v1, " must be greater than zero."

    if-eq p0, p1, :cond_30

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Both size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and step "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_47

    .line 13
    :cond_30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    .end local v0    # "$i$a$-require-SlidingWindowKt$checkWindowSizeStep$1":I
    :goto_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_51
    return-void
.end method

.method public static final windowedIterator(Ljava/util/Iterator;IIZZ)Ljava/util/Iterator;
    .registers 13
    .param p0, "iterator"    # Ljava/util/Iterator;
    .param p1, "size"    # I
    .param p2, "step"    # I
    .param p3, "partialWindows"    # Z
    .param p4, "reuseBuffer"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;IIZZ)",
            "Ljava/util/Iterator<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "iterator"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lkotlin/collections/EmptyIterator;->INSTANCE:Lkotlin/collections/EmptyIterator;

    check-cast v0, Ljava/util/Iterator;

    return-object v0

    .line 24
    :cond_10
    new-instance v1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;

    const/4 v7, 0x0

    move-object v4, p0

    move v2, p1

    move v3, p2

    move v6, p3

    move v5, p4

    .end local p0    # "iterator":Ljava/util/Iterator;
    .end local p1    # "size":I
    .end local p2    # "step":I
    .end local p3    # "partialWindows":Z
    .end local p4    # "reuseBuffer":Z
    .local v2, "size":I
    .local v3, "step":I
    .local v4, "iterator":Ljava/util/Iterator;
    .local v5, "reuseBuffer":Z
    .local v6, "partialWindows":Z
    invoke-direct/range {v1 .. v7}, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;-><init>(IILjava/util/Iterator;ZZLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->iterator(Lkotlin/jvm/functions/Function2;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static final windowedSequence(Lkotlin/sequences/Sequence;IIZZ)Lkotlin/sequences/Sequence;
    .registers 12
    .param p0, "$this$windowedSequence"    # Lkotlin/sequences/Sequence;
    .param p1, "size"    # I
    .param p2, "step"    # I
    .param p3, "partialWindows"    # Z
    .param p4, "reuseBuffer"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/Sequence<",
            "+TT;>;IIZZ)",
            "Lkotlin/sequences/Sequence<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-static {p1, p2}, Lkotlin/collections/SlidingWindowKt;->checkWindowSizeStep(II)V

    .line 19
    new-instance v1, Lkotlin/collections/SlidingWindowKt$windowedSequence$$inlined$Sequence$1;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .end local p0    # "$this$windowedSequence":Lkotlin/sequences/Sequence;
    .end local p1    # "size":I
    .end local p2    # "step":I
    .end local p3    # "partialWindows":Z
    .end local p4    # "reuseBuffer":Z
    .local v2, "$this$windowedSequence":Lkotlin/sequences/Sequence;
    .local v3, "size":I
    .local v4, "step":I
    .local v5, "partialWindows":Z
    .local v6, "reuseBuffer":Z
    invoke-direct/range {v1 .. v6}, Lkotlin/collections/SlidingWindowKt$windowedSequence$$inlined$Sequence$1;-><init>(Lkotlin/sequences/Sequence;IIZZ)V

    check-cast v1, Lkotlin/sequences/Sequence;

    return-object v1
.end method

###### Class kotlin.collections.SlidingWindowKt.AnonymousClass1 (kotlin.collections.SlidingWindowKt$windowedIterator$1)
.class final Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "SlidingWindow.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/collections/SlidingWindowKt;->windowedIterator(Ljava/util/Iterator;IIZZ)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/sequences/SequenceScope<",
        "-",
        "Ljava/util/List<",
        "+TT;>;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00040\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lkotlin/sequences/SequenceScope;",
        ""
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlin.collections.SlidingWindowKt$windowedIterator$1"
    f = "SlidingWindow.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x3,
        0x3,
        0x3,
        0x3,
        0x4,
        0x4,
        0x4,
        0x4
    }
    l = {
        0x22,
        0x28,
        0x31,
        0x37,
        0x3a
    }
    m = "invokeSuspend"
    n = {
        "$this$iterator",
        "buffer",
        "e",
        "bufferInitialCapacity",
        "gap",
        "skip",
        "$this$iterator",
        "buffer",
        "bufferInitialCapacity",
        "gap",
        "skip",
        "$this$iterator",
        "buffer",
        "e",
        "bufferInitialCapacity",
        "gap",
        "$this$iterator",
        "buffer",
        "bufferInitialCapacity",
        "gap",
        "$this$iterator",
        "buffer",
        "bufferInitialCapacity",
        "gap"
    }
    s = {
        "L$0",
        "L$1",
        "L$3",
        "I$0",
        "I$1",
        "I$2",
        "L$0",
        "L$1",
        "I$0",
        "I$1",
        "I$2",
        "L$0",
        "L$1",
        "L$3",
        "I$0",
        "I$1",
        "L$0",
        "L$1",
        "I$0",
        "I$1",
        "L$0",
        "L$1",
        "I$0",
        "I$1"
    }
.end annotation


# instance fields
.field final synthetic $iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $partialWindows:Z

.field final synthetic $reuseBuffer:Z

.field final synthetic $size:I

.field final synthetic $step:I

.field I$0:I

.field I$1:I

.field I$2:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(IILjava/util/Iterator;ZZLkotlin/coroutines/Continuation;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Iterator<",
            "+TT;>;ZZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/collections/SlidingWindowKt$windowedIterator$1;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    iput p2, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    iput-object p3, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$iterator:Ljava/util/Iterator;

    iput-boolean p4, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    iput-boolean p5, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$partialWindows:Z

    const/4 v0, 0x2

    invoke-direct {p0, v0, p6}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;

    iget v1, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    iget v2, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    iget-object v3, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$iterator:Ljava/util/Iterator;

    iget-boolean v4, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    iget-boolean v5, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$partialWindows:Z

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;-><init>(IILjava/util/Iterator;ZZLkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlin/sequences/SequenceScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->invoke(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/SequenceScope<",
            "-",
            "Ljava/util/List<",
            "+TT;>;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15
    .param p1, "$result"    # Ljava/lang/Object;

    iget-object v0, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/sequences/SequenceScope;

    .local v0, "$this$iterator":Lkotlin/sequences/SequenceScope;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 24
    iget v2, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_200

    .end local p0    # "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .restart local p0    # "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    :pswitch_16
    iget v1, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    .local v1, "gap":I
    iget v2, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    .local v2, "bufferInitialCapacity":I
    iget-object v3, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lkotlin/collections/RingBuffer;

    .local v3, "buffer":Lkotlin/collections/RingBuffer;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, p0

    goto/16 :goto_1f4

    .end local v1    # "gap":I
    .end local v2    # "bufferInitialCapacity":I
    .end local v3    # "buffer":Lkotlin/collections/RingBuffer;
    :pswitch_24
    iget v2, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    .local v2, "gap":I
    iget v4, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    .local v4, "bufferInitialCapacity":I
    iget-object v5, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlin/collections/RingBuffer;

    .local v5, "buffer":Lkotlin/collections/RingBuffer;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v7, v2

    move-object v2, v1

    move v1, v7

    move-object v8, p0

    move-object v7, v5

    goto/16 :goto_1c2

    .end local v2    # "gap":I
    .end local v4    # "bufferInitialCapacity":I
    .end local v5    # "buffer":Lkotlin/collections/RingBuffer;
    :pswitch_36
    iget v2, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    .restart local v2    # "gap":I
    iget v4, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    .restart local v4    # "bufferInitialCapacity":I
    iget-object v5, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$3:Ljava/lang/Object;

    .local v5, "e":Ljava/lang/Object;
    iget-object v6, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    check-cast v6, Ljava/util/Iterator;

    iget-object v7, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlin/collections/RingBuffer;

    .local v7, "buffer":Lkotlin/collections/RingBuffer;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, p0

    goto/16 :goto_182

    .end local v2    # "gap":I
    .end local v4    # "bufferInitialCapacity":I
    .end local v5    # "e":Ljava/lang/Object;
    .end local v7    # "buffer":Lkotlin/collections/RingBuffer;
    :pswitch_4a
    iget v1, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$2:I

    .local v1, "skip":I
    iget v2, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    .restart local v2    # "gap":I
    iget v3, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    .local v3, "bufferInitialCapacity":I
    iget-object v4, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    .local v4, "buffer":Ljava/util/ArrayList;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, p0

    goto/16 :goto_121

    .end local v1    # "skip":I
    .end local v2    # "gap":I
    .end local v3    # "bufferInitialCapacity":I
    .end local v4    # "buffer":Ljava/util/ArrayList;
    :pswitch_5a
    iget v2, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$2:I

    .local v2, "skip":I
    iget v4, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    .local v4, "gap":I
    iget v5, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    .local v5, "bufferInitialCapacity":I
    iget-object v6, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$3:Ljava/lang/Object;

    .local v6, "e":Ljava/lang/Object;
    iget-object v7, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    check-cast v7, Ljava/util/Iterator;

    iget-object v8, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    .local v8, "buffer":Ljava/util/ArrayList;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v9, v8

    move-object v8, p0

    goto/16 :goto_d0

    .end local v2    # "skip":I
    .end local v4    # "gap":I
    .end local v5    # "bufferInitialCapacity":I
    .end local v6    # "e":Ljava/lang/Object;
    .end local v8    # "buffer":Ljava/util/ArrayList;
    :pswitch_71
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 25
    iget v2, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    const/16 v4, 0x400

    invoke-static {v2, v4}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v2

    .line 26
    .local v2, "bufferInitialCapacity":I
    iget v4, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    iget v5, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    sub-int/2addr v4, v5

    .line 27
    .restart local v4    # "gap":I
    if-ltz v4, :cond_125

    .line 28
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    .local v5, "buffer":Ljava/util/ArrayList;
    const/4 v6, 0x0

    .line 30
    .local v6, "skip":I
    iget-object v7, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$iterator:Ljava/util/Iterator;

    move v8, v2

    move-object v2, v1

    move v1, v6

    move-object v6, v5

    move v5, v8

    move-object v8, p0

    .end local v2    # "bufferInitialCapacity":I
    .end local p0    # "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    .restart local v1    # "skip":I
    .local v5, "bufferInitialCapacity":I
    .local v6, "buffer":Ljava/util/ArrayList;
    .local v8, "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    :cond_91
    :goto_91
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 31
    .local v9, "e":Ljava/lang/Object;
    if-lez v1, :cond_a0

    add-int/lit8 v1, v1, -0x1

    goto :goto_91

    .line 32
    :cond_a0
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    iget v11, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    if-ne v10, v11, :cond_91

    .line 34
    move-object v10, v8

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput-object v0, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    iput-object v6, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    iput-object v7, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$3:Ljava/lang/Object;

    iput v5, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    iput v4, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    iput v1, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$2:I

    const/4 v11, 0x1

    iput v11, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    invoke-virtual {v0, v6, v10}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v2, :cond_ca

    .line 24
    return-object v2

    .line 34
    :cond_ca
    move-object v12, v2

    move v2, v1

    move-object v1, v12

    move-object v12, v9

    move-object v9, v6

    move-object v6, v12

    .line 35
    .end local v1    # "skip":I
    .local v2, "skip":I
    .local v6, "e":Ljava/lang/Object;
    .local v9, "buffer":Ljava/util/ArrayList;
    :goto_d0
    iget-boolean v10, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    if-eqz v10, :cond_d8

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    goto :goto_e0

    :cond_d8
    new-instance v10, Ljava/util/ArrayList;

    iget v11, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    move-object v9, v10

    .line 36
    :goto_e0
    move v2, v4

    move v6, v2

    move-object v2, v1

    move v1, v6

    move-object v6, v9

    .end local v6    # "e":Ljava/lang/Object;
    goto :goto_91

    .line 39
    .end local v2    # "skip":I
    .end local v9    # "buffer":Ljava/util/ArrayList;
    .restart local v1    # "skip":I
    .local v6, "buffer":Ljava/util/ArrayList;
    :cond_e6
    move-object v7, v6

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1fc

    .line 40
    iget-boolean v7, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$partialWindows:Z

    if-nez v7, :cond_fb

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget v9, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    if-ne v7, v9, :cond_1fc

    :cond_fb
    move-object v7, v8

    check-cast v7, Lkotlin/coroutines/Continuation;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    iput-object v3, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    iput-object v3, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$3:Ljava/lang/Object;

    iput v5, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    iput v4, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    iput v1, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$2:I

    const/4 v3, 0x2

    iput v3, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    invoke-virtual {v0, v6, v7}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_11e

    .line 24
    return-object v2

    .line 40
    :cond_11e
    move v2, v4

    move v3, v5

    move-object v4, v6

    .end local v5    # "bufferInitialCapacity":I
    .end local v6    # "buffer":Ljava/util/ArrayList;
    .local v2, "gap":I
    .restart local v3    # "bufferInitialCapacity":I
    .local v4, "buffer":Ljava/util/ArrayList;
    :goto_121
    move v4, v2

    move v5, v3

    goto/16 :goto_1fc

    .line 43
    .end local v1    # "skip":I
    .end local v3    # "bufferInitialCapacity":I
    .end local v8    # "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    .local v2, "bufferInitialCapacity":I
    .local v4, "gap":I
    :cond_125
    new-instance v5, Lkotlin/collections/RingBuffer;

    invoke-direct {v5, v2}, Lkotlin/collections/RingBuffer;-><init>(I)V

    .line 44
    .local v5, "buffer":Lkotlin/collections/RingBuffer;
    iget-object v6, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$iterator:Ljava/util/Iterator;

    move v7, v4

    move v4, v2

    move v2, v7

    move-object v8, p0

    move-object v7, v5

    .end local v5    # "buffer":Lkotlin/collections/RingBuffer;
    .local v2, "gap":I
    .local v4, "bufferInitialCapacity":I
    .restart local v7    # "buffer":Lkotlin/collections/RingBuffer;
    .restart local v8    # "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    :cond_131
    :goto_131
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_188

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 45
    .local v5, "e":Ljava/lang/Object;
    invoke-virtual {v7, v5}, Lkotlin/collections/RingBuffer;->add(Ljava/lang/Object;)V

    .line 46
    invoke-virtual {v7}, Lkotlin/collections/RingBuffer;->isFull()Z

    move-result v9

    if-eqz v9, :cond_131

    .line 47
    invoke-virtual {v7}, Lkotlin/collections/RingBuffer;->size()I

    move-result v9

    iget v10, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    if-ge v9, v10, :cond_153

    iget v9, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    invoke-virtual {v7, v9}, Lkotlin/collections/RingBuffer;->expanded(I)Lkotlin/collections/RingBuffer;

    move-result-object v7

    goto :goto_131

    .line 49
    :cond_153
    iget-boolean v9, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    if-eqz v9, :cond_15b

    move-object v9, v7

    check-cast v9, Ljava/util/List;

    goto :goto_165

    :cond_15b
    new-instance v9, Ljava/util/ArrayList;

    move-object v10, v7

    check-cast v10, Ljava/util/Collection;

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v9, Ljava/util/List;

    :goto_165
    move-object v10, v8

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput-object v0, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    iput-object v7, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    iput-object v6, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$3:Ljava/lang/Object;

    iput v4, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    iput v2, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    const/4 v11, 0x3

    iput v11, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    invoke-virtual {v0, v9, v10}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v1, :cond_182

    .line 24
    return-object v1

    .line 50
    :cond_182
    :goto_182
    iget v9, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    invoke-virtual {v7, v9}, Lkotlin/collections/RingBuffer;->removeFirst(I)V

    .end local v5    # "e":Ljava/lang/Object;
    goto :goto_131

    .line 53
    :cond_188
    iget-boolean v5, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$partialWindows:Z

    if-eqz v5, :cond_1fa

    move v12, v2

    move-object v2, v1

    move v1, v12

    .line 54
    .end local v2    # "gap":I
    .local v1, "gap":I
    :goto_18f
    invoke-virtual {v7}, Lkotlin/collections/RingBuffer;->size()I

    move-result v5

    iget v6, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    if-le v5, v6, :cond_1c8

    .line 55
    iget-boolean v5, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    if-eqz v5, :cond_19f

    move-object v5, v7

    check-cast v5, Ljava/util/List;

    goto :goto_1a9

    :cond_19f
    new-instance v5, Ljava/util/ArrayList;

    move-object v6, v7

    check-cast v6, Ljava/util/Collection;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v5, Ljava/util/List;

    :goto_1a9
    move-object v6, v8

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v0, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    iput-object v7, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    iput-object v3, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    iput-object v3, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$3:Ljava/lang/Object;

    iput v4, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    iput v1, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    const/4 v9, 0x4

    iput v9, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    invoke-virtual {v0, v5, v6}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_1c2

    .line 24
    return-object v2

    .line 56
    :cond_1c2
    :goto_1c2
    iget v5, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    invoke-virtual {v7, v5}, Lkotlin/collections/RingBuffer;->removeFirst(I)V

    goto :goto_18f

    .line 58
    :cond_1c8
    move-object v5, v7

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1f7

    move-object v5, v8

    check-cast v5, Lkotlin/coroutines/Continuation;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    iput-object v3, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    iput-object v3, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$3:Ljava/lang/Object;

    iput v4, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    iput v1, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    const/4 v3, 0x5

    iput v3, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    invoke-virtual {v0, v7, v5}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1f2

    .line 24
    return-object v2

    .line 58
    :cond_1f2
    move v2, v4

    move-object v3, v7

    .line 61
    .end local v4    # "bufferInitialCapacity":I
    .end local v7    # "buffer":Lkotlin/collections/RingBuffer;
    .local v2, "bufferInitialCapacity":I
    .local v3, "buffer":Lkotlin/collections/RingBuffer;
    :goto_1f4
    move v4, v1

    move v5, v2

    goto :goto_1fc

    .line 58
    .end local v2    # "bufferInitialCapacity":I
    .end local v3    # "buffer":Lkotlin/collections/RingBuffer;
    .restart local v4    # "bufferInitialCapacity":I
    .restart local v7    # "buffer":Lkotlin/collections/RingBuffer;
    :cond_1f7
    move v5, v4

    move v4, v1

    goto :goto_1fc

    .line 53
    .end local v1    # "gap":I
    .local v2, "gap":I
    :cond_1fa
    move v5, v4

    move v4, v2

    .line 61
    .end local v2    # "gap":I
    .end local v7    # "buffer":Lkotlin/collections/RingBuffer;
    .local v4, "gap":I
    .local v5, "bufferInitialCapacity":I
    :cond_1fc
    :goto_1fc
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_200
    .packed-switch 0x0
        :pswitch_71
        :pswitch_5a
        :pswitch_4a
        :pswitch_36
        :pswitch_24
        :pswitch_16
    .end packed-switch
.end method

###### Class kotlin.collections.SlidingWindowKt$windowedSequence$$inlined$Sequence$1 (kotlin.collections.SlidingWindowKt$windowedSequence$$inlined$Sequence$1)
.class public final Lkotlin/collections/SlidingWindowKt$windowedSequence$$inlined$Sequence$1;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Lkotlin/sequences/Sequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/collections/SlidingWindowKt;->windowedSequence(Lkotlin/sequences/Sequence;IIZZ)Lkotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/sequences/Sequence<",
        "Ljava/util/List<",
        "+TT;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sequences.kt\nkotlin/sequences/SequencesKt__SequencesKt$Sequence$1\n+ 2 SlidingWindow.kt\nkotlin/collections/SlidingWindowKt\n*L\n1#1,731:1\n19#2:732\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010(\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u000f\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003H\u0096\u0002\u00a8\u0006\u0004\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlin/sequences/SequencesKt__SequencesKt$Sequence$1",
        "Lkotlin/sequences/Sequence;",
        "iterator",
        "",
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
.field final synthetic $partialWindows$inlined:Z

.field final synthetic $reuseBuffer$inlined:Z

.field final synthetic $size$inlined:I

.field final synthetic $step$inlined:I

.field final synthetic $this_windowedSequence$inlined:Lkotlin/sequences/Sequence;


# direct methods
.method public constructor <init>(Lkotlin/sequences/Sequence;IIZZ)V
    .registers 6

    iput-object p1, p0, Lkotlin/collections/SlidingWindowKt$windowedSequence$$inlined$Sequence$1;->$this_windowedSequence$inlined:Lkotlin/sequences/Sequence;

    iput p2, p0, Lkotlin/collections/SlidingWindowKt$windowedSequence$$inlined$Sequence$1;->$size$inlined:I

    iput p3, p0, Lkotlin/collections/SlidingWindowKt$windowedSequence$$inlined$Sequence$1;->$step$inlined:I

    iput-boolean p4, p0, Lkotlin/collections/SlidingWindowKt$windowedSequence$$inlined$Sequence$1;->$partialWindows$inlined:Z

    iput-boolean p5, p0, Lkotlin/collections/SlidingWindowKt$windowedSequence$$inlined$Sequence$1;->$reuseBuffer$inlined:Z

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/List<",
            "+TT;>;>;"
        }
    .end annotation

    .line 23
    const/4 v0, 0x0

    .line 732
    .local v0, "$i$a$-Sequence-SlidingWindowKt$windowedSequence$1":I
    iget-object v1, p0, Lkotlin/collections/SlidingWindowKt$windowedSequence$$inlined$Sequence$1;->$this_windowedSequence$inlined:Lkotlin/sequences/Sequence;

    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget v2, p0, Lkotlin/collections/SlidingWindowKt$windowedSequence$$inlined$Sequence$1;->$size$inlined:I

    iget v3, p0, Lkotlin/collections/SlidingWindowKt$windowedSequence$$inlined$Sequence$1;->$step$inlined:I

    iget-boolean v4, p0, Lkotlin/collections/SlidingWindowKt$windowedSequence$$inlined$Sequence$1;->$partialWindows$inlined:Z

    iget-boolean v5, p0, Lkotlin/collections/SlidingWindowKt$windowedSequence$$inlined$Sequence$1;->$reuseBuffer$inlined:Z

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/collections/SlidingWindowKt;->windowedIterator(Ljava/util/Iterator;IIZZ)Ljava/util/Iterator;

    move-result-object v0

    .line 23
    .end local v0    # "$i$a$-Sequence-SlidingWindowKt$windowedSequence$1":I
    return-object v0
.end method
