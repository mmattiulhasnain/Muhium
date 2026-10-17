###### Class androidx.core.os.ProcessCompat (androidx.core.os.ProcessCompat)
.class public final Landroidx/core/os/ProcessCompat;
.super Ljava/lang/Object;
.source "ProcessCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/os/ProcessCompat$Api24Impl;,
        Landroidx/core/os/ProcessCompat$Api17Impl;,
        Landroidx/core/os/ProcessCompat$Api16Impl;
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

.method public static isApplicationUid(I)Z
    .registers 3
    .param p0, "uid"    # I

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_b

    .line 56
    invoke-static {p0}, Landroidx/core/os/ProcessCompat$Api24Impl;->isApplicationUid(I)Z

    move-result v0

    return v0

    .line 57
    :cond_b
    nop

    .line 58
    invoke-static {p0}, Landroidx/core/os/ProcessCompat$Api17Impl;->isApplicationUid(I)Z

    move-result v0

    return v0
.end method

###### Class androidx.core.os.ProcessCompat.Api16Impl (androidx.core.os.ProcessCompat$Api16Impl)
.class Landroidx/core/os/ProcessCompat$Api16Impl;
.super Ljava/lang/Object;
.source "ProcessCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/os/ProcessCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api16Impl"
.end annotation


# static fields
.field private static sMethodUserIdIsAppMethod:Ljava/lang/reflect/Method;

.field private static sResolved:Z

.field private static final sResolvedLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/os/ProcessCompat$Api16Impl;->sResolvedLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    return-void
.end method

.method static isApplicationUid(I)Z
    .registers 8
    .param p0, "uid"    # I

    .line 135
    const/4 v0, 0x1

    :try_start_1
    sget-object v1, Landroidx/core/os/ProcessCompat$Api16Impl;->sResolvedLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_46

    .line 136
    :try_start_4
    sget-boolean v2, Landroidx/core/os/ProcessCompat$Api16Impl;->sResolved:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1f

    .line 137
    sput-boolean v0, Landroidx/core/os/ProcessCompat$Api16Impl;->sResolved:Z

    .line 138
    const-string v2, "android.os.UserId"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "isApp"

    new-array v5, v0, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    .line 139
    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroidx/core/os/ProcessCompat$Api16Impl;->sMethodUserIdIsAppMethod:Ljava/lang/reflect/Method;

    .line 141
    :cond_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_43

    .line 142
    :try_start_20
    sget-object v1, Landroidx/core/os/ProcessCompat$Api16Impl;->sMethodUserIdIsAppMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_42

    .line 143
    sget-object v1, Landroidx/core/os/ProcessCompat$Api16Impl;->sMethodUserIdIsAppMethod:Ljava/lang/reflect/Method;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v4, v0, [Ljava/lang/Object;

    aput-object v2, v4, v3

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 144
    .local v1, "result":Ljava/lang/Boolean;
    if-eqz v1, :cond_3c

    .line 148
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 146
    :cond_3c
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    .end local p0    # "uid":I
    throw v2
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_42} :catch_46

    .line 152
    .end local v1    # "result":Ljava/lang/Boolean;
    .restart local p0    # "uid":I
    :cond_42
    goto :goto_4a

    .line 141
    :catchall_43
    move-exception v2

    :try_start_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    .end local p0    # "uid":I
    :try_start_45
    throw v2
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_46} :catch_46

    .line 150
    .restart local p0    # "uid":I
    :catch_46
    move-exception v1

    .line 151
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4a
    return v0
.end method

###### Class androidx.core.os.ProcessCompat.Api17Impl (androidx.core.os.ProcessCompat$Api17Impl)
.class Landroidx/core/os/ProcessCompat$Api17Impl;
.super Ljava/lang/Object;
.source "ProcessCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/os/ProcessCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api17Impl"
.end annotation


# static fields
.field private static sMethodUserHandleIsAppMethod:Ljava/lang/reflect/Method;

.field private static sResolved:Z

.field private static final sResolvedLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/os/ProcessCompat$Api17Impl;->sResolvedLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method static isApplicationUid(I)Z
    .registers 8
    .param p0, "uid"    # I

    .line 96
    const/4 v0, 0x1

    :try_start_1
    sget-object v1, Landroidx/core/os/ProcessCompat$Api17Impl;->sResolvedLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_42

    .line 97
    :try_start_4
    sget-boolean v2, Landroidx/core/os/ProcessCompat$Api17Impl;->sResolved:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1b

    .line 98
    sput-boolean v0, Landroidx/core/os/ProcessCompat$Api17Impl;->sResolved:Z

    .line 99
    const-class v2, Landroid/os/UserHandle;

    const-string v4, "isApp"

    new-array v5, v0, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroidx/core/os/ProcessCompat$Api17Impl;->sMethodUserHandleIsAppMethod:Ljava/lang/reflect/Method;

    .line 102
    :cond_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_3f

    .line 103
    :try_start_1c
    sget-object v1, Landroidx/core/os/ProcessCompat$Api17Impl;->sMethodUserHandleIsAppMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_3e

    .line 104
    sget-object v1, Landroidx/core/os/ProcessCompat$Api17Impl;->sMethodUserHandleIsAppMethod:Ljava/lang/reflect/Method;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v4, v0, [Ljava/lang/Object;

    aput-object v2, v4, v3

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 105
    .local v1, "result":Ljava/lang/Boolean;
    if-eqz v1, :cond_38

    .line 109
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 107
    :cond_38
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    .end local p0    # "uid":I
    throw v2
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_3e} :catch_42

    .line 113
    .end local v1    # "result":Ljava/lang/Boolean;
    .restart local p0    # "uid":I
    :cond_3e
    goto :goto_46

    .line 102
    :catchall_3f
    move-exception v2

    :try_start_40
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    .end local p0    # "uid":I
    :try_start_41
    throw v2
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_42} :catch_42

    .line 111
    .restart local p0    # "uid":I
    :catch_42
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_46
    return v0
.end method

###### Class androidx.core.os.ProcessCompat.Api24Impl (androidx.core.os.ProcessCompat$Api24Impl)
.class Landroidx/core/os/ProcessCompat$Api24Impl;
.super Ljava/lang/Object;
.source "ProcessCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/os/ProcessCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api24Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method static isApplicationUid(I)Z
    .registers 2
    .param p0, "uid"    # I

    .line 75
    invoke-static {p0}, Landroid/os/Process;->isApplicationUid(I)Z

    move-result v0

    return v0
.end method
