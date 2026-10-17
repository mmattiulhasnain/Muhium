###### Class kotlinx.coroutines.channels.ChannelIterator (kotlinx.coroutines.channels.ChannelIterator)
.class public interface abstract Lkotlinx/coroutines/channels/ChannelIterator;
.super Ljava/lang/Object;
.source "Channel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/channels/ChannelIterator$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008f\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00012\u00020\u0002J\u0011\u0010\u0003\u001a\u00020\u0004H\u00a6B\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0005J\u000e\u0010\u0006\u001a\u00028\u0000H\u00a6\u0002\u00a2\u0006\u0002\u0010\u0007J\u0013\u0010\u0008\u001a\u00028\u0000H\u0097@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0006\u0010\u0005\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\t"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/ChannelIterator;",
        "E",
        "",
        "hasNext",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "next",
        "()Ljava/lang/Object;",
        "next0",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract next()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public abstract synthetic next(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Since 1.3.0, binary compatibility with versions <= 1.2.x"
    .end annotation
.end method

###### Class kotlinx.coroutines.channels.ChannelIterator.DefaultImpls (kotlinx.coroutines.channels.ChannelIterator$DefaultImpls)
.class public final Lkotlinx/coroutines/channels/ChannelIterator$DefaultImpls;
.super Ljava/lang/Object;
.source "Channel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/channels/ChannelIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic next(Lkotlinx/coroutines/channels/ChannelIterator;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Since 1.3.0, binary compatibility with versions <= 1.2.x"
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/channels/ChannelIterator$next0$1;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/ChannelIterator$next0$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelIterator$next0$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget p1, v0, Lkotlinx/coroutines/channels/ChannelIterator$next0$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lkotlinx/coroutines/channels/ChannelIterator$next0$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Lkotlinx/coroutines/channels/ChannelIterator$next0$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/channels/ChannelIterator$next0$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_19
    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelIterator$next0$1;->result:Ljava/lang/Object;

    .local p1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 578
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelIterator$next0$1;->label:I

    packed-switch v2, :pswitch_data_5a

    .line 585
    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p1    # "$result":Ljava/lang/Object;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 578
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p1    # "$result":Ljava/lang/Object;
    :pswitch_2c
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelIterator$next0$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    .local p0, "this":Lkotlinx/coroutines/channels/ChannelIterator;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p1

    goto :goto_44

    .end local p0    # "this":Lkotlinx/coroutines/channels/ChannelIterator;
    :pswitch_35
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 584
    .restart local p0    # "this":Lkotlinx/coroutines/channels/ChannelIterator;
    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelIterator$next0$1;->L$0:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, v0, Lkotlinx/coroutines/channels/ChannelIterator$next0$1;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_44

    .line 578
    return-object v1

    .line 584
    :cond_44
    :goto_44
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 585
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 584
    :cond_51
    new-instance v1, Lkotlinx/coroutines/channels/ClosedReceiveChannelException;

    const-string v2, "Channel was closed"

    invoke-direct {v1, v2}, Lkotlinx/coroutines/channels/ClosedReceiveChannelException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_35
        :pswitch_2c
    .end packed-switch
.end method
