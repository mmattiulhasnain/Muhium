###### Class androidx.activity.FullyDrawnReporterKt (androidx.activity.FullyDrawnReporterKt)
.class public final Landroidx/activity/FullyDrawnReporterKt;
.super Ljava/lang/Object;
.source "FullyDrawnReporter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u001a3\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u001c\u0010\u0003\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004H\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0008"
    }
    d2 = {
        "reportWhenComplete",
        "",
        "Landroidx/activity/FullyDrawnReporter;",
        "reporter",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "(Landroidx/activity/FullyDrawnReporter;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "activity_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final reportWhenComplete(Landroidx/activity/FullyDrawnReporter;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/FullyDrawnReporter;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/activity/FullyDrawnReporterKt$reportWhenComplete$1;

    if-eqz v0, :cond_14

    move-object v0, p2

    check-cast v0, Landroidx/activity/FullyDrawnReporterKt$reportWhenComplete$1;

    iget v1, v0, Landroidx/activity/FullyDrawnReporterKt$reportWhenComplete$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget p2, v0, Landroidx/activity/FullyDrawnReporterKt$reportWhenComplete$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Landroidx/activity/FullyDrawnReporterKt$reportWhenComplete$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Landroidx/activity/FullyDrawnReporterKt$reportWhenComplete$1;

    invoke-direct {v0, p2}, Landroidx/activity/FullyDrawnReporterKt$reportWhenComplete$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_19
    iget-object p2, v0, Landroidx/activity/FullyDrawnReporterKt$reportWhenComplete$1;->result:Ljava/lang/Object;

    .local p2, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 176
    iget v2, v0, Landroidx/activity/FullyDrawnReporterKt$reportWhenComplete$1;->label:I

    packed-switch v2, :pswitch_data_66

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p2    # "$result":Ljava/lang/Object;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p2    # "$result":Ljava/lang/Object;
    :pswitch_2c
    const/4 p0, 0x0

    .local p0, "$i$f$reportWhenComplete":I
    iget-object p1, v0, Landroidx/activity/FullyDrawnReporterKt$reportWhenComplete$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/activity/FullyDrawnReporter;

    .local p1, "$this$reportWhenComplete":Landroidx/activity/FullyDrawnReporter;
    :try_start_31
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_56

    .line 187
    :catchall_35
    move-exception v1

    goto :goto_61

    .line 176
    .end local p0    # "$i$f$reportWhenComplete":I
    .end local p1    # "$this$reportWhenComplete":Landroidx/activity/FullyDrawnReporter;
    :pswitch_37
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .local p0, "$this$reportWhenComplete":Landroidx/activity/FullyDrawnReporter;
    .local p1, "reporter":Lkotlin/jvm/functions/Function1;
    const/4 v2, 0x0

    .line 180
    .local v2, "$i$f$reportWhenComplete":I
    invoke-virtual {p0}, Landroidx/activity/FullyDrawnReporter;->addReporter()V

    .line 181
    invoke-virtual {p0}, Landroidx/activity/FullyDrawnReporter;->isFullyDrawnReported()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 182
    .end local p1    # "reporter":Lkotlin/jvm/functions/Function1;
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 184
    .restart local p1    # "reporter":Lkotlin/jvm/functions/Function1;
    :cond_47
    nop

    .line 185
    :try_start_48
    iput-object p0, v0, Landroidx/activity/FullyDrawnReporterKt$reportWhenComplete$1;->L$0:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, v0, Landroidx/activity/FullyDrawnReporterKt$reportWhenComplete$1;->label:I

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_51
    .catchall {:try_start_48 .. :try_end_51} :catchall_5e

    .end local p1    # "reporter":Lkotlin/jvm/functions/Function1;
    if-ne v3, v1, :cond_54

    .line 176
    return-object v1

    .line 185
    :cond_54
    move-object p1, p0

    move p0, v2

    .end local v2    # "$i$f$reportWhenComplete":I
    .local p0, "$i$f$reportWhenComplete":I
    .local p1, "$this$reportWhenComplete":Landroidx/activity/FullyDrawnReporter;
    :goto_56
    nop

    .line 187
    invoke-virtual {p1}, Landroidx/activity/FullyDrawnReporter;->removeReporter()V

    .line 188
    .end local p1    # "$this$reportWhenComplete":Landroidx/activity/FullyDrawnReporter;
    nop

    .line 189
    .restart local p1    # "$this$reportWhenComplete":Landroidx/activity/FullyDrawnReporter;
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 187
    .end local p1    # "$this$reportWhenComplete":Landroidx/activity/FullyDrawnReporter;
    .restart local v2    # "$i$f$reportWhenComplete":I
    .local p0, "$this$reportWhenComplete":Landroidx/activity/FullyDrawnReporter;
    :catchall_5e
    move-exception v1

    move-object p1, p0

    move p0, v2

    .end local v2    # "$i$f$reportWhenComplete":I
    .local p0, "$i$f$reportWhenComplete":I
    .restart local p1    # "$this$reportWhenComplete":Landroidx/activity/FullyDrawnReporter;
    :goto_61
    invoke-virtual {p1}, Landroidx/activity/FullyDrawnReporter;->removeReporter()V

    throw v1

    nop

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_37
        :pswitch_2c
    .end packed-switch
.end method

.method private static final reportWhenComplete$$forInline(Landroidx/activity/FullyDrawnReporter;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .param p0, "$this$reportWhenComplete"    # Landroidx/activity/FullyDrawnReporter;
    .param p1, "reporter"    # Lkotlin/jvm/functions/Function1;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/FullyDrawnReporter;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 180
    .local v0, "$i$f$reportWhenComplete":I
    invoke-virtual {p0}, Landroidx/activity/FullyDrawnReporter;->addReporter()V

    .line 181
    invoke-virtual {p0}, Landroidx/activity/FullyDrawnReporter;->isFullyDrawnReported()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 182
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 184
    :cond_d
    nop

    .line 185
    :try_start_e
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_18

    .line 187
    invoke-virtual {p0}, Landroidx/activity/FullyDrawnReporter;->removeReporter()V

    .line 188
    nop

    .line 189
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 187
    :catchall_18
    move-exception v1

    invoke-virtual {p0}, Landroidx/activity/FullyDrawnReporter;->removeReporter()V

    throw v1
.end method

###### Class androidx.activity.FullyDrawnReporterKt.AnonymousClass1 (androidx.activity.FullyDrawnReporterKt$reportWhenComplete$1)
.class final Landroidx/activity/FullyDrawnReporterKt$reportWhenComplete$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "FullyDrawnReporter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/FullyDrawnReporterKt;->reportWhenComplete(Landroidx/activity/FullyDrawnReporter;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFullyDrawnReporter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FullyDrawnReporter.kt\nandroidx/activity/FullyDrawnReporterKt$reportWhenComplete$1\n*L\n1#1,190:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0xb0
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.activity.FullyDrawnReporterKt"
    f = "FullyDrawnReporter.kt"
    i = {
        0x0
    }
    l = {
        0xb9
    }
    m = "reportWhenComplete"
    n = {
        "$this$reportWhenComplete"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/activity/FullyDrawnReporterKt$reportWhenComplete$1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iput-object p1, p0, Landroidx/activity/FullyDrawnReporterKt$reportWhenComplete$1;->result:Ljava/lang/Object;

    iget v0, p0, Landroidx/activity/FullyDrawnReporterKt$reportWhenComplete$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Landroidx/activity/FullyDrawnReporterKt$reportWhenComplete$1;->label:I

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {v0, v0, v1}, Landroidx/activity/FullyDrawnReporterKt;->reportWhenComplete(Landroidx/activity/FullyDrawnReporter;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
