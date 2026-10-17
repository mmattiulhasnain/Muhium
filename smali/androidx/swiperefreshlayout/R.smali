###### Class androidx.swiperefreshlayout.R (androidx.swiperefreshlayout.R)
.class public final Landroidx/swiperefreshlayout/R;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/swiperefreshlayout/R$attr;,
        Landroidx/swiperefreshlayout/R$styleable;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class androidx.swiperefreshlayout.R.attr (androidx.swiperefreshlayout.R$attr)
.class public final Landroidx/swiperefreshlayout/R$attr;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/swiperefreshlayout/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field public static swipeRefreshLayoutProgressSpinnerBackgroundColor:I = 0x7f0303c2


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class androidx.swiperefreshlayout.R.styleable (androidx.swiperefreshlayout.R$styleable)
.class public final Landroidx/swiperefreshlayout/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/swiperefreshlayout/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static SwipeRefreshLayout:[I

.field public static SwipeRefreshLayout_swipeRefreshLayoutProgressSpinnerBackgroundColor:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const v0, 0x7f0303c2

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/swiperefreshlayout/R$styleable;->SwipeRefreshLayout:[I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
