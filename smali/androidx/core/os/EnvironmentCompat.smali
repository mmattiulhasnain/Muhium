###### Class androidx.core.os.EnvironmentCompat (androidx.core.os.EnvironmentCompat)
.class public final Landroidx/core/os/EnvironmentCompat;
.super Ljava/lang/Object;
.source "EnvironmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/os/EnvironmentCompat$Api21Impl;,
        Landroidx/core/os/EnvironmentCompat$Api19Impl;
    }
.end annotation


# static fields
.field public static final MEDIA_UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final TAG:Ljava/lang/String; = "EnvironmentCompat"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method

.method public static getStorageState(Ljava/io/File;)Ljava/lang/String;
    .registers 2
    .param p0, "path"    # Ljava/io/File;

    .line 61
    nop

    .line 62
    invoke-static {p0}, Landroidx/core/os/EnvironmentCompat$Api21Impl;->getExternalStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class androidx.core.os.EnvironmentCompat.Api19Impl (androidx.core.os.EnvironmentCompat$Api19Impl)
.class Landroidx/core/os/EnvironmentCompat$Api19Impl;
.super Ljava/lang/Object;
.source "EnvironmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/os/EnvironmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api19Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    return-void
.end method

.method static getStorageState(Ljava/io/File;)Ljava/lang/String;
    .registers 2
    .param p0, "path"    # Ljava/io/File;

    .line 106
    invoke-static {p0}, Landroid/os/Environment;->getStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class androidx.core.os.EnvironmentCompat.Api21Impl (androidx.core.os.EnvironmentCompat$Api21Impl)
.class Landroidx/core/os/EnvironmentCompat$Api21Impl;
.super Ljava/lang/Object;
.source "EnvironmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/os/EnvironmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method

.method static getExternalStorageState(Ljava/io/File;)Ljava/lang/String;
    .registers 2
    .param p0, "path"    # Ljava/io/File;

    .line 94
    invoke-static {p0}, Landroid/os/Environment;->getExternalStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
