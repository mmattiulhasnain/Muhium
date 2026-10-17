###### Class androidx.core.net.ConnectivityManagerCompat (androidx.core.net.ConnectivityManagerCompat)
.class public final Landroidx/core/net/ConnectivityManagerCompat;
.super Ljava/lang/Object;
.source "ConnectivityManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/net/ConnectivityManagerCompat$Api16Impl;,
        Landroidx/core/net/ConnectivityManagerCompat$Api24Impl;,
        Landroidx/core/net/ConnectivityManagerCompat$RestrictBackgroundStatus;
    }
.end annotation


# static fields
.field public static final RESTRICT_BACKGROUND_STATUS_DISABLED:I = 0x1

.field public static final RESTRICT_BACKGROUND_STATUS_ENABLED:I = 0x3

.field public static final RESTRICT_BACKGROUND_STATUS_WHITELISTED:I = 0x2


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetworkInfoFromBroadcast(Landroid/net/ConnectivityManager;Landroid/content/Intent;)Landroid/net/NetworkInfo;
    .registers 4
    .param p0, "cm"    # Landroid/net/ConnectivityManager;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 146
    const-string v0, "networkInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 147
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_13

    .line 148
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    return-object v1

    .line 150
    :cond_13
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getRestrictBackgroundStatus(Landroid/net/ConnectivityManager;)I
    .registers 3
    .param p0, "cm"    # Landroid/net/ConnectivityManager;

    .line 164
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_b

    .line 165
    invoke-static {p0}, Landroidx/core/net/ConnectivityManagerCompat$Api24Impl;->getRestrictBackgroundStatus(Landroid/net/ConnectivityManager;)I

    move-result v0

    return v0

    .line 167
    :cond_b
    const/4 v0, 0x3

    return v0
.end method

.method public static isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z
    .registers 2
    .param p0, "cm"    # Landroid/net/ConnectivityManager;

    .line 104
    nop

    .line 105
    invoke-static {p0}, Landroidx/core/net/ConnectivityManagerCompat$Api16Impl;->isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z

    move-result v0

    return v0
.end method

###### Class androidx.core.net.ConnectivityManagerCompat.Api16Impl (androidx.core.net.ConnectivityManagerCompat$Api16Impl)
.class Landroidx/core/net/ConnectivityManagerCompat$Api16Impl;
.super Ljava/lang/Object;
.source "ConnectivityManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/net/ConnectivityManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api16Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    return-void
.end method

.method static isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z
    .registers 2
    .param p0, "connectivityManager"    # Landroid/net/ConnectivityManager;

    .line 182
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    return v0
.end method

###### Class androidx.core.net.ConnectivityManagerCompat.Api24Impl (androidx.core.net.ConnectivityManagerCompat$Api24Impl)
.class Landroidx/core/net/ConnectivityManagerCompat$Api24Impl;
.super Ljava/lang/Object;
.source "ConnectivityManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/net/ConnectivityManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api24Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    return-void
.end method

.method static getRestrictBackgroundStatus(Landroid/net/ConnectivityManager;)I
    .registers 2
    .param p0, "connectivityManager"    # Landroid/net/ConnectivityManager;

    .line 194
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getRestrictBackgroundStatus()I

    move-result v0

    return v0
.end method

###### Class androidx.core.net.ConnectivityManagerCompat.RestrictBackgroundStatus (androidx.core.net.ConnectivityManagerCompat$RestrictBackgroundStatus)
.class public interface abstract annotation Landroidx/core/net/ConnectivityManagerCompat$RestrictBackgroundStatus;
.super Ljava/lang/Object;
.source "ConnectivityManagerCompat.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/net/ConnectivityManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "RestrictBackgroundStatus"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation
