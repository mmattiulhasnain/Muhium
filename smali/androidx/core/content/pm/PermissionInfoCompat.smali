###### Class androidx.core.content.pm.PermissionInfoCompat (androidx.core.content.pm.PermissionInfoCompat)
.class public final Landroidx/core/content/pm/PermissionInfoCompat;
.super Ljava/lang/Object;
.source "PermissionInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/pm/PermissionInfoCompat$Api28Impl;,
        Landroidx/core/content/pm/PermissionInfoCompat$ProtectionFlags;,
        Landroidx/core/content/pm/PermissionInfoCompat$Protection;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static getProtection(Landroid/content/pm/PermissionInfo;)I
    .registers 3
    .param p0, "permissionInfo"    # Landroid/content/pm/PermissionInfo;

    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_b

    .line 77
    invoke-static {p0}, Landroidx/core/content/pm/PermissionInfoCompat$Api28Impl;->getProtection(Landroid/content/pm/PermissionInfo;)I

    move-result v0

    return v0

    .line 79
    :cond_b
    iget v0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public static getProtectionFlags(Landroid/content/pm/PermissionInfo;)I
    .registers 3
    .param p0, "permissionInfo"    # Landroid/content/pm/PermissionInfo;

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_b

    .line 91
    invoke-static {p0}, Landroidx/core/content/pm/PermissionInfoCompat$Api28Impl;->getProtectionFlags(Landroid/content/pm/PermissionInfo;)I

    move-result v0

    return v0

    .line 93
    :cond_b
    iget v0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v0, v0, -0x10

    return v0
.end method

###### Class androidx.core.content.pm.PermissionInfoCompat.Api28Impl (androidx.core.content.pm.PermissionInfoCompat$Api28Impl)
.class Landroidx/core/content/pm/PermissionInfoCompat$Api28Impl;
.super Ljava/lang/Object;
.source "PermissionInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/pm/PermissionInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api28Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method

.method static getProtection(Landroid/content/pm/PermissionInfo;)I
    .registers 2
    .param p0, "permissionInfo"    # Landroid/content/pm/PermissionInfo;

    .line 105
    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v0

    return v0
.end method

.method static getProtectionFlags(Landroid/content/pm/PermissionInfo;)I
    .registers 2
    .param p0, "permissionInfo"    # Landroid/content/pm/PermissionInfo;

    .line 110
    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v0

    return v0
.end method

###### Class androidx.core.content.pm.PermissionInfoCompat.Protection (androidx.core.content.pm.PermissionInfoCompat$Protection)
.class public interface abstract annotation Landroidx/core/content/pm/PermissionInfoCompat$Protection;
.super Ljava/lang/Object;
.source "PermissionInfoCompat.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/pm/PermissionInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Protection"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class androidx.core.content.pm.PermissionInfoCompat.ProtectionFlags (androidx.core.content.pm.PermissionInfoCompat$ProtectionFlags)
.class public interface abstract annotation Landroidx/core/content/pm/PermissionInfoCompat$ProtectionFlags;
.super Ljava/lang/Object;
.source "PermissionInfoCompat.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/pm/PermissionInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ProtectionFlags"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation
