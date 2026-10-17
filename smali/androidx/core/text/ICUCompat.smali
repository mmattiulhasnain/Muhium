###### Class androidx.core.text.ICUCompat (androidx.core.text.ICUCompat)
.class public final Landroidx/core/text/ICUCompat;
.super Ljava/lang/Object;
.source "ICUCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/text/ICUCompat$Api24Impl;,
        Landroidx/core/text/ICUCompat$Api21Impl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ICUCompat"

.field private static sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

.field private static sGetScriptMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 40
    nop

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_25

    .line 55
    :try_start_7
    const-string v0, "libcore.icu.ICU"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 56
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "addLikelySubtags"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/util/Locale;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/core/text/ICUCompat;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1d} :catch_1e

    .line 59
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_25

    .line 57
    :catch_1e
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 61
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_25
    :goto_25
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    return-void
.end method

.method private static addLikelySubtagsBelowApi21(Ljava/util/Locale;)Ljava/lang/String;
    .registers 6
    .param p0, "locale"    # Ljava/util/Locale;

    .line 132
    const-string v0, "ICUCompat"

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "localeStr":Ljava/lang/String;
    :try_start_6
    sget-object v2, Landroidx/core/text/ICUCompat;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_23

    .line 135
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 136
    .local v2, "args":[Ljava/lang/Object;
    sget-object v3, Landroidx/core/text/ICUCompat;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_19} :catch_1f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_19} :catch_1a

    return-object v3

    .line 141
    .end local v2    # "args":[Ljava/lang/Object;
    :catch_1a
    move-exception v2

    .line 143
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    .line 138
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1f
    move-exception v2

    .line 140
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :cond_23
    nop

    .line 146
    :goto_24
    return-object v1
.end method

.method private static getScriptBelowApi21(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "localeStr"    # Ljava/lang/String;

    .line 116
    const-string v0, "ICUCompat"

    const/4 v1, 0x0

    :try_start_3
    sget-object v2, Landroidx/core/text/ICUCompat;->sGetScriptMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1f

    .line 117
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 118
    .local v2, "args":[Ljava/lang/Object;
    sget-object v3, Landroidx/core/text/ICUCompat;->sGetScriptMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_15} :catch_1b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_15} :catch_16

    return-object v3

    .line 123
    .end local v2    # "args":[Ljava/lang/Object;
    :catch_16
    move-exception v2

    .line 125
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 120
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1b
    move-exception v2

    .line 122
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :cond_1f
    nop

    .line 127
    :goto_20
    return-object v1
.end method

.method public static maximizeAndGetScript(Ljava/util/Locale;)Ljava/lang/String;
    .registers 5
    .param p0, "locale"    # Ljava/util/Locale;

    .line 88
    const-string v0, "ICUCompat"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_15

    .line 89
    invoke-static {p0}, Landroidx/core/text/ICUCompat$Api24Impl;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/text/ICUCompat$Api24Impl;->addLikelySubtags(Ljava/lang/Object;)Landroid/icu/util/ULocale;

    move-result-object v0

    .line 90
    .local v0, "uLocale":Ljava/lang/Object;
    invoke-static {v0}, Landroidx/core/text/ICUCompat$Api24Impl;->getScript(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 91
    .end local v0    # "uLocale":Ljava/lang/Object;
    :cond_15
    nop

    .line 93
    const/4 v1, 0x1

    :try_start_17
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 96
    .local v1, "args":[Ljava/lang/Object;
    sget-object v2, Landroidx/core/text/ICUCompat;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    invoke-static {v2}, Landroidx/core/text/ICUCompat$Api21Impl;->getScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0
    :try_end_29
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_17 .. :try_end_29} :catch_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_17 .. :try_end_29} :catch_2a

    return-object v0

    .line 99
    .end local v1    # "args":[Ljava/lang/Object;
    :catch_2a
    move-exception v1

    goto :goto_2e

    .line 97
    :catch_2c
    move-exception v1

    goto :goto_32

    .line 100
    .local v1, "e":Ljava/lang/IllegalAccessException;
    :goto_2e
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36

    .line 98
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_32
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    nop

    .line 102
    :goto_36
    invoke-static {p0}, Landroidx/core/text/ICUCompat$Api21Impl;->getScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class androidx.core.text.ICUCompat.Api21Impl (androidx.core.text.ICUCompat$Api21Impl)
.class Landroidx/core/text/ICUCompat$Api21Impl;
.super Ljava/lang/Object;
.source "ICUCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/ICUCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    return-void
.end method

.method static getScript(Ljava/util/Locale;)Ljava/lang/String;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 182
    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class androidx.core.text.ICUCompat.Api24Impl (androidx.core.text.ICUCompat$Api24Impl)
.class Landroidx/core/text/ICUCompat$Api24Impl;
.super Ljava/lang/Object;
.source "ICUCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/ICUCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api24Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    return-void
.end method

.method static addLikelySubtags(Ljava/lang/Object;)Landroid/icu/util/ULocale;
    .registers 2
    .param p0, "loc"    # Ljava/lang/Object;

    .line 165
    move-object v0, p0

    check-cast v0, Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method static forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;
    .registers 2
    .param p0, "loc"    # Ljava/util/Locale;

    .line 160
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method static getScript(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0, "uLocale"    # Ljava/lang/Object;

    .line 170
    move-object v0, p0

    check-cast v0, Landroid/icu/util/ULocale;

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
