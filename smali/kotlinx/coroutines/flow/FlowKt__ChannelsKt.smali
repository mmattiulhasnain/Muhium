###### Class kotlinx.coroutines.flow.FlowKt__ChannelsKt (kotlinx.coroutines.flow.FlowKt__ChannelsKt)
.class final synthetic Lkotlinx/coroutines/flow/FlowKt__ChannelsKt;
.super Ljava/lang/Object;
.source "Channels.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChannels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/flow/FlowKt__ChannelsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,201:1\n1#2:202\n106#3:203\n*S KotlinDebug\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/flow/FlowKt__ChannelsKt\n*L\n177#1:203\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u001e\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0003H\u0007\u001a\u001c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0005\u001a/\u0010\u0006\u001a\u00020\u0007\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0005H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\n\u001a9\u0010\u000b\u001a\u00020\u0007\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u00052\u0006\u0010\u000c\u001a\u00020\rH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u001a&\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0005\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u0012H\u0007\u001a\u001c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0005\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0014"
    }
    d2 = {
        "asFlow",
        "Lkotlinx/coroutines/flow/Flow;",
        "T",
        "Lkotlinx/coroutines/channels/BroadcastChannel;",
        "consumeAsFlow",
        "Lkotlinx/coroutines/channels/ReceiveChannel;",
        "emitAll",
        "",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "channel",
        "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "emitAllImpl",
        "consume",
        "",
        "emitAllImpl$FlowKt__ChannelsKt",
        "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/channels/ReceiveChannel;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "produceIn",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "receiveAsFlow",
        "kotlinx-coroutines-core"
    }
    k = 0x5
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
    xs = "kotlinx/coroutines/flow/FlowKt"
.end annotation


# direct methods
.method public static final synthetic access$emitAllImpl$FlowKt__ChannelsKt(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/channels/ReceiveChannel;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .param p0, "$receiver"    # Lkotlinx/coroutines/flow/FlowCollector;
    .param p1, "channel"    # Lkotlinx/coroutines/channels/ReceiveChannel;
    .param p2, "consume"    # Z
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt;->emitAllImpl$FlowKt__ChannelsKt(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/channels/ReceiveChannel;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final asFlow(Lkotlinx/coroutines/channels/BroadcastChannel;)Lkotlinx/coroutines/flow/Flow;
    .registers 3
    .param p0, "$this$asFlow"    # Lkotlinx/coroutines/channels/BroadcastChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/BroadcastChannel<",
            "TT;>;)",
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "\'BroadcastChannel\' is obsolete and all corresponding operators are deprecated in the favour of StateFlow and SharedFlow"
    .end annotation

    .line 177
    const/4 v0, 0x0

    .line 203
    .local v0, "$i$f$unsafeFlow":I
    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$asFlow$$inlined$unsafeFlow$1;

    invoke-direct {v1, p0}, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$asFlow$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/channels/BroadcastChannel;)V

    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    .line 179
    .end local v0    # "$i$f$unsafeFlow":I
    return-object v1
.end method

.method public static final consumeAsFlow(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;
    .registers 9
    .param p0, "$this$consumeAsFlow"    # Lkotlinx/coroutines/channels/ReceiveChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TT;>;)",
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation

    .line 111
    new-instance v0, Lkotlinx/coroutines/flow/ChannelAsFlow;

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    .end local p0    # "$this$consumeAsFlow":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v1, "$this$consumeAsFlow":Lkotlinx/coroutines/channels/ReceiveChannel;
    invoke-direct/range {v0 .. v7}, Lkotlinx/coroutines/flow/ChannelAsFlow;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;ZLkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public static final emitAll(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .param p0, "$this$emitAll"    # Lkotlinx/coroutines/flow/FlowCollector;
    .param p1, "channel"    # Lkotlinx/coroutines/channels/ReceiveChannel;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-TT;>;",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 30
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt;->emitAllImpl$FlowKt__ChannelsKt(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/channels/ReceiveChannel;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_c

    return-object v0

    :cond_c
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final emitAllImpl$FlowKt__ChannelsKt(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/channels/ReceiveChannel;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-TT;>;",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TT;>;Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;

    if-eqz v0, :cond_14

    move-object v0, p3

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget p3, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;

    invoke-direct {v0, p3}, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_19
    iget-object p3, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->result:Ljava/lang/Object;

    .local p3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 32
    iget v2, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->label:I

    packed-switch v2, :pswitch_data_d6

    .line 70
    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p3    # "$result":Ljava/lang/Object;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 32
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p3    # "$result":Ljava/lang/Object;
    :pswitch_2c
    iget-boolean p0, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->Z$0:Z

    .local p0, "consume":Z
    const/4 p1, 0x0

    .local p1, "cause":Ljava/lang/Throwable;
    iget-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->L$1:Ljava/lang/Object;

    check-cast p2, Lkotlinx/coroutines/channels/ReceiveChannel;

    .local p2, "channel":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v2, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    .local v2, "$this$emitAllImpl":Lkotlinx/coroutines/flow/FlowCollector;
    :try_start_37
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_43

    move-object v6, p2

    move p2, p0

    move-object p0, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p3

    move-object p3, v6

    goto/16 :goto_c0

    .line 64
    .end local v2    # "$this$emitAllImpl":Lkotlinx/coroutines/flow/FlowCollector;
    :catchall_43
    move-exception v1

    goto/16 :goto_cc

    .line 32
    .end local p0    # "consume":Z
    .end local p1    # "cause":Ljava/lang/Throwable;
    .end local p2    # "channel":Lkotlinx/coroutines/channels/ReceiveChannel;
    :pswitch_46
    const/4 p0, 0x0

    .local p0, "$i$a$-run-FlowKt__ChannelsKt$emitAllImpl$result$1":I
    iget-boolean p1, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->Z$0:Z

    .local p1, "consume":Z
    iget-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->L$1:Ljava/lang/Object;

    check-cast p2, Lkotlinx/coroutines/channels/ReceiveChannel;

    .restart local p2    # "channel":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v2, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    .restart local v2    # "$this$emitAllImpl":Lkotlinx/coroutines/flow/FlowCollector;
    const/4 v3, 0x0

    :try_start_52
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, p3

    check-cast v4, Lkotlinx/coroutines/channels/ChannelResult;

    invoke-virtual {v4}, Lkotlinx/coroutines/channels/ChannelResult;->unbox-impl()Ljava/lang/Object;

    move-result-object v4
    :try_end_5c
    .catchall {:try_start_52 .. :try_end_5c} :catchall_5d

    goto :goto_8b

    .line 64
    .end local v2    # "$this$emitAllImpl":Lkotlinx/coroutines/flow/FlowCollector;
    .end local p0    # "$i$a$-run-FlowKt__ChannelsKt$emitAllImpl$result$1":I
    :catchall_5d
    move-exception v1

    move p0, p1

    move-object p1, v3

    .local v3, "cause":Ljava/lang/Throwable;
    goto/16 :goto_cc

    .line 32
    .end local v3    # "cause":Ljava/lang/Throwable;
    .end local p1    # "consume":Z
    .end local p2    # "channel":Lkotlinx/coroutines/channels/ReceiveChannel;
    :pswitch_62
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 33
    .local p0, "$this$emitAllImpl":Lkotlinx/coroutines/flow/FlowCollector;
    .local p1, "channel":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local p2, "consume":Z
    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->ensureActive(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 39
    const/4 v2, 0x0

    .line 40
    .local v2, "cause":Ljava/lang/Throwable;
    move-object v6, p3

    move-object p3, p1

    move-object p1, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    .line 41
    .end local v2    # "cause":Ljava/lang/Throwable;
    .local v0, "$result":Ljava/lang/Object;
    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    .local p1, "cause":Ljava/lang/Throwable;
    .local p3, "channel":Lkotlinx/coroutines/channels/ReceiveChannel;
    :goto_6f
    nop

    .line 51
    nop

    .line 202
    const/4 v3, 0x0

    .line 51
    .local v3, "$i$a$-run-FlowKt__ChannelsKt$emitAllImpl$result$1":I
    :try_start_72
    iput-object p0, v1, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->L$0:Ljava/lang/Object;

    iput-object p3, v1, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->L$1:Ljava/lang/Object;

    iput-boolean p2, v1, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->Z$0:Z

    const/4 v4, 0x1

    iput v4, v1, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->label:I

    invoke-interface {p3, v1}, Lkotlinx/coroutines/channels/ReceiveChannel;->receiveCatching-JP2dKIU(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_7f
    .catchall {:try_start_72 .. :try_end_7f} :catchall_c5

    if-ne v4, v2, :cond_82

    .line 32
    return-object v2

    .line 51
    :cond_82
    move-object v6, v2

    move-object v2, p0

    move p0, v3

    move-object v3, p1

    move p1, p2

    move-object p2, p3

    move-object p3, v0

    move-object v0, v1

    move-object v1, v6

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$i$a$-run-FlowKt__ChannelsKt$emitAllImpl$result$1":I
    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    .local v2, "$this$emitAllImpl":Lkotlinx/coroutines/flow/FlowCollector;
    .local p0, "$i$a$-run-FlowKt__ChannelsKt$emitAllImpl$result$1":I
    .local p1, "consume":Z
    .local p2, "channel":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local p3, "$result":Ljava/lang/Object;
    :goto_8b
    nop

    .line 52
    .end local p0    # "$i$a$-run-FlowKt__ChannelsKt$emitAllImpl$result$1":I
    .local v3, "cause":Ljava/lang/Throwable;
    .local v4, "result":Ljava/lang/Object;
    :try_start_8c
    invoke-static {v4}, Lkotlinx/coroutines/channels/ChannelResult;->isClosed-impl(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a5

    .line 53
    invoke-static {v4}, Lkotlinx/coroutines/channels/ChannelResult;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0
    :try_end_96
    .catchall {:try_start_8c .. :try_end_96} :catchall_c1

    .end local v4    # "result":Ljava/lang/Object;
    if-nez p0, :cond_a2

    .line 54
    nop

    .line 68
    .end local v2    # "$this$emitAllImpl":Lkotlinx/coroutines/flow/FlowCollector;
    if-eqz p1, :cond_9e

    invoke-static {p2, v3}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    .line 69
    .end local v3    # "cause":Ljava/lang/Throwable;
    .end local p1    # "consume":Z
    .end local p2    # "channel":Lkotlinx/coroutines/channels/ReceiveChannel;
    :cond_9e
    nop

    .line 70
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 202
    .restart local v2    # "$this$emitAllImpl":Lkotlinx/coroutines/flow/FlowCollector;
    .restart local v3    # "cause":Ljava/lang/Throwable;
    .local p0, "it":Ljava/lang/Throwable;
    .restart local p1    # "consume":Z
    .restart local p2    # "channel":Lkotlinx/coroutines/channels/ReceiveChannel;
    :cond_a2
    const/4 v1, 0x0

    .line 53
    .local v1, "$i$a$-let-FlowKt__ChannelsKt$emitAllImpl$2":I
    nop

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "cause":Ljava/lang/Throwable;
    .end local p1    # "consume":Z
    .end local p2    # "channel":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p3    # "$result":Ljava/lang/Object;
    :try_start_a4
    throw p0

    .line 62
    .end local v1    # "$i$a$-let-FlowKt__ChannelsKt$emitAllImpl$2":I
    .end local p0    # "it":Ljava/lang/Throwable;
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "cause":Ljava/lang/Throwable;
    .restart local v4    # "result":Ljava/lang/Object;
    .restart local p1    # "consume":Z
    .restart local p2    # "channel":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local p3    # "$result":Ljava/lang/Object;
    :cond_a5
    invoke-static {v4}, Lkotlinx/coroutines/channels/ChannelResult;->getOrThrow-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iput-object v2, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->L$1:Ljava/lang/Object;

    iput-boolean p1, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->Z$0:Z

    const/4 v5, 0x2

    iput v5, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->label:I

    invoke-interface {v2, p0, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_b6
    .catchall {:try_start_a4 .. :try_end_b6} :catchall_c1

    .end local v4    # "result":Ljava/lang/Object;
    if-ne p0, v1, :cond_b9

    .line 32
    return-object v1

    .line 62
    :cond_b9
    move-object p0, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p3

    move-object p3, p2

    move p2, p1

    move-object p1, v3

    .end local v2    # "$this$emitAllImpl":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v3    # "cause":Ljava/lang/Throwable;
    .local v0, "$result":Ljava/lang/Object;
    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    .local p0, "$this$emitAllImpl":Lkotlinx/coroutines/flow/FlowCollector;
    .local p1, "cause":Ljava/lang/Throwable;
    .local p2, "consume":Z
    .local p3, "channel":Lkotlinx/coroutines/channels/ReceiveChannel;
    :goto_c0
    goto :goto_6f

    .line 64
    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p0    # "$this$emitAllImpl":Lkotlinx/coroutines/flow/FlowCollector;
    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "cause":Ljava/lang/Throwable;
    .local p1, "consume":Z
    .local p2, "channel":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local p3, "$result":Ljava/lang/Object;
    :catchall_c1
    move-exception v1

    move p0, p1

    move-object p1, v3

    goto :goto_cc

    .end local v3    # "cause":Ljava/lang/Throwable;
    .local v0, "$result":Ljava/lang/Object;
    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .local p1, "cause":Ljava/lang/Throwable;
    .local p2, "consume":Z
    .local p3, "channel":Lkotlinx/coroutines/channels/ReceiveChannel;
    :catchall_c5
    move-exception p0

    move-object v6, v1

    move-object v1, p0

    move p0, p2

    move-object p2, p3

    move-object p3, v0

    move-object v0, v6

    .line 65
    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    .local v1, "e":Ljava/lang/Throwable;
    .local p0, "consume":Z
    .local p2, "channel":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local p3, "$result":Ljava/lang/Object;
    :goto_cc
    move-object p1, v1

    .line 66
    nop

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p0    # "consume":Z
    .end local p1    # "cause":Ljava/lang/Throwable;
    .end local p2    # "channel":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p3    # "$result":Ljava/lang/Object;
    :try_start_ce
    throw v1
    :try_end_cf
    .catchall {:try_start_ce .. :try_end_cf} :catchall_cf

    .line 67
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p0    # "consume":Z
    .restart local p1    # "cause":Ljava/lang/Throwable;
    .restart local p2    # "channel":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local p3    # "$result":Ljava/lang/Object;
    :catchall_cf
    move-exception v1

    .line 68
    if-eqz p0, :cond_d5

    invoke-static {p2, p1}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    .end local p0    # "consume":Z
    .end local p1    # "cause":Ljava/lang/Throwable;
    .end local p2    # "channel":Lkotlinx/coroutines/channels/ReceiveChannel;
    :cond_d5
    throw v1

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_62
        :pswitch_46
        :pswitch_2c
    .end packed-switch
.end method

.method public static final produceIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .registers 3
    .param p0, "$this$produceIn"    # Lkotlinx/coroutines/flow/Flow;
    .param p1, "scope"    # Lkotlinx/coroutines/CoroutineScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+TT;>;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "TT;>;"
        }
    .end annotation

    .line 200
    invoke-static {p0}, Lkotlinx/coroutines/flow/internal/ChannelFlowKt;->asChannelFlow(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelFlow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/flow/internal/ChannelFlow;->produceImpl(Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object v0

    return-object v0
.end method

.method public static final receiveAsFlow(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;
    .registers 9
    .param p0, "$this$receiveAsFlow"    # Lkotlinx/coroutines/channels/ReceiveChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TT;>;)",
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation

    .line 90
    new-instance v0, Lkotlinx/coroutines/flow/ChannelAsFlow;

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    .end local p0    # "$this$receiveAsFlow":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v1, "$this$receiveAsFlow":Lkotlinx/coroutines/channels/ReceiveChannel;
    invoke-direct/range {v0 .. v7}, Lkotlinx/coroutines/flow/ChannelAsFlow;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;ZLkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

###### Class kotlinx.coroutines.flow.FlowKt__ChannelsKt$asFlow$$inlined$unsafeFlow$1 (kotlinx.coroutines.flow.FlowKt__ChannelsKt$asFlow$$inlined$unsafeFlow$1)
.class public final Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$asFlow$$inlined$unsafeFlow$1;
.super Ljava/lang/Object;
.source "SafeCollector.common.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__ChannelsKt;->asFlow(Lkotlinx/coroutines/channels/BroadcastChannel;)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/Flow<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Channels.kt\nkotlinx/coroutines/flow/FlowKt__ChannelsKt\n*L\n1#1,112:1\n178#2,2:113\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u001f\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0006\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0007\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1",
        "Lkotlinx/coroutines/flow/Flow;",
        "collect",
        "",
        "collector",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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


# instance fields
.field final synthetic $this_asFlow$inlined:Lkotlinx/coroutines/channels/BroadcastChannel;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/BroadcastChannel;)V
    .registers 2

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$asFlow$$inlined$unsafeFlow$1;->$this_asFlow$inlined:Lkotlinx/coroutines/channels/BroadcastChannel;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8
    .param p1, "collector"    # Lkotlinx/coroutines/flow/FlowCollector;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 108
    move-object v0, p1

    .local v0, "$this$asFlow_u24lambda_u2d2":Lkotlinx/coroutines/flow/FlowCollector;
    move-object v1, p2

    .local v1, "$completion":Lkotlin/coroutines/Continuation;
    const/4 v2, 0x0

    .line 113
    .local v2, "$i$a$-unsafeFlow-FlowKt__ChannelsKt$asFlow$1":I
    iget-object v3, p0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$asFlow$$inlined$unsafeFlow$1;->$this_asFlow$inlined:Lkotlinx/coroutines/channels/BroadcastChannel;

    invoke-interface {v3}, Lkotlinx/coroutines/channels/BroadcastChannel;->openSubscription()Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object v3

    invoke-static {v0, v3, p2}, Lkotlinx/coroutines/flow/FlowKt;->emitAll(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_14

    return-object v3

    .line 114
    :cond_14
    nop

    .end local v0    # "$this$asFlow_u24lambda_u2d2":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v1    # "$completion":Lkotlin/coroutines/Continuation;
    .end local v2    # "$i$a$-unsafeFlow-FlowKt__ChannelsKt$asFlow$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 109
    return-object v0
.end method
