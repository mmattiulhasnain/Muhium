###### Class androidx.core.view.DisplayCutoutCompat (androidx.core.view.DisplayCutoutCompat)
.class public final Landroidx/core/view/DisplayCutoutCompat;
.super Ljava/lang/Object;
.source "DisplayCutoutCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/DisplayCutoutCompat$Api28Impl;,
        Landroidx/core/view/DisplayCutoutCompat$Api30Impl;,
        Landroidx/core/view/DisplayCutoutCompat$Api29Impl;
    }
.end annotation


# instance fields
.field private final mDisplayCutout:Landroid/view/DisplayCutout;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Ljava/util/List;)V
    .registers 5
    .param p1, "safeInsets"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 56
    .local p2, "boundingRects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_b

    invoke-static {p1, p2}, Landroidx/core/view/DisplayCutoutCompat$Api28Impl;->createDisplayCutout(Landroid/graphics/Rect;Ljava/util/List;)Landroid/view/DisplayCutout;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-direct {p0, v0}, Landroidx/core/view/DisplayCutoutCompat;-><init>(Landroid/view/DisplayCutout;)V

    .line 57
    return-void
.end method

.method private constructor <init>(Landroid/view/DisplayCutout;)V
    .registers 2
    .param p1, "displayCutout"    # Landroid/view/DisplayCutout;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 114
    return-void
.end method

.method public constructor <init>(Landroidx/core/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/core/graphics/Insets;)V
    .registers 8
    .param p1, "safeInsets"    # Landroidx/core/graphics/Insets;
    .param p2, "boundLeft"    # Landroid/graphics/Rect;
    .param p3, "boundTop"    # Landroid/graphics/Rect;
    .param p4, "boundRight"    # Landroid/graphics/Rect;
    .param p5, "boundBottom"    # Landroid/graphics/Rect;
    .param p6, "waterfallInsets"    # Landroidx/core/graphics/Insets;

    .line 77
    invoke-static/range {p1 .. p6}, Landroidx/core/view/DisplayCutoutCompat;->constructDisplayCutout(Landroidx/core/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/core/graphics/Insets;)Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/core/view/DisplayCutoutCompat;-><init>(Landroid/view/DisplayCutout;)V

    .line 79
    return-void
.end method

.method private static constructDisplayCutout(Landroidx/core/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/core/graphics/Insets;)Landroid/view/DisplayCutout;
    .registers 14
    .param p0, "safeInsets"    # Landroidx/core/graphics/Insets;
    .param p1, "boundLeft"    # Landroid/graphics/Rect;
    .param p2, "boundTop"    # Landroid/graphics/Rect;
    .param p3, "boundRight"    # Landroid/graphics/Rect;
    .param p4, "boundBottom"    # Landroid/graphics/Rect;
    .param p5, "waterfallInsets"    # Landroidx/core/graphics/Insets;

    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_17

    .line 85
    invoke-virtual {p0}, Landroidx/core/graphics/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    move-result-object v2

    .line 86
    invoke-virtual {p5}, Landroidx/core/graphics/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    move-result-object v7

    .line 85
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "boundLeft":Landroid/graphics/Rect;
    .end local p2    # "boundTop":Landroid/graphics/Rect;
    .end local p3    # "boundRight":Landroid/graphics/Rect;
    .end local p4    # "boundBottom":Landroid/graphics/Rect;
    .local v3, "boundLeft":Landroid/graphics/Rect;
    .local v4, "boundTop":Landroid/graphics/Rect;
    .local v5, "boundRight":Landroid/graphics/Rect;
    .local v6, "boundBottom":Landroid/graphics/Rect;
    invoke-static/range {v2 .. v7}, Landroidx/core/view/DisplayCutoutCompat$Api30Impl;->createDisplayCutout(Landroid/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Insets;)Landroid/view/DisplayCutout;

    move-result-object p1

    return-object p1

    .line 87
    .end local v3    # "boundLeft":Landroid/graphics/Rect;
    .end local v4    # "boundTop":Landroid/graphics/Rect;
    .end local v5    # "boundRight":Landroid/graphics/Rect;
    .end local v6    # "boundBottom":Landroid/graphics/Rect;
    .restart local p1    # "boundLeft":Landroid/graphics/Rect;
    .restart local p2    # "boundTop":Landroid/graphics/Rect;
    .restart local p3    # "boundRight":Landroid/graphics/Rect;
    .restart local p4    # "boundBottom":Landroid/graphics/Rect;
    :cond_17
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "boundLeft":Landroid/graphics/Rect;
    .end local p2    # "boundTop":Landroid/graphics/Rect;
    .end local p3    # "boundRight":Landroid/graphics/Rect;
    .end local p4    # "boundBottom":Landroid/graphics/Rect;
    .restart local v3    # "boundLeft":Landroid/graphics/Rect;
    .restart local v4    # "boundTop":Landroid/graphics/Rect;
    .restart local v5    # "boundRight":Landroid/graphics/Rect;
    .restart local v6    # "boundBottom":Landroid/graphics/Rect;
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1d

    if-lt p1, p2, :cond_2a

    .line 88
    invoke-virtual {p0}, Landroidx/core/graphics/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {p1, v3, v4, v5, v6}, Landroidx/core/view/DisplayCutoutCompat$Api29Impl;->createDisplayCutout(Landroid/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/DisplayCutout;

    move-result-object p1

    return-object p1

    .line 90
    :cond_2a
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1c

    if-lt p1, p2, :cond_5b

    .line 91
    new-instance p1, Landroid/graphics/Rect;

    iget p2, p0, Landroidx/core/graphics/Insets;->left:I

    iget p3, p0, Landroidx/core/graphics/Insets;->top:I

    iget p4, p0, Landroidx/core/graphics/Insets;->right:I

    iget v0, p0, Landroidx/core/graphics/Insets;->bottom:I

    invoke-direct {p1, p2, p3, p4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 93
    .local p1, "safeInsetRect":Landroid/graphics/Rect;
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local p2, "boundingRects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    if-eqz v3, :cond_47

    .line 95
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_47
    if-eqz v4, :cond_4c

    .line 98
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_4c
    if-eqz v5, :cond_51

    .line 101
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_51
    if-eqz v6, :cond_56

    .line 104
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_56
    invoke-static {p1, p2}, Landroidx/core/view/DisplayCutoutCompat$Api28Impl;->createDisplayCutout(Landroid/graphics/Rect;Ljava/util/List;)Landroid/view/DisplayCutout;

    move-result-object p3

    return-object p3

    .line 108
    .end local p1    # "safeInsetRect":Landroid/graphics/Rect;
    .end local p2    # "boundingRects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    :cond_5b
    const/4 p1, 0x0

    return-object p1
.end method

.method static wrap(Landroid/view/DisplayCutout;)Landroidx/core/view/DisplayCutoutCompat;
    .registers 2
    .param p0, "displayCutout"    # Landroid/view/DisplayCutout;

    .line 213
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    :cond_4
    new-instance v0, Landroidx/core/view/DisplayCutoutCompat;

    invoke-direct {v0, p0}, Landroidx/core/view/DisplayCutoutCompat;-><init>(Landroid/view/DisplayCutout;)V

    :goto_9
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 191
    if-ne p0, p1, :cond_4

    .line 192
    const/4 v0, 0x1

    return v0

    .line 194
    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    .line 197
    :cond_11
    move-object v0, p1

    check-cast v0, Landroidx/core/view/DisplayCutoutCompat;

    .line 198
    .local v0, "other":Landroidx/core/view/DisplayCutoutCompat;
    iget-object v1, p0, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    iget-object v2, v0, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-static {v1, v2}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 195
    .end local v0    # "other":Landroidx/core/view/DisplayCutoutCompat;
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public getBoundingRects()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 163
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_d

    .line 164
    iget-object v0, p0, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-static {v0}, Landroidx/core/view/DisplayCutoutCompat$Api28Impl;->getBoundingRects(Landroid/view/DisplayCutout;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 166
    :cond_d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSafeInsetBottom()I
    .registers 3

    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_d

    .line 128
    iget-object v0, p0, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-static {v0}, Landroidx/core/view/DisplayCutoutCompat$Api28Impl;->getSafeInsetBottom(Landroid/view/DisplayCutout;)I

    move-result v0

    return v0

    .line 130
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public getSafeInsetLeft()I
    .registers 3

    .line 136
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_d

    .line 137
    iget-object v0, p0, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-static {v0}, Landroidx/core/view/DisplayCutoutCompat$Api28Impl;->getSafeInsetLeft(Landroid/view/DisplayCutout;)I

    move-result v0

    return v0

    .line 139
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public getSafeInsetRight()I
    .registers 3

    .line 145
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_d

    .line 146
    iget-object v0, p0, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-static {v0}, Landroidx/core/view/DisplayCutoutCompat$Api28Impl;->getSafeInsetRight(Landroid/view/DisplayCutout;)I

    move-result v0

    return v0

    .line 148
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public getSafeInsetTop()I
    .registers 3

    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_d

    .line 119
    iget-object v0, p0, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-static {v0}, Landroidx/core/view/DisplayCutoutCompat$Api28Impl;->getSafeInsetTop(Landroid/view/DisplayCutout;)I

    move-result v0

    return v0

    .line 121
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public getWaterfallInsets()Landroidx/core/graphics/Insets;
    .registers 3

    .line 182
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_11

    .line 183
    iget-object v0, p0, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-static {v0}, Landroidx/core/view/DisplayCutoutCompat$Api30Impl;->getWaterfallInsets(Landroid/view/DisplayCutout;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/Insets;->toCompatInsets(Landroid/graphics/Insets;)Landroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0

    .line 185
    :cond_11
    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 203
    iget-object v0, p0, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->hashCode()I

    move-result v0

    :goto_c
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayCutoutCompat{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unwrap()Landroid/view/DisplayCutout;
    .registers 2

    .line 218
    iget-object v0, p0, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    return-object v0
.end method

###### Class androidx.core.view.DisplayCutoutCompat.Api28Impl (androidx.core.view.DisplayCutoutCompat$Api28Impl)
.class Landroidx/core/view/DisplayCutoutCompat$Api28Impl;
.super Ljava/lang/Object;
.source "DisplayCutoutCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/DisplayCutoutCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api28Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    return-void
.end method

.method static createDisplayCutout(Landroid/graphics/Rect;Ljava/util/List;)Landroid/view/DisplayCutout;
    .registers 3
    .param p0, "safeInsets"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Landroid/view/DisplayCutout;"
        }
    .end annotation

    .line 229
    .local p1, "boundingRects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    new-instance v0, Landroid/view/DisplayCutout;

    invoke-direct {v0, p0, p1}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Ljava/util/List;)V

    return-object v0
.end method

.method static getBoundingRects(Landroid/view/DisplayCutout;)Ljava/util/List;
    .registers 2
    .param p0, "displayCutout"    # Landroid/view/DisplayCutout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/DisplayCutout;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 254
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static getSafeInsetBottom(Landroid/view/DisplayCutout;)I
    .registers 2
    .param p0, "displayCutout"    # Landroid/view/DisplayCutout;

    .line 239
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v0

    return v0
.end method

.method static getSafeInsetLeft(Landroid/view/DisplayCutout;)I
    .registers 2
    .param p0, "displayCutout"    # Landroid/view/DisplayCutout;

    .line 244
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v0

    return v0
.end method

.method static getSafeInsetRight(Landroid/view/DisplayCutout;)I
    .registers 2
    .param p0, "displayCutout"    # Landroid/view/DisplayCutout;

    .line 249
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v0

    return v0
.end method

.method static getSafeInsetTop(Landroid/view/DisplayCutout;)I
    .registers 2
    .param p0, "displayCutout"    # Landroid/view/DisplayCutout;

    .line 234
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v0

    return v0
.end method

###### Class androidx.core.view.DisplayCutoutCompat.Api29Impl (androidx.core.view.DisplayCutoutCompat$Api29Impl)
.class Landroidx/core/view/DisplayCutoutCompat$Api29Impl;
.super Ljava/lang/Object;
.source "DisplayCutoutCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/DisplayCutoutCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api29Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    return-void
.end method

.method static createDisplayCutout(Landroid/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/DisplayCutout;
    .registers 11
    .param p0, "safeInsets"    # Landroid/graphics/Insets;
    .param p1, "boundLeft"    # Landroid/graphics/Rect;
    .param p2, "boundTop"    # Landroid/graphics/Rect;
    .param p3, "boundRight"    # Landroid/graphics/Rect;
    .param p4, "boundBottom"    # Landroid/graphics/Rect;

    .line 287
    new-instance v0, Landroid/view/DisplayCutout;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p0    # "safeInsets":Landroid/graphics/Insets;
    .end local p1    # "boundLeft":Landroid/graphics/Rect;
    .end local p2    # "boundTop":Landroid/graphics/Rect;
    .end local p3    # "boundRight":Landroid/graphics/Rect;
    .end local p4    # "boundBottom":Landroid/graphics/Rect;
    .local v1, "safeInsets":Landroid/graphics/Insets;
    .local v2, "boundLeft":Landroid/graphics/Rect;
    .local v3, "boundTop":Landroid/graphics/Rect;
    .local v4, "boundRight":Landroid/graphics/Rect;
    .local v5, "boundBottom":Landroid/graphics/Rect;
    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-object v0
.end method

###### Class androidx.core.view.DisplayCutoutCompat.Api30Impl (androidx.core.view.DisplayCutoutCompat$Api30Impl)
.class Landroidx/core/view/DisplayCutoutCompat$Api30Impl;
.super Ljava/lang/Object;
.source "DisplayCutoutCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/DisplayCutoutCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api30Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    return-void
.end method

.method static createDisplayCutout(Landroid/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Insets;)Landroid/view/DisplayCutout;
    .registers 13
    .param p0, "safeInsets"    # Landroid/graphics/Insets;
    .param p1, "boundLeft"    # Landroid/graphics/Rect;
    .param p2, "boundTop"    # Landroid/graphics/Rect;
    .param p3, "boundRight"    # Landroid/graphics/Rect;
    .param p4, "boundBottom"    # Landroid/graphics/Rect;
    .param p5, "waterfallInsets"    # Landroid/graphics/Insets;

    .line 268
    new-instance v0, Landroid/view/DisplayCutout;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p0    # "safeInsets":Landroid/graphics/Insets;
    .end local p1    # "boundLeft":Landroid/graphics/Rect;
    .end local p2    # "boundTop":Landroid/graphics/Rect;
    .end local p3    # "boundRight":Landroid/graphics/Rect;
    .end local p4    # "boundBottom":Landroid/graphics/Rect;
    .end local p5    # "waterfallInsets":Landroid/graphics/Insets;
    .local v1, "safeInsets":Landroid/graphics/Insets;
    .local v2, "boundLeft":Landroid/graphics/Rect;
    .local v3, "boundTop":Landroid/graphics/Rect;
    .local v4, "boundRight":Landroid/graphics/Rect;
    .local v5, "boundBottom":Landroid/graphics/Rect;
    .local v6, "waterfallInsets":Landroid/graphics/Insets;
    invoke-direct/range {v0 .. v6}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Insets;)V

    return-object v0
.end method

.method static getWaterfallInsets(Landroid/view/DisplayCutout;)Landroid/graphics/Insets;
    .registers 2
    .param p0, "displayCutout"    # Landroid/view/DisplayCutout;

    .line 274
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method
