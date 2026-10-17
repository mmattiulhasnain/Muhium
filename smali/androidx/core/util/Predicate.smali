###### Class androidx.core.util.Predicate (androidx.core.util.Predicate)
.class public interface abstract Landroidx/core/util/Predicate;
.super Ljava/lang/Object;
.source "Predicate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract and(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Predicate<",
            "-TT;>;)",
            "Landroidx/core/util/Predicate<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract negate()Landroidx/core/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/util/Predicate<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract or(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Predicate<",
            "-TT;>;)",
            "Landroidx/core/util/Predicate<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract test(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

###### Class androidx.core.util.Predicate.CC (androidx.core.util.Predicate$-CC)
.class public final synthetic Landroidx/core/util/Predicate$-CC;
.super Ljava/lang/Object;
.source "Predicate.java"


# direct methods
.method public static $default$and(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .registers 3
    .param p0, "_this"    # Landroidx/core/util/Predicate;

    .line 59
    .local p0, "this":Landroidx/core/util/Predicate;, "Landroidx/core/util/Predicate<TT;>;"
    .local p1, "other":Landroidx/core/util/Predicate;, "Landroidx/core/util/Predicate<-TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Landroidx/core/util/Predicate$$ExternalSyntheticLambda4;-><init>(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;)V

    return-object v0
.end method

.method public static $default$negate(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .registers 2
    .param p0, "_this"    # Landroidx/core/util/Predicate;

    .line 72
    .local p0, "this":Landroidx/core/util/Predicate;, "Landroidx/core/util/Predicate<TT;>;"
    new-instance v0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Landroidx/core/util/Predicate$$ExternalSyntheticLambda5;-><init>(Landroidx/core/util/Predicate;)V

    return-object v0
.end method

.method public static $default$or(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .registers 3
    .param p0, "_this"    # Landroidx/core/util/Predicate;

    .line 93
    .local p0, "this":Landroidx/core/util/Predicate;, "Landroidx/core/util/Predicate<TT;>;"
    .local p1, "other":Landroidx/core/util/Predicate;, "Landroidx/core/util/Predicate<-TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroidx/core/util/Predicate$$ExternalSyntheticLambda1;-><init>(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;)V

    return-object v0
.end method

.method public static synthetic $private$lambda$and$0(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;Ljava/lang/Object;)Z
    .registers 4
    .param p0, "_this"    # Landroidx/core/util/Predicate;
    .param p1, "other"    # Landroidx/core/util/Predicate;
    .param p2, "t"    # Ljava/lang/Object;

    .line 60
    .local p0, "this":Landroidx/core/util/Predicate;, "Landroidx/core/util/Predicate<TT;>;"
    invoke-interface {p0, p2}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1, p2}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static synthetic $private$lambda$negate$1(Landroidx/core/util/Predicate;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "_this"    # Landroidx/core/util/Predicate;
    .param p1, "t"    # Ljava/lang/Object;

    .line 72
    .local p0, "this":Landroidx/core/util/Predicate;, "Landroidx/core/util/Predicate<TT;>;"
    invoke-interface {p0, p1}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static synthetic $private$lambda$or$2(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;Ljava/lang/Object;)Z
    .registers 4
    .param p0, "_this"    # Landroidx/core/util/Predicate;
    .param p1, "other"    # Landroidx/core/util/Predicate;
    .param p2, "t"    # Ljava/lang/Object;

    .line 94
    .local p0, "this":Landroidx/core/util/Predicate;, "Landroidx/core/util/Predicate<TT;>;"
    invoke-interface {p0, p2}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-interface {p1, p2}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public static isEqual(Ljava/lang/Object;)Landroidx/core/util/Predicate;
    .registers 2
    .param p0, "targetRef"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Landroidx/core/util/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 109
    if-nez p0, :cond_8

    .line 110
    new-instance v0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroidx/core/util/Predicate$$ExternalSyntheticLambda2;-><init>()V

    goto :goto_d

    .line 111
    :cond_8
    new-instance v0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Landroidx/core/util/Predicate$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;)V

    .line 109
    :goto_d
    return-object v0
.end method

.method public static synthetic lambda$isEqual$3(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "object"    # Ljava/lang/Object;

    .line 110
    invoke-static {p0}, Landroidx/core/util/Predicate$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$isEqual$4(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "targetRef"    # Ljava/lang/Object;
    .param p1, "object"    # Ljava/lang/Object;

    .line 111
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static not(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/core/util/Predicate<",
            "-TT;>;)",
            "Landroidx/core/util/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 129
    .local p0, "target":Landroidx/core/util/Predicate;, "Landroidx/core/util/Predicate<-TT;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-interface {p0}, Landroidx/core/util/Predicate;->negate()Landroidx/core/util/Predicate;

    move-result-object v0

    return-object v0
.end method

###### Class androidx.core.util.Predicate$$ExternalSyntheticLambda1 (androidx.core.util.Predicate$$ExternalSyntheticLambda1)
.class public final synthetic Landroidx/core/util/Predicate$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/util/Predicate;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/core/util/Predicate;"
    method = "lambda$or$2"
    proto = "(Landroidx/core/util/Predicate;Ljava/lang/Object;)Z"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x1c
    versionHash = "3b119036505a817327d30bbe4a430e8676906c2ab0a3363856806bcd3b289007"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/core/util/Predicate;

.field public final synthetic f$1:Landroidx/core/util/Predicate;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda1;->f$0:Landroidx/core/util/Predicate;

    iput-object p2, p0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda1;->f$1:Landroidx/core/util/Predicate;

    return-void
.end method


# virtual methods
.method public synthetic and(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Landroidx/core/util/Predicate$-CC;->$default$and(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public synthetic negate()Landroidx/core/util/Predicate;
    .registers 2

    .line 0
    invoke-static {p0}, Landroidx/core/util/Predicate$-CC;->$default$negate(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public synthetic or(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Landroidx/core/util/Predicate$-CC;->$default$or(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public final test(Ljava/lang/Object;)Z
    .registers 4

    .line 0
    iget-object v0, p0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda1;->f$0:Landroidx/core/util/Predicate;

    iget-object v1, p0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda1;->f$1:Landroidx/core/util/Predicate;

    invoke-static {v0, v1, p1}, Landroidx/core/util/Predicate$-CC;->$private$lambda$or$2(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

###### Class androidx.core.util.Predicate$$ExternalSyntheticLambda2 (androidx.core.util.Predicate$$ExternalSyntheticLambda2)
.class public final synthetic Landroidx/core/util/Predicate$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/util/Predicate;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/core/util/Predicate;"
    method = "lambda$isEqual$3"
    proto = "(Ljava/lang/Object;)Z"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x1c
    versionHash = "3b119036505a817327d30bbe4a430e8676906c2ab0a3363856806bcd3b289007"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic and(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Landroidx/core/util/Predicate$-CC;->$default$and(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public synthetic negate()Landroidx/core/util/Predicate;
    .registers 2

    .line 0
    invoke-static {p0}, Landroidx/core/util/Predicate$-CC;->$default$negate(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public synthetic or(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Landroidx/core/util/Predicate$-CC;->$default$or(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    invoke-static {p1}, Landroidx/core/util/Predicate$-CC;->lambda$isEqual$3(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

###### Class androidx.core.util.Predicate$$ExternalSyntheticLambda3 (androidx.core.util.Predicate$$ExternalSyntheticLambda3)
.class public final synthetic Landroidx/core/util/Predicate$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/util/Predicate;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/core/util/Predicate;"
    method = "lambda$isEqual$4"
    proto = "(Ljava/lang/Object;Ljava/lang/Object;)Z"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x1c
    versionHash = "3b119036505a817327d30bbe4a430e8676906c2ab0a3363856806bcd3b289007"
.end annotation


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public synthetic and(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Landroidx/core/util/Predicate$-CC;->$default$and(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public synthetic negate()Landroidx/core/util/Predicate;
    .registers 2

    .line 0
    invoke-static {p0}, Landroidx/core/util/Predicate$-CC;->$default$negate(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public synthetic or(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Landroidx/core/util/Predicate$-CC;->$default$or(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public final test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroidx/core/util/Predicate$-CC;->lambda$isEqual$4(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

###### Class androidx.core.util.Predicate$$ExternalSyntheticLambda4 (androidx.core.util.Predicate$$ExternalSyntheticLambda4)
.class public final synthetic Landroidx/core/util/Predicate$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/util/Predicate;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/core/util/Predicate;"
    method = "lambda$and$0"
    proto = "(Landroidx/core/util/Predicate;Ljava/lang/Object;)Z"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x1c
    versionHash = "3b119036505a817327d30bbe4a430e8676906c2ab0a3363856806bcd3b289007"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/core/util/Predicate;

.field public final synthetic f$1:Landroidx/core/util/Predicate;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda4;->f$0:Landroidx/core/util/Predicate;

    iput-object p2, p0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda4;->f$1:Landroidx/core/util/Predicate;

    return-void
.end method


# virtual methods
.method public synthetic and(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Landroidx/core/util/Predicate$-CC;->$default$and(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public synthetic negate()Landroidx/core/util/Predicate;
    .registers 2

    .line 0
    invoke-static {p0}, Landroidx/core/util/Predicate$-CC;->$default$negate(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public synthetic or(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Landroidx/core/util/Predicate$-CC;->$default$or(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public final test(Ljava/lang/Object;)Z
    .registers 4

    .line 0
    iget-object v0, p0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda4;->f$0:Landroidx/core/util/Predicate;

    iget-object v1, p0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda4;->f$1:Landroidx/core/util/Predicate;

    invoke-static {v0, v1, p1}, Landroidx/core/util/Predicate$-CC;->$private$lambda$and$0(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

###### Class androidx.core.util.Predicate$$ExternalSyntheticLambda5 (androidx.core.util.Predicate$$ExternalSyntheticLambda5)
.class public final synthetic Landroidx/core/util/Predicate$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/util/Predicate;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/core/util/Predicate;"
    method = "lambda$negate$1"
    proto = "(Ljava/lang/Object;)Z"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x1c
    versionHash = "3b119036505a817327d30bbe4a430e8676906c2ab0a3363856806bcd3b289007"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/core/util/Predicate;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/util/Predicate;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda5;->f$0:Landroidx/core/util/Predicate;

    return-void
.end method


# virtual methods
.method public synthetic and(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Landroidx/core/util/Predicate$-CC;->$default$and(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public synthetic negate()Landroidx/core/util/Predicate;
    .registers 2

    .line 0
    invoke-static {p0}, Landroidx/core/util/Predicate$-CC;->$default$negate(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public synthetic or(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Landroidx/core/util/Predicate$-CC;->$default$or(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public final test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda5;->f$0:Landroidx/core/util/Predicate;

    invoke-static {v0, p1}, Landroidx/core/util/Predicate$-CC;->$private$lambda$negate$1(Landroidx/core/util/Predicate;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
