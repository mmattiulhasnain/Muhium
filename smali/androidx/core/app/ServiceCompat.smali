###### Class androidx.core.app.ServiceCompat (androidx.core.app.ServiceCompat)
.class public final Landroidx/core/app/ServiceCompat;
.super Ljava/lang/Object;
.source "ServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/ServiceCompat$Api24Impl;,
        Landroidx/core/app/ServiceCompat$StopForegroundFlags;
    }
.end annotation


# static fields
.field public static final START_STICKY:I = 0x1

.field public static final STOP_FOREGROUND_DETACH:I = 0x2

.field public static final STOP_FOREGROUND_REMOVE:I = 0x1


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static stopForeground(Landroid/app/Service;I)V
    .registers 4
    .param p0, "service"    # Landroid/app/Service;
    .param p1, "flags"    # I

    .line 101
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_a

    .line 102
    invoke-static {p0, p1}, Landroidx/core/app/ServiceCompat$Api24Impl;->stopForeground(Landroid/app/Service;I)V

    goto :goto_14

    .line 104
    :cond_a
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 106
    :goto_14
    return-void
.end method

###### Class androidx.core.app.ServiceCompat.Api24Impl (androidx.core.app.ServiceCompat$Api24Impl)
.class Landroidx/core/app/ServiceCompat$Api24Impl;
.super Ljava/lang/Object;
.source "ServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/ServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api24Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method static stopForeground(Landroid/app/Service;I)V
    .registers 2
    .param p0, "service"    # Landroid/app/Service;
    .param p1, "flags"    # I

    .line 116
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopForeground(I)V

    .line 117
    return-void
.end method

###### Class androidx.core.app.ServiceCompat.StopForegroundFlags (androidx.core.app.ServiceCompat$StopForegroundFlags)
.class public interface abstract annotation Landroidx/core/app/ServiceCompat$StopForegroundFlags;
.super Ljava/lang/Object;
.source "ServiceCompat.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/ServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "StopForegroundFlags"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation
