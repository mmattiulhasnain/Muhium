###### Class kotlinx.coroutines.scheduling.CoroutineScheduler (kotlinx.coroutines.scheduling.CoroutineScheduler)
.class public final Lkotlinx/coroutines/scheduling/CoroutineScheduler;
.super Ljava/lang/Object;
.source "CoroutineScheduler.kt"

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/scheduling/CoroutineScheduler$Companion;,
        Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;,
        Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;,
        Lkotlinx/coroutines/scheduling/CoroutineScheduler$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler\n+ 2 Tasks.kt\nkotlinx/coroutines/scheduling/TasksKt\n+ 3 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 6 Tasks.kt\nkotlinx/coroutines/scheduling/Task\n+ 7 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler$Worker\n*L\n1#1,981:1\n275#1:990\n273#1:991\n273#1:992\n275#1:995\n270#1:997\n271#1,5:998\n281#1:1004\n273#1:1005\n274#1:1006\n273#1:1008\n274#1:1009\n270#1:1010\n278#1:1011\n273#1:1012\n273#1:1015\n274#1:1016\n275#1:1017\n85#2:982\n468#3,2:983\n468#3,2:985\n468#3,2:988\n468#3,2:993\n1#4:987\n20#5:996\n20#5:1007\n82#6:1003\n82#6:1013\n596#7:1014\n*S KotlinDebug\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler\n*L\n271#1:990\n278#1:991\n279#1:992\n288#1:995\n337#1:997\n365#1:998,5\n417#1:1004\n431#1:1005\n432#1:1006\n467#1:1008\n468#1:1009\n474#1:1010\n483#1:1011\n483#1:1012\n562#1:1015\n563#1:1016\n564#1:1017\n118#1:982\n149#1:983,2\n182#1:985,2\n204#1:988,2\n287#1:993,2\n337#1:996\n463#1:1007\n396#1:1003\n501#1:1013\n508#1:1014\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008-\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0008\u0000\u0018\u0000 X2\u00020\\2\u00020]:\u0003XYZB+\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0001\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0018\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0004H\u0086\u0008\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0018\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0004H\u0082\u0008\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0001H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J!\u0010\u001d\u001a\u00020\n2\n\u0010\u001a\u001a\u00060\u0018j\u0002`\u00192\u0006\u0010\u001c\u001a\u00020\u001b\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0018\u0010\u001f\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0004H\u0082\u0008\u00a2\u0006\u0004\u0008\u001f\u0010\u0011J\u0015\u0010!\u001a\u0008\u0018\u00010 R\u00020\u0000H\u0002\u00a2\u0006\u0004\u0008!\u0010\"J\u0010\u0010#\u001a\u00020\u0013H\u0082\u0008\u00a2\u0006\u0004\u0008#\u0010\u0015J\u0010\u0010$\u001a\u00020\u0001H\u0082\u0008\u00a2\u0006\u0004\u0008$\u0010\u0017J-\u0010&\u001a\u00020\u00132\n\u0010\u001a\u001a\u00060\u0018j\u0002`\u00192\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001b2\u0008\u0008\u0002\u0010%\u001a\u00020\u000c\u00a2\u0006\u0004\u0008&\u0010\'J\u001b\u0010)\u001a\u00020\u00132\n\u0010(\u001a\u00060\u0018j\u0002`\u0019H\u0016\u00a2\u0006\u0004\u0008)\u0010*J\u0010\u0010+\u001a\u00020\u0004H\u0082\u0008\u00a2\u0006\u0004\u0008+\u0010,J\u0010\u0010-\u001a\u00020\u0001H\u0082\u0008\u00a2\u0006\u0004\u0008-\u0010\u0017J\u001b\u0010/\u001a\u00020\u00012\n\u0010.\u001a\u00060 R\u00020\u0000H\u0002\u00a2\u0006\u0004\u0008/\u00100J\u0015\u00101\u001a\u0008\u0018\u00010 R\u00020\u0000H\u0002\u00a2\u0006\u0004\u00081\u0010\"J\u0019\u00102\u001a\u00020\u000c2\n\u0010.\u001a\u00060 R\u00020\u0000\u00a2\u0006\u0004\u00082\u00103J)\u00106\u001a\u00020\u00132\n\u0010.\u001a\u00060 R\u00020\u00002\u0006\u00104\u001a\u00020\u00012\u0006\u00105\u001a\u00020\u0001\u00a2\u0006\u0004\u00086\u00107J\u0010\u00108\u001a\u00020\u0004H\u0082\u0008\u00a2\u0006\u0004\u00088\u0010,J\u0015\u00109\u001a\u00020\u00132\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u00089\u0010:J\u0015\u0010<\u001a\u00020\u00132\u0006\u0010;\u001a\u00020\u0004\u00a2\u0006\u0004\u0008<\u0010=J\u0017\u0010?\u001a\u00020\u00132\u0006\u0010>\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008?\u0010@J\r\u0010A\u001a\u00020\u0013\u00a2\u0006\u0004\u0008A\u0010\u0015J\u000f\u0010B\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008B\u0010CJ\u0010\u0010D\u001a\u00020\u000cH\u0082\u0008\u00a2\u0006\u0004\u0008D\u0010EJ\u0019\u0010F\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008F\u0010GJ\u000f\u0010H\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008H\u0010EJ+\u0010I\u001a\u0004\u0018\u00010\n*\u0008\u0018\u00010 R\u00020\u00002\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010%\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008I\u0010JR\u0015\u0010\u0010\u001a\u00020\u00018\u00c2\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008K\u0010\u0017R\u0014\u0010\u0002\u001a\u00020\u00018\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0002\u0010LR\u0015\u0010\u001f\u001a\u00020\u00018\u00c2\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008M\u0010\u0017R\u0014\u0010O\u001a\u00020N8\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008O\u0010PR\u0014\u0010Q\u001a\u00020N8\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008Q\u0010PR\u0014\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010RR\u0011\u0010S\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008S\u0010ER\u0014\u0010\u0003\u001a\u00020\u00018\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010LR\u0014\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010TR\u001e\u0010V\u001a\u000c\u0012\u0008\u0012\u00060 R\u00020\u00000U8\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008V\u0010W\u00a8\u0006["
    }
    d2 = {
        "Lkotlinx/coroutines/scheduling/CoroutineScheduler;",
        "",
        "corePoolSize",
        "maxPoolSize",
        "",
        "idleWorkerKeepAliveNs",
        "",
        "schedulerName",
        "<init>",
        "(IIJLjava/lang/String;)V",
        "Lkotlinx/coroutines/scheduling/Task;",
        "task",
        "",
        "addToGlobalQueue",
        "(Lkotlinx/coroutines/scheduling/Task;)Z",
        "state",
        "availableCpuPermits",
        "(J)I",
        "blockingTasks",
        "",
        "close",
        "()V",
        "createNewWorker",
        "()I",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "block",
        "Lkotlinx/coroutines/scheduling/TaskContext;",
        "taskContext",
        "createTask",
        "(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;)Lkotlinx/coroutines/scheduling/Task;",
        "createdWorkers",
        "Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;",
        "currentWorker",
        "()Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;",
        "decrementBlockingTasks",
        "decrementCreatedWorkers",
        "tailDispatch",
        "dispatch",
        "(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;Z)V",
        "command",
        "execute",
        "(Ljava/lang/Runnable;)V",
        "incrementBlockingTasks",
        "()J",
        "incrementCreatedWorkers",
        "worker",
        "parkedWorkersStackNextIndex",
        "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)I",
        "parkedWorkersStackPop",
        "parkedWorkersStackPush",
        "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)Z",
        "oldIndex",
        "newIndex",
        "parkedWorkersStackTopUpdate",
        "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;II)V",
        "releaseCpuPermit",
        "runSafely",
        "(Lkotlinx/coroutines/scheduling/Task;)V",
        "timeout",
        "shutdown",
        "(J)V",
        "skipUnpark",
        "signalBlockingWork",
        "(Z)V",
        "signalCpuWork",
        "toString",
        "()Ljava/lang/String;",
        "tryAcquireCpuPermit",
        "()Z",
        "tryCreateWorker",
        "(J)Z",
        "tryUnpark",
        "submitToLocalQueue",
        "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;Lkotlinx/coroutines/scheduling/Task;Z)Lkotlinx/coroutines/scheduling/Task;",
        "getAvailableCpuPermits",
        "I",
        "getCreatedWorkers",
        "Lkotlinx/coroutines/scheduling/GlobalQueue;",
        "globalBlockingQueue",
        "Lkotlinx/coroutines/scheduling/GlobalQueue;",
        "globalCpuQueue",
        "J",
        "isTerminated",
        "Ljava/lang/String;",
        "Lkotlinx/coroutines/internal/ResizableAtomicArray;",
        "workers",
        "Lkotlinx/coroutines/internal/ResizableAtomicArray;",
        "Companion",
        "Worker",
        "WorkerState",
        "kotlinx-coroutines-core",
        "Ljava/util/concurrent/Executor;",
        "Ljava/io/Closeable;"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final BLOCKING_MASK:J = 0x3ffffe00000L

.field private static final BLOCKING_SHIFT:I = 0x15

.field private static final CLAIMED:I = 0x0

.field private static final CPU_PERMITS_MASK:J = 0x7ffffc0000000000L

.field private static final CPU_PERMITS_SHIFT:I = 0x2a

.field private static final CREATED_MASK:J = 0x1fffffL

.field public static final Companion:Lkotlinx/coroutines/scheduling/CoroutineScheduler$Companion;

.field public static final MAX_SUPPORTED_POOL_SIZE:I = 0x1ffffe

.field public static final MIN_SUPPORTED_POOL_SIZE:I = 0x1

.field public static final NOT_IN_STACK:Lkotlinx/coroutines/internal/Symbol;

.field private static final PARKED:I = -0x1

.field private static final PARKED_INDEX_MASK:J = 0x1fffffL

.field private static final PARKED_VERSION_INC:J = 0x200000L

.field private static final PARKED_VERSION_MASK:J = -0x200000L

.field private static final TERMINATED:I = 0x1

.field private static final synthetic _isTerminated$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field static final synthetic controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field private static final synthetic parkedWorkersStack$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;


# instance fields
.field private volatile synthetic _isTerminated:I

.field volatile synthetic controlState:J

.field public final corePoolSize:I

.field public final globalBlockingQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

.field public final globalCpuQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

.field public final idleWorkerKeepAliveNs:J

.field public final maxPoolSize:I

.field private volatile synthetic parkedWorkersStack:J

.field public final schedulerName:Ljava/lang/String;

.field public final workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/internal/ResizableAtomicArray<",
            "Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->Companion:Lkotlinx/coroutines/scheduling/CoroutineScheduler$Companion;

    .line 303
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "NOT_IN_STACK"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->NOT_IN_STACK:Lkotlinx/coroutines/internal/Symbol;

    const-string v0, "parkedWorkersStack"

    const-class v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStack$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "controlState"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "_isTerminated"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->_isTerminated$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(IIJLjava/lang/String;)V
    .registers 13
    .param p1, "corePoolSize"    # I
    .param p2, "maxPoolSize"    # I
    .param p3, "idleWorkerKeepAliveNs"    # J
    .param p5, "schedulerName"    # Ljava/lang/String;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->corePoolSize:I

    .line 93
    iput p2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->maxPoolSize:I

    .line 94
    iput-wide p3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->idleWorkerKeepAliveNs:J

    .line 95
    iput-object p5, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->schedulerName:Ljava/lang/String;

    .line 97
    nop

    .line 98
    iget v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->corePoolSize:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_14

    move v0, v2

    goto :goto_15

    :cond_14
    move v0, v1

    :goto_15
    if-eqz v0, :cond_d7

    .line 101
    iget v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->maxPoolSize:I

    iget v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->corePoolSize:I

    if-lt v0, v3, :cond_1f

    move v0, v2

    goto :goto_20

    :cond_1f
    move v0, v1

    :goto_20
    const-string v3, "Max pool size "

    if-eqz v0, :cond_ad

    .line 104
    iget v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->maxPoolSize:I

    const v4, 0x1ffffe

    if-gt v0, v4, :cond_2d

    move v0, v2

    goto :goto_2e

    :cond_2d
    move v0, v1

    :goto_2e
    if-eqz v0, :cond_89

    .line 107
    iget-wide v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->idleWorkerKeepAliveNs:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_3a

    move v0, v2

    goto :goto_3b

    :cond_3a
    move v0, v1

    :goto_3b
    if-eqz v0, :cond_63

    .line 110
    nop

    .line 113
    new-instance v0, Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-direct {v0}, Lkotlinx/coroutines/scheduling/GlobalQueue;-><init>()V

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalCpuQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 115
    new-instance v0, Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-direct {v0}, Lkotlinx/coroutines/scheduling/GlobalQueue;-><init>()V

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalBlockingQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 139
    iput-wide v5, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStack:J

    .line 263
    new-instance v0, Lkotlinx/coroutines/internal/ResizableAtomicArray;

    iget v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->corePoolSize:I

    add-int/2addr v3, v2

    invoke-direct {v0, v3}, Lkotlinx/coroutines/internal/ResizableAtomicArray;-><init>(I)V

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 269
    iget v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->corePoolSize:I

    int-to-long v2, v0

    const/16 v0, 0x2a

    shl-long/2addr v2, v0

    iput-wide v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:J

    .line 297
    iput v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->_isTerminated:I

    .line 91
    return-void

    .line 107
    :cond_63
    const/4 v0, 0x0

    .line 108
    .local v0, "$i$a$-require-CoroutineScheduler$4":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Idle worker keep alive time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->idleWorkerKeepAliveNs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be positive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    .end local v0    # "$i$a$-require-CoroutineScheduler$4":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    :cond_89
    const/4 v0, 0x0

    .line 105
    .local v0, "$i$a$-require-CoroutineScheduler$3":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->maxPoolSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should not exceed maximal supported number of threads 2097150"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    .end local v0    # "$i$a$-require-CoroutineScheduler$3":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_ad
    const/4 v0, 0x0

    .line 102
    .local v0, "$i$a$-require-CoroutineScheduler$2":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->maxPoolSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should be greater than or equals to core pool size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->corePoolSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    .end local v0    # "$i$a$-require-CoroutineScheduler$2":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_d7
    const/4 v0, 0x0

    .line 99
    .local v0, "$i$a$-require-CoroutineScheduler$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Core pool size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->corePoolSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should be at least 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    .end local v0    # "$i$a$-require-CoroutineScheduler$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public synthetic constructor <init>(IIJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 14

    .line 91
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_8

    .line 94
    sget-wide p3, Lkotlinx/coroutines/scheduling/TasksKt;->IDLE_WORKER_KEEP_ALIVE_NS:J

    move-wide v3, p3

    goto :goto_9

    .line 91
    :cond_8
    move-wide v3, p3

    :goto_9
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_11

    .line 95
    const-string p5, "DefaultDispatcher"

    move-object v5, p5

    goto :goto_12

    .line 91
    :cond_11
    move-object v5, p5

    :goto_12
    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;-><init>(IIJLjava/lang/String;)V

    .line 965
    return-void
.end method

.method private final addToGlobalQueue(Lkotlinx/coroutines/scheduling/Task;)Z
    .registers 6
    .param p1, "task"    # Lkotlinx/coroutines/scheduling/Task;

    .line 118
    move-object v0, p1

    .local v0, "$this$isBlocking$iv":Lkotlinx/coroutines/scheduling/Task;
    const/4 v1, 0x0

    .line 982
    .local v1, "$i$f$isBlocking":I
    iget-object v2, v0, Lkotlinx/coroutines/scheduling/Task;->taskContext:Lkotlinx/coroutines/scheduling/TaskContext;

    invoke-interface {v2}, Lkotlinx/coroutines/scheduling/TaskContext;->getTaskMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    goto :goto_d

    :cond_c
    const/4 v3, 0x0

    .line 118
    .end local v0    # "$this$isBlocking$iv":Lkotlinx/coroutines/scheduling/Task;
    .end local v1    # "$i$f$isBlocking":I
    :goto_d
    if-eqz v3, :cond_16

    .line 119
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalBlockingQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/scheduling/GlobalQueue;->addLast(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1c

    .line 121
    :cond_16
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalCpuQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/scheduling/GlobalQueue;->addLast(Ljava/lang/Object;)Z

    move-result v0

    .line 118
    :goto_1c
    return v0
.end method

.method private final blockingTasks(J)I
    .registers 7
    .param p1, "state"    # J

    const/4 v0, 0x0

    .line 274
    .local v0, "$i$f$blockingTasks":I
    const-wide v1, 0x3ffffe00000L

    and-long/2addr v1, p1

    const/16 v3, 0x15

    shr-long/2addr v1, v3

    long-to-int v1, v1

    return v1
.end method

.method private final createNewWorker()I
    .registers 24

    .line 463
    move-object/from16 v1, p0

    iget-object v2, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .local v2, "lock$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1007
    .local v3, "$i$f$synchronized":I
    monitor-enter v2

    const/4 v0, 0x0

    .line 465
    .local v0, "$i$a$-synchronized-CoroutineScheduler$createNewWorker$1":I
    :try_start_7
    invoke-virtual {v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->isTerminated()Z

    move-result v4
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_9c

    if-eqz v4, :cond_10

    .end local v0    # "$i$a$-synchronized-CoroutineScheduler$createNewWorker$1":I
    .end local v2    # "lock$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$synchronized":I
    monitor-exit v2

    const/4 v0, -0x1

    return v0

    .line 466
    .restart local v0    # "$i$a$-synchronized-CoroutineScheduler$createNewWorker$1":I
    .restart local v2    # "lock$iv":Ljava/lang/Object;
    .restart local v3    # "$i$f$synchronized":I
    :cond_10
    :try_start_10
    iget-wide v4, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:J

    .line 467
    .local v4, "state":J
    move-object/from16 v6, p0

    .local v6, "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v7, 0x0

    .line 1008
    .local v7, "$i$f$createdWorkers":I
    const-wide/32 v8, 0x1fffff

    and-long v10, v4, v8

    long-to-int v6, v10

    .line 467
    .end local v6    # "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .end local v7    # "$i$f$createdWorkers":I
    nop

    .line 468
    .local v6, "created":I
    move-object/from16 v7, p0

    .local v7, "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v10, 0x0

    .line 1009
    .local v10, "$i$f$blockingTasks":I
    const-wide v11, 0x3ffffe00000L

    and-long/2addr v11, v4

    const/16 v13, 0x15

    shr-long/2addr v11, v13

    long-to-int v7, v11

    .line 468
    .end local v7    # "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .end local v10    # "$i$f$blockingTasks":I
    nop

    .line 469
    .local v7, "blocking":I
    sub-int v10, v6, v7

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v10

    .line 471
    .local v10, "cpuWorkers":I
    iget v12, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->corePoolSize:I
    :try_end_33
    .catchall {:try_start_10 .. :try_end_33} :catchall_9c

    if-lt v10, v12, :cond_37

    .end local v0    # "$i$a$-synchronized-CoroutineScheduler$createNewWorker$1":I
    .end local v2    # "lock$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$synchronized":I
    .end local v4    # "state":J
    .end local v6    # "created":I
    .end local v7    # "blocking":I
    .end local v10    # "cpuWorkers":I
    monitor-exit v2

    return v11

    .line 472
    .restart local v0    # "$i$a$-synchronized-CoroutineScheduler$createNewWorker$1":I
    .restart local v2    # "lock$iv":Ljava/lang/Object;
    .restart local v3    # "$i$f$synchronized":I
    .restart local v4    # "state":J
    .restart local v6    # "created":I
    .restart local v7    # "blocking":I
    .restart local v10    # "cpuWorkers":I
    :cond_37
    :try_start_37
    iget v12, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->maxPoolSize:I
    :try_end_39
    .catchall {:try_start_37 .. :try_end_39} :catchall_9c

    if-lt v6, v12, :cond_3d

    .end local v0    # "$i$a$-synchronized-CoroutineScheduler$createNewWorker$1":I
    .end local v2    # "lock$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$synchronized":I
    .end local v4    # "state":J
    .end local v6    # "created":I
    .end local v7    # "blocking":I
    .end local v10    # "cpuWorkers":I
    monitor-exit v2

    return v11

    .line 474
    .restart local v0    # "$i$a$-synchronized-CoroutineScheduler$createNewWorker$1":I
    .restart local v2    # "lock$iv":Ljava/lang/Object;
    .restart local v3    # "$i$f$synchronized":I
    .restart local v4    # "state":J
    .restart local v6    # "created":I
    .restart local v7    # "blocking":I
    .restart local v10    # "cpuWorkers":I
    :cond_3d
    move-object/from16 v12, p0

    .local v12, "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v13, 0x0

    .line 1010
    .local v13, "$i$f$getCreatedWorkers":I
    :try_start_40
    iget-wide v14, v12, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:J

    and-long/2addr v14, v8

    long-to-int v12, v14

    .line 474
    .end local v12    # "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .end local v13    # "$i$f$getCreatedWorkers":I
    const/4 v13, 0x1

    add-int/2addr v12, v13

    .line 475
    .local v12, "newIndex":I
    if-lez v12, :cond_52

    iget-object v14, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    invoke-virtual {v14, v12}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_52

    move v14, v13

    goto :goto_53

    :cond_52
    move v14, v11

    :goto_53
    if-eqz v14, :cond_90

    .line 481
    new-instance v14, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    invoke-direct {v14, v1, v12}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;-><init>(Lkotlinx/coroutines/scheduling/CoroutineScheduler;I)V

    .line 482
    .local v14, "worker":Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    iget-object v15, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    invoke-virtual {v15, v12, v14}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->setSynchronized(ILjava/lang/Object;)V

    .line 483
    move-object/from16 v15, p0

    .local v15, "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/16 v16, 0x0

    .line 1011
    .local v16, "$i$f$incrementCreatedWorkers":I
    move-wide/from16 v17, v8

    sget-object v8, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v8, v15}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    move-result-wide v8

    .local v8, "state$iv$iv":J
    move-object/from16 v19, v15

    .local v19, "this_$iv$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/16 v20, 0x0

    .line 1012
    .local v20, "$i$f$createdWorkers":I
    move/from16 v21, v13

    move-object/from16 v22, v14

    .end local v14    # "worker":Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    .local v22, "worker":Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    and-long v13, v8, v17

    long-to-int v8, v13

    .line 1011
    .end local v8    # "state$iv$iv":J
    .end local v19    # "this_$iv$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .end local v20    # "$i$f$createdWorkers":I
    nop

    .end local v15    # "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .end local v16    # "$i$f$incrementCreatedWorkers":I
    if-ne v12, v8, :cond_7b

    move/from16 v11, v21

    .line 483
    :cond_7b
    if-eqz v11, :cond_84

    .line 484
    invoke-virtual/range {v22 .. v22}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->start()V
    :try_end_80
    .catchall {:try_start_40 .. :try_end_80} :catchall_9c

    .line 485
    add-int/lit8 v10, v10, 0x1

    .end local v0    # "$i$a$-synchronized-CoroutineScheduler$createNewWorker$1":I
    .end local v2    # "lock$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$synchronized":I
    .end local v4    # "state":J
    .end local v6    # "created":I
    .end local v7    # "blocking":I
    .end local v10    # "cpuWorkers":I
    .end local v12    # "newIndex":I
    .end local v22    # "worker":Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    monitor-exit v2

    return v10

    .line 483
    .restart local v0    # "$i$a$-synchronized-CoroutineScheduler$createNewWorker$1":I
    .restart local v2    # "lock$iv":Ljava/lang/Object;
    .restart local v3    # "$i$f$synchronized":I
    .restart local v4    # "state":J
    .restart local v6    # "created":I
    .restart local v7    # "blocking":I
    .restart local v10    # "cpuWorkers":I
    .restart local v12    # "newIndex":I
    .restart local v22    # "worker":Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    :cond_84
    :try_start_84
    const-string v8, "Failed requirement."

    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "lock$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$synchronized":I
    throw v9

    .line 475
    .end local v22    # "worker":Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    .restart local v2    # "lock$iv":Ljava/lang/Object;
    .restart local v3    # "$i$f$synchronized":I
    :cond_90
    const-string v8, "Failed requirement."

    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "lock$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$synchronized":I
    throw v9
    :try_end_9c
    .catchall {:try_start_84 .. :try_end_9c} :catchall_9c

    .line 485
    .end local v0    # "$i$a$-synchronized-CoroutineScheduler$createNewWorker$1":I
    .end local v4    # "state":J
    .end local v6    # "created":I
    .end local v7    # "blocking":I
    .end local v10    # "cpuWorkers":I
    .end local v12    # "newIndex":I
    .restart local v2    # "lock$iv":Ljava/lang/Object;
    .restart local v3    # "$i$f$synchronized":I
    :catchall_9c
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private final createdWorkers(J)I
    .registers 6
    .param p1, "state"    # J

    const/4 v0, 0x0

    .line 273
    .local v0, "$i$f$createdWorkers":I
    const-wide/32 v1, 0x1fffff

    and-long/2addr v1, p1

    long-to-int v1, v1

    return v1
.end method

.method private final currentWorker()Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    .registers 7

    .line 508
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    check-cast v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    goto :goto_d

    :cond_c
    move-object v0, v2

    :goto_d
    if-eqz v0, :cond_1e

    move-object v1, v0

    .line 987
    .local v1, "it":Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    const/4 v3, 0x0

    .line 508
    .local v3, "$i$a$-takeIf-CoroutineScheduler$currentWorker$1":I
    move-object v4, v1

    .local v4, "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    const/4 v5, 0x0

    .line 1014
    .local v5, "$i$f$getScheduler":I
    invoke-static {v4}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->access$getThis$0$p(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    move-result-object v4

    .line 508
    .end local v4    # "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    .end local v5    # "$i$f$getScheduler":I
    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .end local v1    # "it":Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    .end local v3    # "$i$a$-takeIf-CoroutineScheduler$currentWorker$1":I
    if-eqz v1, :cond_1e

    move-object v2, v0

    :cond_1e
    return-object v2
.end method

.method private final decrementBlockingTasks()V
    .registers 5

    const/4 v0, 0x0

    .line 284
    .local v0, "$i$f$decrementBlockingTasks":I
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/32 v2, -0x200000

    invoke-virtual {v1, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 285
    return-void
.end method

.method private final decrementCreatedWorkers()I
    .registers 8

    const/4 v0, 0x0

    .line 279
    .local v0, "$i$f$decrementCreatedWorkers":I
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndDecrement(Ljava/lang/Object;)J

    move-result-wide v1

    .local v1, "state$iv":J
    move-object v3, p0

    .local v3, "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v4, 0x0

    .line 992
    .local v4, "$i$f$createdWorkers":I
    const-wide/32 v5, 0x1fffff

    and-long/2addr v5, v1

    long-to-int v1, v5

    .line 279
    .end local v1    # "state$iv":J
    .end local v3    # "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .end local v4    # "$i$f$createdWorkers":I
    return v1
.end method

.method public static synthetic dispatch$default(Lkotlinx/coroutines/scheduling/CoroutineScheduler;Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;ZILjava/lang/Object;)V
    .registers 6

    .line 382
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_6

    sget-object p2, Lkotlinx/coroutines/scheduling/TasksKt;->NonBlockingContext:Lkotlinx/coroutines/scheduling/TaskContext;

    :cond_6
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_b

    const/4 p3, 0x0

    :cond_b
    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->dispatch(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;Z)V

    return-void
.end method

.method private final getAvailableCpuPermits()I
    .registers 9

    const/4 v0, 0x0

    .line 271
    .local v0, "$i$f$getAvailableCpuPermits":I
    iget-wide v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:J

    .local v1, "state$iv":J
    move-object v3, p0

    .local v3, "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v4, 0x0

    .line 990
    .local v4, "$i$f$availableCpuPermits":I
    const-wide v5, 0x7ffffc0000000000L

    and-long/2addr v5, v1

    const/16 v7, 0x2a

    shr-long/2addr v5, v7

    long-to-int v1, v5

    .line 271
    .end local v1    # "state$iv":J
    .end local v3    # "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .end local v4    # "$i$f$availableCpuPermits":I
    return v1
.end method

.method private final getCreatedWorkers()I
    .registers 6

    const/4 v0, 0x0

    .line 270
    .local v0, "$i$f$getCreatedWorkers":I
    iget-wide v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:J

    const-wide/32 v3, 0x1fffff

    and-long/2addr v1, v3

    long-to-int v1, v1

    return v1
.end method

.method private final incrementBlockingTasks()J
    .registers 5

    const/4 v0, 0x0

    .line 281
    .local v0, "$i$f$incrementBlockingTasks":I
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/32 v2, 0x200000

    invoke-virtual {v1, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide v1

    return-wide v1
.end method

.method private final incrementCreatedWorkers()I
    .registers 8

    const/4 v0, 0x0

    .line 278
    .local v0, "$i$f$incrementCreatedWorkers":I
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    move-result-wide v1

    .local v1, "state$iv":J
    move-object v3, p0

    .local v3, "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v4, 0x0

    .line 991
    .local v4, "$i$f$createdWorkers":I
    const-wide/32 v5, 0x1fffff

    and-long/2addr v5, v1

    long-to-int v1, v5

    .line 278
    .end local v1    # "state$iv":J
    .end local v3    # "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .end local v4    # "$i$f$createdWorkers":I
    return v1
.end method

.method private final parkedWorkersStackNextIndex(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)I
    .registers 5
    .param p1, "worker"    # Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    .line 236
    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->getNextParkedWorker()Ljava/lang/Object;

    move-result-object v0

    .line 237
    .local v0, "next":Ljava/lang/Object;
    :goto_4
    nop

    .line 238
    nop

    .line 239
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->NOT_IN_STACK:Lkotlinx/coroutines/internal/Symbol;

    if-ne v0, v1, :cond_c

    const/4 v1, -0x1

    return v1

    .line 240
    :cond_c
    if-nez v0, :cond_10

    const/4 v1, 0x0

    return v1

    .line 242
    :cond_10
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    .line 243
    .local v1, "nextWorker":Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    invoke-virtual {v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->getIndexInArray()I

    move-result v2

    .line 244
    .local v2, "updIndex":I
    if-eqz v2, :cond_1a

    return v2

    .line 246
    :cond_1a
    invoke-virtual {v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->getNextParkedWorker()Ljava/lang/Object;

    move-result-object v0

    .end local v1    # "nextWorker":Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    .end local v2    # "updIndex":I
    goto :goto_4
.end method

.method private final parkedWorkersStackPop()Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    .registers 15

    .line 204
    move-object v0, p0

    .local v0, "$this$loop$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v1, 0x0

    .line 988
    .local v1, "$i$f$loop":I
    :goto_2
    nop

    .line 989
    iget-wide v4, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStack:J

    .local v4, "top":J
    const/4 v8, 0x0

    .line 205
    .local v8, "$i$a$-loop-CoroutineScheduler$parkedWorkersStackPop$1":I
    const-wide/32 v2, 0x1fffff

    and-long/2addr v2, v4

    long-to-int v9, v2

    .line 206
    .local v9, "index":I
    iget-object v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    invoke-virtual {v2, v9}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    if-nez v2, :cond_17

    const/4 v2, 0x0

    return-object v2

    :cond_17
    move-object v10, v2

    .line 207
    .local v10, "worker":Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    const-wide/32 v2, 0x200000

    add-long/2addr v2, v4

    const-wide/32 v6, -0x200000

    and-long v11, v2, v6

    .line 208
    .local v11, "updVersion":J
    invoke-direct {p0, v10}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStackNextIndex(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)I

    move-result v13

    .line 209
    .local v13, "updIndex":I
    if-ltz v13, :cond_39

    .line 215
    sget-object v2, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStack$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v6, v13

    or-long/2addr v6, v11

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 222
    sget-object v2, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->NOT_IN_STACK:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {v10, v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->setNextParkedWorker(Ljava/lang/Object;)V

    .line 223
    return-object v10

    .line 225
    :cond_38
    nop

    .line 988
    .end local v4    # "top":J
    .end local v8    # "$i$a$-loop-CoroutineScheduler$parkedWorkersStackPop$1":I
    .end local v9    # "index":I
    .end local v10    # "worker":Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    .end local v11    # "updVersion":J
    .end local v13    # "updIndex":I
    :cond_39
    goto :goto_2
.end method

.method private final releaseCpuPermit()J
    .registers 5

    const/4 v0, 0x0

    .line 294
    .local v0, "$i$f$releaseCpuPermit":I
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide v2, 0x40000000000L

    invoke-virtual {v1, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide v1

    return-wide v1
.end method

.method private final signalBlockingWork(Z)V
    .registers 7
    .param p1, "skipUnpark"    # Z

    .line 417
    move-object v0, p0

    .local v0, "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v1, 0x0

    .line 1004
    .local v1, "$i$f$incrementBlockingTasks":I
    sget-object v2, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/32 v3, 0x200000

    invoke-virtual {v2, v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide v0

    .line 417
    .end local v0    # "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .end local v1    # "$i$f$incrementBlockingTasks":I
    nop

    .line 418
    .local v0, "stateSnapshot":J
    if-eqz p1, :cond_f

    return-void

    .line 419
    :cond_f
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->tryUnpark()Z

    move-result v2

    if-eqz v2, :cond_16

    return-void

    .line 420
    :cond_16
    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->tryCreateWorker(J)Z

    move-result v2

    if-eqz v2, :cond_1d

    return-void

    .line 421
    :cond_1d
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->tryUnpark()Z

    .line 422
    return-void
.end method

.method private final submitToLocalQueue(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;Lkotlinx/coroutines/scheduling/Task;Z)Lkotlinx/coroutines/scheduling/Task;
    .registers 7
    .param p1, "$this$submitToLocalQueue"    # Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    .param p2, "task"    # Lkotlinx/coroutines/scheduling/Task;
    .param p3, "tailDispatch"    # Z

    .line 494
    if-nez p1, :cond_3

    return-object p2

    .line 499
    :cond_3
    iget-object v0, p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne v0, v1, :cond_a

    return-object p2

    .line 501
    :cond_a
    move-object v0, p2

    .local v0, "this_$iv":Lkotlinx/coroutines/scheduling/Task;
    const/4 v1, 0x0

    .line 1013
    .local v1, "$i$f$getMode":I
    iget-object v2, v0, Lkotlinx/coroutines/scheduling/Task;->taskContext:Lkotlinx/coroutines/scheduling/TaskContext;

    invoke-interface {v2}, Lkotlinx/coroutines/scheduling/TaskContext;->getTaskMode()I

    move-result v0

    .line 501
    .end local v0    # "this_$iv":Lkotlinx/coroutines/scheduling/Task;
    .end local v1    # "$i$f$getMode":I
    if-nez v0, :cond_1b

    iget-object v0, p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->BLOCKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne v0, v1, :cond_1b

    .line 502
    return-object p2

    .line 504
    :cond_1b
    const/4 v0, 0x1

    iput-boolean v0, p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->mayHaveLocalTasks:Z

    .line 505
    iget-object v0, p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

    invoke-virtual {v0, p2, p3}, Lkotlinx/coroutines/scheduling/WorkQueue;->add(Lkotlinx/coroutines/scheduling/Task;Z)Lkotlinx/coroutines/scheduling/Task;

    move-result-object v0

    return-object v0
.end method

.method private final tryAcquireCpuPermit()Z
    .registers 12

    const/4 v0, 0x0

    .line 287
    .local v0, "$i$f$tryAcquireCpuPermit":I
    move-object v1, p0

    .local v1, "$this$loop$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v2, 0x0

    .line 993
    .local v2, "$i$f$loop":I
    :goto_3
    nop

    .line 994
    iget-wide v5, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:J

    .local v5, "state":J
    const/4 v9, 0x0

    .line 288
    .local v9, "$i$a$-loop-CoroutineScheduler$tryAcquireCpuPermit$1":I
    move-object v3, p0

    .local v3, "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v4, 0x0

    .line 995
    .local v4, "$i$f$availableCpuPermits":I
    const-wide v7, 0x7ffffc0000000000L

    and-long/2addr v7, v5

    const/16 v10, 0x2a

    shr-long/2addr v7, v10

    long-to-int v3, v7

    .line 288
    .end local v3    # "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .end local v4    # "$i$f$availableCpuPermits":I
    move v10, v3

    .line 289
    .local v10, "available":I
    if-nez v10, :cond_18

    const/4 v3, 0x0

    return v3

    .line 290
    :cond_18
    const-wide v3, 0x40000000000L

    sub-long v7, v5, v3

    .line 291
    .local v7, "update":J
    sget-object v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x1

    return v3

    .line 292
    :cond_2a
    nop

    .line 993
    .end local v5    # "state":J
    .end local v7    # "update":J
    .end local v9    # "$i$a$-loop-CoroutineScheduler$tryAcquireCpuPermit$1":I
    .end local v10    # "available":I
    goto :goto_3
.end method

.method private final tryCreateWorker(J)Z
    .registers 10
    .param p1, "state"    # J

    .line 431
    move-object v0, p0

    .local v0, "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v1, 0x0

    .line 1005
    .local v1, "$i$f$createdWorkers":I
    const-wide/32 v2, 0x1fffff

    and-long/2addr v2, p1

    long-to-int v0, v2

    .line 431
    .end local v0    # "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .end local v1    # "$i$f$createdWorkers":I
    nop

    .line 432
    .local v0, "created":I
    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v2, 0x0

    .line 1006
    .local v2, "$i$f$blockingTasks":I
    const-wide v3, 0x3ffffe00000L

    and-long/2addr v3, p1

    const/16 v5, 0x15

    shr-long/2addr v3, v5

    long-to-int v1, v3

    .line 432
    .end local v1    # "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .end local v2    # "$i$f$blockingTasks":I
    nop

    .line 433
    .local v1, "blocking":I
    sub-int v2, v0, v1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    .line 438
    .local v2, "cpuWorkers":I
    iget v4, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->corePoolSize:I

    if-ge v2, v4, :cond_31

    .line 439
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->createNewWorker()I

    move-result v4

    .line 442
    .local v4, "newCpuWorkers":I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2e

    iget v6, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->corePoolSize:I

    if-le v6, v5, :cond_2e

    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->createNewWorker()I

    .line 443
    :cond_2e
    if-lez v4, :cond_31

    return v5

    .line 445
    .end local v4    # "newCpuWorkers":I
    :cond_31
    return v3
.end method

.method static synthetic tryCreateWorker$default(Lkotlinx/coroutines/scheduling/CoroutineScheduler;JILjava/lang/Object;)Z
    .registers 5

    .line 430
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_6

    iget-wide p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:J

    :cond_6
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->tryCreateWorker(J)Z

    move-result p0

    return p0
.end method

.method private final tryUnpark()Z
    .registers 5

    .line 449
    nop

    :cond_1
    nop

    .line 450
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStackPop()Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 451
    .local v0, "worker":Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    :cond_a
    sget-object v2, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->workerCtl$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 452
    move-object v1, v0

    check-cast v1, Ljava/lang/Thread;

    invoke-static {v1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 453
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public final availableCpuPermits(J)I
    .registers 7
    .param p1, "state"    # J

    const/4 v0, 0x0

    .line 275
    .local v0, "$i$f$availableCpuPermits":I
    const-wide v1, 0x7ffffc0000000000L

    and-long/2addr v1, p1

    const/16 v3, 0x2a

    shr-long/2addr v1, v3

    long-to-int v1, v1

    return v1
.end method

.method public close()V
    .registers 3

    .line 328
    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->shutdown(J)V

    return-void
.end method

.method public final createTask(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;)Lkotlinx/coroutines/scheduling/Task;
    .registers 6
    .param p1, "block"    # Ljava/lang/Runnable;
    .param p2, "taskContext"    # Lkotlinx/coroutines/scheduling/TaskContext;

    .line 406
    sget-object v0, Lkotlinx/coroutines/scheduling/TasksKt;->schedulerTimeSource:Lkotlinx/coroutines/scheduling/SchedulerTimeSource;

    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/SchedulerTimeSource;->nanoTime()J

    move-result-wide v0

    .line 407
    .local v0, "nanoTime":J
    instance-of v2, p1, Lkotlinx/coroutines/scheduling/Task;

    if-eqz v2, :cond_18

    .line 408
    move-object v2, p1

    check-cast v2, Lkotlinx/coroutines/scheduling/Task;

    iput-wide v0, v2, Lkotlinx/coroutines/scheduling/Task;->submissionTime:J

    .line 409
    move-object v2, p1

    check-cast v2, Lkotlinx/coroutines/scheduling/Task;

    iput-object p2, v2, Lkotlinx/coroutines/scheduling/Task;->taskContext:Lkotlinx/coroutines/scheduling/TaskContext;

    .line 410
    move-object v2, p1

    check-cast v2, Lkotlinx/coroutines/scheduling/Task;

    return-object v2

    .line 412
    :cond_18
    new-instance v2, Lkotlinx/coroutines/scheduling/TaskImpl;

    invoke-direct {v2, p1, v0, v1, p2}, Lkotlinx/coroutines/scheduling/TaskImpl;-><init>(Ljava/lang/Runnable;JLkotlinx/coroutines/scheduling/TaskContext;)V

    check-cast v2, Lkotlinx/coroutines/scheduling/Task;

    return-object v2
.end method

.method public final dispatch(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;Z)V
    .registers 11
    .param p1, "block"    # Ljava/lang/Runnable;
    .param p2, "taskContext"    # Lkotlinx/coroutines/scheduling/TaskContext;
    .param p3, "tailDispatch"    # Z

    .line 383
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->getTimeSource()Lkotlinx/coroutines/AbstractTimeSource;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lkotlinx/coroutines/AbstractTimeSource;->trackTask()V

    .line 384
    :cond_9
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->createTask(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;)Lkotlinx/coroutines/scheduling/Task;

    move-result-object v0

    .line 386
    .local v0, "task":Lkotlinx/coroutines/scheduling/Task;
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->currentWorker()Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    move-result-object v1

    .line 387
    .local v1, "currentWorker":Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    invoke-direct {p0, v1, v0, p3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->submitToLocalQueue(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;Lkotlinx/coroutines/scheduling/Task;Z)Lkotlinx/coroutines/scheduling/Task;

    move-result-object v2

    .line 388
    .local v2, "notAdded":Lkotlinx/coroutines/scheduling/Task;
    if-eqz v2, :cond_39

    .line 389
    invoke-direct {p0, v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->addToGlobalQueue(Lkotlinx/coroutines/scheduling/Task;)Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_39

    .line 391
    :cond_1e
    new-instance v3, Ljava/util/concurrent/RejectedExecutionException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->schedulerName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was terminated"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 394
    :cond_39
    :goto_39
    if-eqz p3, :cond_3f

    if-eqz v1, :cond_3f

    const/4 v3, 0x1

    goto :goto_40

    :cond_3f
    const/4 v3, 0x0

    .line 396
    .local v3, "skipUnpark":Z
    :goto_40
    move-object v4, v0

    .local v4, "this_$iv":Lkotlinx/coroutines/scheduling/Task;
    const/4 v5, 0x0

    .line 1003
    .local v5, "$i$f$getMode":I
    iget-object v6, v4, Lkotlinx/coroutines/scheduling/Task;->taskContext:Lkotlinx/coroutines/scheduling/TaskContext;

    invoke-interface {v6}, Lkotlinx/coroutines/scheduling/TaskContext;->getTaskMode()I

    move-result v4

    .line 396
    .end local v4    # "this_$iv":Lkotlinx/coroutines/scheduling/Task;
    .end local v5    # "$i$f$getMode":I
    if-nez v4, :cond_51

    .line 397
    if-eqz v3, :cond_4d

    return-void

    .line 398
    :cond_4d
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->signalCpuWork()V

    goto :goto_54

    .line 401
    :cond_51
    invoke-direct {p0, v3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->signalBlockingWork(Z)V

    .line 403
    :goto_54
    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .registers 8
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 326
    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "command":Ljava/lang/Runnable;
    .local v1, "command":Ljava/lang/Runnable;
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->dispatch$default(Lkotlinx/coroutines/scheduling/CoroutineScheduler;Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;ZILjava/lang/Object;)V

    return-void
.end method

.method public final isTerminated()Z
    .registers 2

    .line 298
    iget v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->_isTerminated:I

    return v0
.end method

.method public final parkedWorkersStackPush(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)Z
    .registers 18
    .param p1, "worker"    # Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    .line 177
    invoke-virtual/range {p1 .. p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->getNextParkedWorker()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->NOT_IN_STACK:Lkotlinx/coroutines/internal/Symbol;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    return v2

    .line 182
    :cond_a
    move-object/from16 v0, p0

    .local v0, "$this$loop$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v1, 0x0

    .line 985
    .local v1, "$i$f$loop":I
    :goto_d
    nop

    .line 986
    iget-wide v5, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStack:J

    .local v5, "top":J
    const/4 v9, 0x0

    .line 183
    .local v9, "$i$a$-loop-CoroutineScheduler$parkedWorkersStackPush$1":I
    const-wide/32 v3, 0x1fffff

    and-long/2addr v3, v5

    long-to-int v10, v3

    .line 184
    .local v10, "index":I
    const-wide/32 v3, 0x200000

    add-long/2addr v3, v5

    const-wide/32 v7, -0x200000

    and-long v11, v3, v7

    .line 185
    .local v11, "updVersion":J
    invoke-virtual/range {p1 .. p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->getIndexInArray()I

    move-result v13

    .line 186
    .local v13, "updIndex":I
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v3

    const/4 v14, 0x1

    if-eqz v3, :cond_39

    .line 987
    const/4 v3, 0x0

    .line 186
    .local v3, "$i$a$-assert-CoroutineScheduler$parkedWorkersStackPush$1$1":I
    if-eqz v13, :cond_2f

    move v3, v14

    goto :goto_30

    :cond_2f
    move v3, v2

    .end local v3    # "$i$a$-assert-CoroutineScheduler$parkedWorkersStackPush$1$1":I
    :goto_30
    if-eqz v3, :cond_33

    goto :goto_39

    :cond_33
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 187
    :cond_39
    :goto_39
    move-object/from16 v4, p0

    iget-object v3, v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    invoke-virtual {v3, v10}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v15, p1

    invoke-virtual {v15, v3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->setNextParkedWorker(Ljava/lang/Object;)V

    .line 193
    sget-object v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStack$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v7, v13

    or-long/2addr v7, v11

    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v3

    if-eqz v3, :cond_51

    return v14

    .line 194
    :cond_51
    nop

    .line 985
    .end local v5    # "top":J
    .end local v9    # "$i$a$-loop-CoroutineScheduler$parkedWorkersStackPush$1":I
    .end local v10    # "index":I
    .end local v11    # "updVersion":J
    .end local v13    # "updIndex":I
    goto :goto_d
.end method

.method public final parkedWorkersStackTopUpdate(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;II)V
    .registers 18
    .param p1, "worker"    # Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    .param p2, "oldIndex"    # I
    .param p3, "newIndex"    # I

    .line 149
    move-object v0, p0

    .local v0, "$this$loop$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v1, 0x0

    .line 983
    .local v1, "$i$f$loop":I
    :goto_2
    nop

    .line 984
    iget-wide v4, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStack:J

    .local v4, "top":J
    const/4 v8, 0x0

    .line 150
    .local v8, "$i$a$-loop-CoroutineScheduler$parkedWorkersStackTopUpdate$1":I
    const-wide/32 v2, 0x1fffff

    and-long/2addr v2, v4

    long-to-int v9, v2

    .line 151
    .local v9, "index":I
    const-wide/32 v2, 0x200000

    add-long/2addr v2, v4

    const-wide/32 v6, -0x200000

    and-long v10, v2, v6

    .line 152
    .local v10, "updVersion":J
    move/from16 v12, p2

    if-ne v9, v12, :cond_22

    .line 153
    if-nez p3, :cond_1f

    .line 154
    invoke-direct/range {p0 .. p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStackNextIndex(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)I

    move-result v2

    goto :goto_23

    .line 156
    :cond_1f
    move/from16 v2, p3

    goto :goto_23

    .line 159
    :cond_22
    move v2, v9

    .line 152
    :goto_23
    move v13, v2

    .line 161
    .local v13, "updIndex":I
    if-ltz v13, :cond_33

    .line 162
    sget-object v2, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStack$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v6, v13

    or-long/2addr v6, v10

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v2

    if-eqz v2, :cond_32

    return-void

    .line 163
    :cond_32
    nop

    .line 983
    .end local v4    # "top":J
    .end local v8    # "$i$a$-loop-CoroutineScheduler$parkedWorkersStackTopUpdate$1":I
    .end local v9    # "index":I
    .end local v10    # "updVersion":J
    .end local v13    # "updIndex":I
    :cond_33
    goto :goto_2
.end method

.method public final runSafely(Lkotlinx/coroutines/scheduling/Task;)V
    .registers 5
    .param p1, "task"    # Lkotlinx/coroutines/scheduling/Task;

    .line 569
    nop

    .line 570
    :try_start_1
    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/Task;->run()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_e

    .line 575
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->getTimeSource()Lkotlinx/coroutines/AbstractTimeSource;

    move-result-object v0

    if-eqz v0, :cond_d

    :goto_a
    invoke-virtual {v0}, Lkotlinx/coroutines/AbstractTimeSource;->unTrackTask()V

    .line 576
    :cond_d
    goto :goto_21

    .line 571
    :catchall_e
    move-exception v0

    .line 572
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 573
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_22

    .line 575
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "thread":Ljava/lang/Thread;
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->getTimeSource()Lkotlinx/coroutines/AbstractTimeSource;

    move-result-object v0

    if-eqz v0, :cond_d

    goto :goto_a

    .line 577
    :goto_21
    return-void

    .line 574
    :catchall_22
    move-exception v0

    .line 575
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->getTimeSource()Lkotlinx/coroutines/AbstractTimeSource;

    move-result-object v1

    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Lkotlinx/coroutines/AbstractTimeSource;->unTrackTask()V

    :cond_2c
    throw v0
.end method

.method public final shutdown(J)V
    .registers 20
    .param p1, "timeout"    # J

    .line 333
    move-object/from16 v1, p0

    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->_isTerminated$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 335
    :cond_d
    invoke-direct {v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->currentWorker()Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    move-result-object v4

    .line 337
    .local v4, "currentWorker":Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    iget-object v5, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .local v5, "lock$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 996
    .local v6, "$i$f$synchronized":I
    monitor-enter v5

    const/4 v0, 0x0

    .line 337
    .local v0, "$i$a$-synchronized-CoroutineScheduler$shutdown$created$1":I
    move-object/from16 v7, p0

    .local v7, "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v8, 0x0

    .line 997
    .local v8, "$i$f$getCreatedWorkers":I
    :try_start_19
    iget-wide v9, v7, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:J
    :try_end_1b
    .catchall {:try_start_19 .. :try_end_1b} :catchall_d4

    const-wide/32 v11, 0x1fffff

    and-long/2addr v9, v11

    long-to-int v7, v9

    .line 337
    .end local v7    # "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .end local v8    # "$i$f$getCreatedWorkers":I
    nop

    .end local v0    # "$i$a$-synchronized-CoroutineScheduler$shutdown$created$1":I
    monitor-exit v5

    .line 996
    nop

    .line 337
    .end local v5    # "lock$iv":Ljava/lang/Object;
    .end local v6    # "$i$f$synchronized":I
    nop

    .line 339
    .local v7, "created":I
    const/4 v0, 0x1

    .local v0, "i":I
    if-gt v0, v7, :cond_70

    .line 340
    :goto_27
    iget-object v5, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    invoke-virtual {v5, v0}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    .line 341
    .local v5, "worker":Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    if-eq v5, v4, :cond_69

    .line 342
    :goto_34
    invoke-virtual {v5}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_46

    .line 343
    move-object v6, v5

    check-cast v6, Ljava/lang/Thread;

    invoke-static {v6}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 344
    move-wide/from16 v8, p1

    invoke-virtual {v5, v8, v9}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->join(J)V

    goto :goto_34

    .line 346
    :cond_46
    move-wide/from16 v8, p1

    iget-object v6, v5, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 347
    .local v6, "state":Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v10

    if-eqz v10, :cond_61

    .line 987
    const/4 v10, 0x0

    .line 347
    .local v10, "$i$a$-assert-CoroutineScheduler$shutdown$1":I
    sget-object v11, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne v6, v11, :cond_57

    move v10, v3

    goto :goto_58

    :cond_57
    move v10, v2

    .end local v10    # "$i$a$-assert-CoroutineScheduler$shutdown$1":I
    :goto_58
    if-eqz v10, :cond_5b

    goto :goto_61

    :cond_5b
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 348
    :cond_61
    :goto_61
    iget-object v10, v5, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

    iget-object v11, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalBlockingQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-virtual {v10, v11}, Lkotlinx/coroutines/scheduling/WorkQueue;->offloadAllWorkTo(Lkotlinx/coroutines/scheduling/GlobalQueue;)V

    goto :goto_6b

    .line 341
    .end local v6    # "state":Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;
    :cond_69
    move-wide/from16 v8, p1

    .line 339
    .end local v5    # "worker":Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    :goto_6b
    if-eq v0, v7, :cond_72

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_70
    move-wide/from16 v8, p1

    .line 352
    .end local v0    # "i":I
    :cond_72
    iget-object v0, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalBlockingQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/GlobalQueue;->close()V

    .line 353
    iget-object v0, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalCpuQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/GlobalQueue;->close()V

    .line 355
    :goto_7c
    nop

    .line 356
    if-eqz v4, :cond_85

    invoke-virtual {v4, v3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->findTask(Z)Lkotlinx/coroutines/scheduling/Task;

    move-result-object v0

    if-nez v0, :cond_d0

    .line 357
    :cond_85
    iget-object v0, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalCpuQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/GlobalQueue;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    .line 356
    if-nez v0, :cond_d0

    .line 358
    iget-object v0, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalBlockingQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/GlobalQueue;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    .line 356
    if-nez v0, :cond_d0

    .line 359
    nop

    .line 363
    if-eqz v4, :cond_a1

    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {v4, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->tryReleaseCpu(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    .line 365
    :cond_a1
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 987
    const/4 v0, 0x0

    .line 365
    .local v0, "$i$a$-assert-CoroutineScheduler$shutdown$2":I
    move-object/from16 v5, p0

    .local v5, "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v6, 0x0

    .line 998
    .local v6, "$i$f$getAvailableCpuPermits":I
    iget-wide v10, v5, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:J

    .local v10, "state$iv$iv":J
    move-object v12, v5

    .local v12, "this_$iv$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v13, 0x0

    .line 1002
    .local v13, "$i$f$availableCpuPermits":I
    const-wide v14, 0x7ffffc0000000000L

    and-long/2addr v14, v10

    const/16 v16, 0x2a

    shr-long v14, v14, v16

    long-to-int v10, v14

    .line 998
    .end local v10    # "state$iv$iv":J
    .end local v12    # "this_$iv$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .end local v13    # "$i$f$availableCpuPermits":I
    nop

    .line 365
    .end local v5    # "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .end local v6    # "$i$f$getAvailableCpuPermits":I
    iget v5, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->corePoolSize:I

    if-ne v10, v5, :cond_c0

    move v2, v3

    .end local v0    # "$i$a$-assert-CoroutineScheduler$shutdown$2":I
    :cond_c0
    if-eqz v2, :cond_c3

    goto :goto_c9

    :cond_c3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 366
    :cond_c9
    :goto_c9
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStack:J

    .line 367
    iput-wide v2, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:J

    .line 368
    return-void

    .line 360
    .local v0, "task":Lkotlinx/coroutines/scheduling/Task;
    :cond_d0
    invoke-virtual {v1, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->runSafely(Lkotlinx/coroutines/scheduling/Task;)V

    .end local v0    # "task":Lkotlinx/coroutines/scheduling/Task;
    goto :goto_7c

    .line 337
    .end local v7    # "created":I
    .local v5, "lock$iv":Ljava/lang/Object;
    .local v6, "$i$f$synchronized":I
    :catchall_d4
    move-exception v0

    move-wide/from16 v8, p1

    monitor-exit v5

    throw v0
.end method

.method public final signalCpuWork()V
    .registers 5

    .line 425
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->tryUnpark()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 426
    :cond_7
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->tryCreateWorker$default(Lkotlinx/coroutines/scheduling/CoroutineScheduler;JILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    .line 427
    :cond_12
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->tryUnpark()Z

    .line 428
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 18

    .line 521
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 522
    .local v1, "parkedWorkers":I
    const/4 v2, 0x0

    .line 523
    .local v2, "blockingWorkers":I
    const/4 v3, 0x0

    .line 524
    .local v3, "cpuWorkers":I
    const/4 v4, 0x0

    .line 525
    .local v4, "dormant":I
    const/4 v5, 0x0

    .line 526
    .local v5, "terminated":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 527
    .local v6, "queueSizes":Ljava/util/ArrayList;
    const/4 v7, 0x1

    .local v7, "index":I
    iget-object v8, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    invoke-virtual {v8}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->currentLength()I

    move-result v8

    :goto_13
    if-ge v7, v8, :cond_92

    .line 528
    iget-object v9, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    invoke-virtual {v9, v7}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    if-nez v9, :cond_20

    goto :goto_8f

    .line 529
    .local v9, "worker":Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    :cond_20
    iget-object v10, v9, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

    invoke-virtual {v10}, Lkotlinx/coroutines/scheduling/WorkQueue;->getSize$kotlinx_coroutines_core()I

    move-result v10

    .line 530
    .local v10, "queueSize":I
    iget-object v11, v9, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v12, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v11}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->ordinal()I

    move-result v11

    aget v11, v12, v11

    packed-switch v11, :pswitch_data_184

    goto :goto_8f

    .line 544
    :pswitch_34
    add-int/lit8 v5, v5, 0x1

    goto :goto_8f

    .line 541
    :pswitch_37
    add-int/lit8 v4, v4, 0x1

    .line 542
    if-lez v10, :cond_8f

    move-object v11, v6

    check-cast v11, Ljava/util/Collection;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x64

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8f

    .line 537
    :pswitch_55
    add-int/lit8 v3, v3, 0x1

    .line 538
    move-object v11, v6

    check-cast v11, Ljava/util/Collection;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x63

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8f

    .line 533
    :pswitch_71
    add-int/lit8 v2, v2, 0x1

    .line 534
    move-object v11, v6

    check-cast v11, Ljava/util/Collection;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x62

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8f

    .line 531
    :pswitch_8d
    add-int/lit8 v1, v1, 0x1

    .line 527
    .end local v9    # "worker":Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    .end local v10    # "queueSize":I
    :cond_8f
    :goto_8f
    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    .line 547
    .end local v7    # "index":I
    :cond_92
    iget-wide v7, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:J

    .line 548
    .local v7, "state":J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->schedulerName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x40

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "[Pool Size {core = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 550
    iget v11, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->corePoolSize:I

    .line 548
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 550
    nop

    .line 548
    const-string v11, ", max = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 551
    iget v11, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->maxPoolSize:I

    .line 548
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 551
    nop

    .line 548
    const-string/jumbo v11, "}, Worker States {CPU = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 553
    nop

    .line 548
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 553
    nop

    .line 548
    const-string v11, ", blocking = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 554
    nop

    .line 548
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 554
    nop

    .line 548
    const-string v11, ", parked = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 555
    nop

    .line 548
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 555
    nop

    .line 548
    const-string v11, ", dormant = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 556
    nop

    .line 548
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 556
    nop

    .line 548
    const-string v11, ", terminated = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 557
    nop

    .line 548
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 557
    nop

    .line 548
    const-string/jumbo v11, "}, running workers queues = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 558
    nop

    .line 548
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 558
    nop

    .line 548
    const-string v11, ", global CPU queue size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 559
    iget-object v11, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalCpuQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-virtual {v11}, Lkotlinx/coroutines/scheduling/GlobalQueue;->getSize()I

    move-result v11

    .line 548
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 559
    nop

    .line 548
    const-string v11, ", global blocking queue size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 560
    iget-object v11, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalBlockingQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-virtual {v11}, Lkotlinx/coroutines/scheduling/GlobalQueue;->getSize()I

    move-result v11

    .line 548
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 560
    nop

    .line 548
    const-string v10, ", Control State {created workers= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 562
    move-object/from16 v11, p0

    .local v11, "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v12, 0x0

    .line 1015
    .local v12, "$i$f$createdWorkers":I
    const-wide/32 v13, 0x1fffff

    and-long/2addr v13, v7

    long-to-int v11, v13

    .line 548
    .end local v11    # "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .end local v12    # "$i$f$createdWorkers":I
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 562
    nop

    .line 548
    const-string v11, ", blocking tasks = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 563
    move-object/from16 v11, p0

    .restart local v11    # "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v12, 0x0

    .line 1016
    .local v12, "$i$f$blockingTasks":I
    const-wide v13, 0x3ffffe00000L

    and-long/2addr v13, v7

    const/16 v15, 0x15

    shr-long/2addr v13, v15

    long-to-int v11, v13

    .line 548
    .end local v11    # "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .end local v12    # "$i$f$blockingTasks":I
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 563
    nop

    .line 548
    const-string v11, ", CPUs acquired = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 564
    iget v11, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->corePoolSize:I

    move-object/from16 v12, p0

    .local v12, "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v13, 0x0

    .line 1017
    .local v13, "$i$f$availableCpuPermits":I
    const-wide v14, 0x7ffffc0000000000L

    and-long/2addr v14, v7

    const/16 v16, 0x2a

    shr-long v14, v14, v16

    long-to-int v12, v14

    .line 564
    .end local v12    # "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .end local v13    # "$i$f$availableCpuPermits":I
    sub-int/2addr v11, v12

    .line 548
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 565
    nop

    .line 548
    const-string/jumbo v11, "}]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    :pswitch_data_184
    .packed-switch 0x1
        :pswitch_8d
        :pswitch_71
        :pswitch_55
        :pswitch_37
        :pswitch_34
    .end packed-switch
.end method

###### Class kotlinx.coroutines.scheduling.CoroutineScheduler.Companion (kotlinx.coroutines.scheduling.CoroutineScheduler$Companion)
.class public final Lkotlinx/coroutines/scheduling/CoroutineScheduler$Companion;
.super Ljava/lang/Object;
.source "CoroutineScheduler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/scheduling/CoroutineScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0006X\u0080T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u000e8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lkotlinx/coroutines/scheduling/CoroutineScheduler$Companion;",
        "",
        "()V",
        "BLOCKING_MASK",
        "",
        "BLOCKING_SHIFT",
        "",
        "CLAIMED",
        "CPU_PERMITS_MASK",
        "CPU_PERMITS_SHIFT",
        "CREATED_MASK",
        "MAX_SUPPORTED_POOL_SIZE",
        "MIN_SUPPORTED_POOL_SIZE",
        "NOT_IN_STACK",
        "Lkotlinx/coroutines/internal/Symbol;",
        "PARKED",
        "PARKED_INDEX_MASK",
        "PARKED_VERSION_INC",
        "PARKED_VERSION_MASK",
        "TERMINATED",
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


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Companion;-><init>()V

    return-void
.end method

###### Class kotlinx.coroutines.scheduling.CoroutineScheduler.WhenMappings (kotlinx.coroutines.scheduling.CoroutineScheduler$WhenMappings)
.class public final synthetic Lkotlinx/coroutines/scheduling/CoroutineScheduler$WhenMappings;
.super Ljava/lang/Object;
.source "CoroutineScheduler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/scheduling/CoroutineScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
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


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->values()[Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->PARKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->BLOCKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->CPU_ACQUIRED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->DORMANT:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method

###### Class kotlinx.coroutines.scheduling.CoroutineScheduler.Worker (kotlinx.coroutines.scheduling.CoroutineScheduler$Worker)
.class public final Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
.super Ljava/lang/Thread;
.source "CoroutineScheduler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/scheduling/CoroutineScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Worker"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler$Worker\n+ 2 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler\n+ 3 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Tasks.kt\nkotlinx/coroutines/scheduling/Task\n+ 6 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n*L\n1#1,981:1\n287#2:982\n288#2:985\n275#2:986\n289#2,4:987\n294#2:991\n284#2,2:994\n270#2:997\n279#2:998\n273#2:999\n270#2:1000\n468#3,2:983\n1#4:992\n82#5:993\n20#6:996\n*S KotlinDebug\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler$Worker\n*L\n645#1:982\n645#1:985\n645#1:986\n645#1:987,4\n659#1:991\n764#1:994,2\n812#1:997\n838#1:998\n838#1:999\n908#1:1000\n645#1:983,2\n747#1:993\n808#1:996\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\u0008\u0080\u0004\u0018\u00002\u00020GB\u0011\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0005J\u0017\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0001H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\n\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0001H\u0002\u00a2\u0006\u0004\u0008\n\u0010\tJ\u0017\u0010\r\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0019\u0010\u0011\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0013\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0001H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\tJ\u000f\u0010\u0016\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0015\u0010\u0019\u001a\u00020\u00012\u0006\u0010\u0018\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0011\u0010\u001d\u001a\u0004\u0018\u00010\u000bH\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010\u001cJ\u000f\u0010 \u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008 \u0010\u001cJ\u000f\u0010!\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008!\u0010\u0017J\u000f\u0010\"\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\"\u0010\u001cJ\u0015\u0010%\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020#\u00a2\u0006\u0004\u0008%\u0010&J\u0019\u0010(\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\'\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008(\u0010\u0012J\u000f\u0010)\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008)\u0010\u001cR*\u0010*\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00018\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008*\u0010+\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010\tR\u0014\u00100\u001a\u00020/8\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u00080\u00101R\u0016\u00102\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u00082\u00103R\u0016\u00105\u001a\u0002048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00085\u00106R$\u00108\u001a\u0004\u0018\u0001078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00088\u00109\u001a\u0004\u0008:\u0010;\"\u0004\u0008<\u0010=R\u0016\u0010>\u001a\u00020\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008>\u0010+R\u0012\u0010B\u001a\u00020?8\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008@\u0010AR\u0016\u0010C\u001a\u00020#8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u0016\u0010E\u001a\u0002048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008E\u00106\u00a8\u0006F"
    }
    d2 = {
        "Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;",
        "",
        "index",
        "<init>",
        "(Lkotlinx/coroutines/scheduling/CoroutineScheduler;I)V",
        "(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)V",
        "taskMode",
        "",
        "afterTask",
        "(I)V",
        "beforeTask",
        "Lkotlinx/coroutines/scheduling/Task;",
        "task",
        "executeTask",
        "(Lkotlinx/coroutines/scheduling/Task;)V",
        "",
        "scanLocalQueue",
        "findAnyTask",
        "(Z)Lkotlinx/coroutines/scheduling/Task;",
        "findTask",
        "mode",
        "idleReset",
        "inStack",
        "()Z",
        "upperBound",
        "nextInt",
        "(I)I",
        "park",
        "()V",
        "pollGlobalQueues",
        "()Lkotlinx/coroutines/scheduling/Task;",
        "run",
        "runWorker",
        "tryAcquireCpuPermit",
        "tryPark",
        "Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;",
        "newState",
        "tryReleaseCpu",
        "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z",
        "blockingOnly",
        "trySteal",
        "tryTerminateWorker",
        "indexInArray",
        "I",
        "getIndexInArray",
        "()I",
        "setIndexInArray",
        "Lkotlinx/coroutines/scheduling/WorkQueue;",
        "localQueue",
        "Lkotlinx/coroutines/scheduling/WorkQueue;",
        "mayHaveLocalTasks",
        "Z",
        "",
        "minDelayUntilStealableTaskNs",
        "J",
        "",
        "nextParkedWorker",
        "Ljava/lang/Object;",
        "getNextParkedWorker",
        "()Ljava/lang/Object;",
        "setNextParkedWorker",
        "(Ljava/lang/Object;)V",
        "rngState",
        "Lkotlinx/coroutines/scheduling/CoroutineScheduler;",
        "getScheduler",
        "()Lkotlinx/coroutines/scheduling/CoroutineScheduler;",
        "scheduler",
        "state",
        "Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;",
        "terminationDeadline",
        "kotlinx-coroutines-core",
        "Ljava/lang/Thread;"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field static final synthetic workerCtl$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile indexInArray:I

.field public final localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

.field public mayHaveLocalTasks:Z

.field private minDelayUntilStealableTaskNs:J

.field private volatile nextParkedWorker:Ljava/lang/Object;

.field private rngState:I

.field public state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

.field private terminationDeadline:J

.field final synthetic this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

.field volatile synthetic workerCtl:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    const-string/jumbo v1, "workerCtl"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->workerCtl$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method private constructor <init>(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)V
    .registers 3
    .param p1, "this$0"    # Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 579
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 580
    nop

    .line 581
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->setDaemon(Z)V

    .line 582
    nop

    .line 599
    new-instance v0, Lkotlinx/coroutines/scheduling/WorkQueue;

    invoke-direct {v0}, Lkotlinx/coroutines/scheduling/WorkQueue;-><init>()V

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

    .line 607
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->DORMANT:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 616
    const/4 v0, 0x0

    iput v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->workerCtl:I

    .line 630
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->NOT_IN_STACK:Lkotlinx/coroutines/internal/Symbol;

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextParkedWorker:Ljava/lang/Object;

    .line 637
    sget-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {v0}, Lkotlin/random/Random$Default;->nextInt()I

    move-result v0

    iput v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->rngState:I

    .line 579
    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/scheduling/CoroutineScheduler;I)V
    .registers 3
    .param p1, "this$0"    # Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 592
    invoke-direct {p0, p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;-><init>(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)V

    .line 593
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->setIndexInArray(I)V

    .line 594
    return-void
.end method

.method public static final synthetic access$getThis$0$p(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .registers 2
    .param p0, "$this"    # Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    .line 579
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    return-object v0
.end method

.method private final afterTask(I)V
    .registers 7
    .param p1, "taskMode"    # I

    .line 763
    if-nez p1, :cond_3

    return-void

    .line 764
    :cond_3
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .local v0, "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v1, 0x0

    .line 994
    .local v1, "$i$f$decrementBlockingTasks":I
    sget-object v2, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/32 v3, -0x200000

    invoke-virtual {v2, v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 995
    nop

    .line 765
    .end local v0    # "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .end local v1    # "$i$f$decrementBlockingTasks":I
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 767
    .local v0, "currentState":Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-eq v0, v1, :cond_30

    .line 768
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 992
    const/4 v1, 0x0

    .line 768
    .local v1, "$i$a$-assert-CoroutineScheduler$Worker$afterTask$1":I
    sget-object v2, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->BLOCKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne v0, v2, :cond_22

    const/4 v2, 0x1

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    .end local v1    # "$i$a$-assert-CoroutineScheduler$Worker$afterTask$1":I
    :goto_23
    if-eqz v2, :cond_26

    goto :goto_2c

    :cond_26
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 769
    :cond_2c
    :goto_2c
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->DORMANT:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    iput-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 771
    :cond_30
    return-void
.end method

.method private final beforeTask(I)V
    .registers 3
    .param p1, "taskMode"    # I

    .line 755
    if-nez p1, :cond_3

    return-void

    .line 757
    :cond_3
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->BLOCKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->tryReleaseCpu(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 758
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->signalCpuWork()V

    .line 760
    :cond_10
    return-void
.end method

.method private final executeTask(Lkotlinx/coroutines/scheduling/Task;)V
    .registers 5
    .param p1, "task"    # Lkotlinx/coroutines/scheduling/Task;

    .line 747
    move-object v0, p1

    .local v0, "this_$iv":Lkotlinx/coroutines/scheduling/Task;
    const/4 v1, 0x0

    .line 993
    .local v1, "$i$f$getMode":I
    iget-object v2, v0, Lkotlinx/coroutines/scheduling/Task;->taskContext:Lkotlinx/coroutines/scheduling/TaskContext;

    invoke-interface {v2}, Lkotlinx/coroutines/scheduling/TaskContext;->getTaskMode()I

    move-result v0

    .line 747
    .end local v0    # "this_$iv":Lkotlinx/coroutines/scheduling/Task;
    .end local v1    # "$i$f$getMode":I
    nop

    .line 748
    .local v0, "taskMode":I
    invoke-direct {p0, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->idleReset(I)V

    .line 749
    invoke-direct {p0, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->beforeTask(I)V

    .line 750
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {v1, p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->runSafely(Lkotlinx/coroutines/scheduling/Task;)V

    .line 751
    invoke-direct {p0, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->afterTask(I)V

    .line 752
    return-void
.end method

.method private final findAnyTask(Z)Lkotlinx/coroutines/scheduling/Task;
    .registers 5
    .param p1, "scanLocalQueue"    # Z

    .line 885
    const/4 v0, 0x0

    if-eqz p1, :cond_30

    .line 886
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget v1, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->corePoolSize:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextInt(I)I

    move-result v1

    if-nez v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    move v1, v0

    .line 887
    .local v1, "globalFirst":Z
    :goto_12
    if-eqz v1, :cond_1c

    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->pollGlobalQueues()Lkotlinx/coroutines/scheduling/Task;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 992
    .local v2, "it":Lkotlinx/coroutines/scheduling/Task;
    const/4 v0, 0x0

    .line 887
    .local v0, "$i$a$-let-CoroutineScheduler$Worker$findAnyTask$1":I
    return-object v2

    .line 888
    .end local v0    # "$i$a$-let-CoroutineScheduler$Worker$findAnyTask$1":I
    .end local v2    # "it":Lkotlinx/coroutines/scheduling/Task;
    :cond_1c
    iget-object v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

    invoke-virtual {v2}, Lkotlinx/coroutines/scheduling/WorkQueue;->poll()Lkotlinx/coroutines/scheduling/Task;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 992
    .restart local v2    # "it":Lkotlinx/coroutines/scheduling/Task;
    const/4 v0, 0x0

    .line 888
    .local v0, "$i$a$-let-CoroutineScheduler$Worker$findAnyTask$2":I
    return-object v2

    .line 889
    .end local v0    # "$i$a$-let-CoroutineScheduler$Worker$findAnyTask$2":I
    .end local v2    # "it":Lkotlinx/coroutines/scheduling/Task;
    :cond_26
    if-nez v1, :cond_38

    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->pollGlobalQueues()Lkotlinx/coroutines/scheduling/Task;

    move-result-object v2

    if-eqz v2, :cond_38

    .line 992
    .restart local v2    # "it":Lkotlinx/coroutines/scheduling/Task;
    const/4 v0, 0x0

    .line 889
    .local v0, "$i$a$-let-CoroutineScheduler$Worker$findAnyTask$3":I
    return-object v2

    .line 891
    .end local v0    # "$i$a$-let-CoroutineScheduler$Worker$findAnyTask$3":I
    .end local v1    # "globalFirst":Z
    .end local v2    # "it":Lkotlinx/coroutines/scheduling/Task;
    :cond_30
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->pollGlobalQueues()Lkotlinx/coroutines/scheduling/Task;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 992
    .local v1, "it":Lkotlinx/coroutines/scheduling/Task;
    const/4 v0, 0x0

    .line 891
    .local v0, "$i$a$-let-CoroutineScheduler$Worker$findAnyTask$4":I
    return-object v1

    .line 893
    .end local v0    # "$i$a$-let-CoroutineScheduler$Worker$findAnyTask$4":I
    .end local v1    # "it":Lkotlinx/coroutines/scheduling/Task;
    :cond_38
    invoke-direct {p0, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->trySteal(Z)Lkotlinx/coroutines/scheduling/Task;

    move-result-object v0

    return-object v0
.end method

.method private final idleReset(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 862
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->terminationDeadline:J

    .line 863
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->PARKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne v0, v1, :cond_23

    .line 864
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 992
    const/4 v0, 0x0

    .line 864
    .local v0, "$i$a$-assert-CoroutineScheduler$Worker$idleReset$1":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    .end local v0    # "$i$a$-assert-CoroutineScheduler$Worker$idleReset$1":I
    :goto_16
    if-eqz v1, :cond_19

    goto :goto_1f

    :cond_19
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 865
    :cond_1f
    :goto_1f
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->BLOCKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 867
    :cond_23
    return-void
.end method

.method private final inStack()Z
    .registers 3

    .line 744
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextParkedWorker:Ljava/lang/Object;

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->NOT_IN_STACK:Lkotlinx/coroutines/internal/Symbol;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private final park()V
    .registers 7

    .line 793
    iget-wide v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->terminationDeadline:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v4, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-wide v4, v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->idleWorkerKeepAliveNs:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->terminationDeadline:J

    .line 795
    :cond_13
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-wide v0, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->idleWorkerKeepAliveNs:J

    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 798
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v4, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->terminationDeadline:J

    sub-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2a

    .line 799
    iput-wide v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->terminationDeadline:J

    .line 800
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->tryTerminateWorker()V

    .line 802
    :cond_2a
    return-void
.end method

.method private final pollGlobalQueues()Lkotlinx/coroutines/scheduling/Task;
    .registers 3

    .line 897
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextInt(I)I

    move-result v0

    .line 901
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 897
    if-nez v0, :cond_20

    .line 898
    iget-object v0, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalCpuQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/GlobalQueue;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    if-eqz v0, :cond_15

    .line 992
    .local v0, "it":Lkotlinx/coroutines/scheduling/Task;
    const/4 v1, 0x0

    .line 898
    .local v1, "$i$a$-let-CoroutineScheduler$Worker$pollGlobalQueues$1":I
    return-object v0

    .line 899
    .end local v0    # "it":Lkotlinx/coroutines/scheduling/Task;
    .end local v1    # "$i$a$-let-CoroutineScheduler$Worker$pollGlobalQueues$1":I
    :cond_15
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object v0, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalBlockingQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/GlobalQueue;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    return-object v0

    .line 901
    :cond_20
    iget-object v0, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalBlockingQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/GlobalQueue;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    if-eqz v0, :cond_2c

    .line 992
    .restart local v0    # "it":Lkotlinx/coroutines/scheduling/Task;
    const/4 v1, 0x0

    .line 901
    .local v1, "$i$a$-let-CoroutineScheduler$Worker$pollGlobalQueues$2":I
    return-object v0

    .line 902
    .end local v0    # "it":Lkotlinx/coroutines/scheduling/Task;
    .end local v1    # "$i$a$-let-CoroutineScheduler$Worker$pollGlobalQueues$2":I
    :cond_2c
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object v0, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalCpuQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/GlobalQueue;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    return-object v0
.end method

.method private final runWorker()V
    .registers 7

    .line 670
    const/4 v0, 0x0

    .line 671
    .local v0, "rescanned":Z
    :goto_1
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_42

    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v2, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-eq v1, v2, :cond_42

    .line 672
    iget-boolean v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->mayHaveLocalTasks:Z

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->findTask(Z)Lkotlinx/coroutines/scheduling/Task;

    move-result-object v1

    .line 674
    .local v1, "task":Lkotlinx/coroutines/scheduling/Task;
    const-wide/16 v2, 0x0

    if-eqz v1, :cond_20

    .line 675
    const/4 v0, 0x0

    .line 676
    iput-wide v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->minDelayUntilStealableTaskNs:J

    .line 677
    invoke-direct {p0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->executeTask(Lkotlinx/coroutines/scheduling/Task;)V

    .line 678
    goto :goto_1

    .line 680
    :cond_20
    const/4 v4, 0x0

    iput-boolean v4, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->mayHaveLocalTasks:Z

    .line 694
    iget-wide v4, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->minDelayUntilStealableTaskNs:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_3e

    .line 695
    if-nez v0, :cond_2d

    .line 696
    const/4 v0, 0x1

    goto :goto_3d

    .line 698
    :cond_2d
    const/4 v0, 0x0

    .line 699
    sget-object v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->PARKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {p0, v4}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->tryReleaseCpu(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    .line 700
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 701
    iget-wide v4, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->minDelayUntilStealableTaskNs:J

    invoke-static {v4, v5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 702
    iput-wide v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->minDelayUntilStealableTaskNs:J

    .line 704
    :goto_3d
    goto :goto_1

    .line 711
    :cond_3e
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->tryPark()V

    .end local v1    # "task":Lkotlinx/coroutines/scheduling/Task;
    goto :goto_1

    .line 713
    :cond_42
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->tryReleaseCpu(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    .line 714
    return-void
.end method

.method private final tryAcquireCpuPermit()Z
    .registers 14

    .line 643
    nop

    .line 644
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->CPU_ACQUIRED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_9

    goto :goto_3c

    .line 645
    :cond_9
    iget-object v4, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .local v4, "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v0, 0x0

    .line 982
    .local v0, "$i$f$tryAcquireCpuPermit":I
    move-object v1, v4

    .local v1, "$this$loop$iv$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v9, 0x0

    .line 983
    .local v9, "$i$f$loop":I
    :goto_e
    nop

    .line 984
    iget-wide v5, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:J

    .local v5, "state$iv":J
    const/4 v10, 0x0

    .line 985
    .local v10, "$i$a$-loop-CoroutineScheduler$tryAcquireCpuPermit$1$iv":I
    move-object v3, v4

    .local v3, "this_$iv$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v7, 0x0

    .line 986
    .local v7, "$i$f$availableCpuPermits":I
    const-wide v11, 0x7ffffc0000000000L

    and-long/2addr v11, v5

    const/16 v8, 0x2a

    shr-long/2addr v11, v8

    long-to-int v3, v11

    .line 985
    .end local v3    # "this_$iv$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .end local v7    # "$i$f$availableCpuPermits":I
    move v11, v3

    .line 987
    .local v11, "available$iv":I
    const/4 v12, 0x0

    if-nez v11, :cond_24

    move v0, v12

    goto :goto_34

    .line 988
    :cond_24
    const-wide v7, 0x40000000000L

    sub-long v7, v5, v7

    .line 989
    .local v7, "update$iv":J
    sget-object v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v3

    if-eqz v3, :cond_3d

    move v0, v2

    .line 645
    .end local v0    # "$i$f$tryAcquireCpuPermit":I
    .end local v1    # "$this$loop$iv$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .end local v4    # "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .end local v5    # "state$iv":J
    .end local v7    # "update$iv":J
    .end local v9    # "$i$f$loop":I
    .end local v10    # "$i$a$-loop-CoroutineScheduler$tryAcquireCpuPermit$1$iv":I
    .end local v11    # "available$iv":I
    :goto_34
    if-eqz v0, :cond_3b

    .line 646
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->CPU_ACQUIRED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 647
    goto :goto_3c

    .line 649
    :cond_3b
    move v2, v12

    .line 650
    :goto_3c
    return v2

    .line 990
    .restart local v0    # "$i$f$tryAcquireCpuPermit":I
    .restart local v1    # "$this$loop$iv$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .restart local v4    # "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .restart local v5    # "state$iv":J
    .restart local v7    # "update$iv":J
    .restart local v9    # "$i$f$loop":I
    .restart local v10    # "$i$a$-loop-CoroutineScheduler$tryAcquireCpuPermit$1$iv":I
    .restart local v11    # "available$iv":I
    :cond_3d
    nop

    .line 983
    .end local v5    # "state$iv":J
    .end local v7    # "update$iv":J
    .end local v10    # "$i$a$-loop-CoroutineScheduler$tryAcquireCpuPermit$1$iv":I
    .end local v11    # "available$iv":I
    goto :goto_e
.end method

.method private final tryPark()V
    .registers 4

    .line 718
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->inStack()Z

    move-result v0

    if-nez v0, :cond_c

    .line 719
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStackPush(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)Z

    .line 720
    return-void

    .line 722
    :cond_c
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 992
    const/4 v0, 0x0

    .line 722
    .local v0, "$i$a$-assert-CoroutineScheduler$Worker$tryPark$1":I
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

    invoke-virtual {v1}, Lkotlinx/coroutines/scheduling/WorkQueue;->getSize$kotlinx_coroutines_core()I

    move-result v1

    if-nez v1, :cond_1d

    const/4 v1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    .end local v0    # "$i$a$-assert-CoroutineScheduler$Worker$tryPark$1":I
    :goto_1e
    if-eqz v1, :cond_21

    goto :goto_27

    :cond_21
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 723
    :cond_27
    :goto_27
    const/4 v0, -0x1

    iput v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->workerCtl:I

    .line 736
    :goto_2a
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->inStack()Z

    move-result v1

    if-eqz v1, :cond_4f

    iget v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->workerCtl:I

    if-ne v1, v0, :cond_4f

    .line 737
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_4f

    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v2, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne v1, v2, :cond_43

    goto :goto_4f

    .line 738
    :cond_43
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->PARKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->tryReleaseCpu(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    .line 739
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 740
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->park()V

    goto :goto_2a

    .line 742
    :cond_4f
    :goto_4f
    return-void
.end method

.method private final trySteal(Z)Lkotlinx/coroutines/scheduling/Task;
    .registers 22
    .param p1, "blockingOnly"    # Z

    .line 907
    move-object/from16 v0, p0

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1e

    .line 992
    const/4 v1, 0x0

    .line 907
    .local v1, "$i$a$-assert-CoroutineScheduler$Worker$trySteal$1":I
    iget-object v4, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

    invoke-virtual {v4}, Lkotlinx/coroutines/scheduling/WorkQueue;->getSize$kotlinx_coroutines_core()I

    move-result v4

    if-nez v4, :cond_14

    move v1, v3

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .end local v1    # "$i$a$-assert-CoroutineScheduler$Worker$trySteal$1":I
    :goto_15
    if-eqz v1, :cond_18

    goto :goto_1e

    :cond_18
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 908
    :cond_1e
    :goto_1e
    iget-object v1, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .local v1, "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v4, 0x0

    .line 1000
    .local v4, "$i$f$getCreatedWorkers":I
    iget-wide v5, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:J

    const-wide/32 v7, 0x1fffff

    and-long/2addr v5, v7

    long-to-int v1, v5

    .line 908
    .end local v1    # "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .end local v4    # "$i$f$getCreatedWorkers":I
    nop

    .line 910
    .local v1, "created":I
    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ge v1, v4, :cond_2e

    .line 911
    return-object v5

    .line 914
    :cond_2e
    const/4 v4, 0x0

    .local v4, "currentIndex":I
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextInt(I)I

    move-result v4

    .line 915
    const-wide/16 v6, 0x0

    .local v6, "minDelay":J
    const-wide v6, 0x7fffffffffffffffL

    .line 916
    iget-object v8, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    const/4 v9, 0x0

    :goto_3d
    const-wide/16 v10, 0x0

    if-ge v9, v1, :cond_a1

    move v12, v9

    .local v12, "it":I
    const/4 v13, 0x0

    .line 917
    .local v13, "$i$a$-repeat-CoroutineScheduler$Worker$trySteal$2":I
    add-int/lit8 v4, v4, 0x1

    .line 918
    if-le v4, v1, :cond_48

    const/4 v4, 0x1

    .line 919
    :cond_48
    iget-object v14, v8, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    invoke-virtual {v14, v4}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    .line 920
    .local v14, "worker":Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    if-eqz v14, :cond_9d

    if-eq v14, v0, :cond_9d

    .line 921
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v15

    if-eqz v15, :cond_6f

    .line 992
    const/4 v15, 0x0

    .line 921
    .local v15, "$i$a$-assert-CoroutineScheduler$Worker$trySteal$2$1":I
    iget-object v2, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

    invoke-virtual {v2}, Lkotlinx/coroutines/scheduling/WorkQueue;->getSize$kotlinx_coroutines_core()I

    move-result v2

    if-nez v2, :cond_65

    move v2, v3

    goto :goto_66

    :cond_65
    const/4 v2, 0x0

    .end local v15    # "$i$a$-assert-CoroutineScheduler$Worker$trySteal$2$1":I
    :goto_66
    if-eqz v2, :cond_69

    goto :goto_6f

    :cond_69
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 922
    :cond_6f
    :goto_6f
    nop

    .line 925
    iget-object v2, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

    .line 922
    if-eqz p1, :cond_7b

    .line 923
    iget-object v15, v14, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

    invoke-virtual {v2, v15}, Lkotlinx/coroutines/scheduling/WorkQueue;->tryStealBlockingFrom(Lkotlinx/coroutines/scheduling/WorkQueue;)J

    move-result-wide v16

    goto :goto_81

    .line 925
    :cond_7b
    iget-object v15, v14, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

    invoke-virtual {v2, v15}, Lkotlinx/coroutines/scheduling/WorkQueue;->tryStealFrom(Lkotlinx/coroutines/scheduling/WorkQueue;)J

    move-result-wide v16

    .line 922
    :goto_81
    move-wide/from16 v18, v16

    .line 927
    .local v18, "stealResult":J
    const-wide/16 v16, -0x1

    cmp-long v2, v18, v16

    if-nez v2, :cond_90

    .line 928
    iget-object v2, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

    invoke-virtual {v2}, Lkotlinx/coroutines/scheduling/WorkQueue;->poll()Lkotlinx/coroutines/scheduling/Task;

    move-result-object v2

    return-object v2

    .line 929
    :cond_90
    cmp-long v2, v18, v10

    if-lez v2, :cond_9b

    .line 930
    move-wide/from16 v10, v18

    .end local v18    # "stealResult":J
    .local v10, "stealResult":J
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    goto :goto_9d

    .line 929
    .end local v10    # "stealResult":J
    .restart local v18    # "stealResult":J
    :cond_9b
    move-wide/from16 v10, v18

    .line 933
    .end local v18    # "stealResult":J
    :cond_9d
    :goto_9d
    nop

    .line 916
    .end local v12    # "it":I
    .end local v13    # "$i$a$-repeat-CoroutineScheduler$Worker$trySteal$2":I
    .end local v14    # "worker":Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    add-int/lit8 v9, v9, 0x1

    goto :goto_3d

    .line 934
    :cond_a1
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v6, v2

    if-eqz v2, :cond_ab

    move-wide v10, v6

    :cond_ab
    iput-wide v10, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->minDelayUntilStealableTaskNs:J

    .line 935
    return-object v5
.end method

.method private final tryTerminateWorker()V
    .registers 14

    .line 808
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object v0, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .local v0, "lock$iv":Ljava/lang/Object;
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    const/4 v2, 0x0

    .line 996
    .local v2, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v3, 0x0

    .line 810
    .local v3, "$i$a$-synchronized-CoroutineScheduler$Worker$tryTerminateWorker$1":I
    :try_start_9
    invoke-virtual {v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->isTerminated()Z

    move-result v4
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_6b

    if-eqz v4, :cond_11

    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$synchronized":I
    .end local v3    # "$i$a$-synchronized-CoroutineScheduler$Worker$tryTerminateWorker$1":I
    monitor-exit v0

    return-void

    .line 812
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v2    # "$i$f$synchronized":I
    .restart local v3    # "$i$a$-synchronized-CoroutineScheduler$Worker$tryTerminateWorker$1":I
    :cond_11
    move-object v4, v1

    .local v4, "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v5, 0x0

    .line 997
    .local v5, "$i$f$getCreatedWorkers":I
    :try_start_13
    iget-wide v6, v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:J

    const-wide/32 v8, 0x1fffff

    and-long/2addr v6, v8

    long-to-int v4, v6

    .line 812
    .end local v4    # "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .end local v5    # "$i$f$getCreatedWorkers":I
    iget v5, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->corePoolSize:I
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_6b

    if-gt v4, v5, :cond_20

    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$synchronized":I
    .end local v3    # "$i$a$-synchronized-CoroutineScheduler$Worker$tryTerminateWorker$1":I
    monitor-exit v0

    return-void

    .line 817
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v2    # "$i$f$synchronized":I
    .restart local v3    # "$i$a$-synchronized-CoroutineScheduler$Worker$tryTerminateWorker$1":I
    :cond_20
    :try_start_20
    sget-object v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->workerCtl$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-virtual {v4, p0, v5, v6}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v4
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_6b

    if-nez v4, :cond_2c

    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$synchronized":I
    .end local v3    # "$i$a$-synchronized-CoroutineScheduler$Worker$tryTerminateWorker$1":I
    monitor-exit v0

    return-void

    .line 824
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v2    # "$i$f$synchronized":I
    .restart local v3    # "$i$a$-synchronized-CoroutineScheduler$Worker$tryTerminateWorker$1":I
    :cond_2c
    :try_start_2c
    iget v4, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->indexInArray:I

    .line 825
    .local v4, "oldIndex":I
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->setIndexInArray(I)V

    .line 833
    invoke-virtual {v1, p0, v4, v5}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStackTopUpdate(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;II)V

    .line 838
    move-object v5, v1

    .local v5, "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v6, 0x0

    .line 998
    .local v6, "$i$f$decrementCreatedWorkers":I
    sget-object v7, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v7, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndDecrement(Ljava/lang/Object;)J

    move-result-wide v10

    .local v10, "state$iv$iv":J
    move-object v7, v5

    .local v7, "this_$iv$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v12, 0x0

    .line 999
    .local v12, "$i$f$createdWorkers":I
    and-long/2addr v8, v10

    long-to-int v7, v8

    .line 998
    .end local v7    # "this_$iv$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .end local v10    # "state$iv$iv":J
    .end local v12    # "$i$f$createdWorkers":I
    nop

    .line 838
    .end local v5    # "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .end local v6    # "$i$f$decrementCreatedWorkers":I
    nop

    .line 839
    .local v7, "lastIndex":I
    if-eq v7, v4, :cond_5b

    .line 840
    iget-object v5, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    invoke-virtual {v5, v7}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    .line 841
    .local v5, "lastWorker":Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    iget-object v6, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    invoke-virtual {v6, v4, v5}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->setSynchronized(ILjava/lang/Object;)V

    .line 842
    invoke-virtual {v5, v4}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->setIndexInArray(I)V

    .line 850
    invoke-virtual {v1, v5, v7, v4}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStackTopUpdate(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;II)V

    .line 855
    .end local v5    # "lastWorker":Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    :cond_5b
    iget-object v1, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    const/4 v5, 0x0

    invoke-virtual {v1, v7, v5}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->setSynchronized(ILjava/lang/Object;)V

    .line 856
    nop

    .end local v3    # "$i$a$-synchronized-CoroutineScheduler$Worker$tryTerminateWorker$1":I
    .end local v4    # "oldIndex":I
    .end local v7    # "lastIndex":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_64
    .catchall {:try_start_2c .. :try_end_64} :catchall_6b

    monitor-exit v0

    .line 996
    nop

    .line 857
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$synchronized":I
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 858
    return-void

    .line 856
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v2    # "$i$f$synchronized":I
    :catchall_6b
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final findTask(Z)Lkotlinx/coroutines/scheduling/Task;
    .registers 4
    .param p1, "scanLocalQueue"    # Z

    .line 870
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->tryAcquireCpuPermit()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->findAnyTask(Z)Lkotlinx/coroutines/scheduling/Task;

    move-result-object v0

    return-object v0

    .line 872
    :cond_b
    if-eqz p1, :cond_20

    .line 873
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/WorkQueue;->poll()Lkotlinx/coroutines/scheduling/Task;

    move-result-object v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object v0, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalBlockingQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/GlobalQueue;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    goto :goto_2a

    .line 875
    :cond_20
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object v0, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalBlockingQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/GlobalQueue;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    .line 872
    :cond_2a
    :goto_2a
    nop

    .line 877
    .local v0, "task":Lkotlinx/coroutines/scheduling/Task;
    if-nez v0, :cond_33

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->trySteal(Z)Lkotlinx/coroutines/scheduling/Task;

    move-result-object v1

    goto :goto_34

    :cond_33
    move-object v1, v0

    :goto_34
    return-object v1
.end method

.method public final getIndexInArray()I
    .registers 2

    .line 586
    iget v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->indexInArray:I

    return v0
.end method

.method public final getNextParkedWorker()Ljava/lang/Object;
    .registers 2

    .line 630
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextParkedWorker:Ljava/lang/Object;

    return-object v0
.end method

.method public final getScheduler()Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .registers 3

    const/4 v0, 0x0

    .line 596
    .local v0, "$i$f$getScheduler":I
    invoke-static {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->access$getThis$0$p(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    move-result-object v1

    return-object v1
.end method

.method public final nextInt(I)I
    .registers 5
    .param p1, "upperBound"    # I

    .line 778
    iget v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->rngState:I

    .line 779
    .local v0, "r":I
    shl-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    .line 780
    shr-int/lit8 v1, v0, 0x11

    xor-int/2addr v0, v1

    .line 781
    shl-int/lit8 v1, v0, 0x5

    xor-int/2addr v0, v1

    .line 782
    iput v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->rngState:I

    .line 783
    add-int/lit8 v1, p1, -0x1

    .line 785
    .local v1, "mask":I
    and-int v2, v1, p1

    if-nez v2, :cond_16

    .line 786
    and-int v2, v0, v1

    return v2

    .line 788
    :cond_16
    const v2, 0x7fffffff

    and-int/2addr v2, v0

    rem-int/2addr v2, p1

    return v2
.end method

.method public run()V
    .registers 1

    .line 664
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->runWorker()V

    return-void
.end method

.method public final setIndexInArray(I)V
    .registers 4
    .param p1, "index"    # I

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object v1, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->schedulerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-worker-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p1, :cond_18

    const-string v1, "TERMINATED"

    goto :goto_1c

    :cond_18
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->setName(Ljava/lang/String;)V

    .line 589
    iput p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->indexInArray:I

    .line 590
    return-void
.end method

.method public final setNextParkedWorker(Ljava/lang/Object;)V
    .registers 2
    .param p1, "<set-?>"    # Ljava/lang/Object;

    .line 630
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextParkedWorker:Ljava/lang/Object;

    return-void
.end method

.method public final tryReleaseCpu(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z
    .registers 9
    .param p1, "newState"    # Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 657
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 658
    .local v0, "previousState":Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->CPU_ACQUIRED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne v0, v1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    .line 659
    .local v1, "hadCpu":Z
    :goto_9
    if-eqz v1, :cond_18

    iget-object v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .local v2, "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v3, 0x0

    .line 991
    .local v3, "$i$f$releaseCpuPermit":I
    sget-object v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide v5, 0x40000000000L

    invoke-virtual {v4, v2, v5, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 660
    .end local v2    # "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .end local v3    # "$i$f$releaseCpuPermit":I
    :cond_18
    if-eq v0, p1, :cond_1c

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 661
    :cond_1c
    return v1
.end method

###### Class kotlinx.coroutines.scheduling.CoroutineScheduler.WorkerState (kotlinx.coroutines.scheduling.CoroutineScheduler$WorkerState)
.class public final enum Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;
.super Ljava/lang/Enum;
.source "CoroutineScheduler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/scheduling/CoroutineScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WorkerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;",
        "",
        "(Ljava/lang/String;I)V",
        "CPU_ACQUIRED",
        "BLOCKING",
        "PARKING",
        "DORMANT",
        "TERMINATED",
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


# static fields
.field private static final synthetic $VALUES:[Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

.field public static final enum BLOCKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

.field public static final enum CPU_ACQUIRED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

.field public static final enum DORMANT:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

.field public static final enum PARKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

.field public static final enum TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;


# direct methods
.method private static final synthetic $values()[Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;
    .registers 3

    const/4 v0, 0x5

    new-array v0, v0, [Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->CPU_ACQUIRED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->BLOCKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->PARKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->DORMANT:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 943
    new-instance v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    const-string v1, "CPU_ACQUIRED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->CPU_ACQUIRED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 948
    new-instance v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    const-string v1, "BLOCKING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->BLOCKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 953
    new-instance v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    const-string v1, "PARKING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->PARKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 958
    new-instance v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    const-string v1, "DORMANT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->DORMANT:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 963
    new-instance v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    const-string v1, "TERMINATED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-static {}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->$values()[Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->$VALUES:[Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 939
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;
    .registers 2

    const-class v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    return-object v0
.end method

.method public static values()[Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;
    .registers 1

    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->$VALUES:[Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    return-object v0
.end method
