###### Class androidx.core.widget.CheckedTextViewCompat (androidx.core.widget.CheckedTextViewCompat)
.class public final Landroidx/core/widget/CheckedTextViewCompat;
.super Ljava/lang/Object;
.source "CheckedTextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/CheckedTextViewCompat$Api21Impl;,
        Landroidx/core/widget/CheckedTextViewCompat$Api16Impl;,
        Landroidx/core/widget/CheckedTextViewCompat$Api14Impl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CheckedTextViewCompat"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static getCheckMarkDrawable(Landroid/widget/CheckedTextView;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "textView"    # Landroid/widget/CheckedTextView;

    .line 121
    nop

    .line 122
    invoke-static {p0}, Landroidx/core/widget/CheckedTextViewCompat$Api16Impl;->getCheckMarkDrawable(Landroid/widget/CheckedTextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getCheckMarkTintList(Landroid/widget/CheckedTextView;)Landroid/content/res/ColorStateList;
    .registers 2
    .param p0, "textView"    # Landroid/widget/CheckedTextView;

    .line 70
    nop

    .line 71
    invoke-static {p0}, Landroidx/core/widget/CheckedTextViewCompat$Api21Impl;->getCheckMarkTintList(Landroid/widget/CheckedTextView;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static getCheckMarkTintMode(Landroid/widget/CheckedTextView;)Landroid/graphics/PorterDuff$Mode;
    .registers 2
    .param p0, "textView"    # Landroid/widget/CheckedTextView;

    .line 105
    nop

    .line 106
    invoke-static {p0}, Landroidx/core/widget/CheckedTextViewCompat$Api21Impl;->getCheckMarkTintMode(Landroid/widget/CheckedTextView;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public static setCheckMarkTintList(Landroid/widget/CheckedTextView;Landroid/content/res/ColorStateList;)V
    .registers 2
    .param p0, "textView"    # Landroid/widget/CheckedTextView;
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 56
    nop

    .line 57
    invoke-static {p0, p1}, Landroidx/core/widget/CheckedTextViewCompat$Api21Impl;->setCheckMarkTintList(Landroid/widget/CheckedTextView;Landroid/content/res/ColorStateList;)V

    .line 61
    return-void
.end method

.method public static setCheckMarkTintMode(Landroid/widget/CheckedTextView;Landroid/graphics/PorterDuff$Mode;)V
    .registers 2
    .param p0, "textView"    # Landroid/widget/CheckedTextView;
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 91
    nop

    .line 92
    invoke-static {p0, p1}, Landroidx/core/widget/CheckedTextViewCompat$Api21Impl;->setCheckMarkTintMode(Landroid/widget/CheckedTextView;Landroid/graphics/PorterDuff$Mode;)V

    .line 96
    return-void
.end method

###### Class androidx.core.widget.CheckedTextViewCompat.Api14Impl (androidx.core.widget.CheckedTextViewCompat$Api14Impl)
.class Landroidx/core/widget/CheckedTextViewCompat$Api14Impl;
.super Ljava/lang/Object;
.source "CheckedTextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/CheckedTextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api14Impl"
.end annotation


# static fields
.field private static sCheckMarkDrawableField:Ljava/lang/reflect/Field;

.field private static sResolved:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    return-void
.end method

.method static getCheckMarkDrawable(Landroid/widget/CheckedTextView;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p0, "textView"    # Landroid/widget/CheckedTextView;

    .line 177
    sget-boolean v0, Landroidx/core/widget/CheckedTextViewCompat$Api14Impl;->sResolved:Z

    const-string v1, "CheckedTextViewCompat"

    if-nez v0, :cond_1f

    .line 179
    const/4 v0, 0x1

    :try_start_7
    const-class v2, Landroid/widget/CheckedTextView;

    const-string v3, "mCheckMarkDrawable"

    .line 180
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroidx/core/widget/CheckedTextViewCompat$Api14Impl;->sCheckMarkDrawableField:Ljava/lang/reflect/Field;

    .line 181
    sget-object v2, Landroidx/core/widget/CheckedTextViewCompat$Api14Impl;->sCheckMarkDrawableField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_16
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_16} :catch_17

    .line 184
    goto :goto_1d

    .line 182
    :catch_17
    move-exception v2

    .line 183
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    const-string v3, "Failed to retrieve mCheckMarkDrawable field"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    :goto_1d
    sput-boolean v0, Landroidx/core/widget/CheckedTextViewCompat$Api14Impl;->sResolved:Z

    .line 188
    :cond_1f
    sget-object v0, Landroidx/core/widget/CheckedTextViewCompat$Api14Impl;->sCheckMarkDrawableField:Ljava/lang/reflect/Field;

    const/4 v2, 0x0

    if-eqz v0, :cond_35

    .line 190
    :try_start_24
    sget-object v0, Landroidx/core/widget/CheckedTextViewCompat$Api14Impl;->sCheckMarkDrawableField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;
    :try_end_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_24 .. :try_end_2c} :catch_2d

    return-object v0

    .line 191
    :catch_2d
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "Failed to get check mark drawable via reflection"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    sput-object v2, Landroidx/core/widget/CheckedTextViewCompat$Api14Impl;->sCheckMarkDrawableField:Ljava/lang/reflect/Field;

    .line 196
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_35
    return-object v2
.end method

###### Class androidx.core.widget.CheckedTextViewCompat.Api16Impl (androidx.core.widget.CheckedTextViewCompat$Api16Impl)
.class Landroidx/core/widget/CheckedTextViewCompat$Api16Impl;
.super Ljava/lang/Object;
.source "CheckedTextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/CheckedTextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api16Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    return-void
.end method

.method static getCheckMarkDrawable(Landroid/widget/CheckedTextView;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "textView"    # Landroid/widget/CheckedTextView;

    .line 163
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

###### Class androidx.core.widget.CheckedTextViewCompat.Api21Impl (androidx.core.widget.CheckedTextViewCompat$Api21Impl)
.class Landroidx/core/widget/CheckedTextViewCompat$Api21Impl;
.super Ljava/lang/Object;
.source "CheckedTextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/CheckedTextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    return-void
.end method

.method static getCheckMarkTintList(Landroid/widget/CheckedTextView;)Landroid/content/res/ColorStateList;
    .registers 2
    .param p0, "textView"    # Landroid/widget/CheckedTextView;

    .line 141
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getCheckMarkTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method static getCheckMarkTintMode(Landroid/widget/CheckedTextView;)Landroid/graphics/PorterDuff$Mode;
    .registers 2
    .param p0, "textView"    # Landroid/widget/CheckedTextView;

    .line 151
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getCheckMarkTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method static setCheckMarkTintList(Landroid/widget/CheckedTextView;Landroid/content/res/ColorStateList;)V
    .registers 2
    .param p0, "textView"    # Landroid/widget/CheckedTextView;
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 136
    invoke-virtual {p0, p1}, Landroid/widget/CheckedTextView;->setCheckMarkTintList(Landroid/content/res/ColorStateList;)V

    .line 137
    return-void
.end method

.method static setCheckMarkTintMode(Landroid/widget/CheckedTextView;Landroid/graphics/PorterDuff$Mode;)V
    .registers 2
    .param p0, "textView"    # Landroid/widget/CheckedTextView;
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 146
    invoke-virtual {p0, p1}, Landroid/widget/CheckedTextView;->setCheckMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 147
    return-void
.end method
