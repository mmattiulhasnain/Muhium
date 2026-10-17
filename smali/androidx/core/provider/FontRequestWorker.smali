###### Class androidx.core.provider.FontRequestWorker (androidx.core.provider.FontRequestWorker)
.class Landroidx/core/provider/FontRequestWorker;
.super Ljava/lang/Object;
.source "FontRequestWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/provider/FontRequestWorker$TypefaceResult;
    }
.end annotation


# static fields
.field private static final DEFAULT_EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

.field static final LOCK:Ljava/lang/Object;

.field static final PENDING_REPLIES:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroidx/core/util/Consumer<",
            "Landroidx/core/provider/FontRequestWorker$TypefaceResult;",
            ">;>;>;"
        }
    .end annotation
.end field

.field static final sTypefaceCache:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 58
    new-instance v0, Landroidx/collection/LruCache;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    sput-object v0, Landroidx/core/provider/FontRequestWorker;->sTypefaceCache:Landroidx/collection/LruCache;

    .line 60
    nop

    .line 61
    const-string v0, "fonts-androidx"

    const/16 v1, 0xa

    const/16 v2, 0x2710

    invoke-static {v0, v1, v2}, Landroidx/core/provider/RequestExecutor;->createDefaultExecutor(Ljava/lang/String;II)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Landroidx/core/provider/FontRequestWorker;->DEFAULT_EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/provider/FontRequestWorker;->LOCK:Ljava/lang/Object;

    .line 72
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    sput-object v0, Landroidx/core/provider/FontRequestWorker;->PENDING_REPLIES:Landroidx/collection/SimpleArrayMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createCacheId(Landroidx/core/provider/FontRequest;I)Ljava/lang/String;
    .registers 4
    .param p0, "request"    # Landroidx/core/provider/FontRequest;
    .param p1, "style"    # I

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/core/provider/FontRequest;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getFontFamilyResultStatus(Landroidx/core/provider/FontsContractCompat$FontFamilyResult;)I
    .registers 8
    .param p0, "fontFamilyResult"    # Landroidx/core/provider/FontsContractCompat$FontFamilyResult;

    .line 269
    invoke-virtual {p0}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->getStatusCode()I

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_11

    .line 270
    invoke-virtual {p0}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->getStatusCode()I

    move-result v0

    packed-switch v0, :pswitch_data_34

    .line 274
    return v1

    .line 272
    :pswitch_f
    const/4 v0, -0x2

    return v0

    .line 277
    :cond_11
    invoke-virtual {p0}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->getFonts()[Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v0

    .line 278
    .local v0, "fonts":[Landroidx/core/provider/FontsContractCompat$FontInfo;
    if-eqz v0, :cond_31

    array-length v2, v0

    if-nez v2, :cond_1b

    goto :goto_31

    .line 282
    :cond_1b
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_1e
    if-ge v4, v2, :cond_30

    aget-object v5, v0, v4

    .line 285
    .local v5, "font":Landroidx/core/provider/FontsContractCompat$FontInfo;
    invoke-virtual {v5}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getResultCode()I

    move-result v6

    .line 286
    .local v6, "resultCode":I
    if-eqz v6, :cond_2d

    .line 289
    if-gez v6, :cond_2b

    goto :goto_2c

    :cond_2b
    move v1, v6

    :goto_2c
    return v1

    .line 282
    .end local v5    # "font":Landroidx/core/provider/FontsContractCompat$FontInfo;
    .end local v6    # "resultCode":I
    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 293
    :cond_30
    return v3

    .line 279
    :cond_31
    :goto_31
    const/4 v1, 0x1

    return v1

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_f
    .end packed-switch
.end method

.method static getFontSync(Ljava/lang/String;Landroid/content/Context;Landroidx/core/provider/FontRequest;I)Landroidx/core/provider/FontRequestWorker$TypefaceResult;
    .registers 10
    .param p0, "cacheId"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "request"    # Landroidx/core/provider/FontRequest;
    .param p3, "style"    # I

    .line 238
    sget-object v0, Landroidx/core/provider/FontRequestWorker;->sTypefaceCache:Landroidx/collection/LruCache;

    invoke-virtual {v0, p0}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 239
    .local v0, "cached":Landroid/graphics/Typeface;
    if-eqz v0, :cond_10

    .line 240
    new-instance v1, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    invoke-direct {v1, v0}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(Landroid/graphics/Typeface;)V

    return-object v1

    .line 245
    :cond_10
    const/4 v1, 0x0

    :try_start_11
    invoke-static {p1, p2, v1}, Landroidx/core/provider/FontProvider;->getFontFamilyResult(Landroid/content/Context;Landroidx/core/provider/FontRequest;Landroid/os/CancellationSignal;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;

    move-result-object v2
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_15} :catch_3f

    .line 248
    .local v2, "result":Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
    nop

    .line 250
    invoke-static {v2}, Landroidx/core/provider/FontRequestWorker;->getFontFamilyResultStatus(Landroidx/core/provider/FontsContractCompat$FontFamilyResult;)I

    move-result v3

    .line 251
    .local v3, "fontFamilyResultStatus":I
    if-eqz v3, :cond_22

    .line 252
    new-instance v1, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    invoke-direct {v1, v3}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(I)V

    return-object v1

    .line 255
    :cond_22
    nop

    .line 256
    invoke-virtual {v2}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->getFonts()[Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v4

    .line 255
    invoke-static {p1, v1, v4, p3}, Landroidx/core/graphics/TypefaceCompat;->createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 258
    .local v1, "typeface":Landroid/graphics/Typeface;
    if-eqz v1, :cond_38

    .line 259
    sget-object v4, Landroidx/core/provider/FontRequestWorker;->sTypefaceCache:Landroidx/collection/LruCache;

    invoke-virtual {v4, p0, v1}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    new-instance v4, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    invoke-direct {v4, v1}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(Landroid/graphics/Typeface;)V

    return-object v4

    .line 262
    :cond_38
    new-instance v4, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    const/4 v5, -0x3

    invoke-direct {v4, v5}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(I)V

    return-object v4

    .line 246
    .end local v1    # "typeface":Landroid/graphics/Typeface;
    .end local v2    # "result":Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
    .end local v3    # "fontFamilyResultStatus":I
    :catch_3f
    move-exception v1

    .line 247
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(I)V

    return-object v2
.end method

.method static requestFontAsync(Landroid/content/Context;Landroidx/core/provider/FontRequest;ILjava/util/concurrent/Executor;Landroidx/core/provider/CallbackWithHandler;)Landroid/graphics/Typeface;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Landroidx/core/provider/FontRequest;
    .param p2, "style"    # I
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroidx/core/provider/CallbackWithHandler;

    .line 164
    invoke-static {p1, p2}, Landroidx/core/provider/FontRequestWorker;->createCacheId(Landroidx/core/provider/FontRequest;I)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "id":Ljava/lang/String;
    sget-object v1, Landroidx/core/provider/FontRequestWorker;->sTypefaceCache:Landroidx/collection/LruCache;

    invoke-virtual {v1, v0}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    .line 166
    .local v1, "cached":Landroid/graphics/Typeface;
    if-eqz v1, :cond_17

    .line 167
    new-instance v2, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    invoke-direct {v2, v1}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {p4, v2}, Landroidx/core/provider/CallbackWithHandler;->onTypefaceResult(Landroidx/core/provider/FontRequestWorker$TypefaceResult;)V

    .line 168
    return-object v1

    .line 171
    :cond_17
    new-instance v2, Landroidx/core/provider/FontRequestWorker$2;

    invoke-direct {v2, p4}, Landroidx/core/provider/FontRequestWorker$2;-><init>(Landroidx/core/provider/CallbackWithHandler;)V

    .line 181
    .local v2, "reply":Landroidx/core/util/Consumer;, "Landroidx/core/util/Consumer<Landroidx/core/provider/FontRequestWorker$TypefaceResult;>;"
    sget-object v3, Landroidx/core/provider/FontRequestWorker;->LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 182
    :try_start_1f
    sget-object v4, Landroidx/core/provider/FontRequestWorker;->PENDING_REPLIES:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v4, v0}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 183
    .local v4, "pendingReplies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/util/Consumer<Landroidx/core/provider/FontRequestWorker$TypefaceResult;>;>;"
    const/4 v5, 0x0

    if-eqz v4, :cond_2f

    .line 186
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    monitor-exit v3

    return-object v5

    .line 189
    :cond_2f
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .end local v4    # "pendingReplies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/util/Consumer<Landroidx/core/provider/FontRequestWorker$TypefaceResult;>;>;"
    .local v6, "pendingReplies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/util/Consumer<Landroidx/core/provider/FontRequestWorker$TypefaceResult;>;>;"
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    sget-object v4, Landroidx/core/provider/FontRequestWorker;->PENDING_REPLIES:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v4, v0, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    nop

    .end local v6    # "pendingReplies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/util/Consumer<Landroidx/core/provider/FontRequestWorker$TypefaceResult;>;>;"
    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_1f .. :try_end_3e} :catchall_52

    .line 194
    new-instance v3, Landroidx/core/provider/FontRequestWorker$3;

    invoke-direct {v3, v0, p0, p1, p2}, Landroidx/core/provider/FontRequestWorker$3;-><init>(Ljava/lang/String;Landroid/content/Context;Landroidx/core/provider/FontRequest;I)V

    .line 204
    .local v3, "fetcher":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Landroidx/core/provider/FontRequestWorker$TypefaceResult;>;"
    if-nez p3, :cond_48

    sget-object v4, Landroidx/core/provider/FontRequestWorker;->DEFAULT_EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    goto :goto_49

    :cond_48
    move-object v4, p3

    .line 206
    .local v4, "finalExecutor":Ljava/util/concurrent/Executor;
    :goto_49
    new-instance v6, Landroidx/core/provider/FontRequestWorker$4;

    invoke-direct {v6, v0}, Landroidx/core/provider/FontRequestWorker$4;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v3, v6}, Landroidx/core/provider/RequestExecutor;->execute(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;Landroidx/core/util/Consumer;)V

    .line 223
    return-object v5

    .line 192
    .end local v3    # "fetcher":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Landroidx/core/provider/FontRequestWorker$TypefaceResult;>;"
    .end local v4    # "finalExecutor":Ljava/util/concurrent/Executor;
    :catchall_52
    move-exception v4

    :try_start_53
    monitor-exit v3
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v4
.end method

.method static requestFontSync(Landroid/content/Context;Landroidx/core/provider/FontRequest;Landroidx/core/provider/CallbackWithHandler;II)Landroid/graphics/Typeface;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Landroidx/core/provider/FontRequest;
    .param p2, "callback"    # Landroidx/core/provider/CallbackWithHandler;
    .param p3, "style"    # I
    .param p4, "timeoutInMillis"    # I

    .line 102
    invoke-static {p1, p3}, Landroidx/core/provider/FontRequestWorker;->createCacheId(Landroidx/core/provider/FontRequest;I)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "id":Ljava/lang/String;
    sget-object v1, Landroidx/core/provider/FontRequestWorker;->sTypefaceCache:Landroidx/collection/LruCache;

    invoke-virtual {v1, v0}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    .line 104
    .local v1, "cached":Landroid/graphics/Typeface;
    if-eqz v1, :cond_17

    .line 105
    new-instance v2, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    invoke-direct {v2, v1}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {p2, v2}, Landroidx/core/provider/CallbackWithHandler;->onTypefaceResult(Landroidx/core/provider/FontRequestWorker$TypefaceResult;)V

    .line 106
    return-object v1

    .line 110
    :cond_17
    const/4 v2, -0x1

    if-ne p4, v2, :cond_24

    .line 112
    invoke-static {v0, p0, p1, p3}, Landroidx/core/provider/FontRequestWorker;->getFontSync(Ljava/lang/String;Landroid/content/Context;Landroidx/core/provider/FontRequest;I)Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    move-result-object v2

    .line 113
    .local v2, "typefaceResult":Landroidx/core/provider/FontRequestWorker$TypefaceResult;
    invoke-virtual {p2, v2}, Landroidx/core/provider/CallbackWithHandler;->onTypefaceResult(Landroidx/core/provider/FontRequestWorker$TypefaceResult;)V

    .line 114
    iget-object v3, v2, Landroidx/core/provider/FontRequestWorker$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;

    return-object v3

    .line 117
    .end local v2    # "typefaceResult":Landroidx/core/provider/FontRequestWorker$TypefaceResult;
    :cond_24
    new-instance v2, Landroidx/core/provider/FontRequestWorker$1;

    invoke-direct {v2, v0, p0, p1, p3}, Landroidx/core/provider/FontRequestWorker$1;-><init>(Ljava/lang/String;Landroid/content/Context;Landroidx/core/provider/FontRequest;I)V

    .line 125
    .local v2, "fetcher":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Landroidx/core/provider/FontRequestWorker$TypefaceResult;>;"
    :try_start_29
    sget-object v3, Landroidx/core/provider/FontRequestWorker;->DEFAULT_EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    invoke-static {v3, v2, p4}, Landroidx/core/provider/RequestExecutor;->submit(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Callable;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    .line 130
    .local v3, "typefaceResult":Landroidx/core/provider/FontRequestWorker$TypefaceResult;
    invoke-virtual {p2, v3}, Landroidx/core/provider/CallbackWithHandler;->onTypefaceResult(Landroidx/core/provider/FontRequestWorker$TypefaceResult;)V

    .line 131
    iget-object v4, v3, Landroidx/core/provider/FontRequestWorker$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;
    :try_end_36
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_36} :catch_37

    return-object v4

    .line 132
    .end local v3    # "typefaceResult":Landroidx/core/provider/FontRequestWorker$TypefaceResult;
    :catch_37
    move-exception v3

    .line 133
    .local v3, "e":Ljava/lang/InterruptedException;
    new-instance v4, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    const/4 v5, -0x3

    invoke-direct {v4, v5}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(I)V

    invoke-virtual {p2, v4}, Landroidx/core/provider/CallbackWithHandler;->onTypefaceResult(Landroidx/core/provider/FontRequestWorker$TypefaceResult;)V

    .line 134
    const/4 v4, 0x0

    return-object v4
.end method

.method static resetTypefaceCache()V
    .registers 1

    .line 76
    sget-object v0, Landroidx/core/provider/FontRequestWorker;->sTypefaceCache:Landroidx/collection/LruCache;

    invoke-virtual {v0}, Landroidx/collection/LruCache;->evictAll()V

    .line 77
    return-void
.end method

###### Class androidx.core.provider.FontRequestWorker.AnonymousClass1 (androidx.core.provider.FontRequestWorker$1)
.class Landroidx/core/provider/FontRequestWorker$1;
.super Ljava/lang/Object;
.source "FontRequestWorker.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/provider/FontRequestWorker;->requestFontSync(Landroid/content/Context;Landroidx/core/provider/FontRequest;Landroidx/core/provider/CallbackWithHandler;II)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroidx/core/provider/FontRequestWorker$TypefaceResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$request:Landroidx/core/provider/FontRequest;

.field final synthetic val$style:I


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroidx/core/provider/FontRequest;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 117
    iput-object p1, p0, Landroidx/core/provider/FontRequestWorker$1;->val$id:Ljava/lang/String;

    iput-object p2, p0, Landroidx/core/provider/FontRequestWorker$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Landroidx/core/provider/FontRequestWorker$1;->val$request:Landroidx/core/provider/FontRequest;

    iput p4, p0, Landroidx/core/provider/FontRequestWorker$1;->val$style:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroidx/core/provider/FontRequestWorker$TypefaceResult;
    .registers 5

    .line 120
    iget-object v0, p0, Landroidx/core/provider/FontRequestWorker$1;->val$id:Ljava/lang/String;

    iget-object v1, p0, Landroidx/core/provider/FontRequestWorker$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Landroidx/core/provider/FontRequestWorker$1;->val$request:Landroidx/core/provider/FontRequest;

    iget v3, p0, Landroidx/core/provider/FontRequestWorker$1;->val$style:I

    invoke-static {v0, v1, v2, v3}, Landroidx/core/provider/FontRequestWorker;->getFontSync(Ljava/lang/String;Landroid/content/Context;Landroidx/core/provider/FontRequest;I)Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Landroidx/core/provider/FontRequestWorker$1;->call()Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    move-result-object v0

    return-object v0
.end method

###### Class androidx.core.provider.FontRequestWorker.AnonymousClass2 (androidx.core.provider.FontRequestWorker$2)
.class Landroidx/core/provider/FontRequestWorker$2;
.super Ljava/lang/Object;
.source "FontRequestWorker.java"

# interfaces
.implements Landroidx/core/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/provider/FontRequestWorker;->requestFontAsync(Landroid/content/Context;Landroidx/core/provider/FontRequest;ILjava/util/concurrent/Executor;Landroidx/core/provider/CallbackWithHandler;)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/util/Consumer<",
        "Landroidx/core/provider/FontRequestWorker$TypefaceResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Landroidx/core/provider/CallbackWithHandler;


# direct methods
.method constructor <init>(Landroidx/core/provider/CallbackWithHandler;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 171
    iput-object p1, p0, Landroidx/core/provider/FontRequestWorker$2;->val$callback:Landroidx/core/provider/CallbackWithHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Landroidx/core/provider/FontRequestWorker$TypefaceResult;)V
    .registers 4
    .param p1, "typefaceResult"    # Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    .line 174
    if-nez p1, :cond_9

    .line 175
    new-instance v0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    const/4 v1, -0x3

    invoke-direct {v0, v1}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(I)V

    move-object p1, v0

    .line 177
    :cond_9
    iget-object v0, p0, Landroidx/core/provider/FontRequestWorker$2;->val$callback:Landroidx/core/provider/CallbackWithHandler;

    invoke-virtual {v0, p1}, Landroidx/core/provider/CallbackWithHandler;->onTypefaceResult(Landroidx/core/provider/FontRequestWorker$TypefaceResult;)V

    .line 178
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 171
    check-cast p1, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    invoke-virtual {p0, p1}, Landroidx/core/provider/FontRequestWorker$2;->accept(Landroidx/core/provider/FontRequestWorker$TypefaceResult;)V

    return-void
.end method

###### Class androidx.core.provider.FontRequestWorker.AnonymousClass3 (androidx.core.provider.FontRequestWorker$3)
.class Landroidx/core/provider/FontRequestWorker$3;
.super Ljava/lang/Object;
.source "FontRequestWorker.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/provider/FontRequestWorker;->requestFontAsync(Landroid/content/Context;Landroidx/core/provider/FontRequest;ILjava/util/concurrent/Executor;Landroidx/core/provider/CallbackWithHandler;)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroidx/core/provider/FontRequestWorker$TypefaceResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$request:Landroidx/core/provider/FontRequest;

.field final synthetic val$style:I


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroidx/core/provider/FontRequest;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 194
    iput-object p1, p0, Landroidx/core/provider/FontRequestWorker$3;->val$id:Ljava/lang/String;

    iput-object p2, p0, Landroidx/core/provider/FontRequestWorker$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Landroidx/core/provider/FontRequestWorker$3;->val$request:Landroidx/core/provider/FontRequest;

    iput p4, p0, Landroidx/core/provider/FontRequestWorker$3;->val$style:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroidx/core/provider/FontRequestWorker$TypefaceResult;
    .registers 5

    .line 198
    :try_start_0
    iget-object v0, p0, Landroidx/core/provider/FontRequestWorker$3;->val$id:Ljava/lang/String;

    iget-object v1, p0, Landroidx/core/provider/FontRequestWorker$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Landroidx/core/provider/FontRequestWorker$3;->val$request:Landroidx/core/provider/FontRequest;

    iget v3, p0, Landroidx/core/provider/FontRequestWorker$3;->val$style:I

    invoke-static {v0, v1, v2, v3}, Landroidx/core/provider/FontRequestWorker;->getFontSync(Ljava/lang/String;Landroid/content/Context;Landroidx/core/provider/FontRequest;I)Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    return-object v0

    .line 199
    :catchall_d
    move-exception v0

    .line 200
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    const/4 v2, -0x3

    invoke-direct {v1, v2}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(I)V

    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 194
    invoke-virtual {p0}, Landroidx/core/provider/FontRequestWorker$3;->call()Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    move-result-object v0

    return-object v0
.end method

###### Class androidx.core.provider.FontRequestWorker.AnonymousClass4 (androidx.core.provider.FontRequestWorker$4)
.class Landroidx/core/provider/FontRequestWorker$4;
.super Ljava/lang/Object;
.source "FontRequestWorker.java"

# interfaces
.implements Landroidx/core/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/provider/FontRequestWorker;->requestFontAsync(Landroid/content/Context;Landroidx/core/provider/FontRequest;ILjava/util/concurrent/Executor;Landroidx/core/provider/CallbackWithHandler;)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/util/Consumer<",
        "Landroidx/core/provider/FontRequestWorker$TypefaceResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 206
    iput-object p1, p0, Landroidx/core/provider/FontRequestWorker$4;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Landroidx/core/provider/FontRequestWorker$TypefaceResult;)V
    .registers 6
    .param p1, "typefaceResult"    # Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    .line 210
    sget-object v0, Landroidx/core/provider/FontRequestWorker;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_3
    sget-object v1, Landroidx/core/provider/FontRequestWorker;->PENDING_REPLIES:Landroidx/collection/SimpleArrayMap;

    iget-object v2, p0, Landroidx/core/provider/FontRequestWorker$4;->val$id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 212
    .local v1, "replies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/util/Consumer<Landroidx/core/provider/FontRequestWorker$TypefaceResult;>;>;"
    if-nez v1, :cond_11

    .line 213
    monitor-exit v0

    return-void

    .line 215
    :cond_11
    sget-object v2, Landroidx/core/provider/FontRequestWorker;->PENDING_REPLIES:Landroidx/collection/SimpleArrayMap;

    iget-object v3, p0, Landroidx/core/provider/FontRequestWorker$4;->val$id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_2d

    .line 217
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2c

    .line 218
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/util/Consumer;

    invoke-interface {v2, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 220
    .end local v0    # "i":I
    :cond_2c
    return-void

    .line 216
    .end local v1    # "replies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/util/Consumer<Landroidx/core/provider/FontRequestWorker$TypefaceResult;>;>;"
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 206
    check-cast p1, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    invoke-virtual {p0, p1}, Landroidx/core/provider/FontRequestWorker$4;->accept(Landroidx/core/provider/FontRequestWorker$TypefaceResult;)V

    return-void
.end method

###### Class androidx.core.provider.FontRequestWorker.TypefaceResult (androidx.core.provider.FontRequestWorker$TypefaceResult)
.class final Landroidx/core/provider/FontRequestWorker$TypefaceResult;
.super Ljava/lang/Object;
.source "FontRequestWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/provider/FontRequestWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TypefaceResult"
.end annotation


# instance fields
.field final mResult:I

.field final mTypeface:Landroid/graphics/Typeface;


# direct methods
.method constructor <init>(I)V
    .registers 3
    .param p1, "result"    # I

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;

    .line 303
    iput p1, p0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;->mResult:I

    .line 304
    return-void
.end method

.method constructor <init>(Landroid/graphics/Typeface;)V
    .registers 3
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    iput-object p1, p0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;

    .line 309
    const/4 v0, 0x0

    iput v0, p0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;->mResult:I

    .line 310
    return-void
.end method


# virtual methods
.method isSuccess()Z
    .registers 2

    .line 314
    iget v0, p0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;->mResult:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
