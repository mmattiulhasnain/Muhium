###### Class androidx.core.database.CursorWindowCompat (androidx.core.database.CursorWindowCompat)
.class public final Landroidx/core/database/CursorWindowCompat;
.super Ljava/lang/Object;
.source "CursorWindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/database/CursorWindowCompat$Api28Impl;,
        Landroidx/core/database/CursorWindowCompat$Api15Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static create(Ljava/lang/String;J)Landroid/database/CursorWindow;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "windowSizeBytes"    # J

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_b

    .line 45
    invoke-static {p0, p1, p2}, Landroidx/core/database/CursorWindowCompat$Api28Impl;->createCursorWindow(Ljava/lang/String;J)Landroid/database/CursorWindow;

    move-result-object v0

    return-object v0

    .line 46
    :cond_b
    nop

    .line 47
    invoke-static {p0}, Landroidx/core/database/CursorWindowCompat$Api15Impl;->createCursorWindow(Ljava/lang/String;)Landroid/database/CursorWindow;

    move-result-object v0

    return-object v0
.end method

###### Class androidx.core.database.CursorWindowCompat.Api15Impl (androidx.core.database.CursorWindowCompat$Api15Impl)
.class Landroidx/core/database/CursorWindowCompat$Api15Impl;
.super Ljava/lang/Object;
.source "CursorWindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/database/CursorWindowCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api15Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method static createCursorWindow(Ljava/lang/String;)Landroid/database/CursorWindow;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 73
    new-instance v0, Landroid/database/CursorWindow;

    invoke-direct {v0, p0}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

###### Class androidx.core.database.CursorWindowCompat.Api28Impl (androidx.core.database.CursorWindowCompat$Api28Impl)
.class Landroidx/core/database/CursorWindowCompat$Api28Impl;
.super Ljava/lang/Object;
.source "CursorWindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/database/CursorWindowCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api28Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method static createCursorWindow(Ljava/lang/String;J)Landroid/database/CursorWindow;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "windowSizeBytes"    # J

    .line 61
    new-instance v0, Landroid/database/CursorWindow;

    invoke-direct {v0, p0, p1, p2}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method
