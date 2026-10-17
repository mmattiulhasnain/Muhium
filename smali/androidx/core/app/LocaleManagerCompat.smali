###### Class androidx.core.app.LocaleManagerCompat (androidx.core.app.LocaleManagerCompat)
.class public final Landroidx/core/app/LocaleManagerCompat;
.super Ljava/lang/Object;
.source "LocaleManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/LocaleManagerCompat$Api33Impl;,
        Landroidx/core/app/LocaleManagerCompat$Api24Impl;,
        Landroidx/core/app/LocaleManagerCompat$Api21Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getConfigurationLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;
    .registers 3
    .param p0, "conf"    # Landroid/content/res/Configuration;

    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_b

    .line 90
    invoke-static {p0}, Landroidx/core/app/LocaleManagerCompat$Api24Impl;->getLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    return-object v0

    .line 91
    :cond_b
    nop

    .line 92
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Landroidx/core/app/LocaleManagerCompat$Api21Impl;->toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/os/LocaleListCompat;->forLanguageTags(Ljava/lang/String;)Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    return-object v0
.end method

.method private static getLocaleManagerForApplication(Landroid/content/Context;)Ljava/lang/Object;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 84
    const-string v0, "locale"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemLocales(Landroid/content/Context;)Landroidx/core/os/LocaleListCompat;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 60
    invoke-static {}, Landroidx/core/os/LocaleListCompat;->getEmptyLocaleList()Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    .line 62
    .local v0, "systemLocales":Landroidx/core/os/LocaleListCompat;
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 64
    invoke-static {p0}, Landroidx/core/app/LocaleManagerCompat;->getLocaleManagerForApplication(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    .line 65
    .local v1, "localeManager":Ljava/lang/Object;
    if-eqz v1, :cond_18

    .line 66
    invoke-static {v1}, Landroidx/core/app/LocaleManagerCompat$Api33Impl;->localeManagerGetSystemLocales(Ljava/lang/Object;)Landroid/os/LocaleList;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/os/LocaleListCompat;->wrap(Landroid/os/LocaleList;)Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    .line 69
    .end local v1    # "localeManager":Ljava/lang/Object;
    :cond_18
    goto :goto_29

    .line 73
    :cond_19
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 73
    invoke-static {v1}, Landroidx/core/app/LocaleManagerCompat;->getConfigurationLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    .line 76
    :goto_29
    return-object v0
.end method

###### Class androidx.core.app.LocaleManagerCompat.Api21Impl (androidx.core.app.LocaleManagerCompat$Api21Impl)
.class Landroidx/core/app/LocaleManagerCompat$Api21Impl;
.super Ljava/lang/Object;
.source "LocaleManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/LocaleManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 106
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class androidx.core.app.LocaleManagerCompat.Api24Impl (androidx.core.app.LocaleManagerCompat$Api24Impl)
.class Landroidx/core/app/LocaleManagerCompat$Api24Impl;
.super Ljava/lang/Object;
.source "LocaleManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/LocaleManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api24Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;
    .registers 2
    .param p0, "configuration"    # Landroid/content/res/Configuration;

    .line 116
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/os/LocaleListCompat;->forLanguageTags(Ljava/lang/String;)Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    return-object v0
.end method

###### Class androidx.core.app.LocaleManagerCompat.Api33Impl (androidx.core.app.LocaleManagerCompat$Api33Impl)
.class Landroidx/core/app/LocaleManagerCompat$Api33Impl;
.super Ljava/lang/Object;
.source "LocaleManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/LocaleManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api33Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static localeManagerGetSystemLocales(Ljava/lang/Object;)Landroid/os/LocaleList;
    .registers 3
    .param p0, "localeManager"    # Ljava/lang/Object;

    .line 126
    move-object v0, p0

    check-cast v0, Landroid/app/LocaleManager;

    .line 127
    .local v0, "mLocaleManager":Landroid/app/LocaleManager;
    invoke-virtual {v0}, Landroid/app/LocaleManager;->getSystemLocales()Landroid/os/LocaleList;

    move-result-object v1

    return-object v1
.end method
