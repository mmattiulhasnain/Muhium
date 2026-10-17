###### Class androidx.core.app.NotificationChannelGroupCompat (androidx.core.app.NotificationChannelGroupCompat)
.class public Landroidx/core/app/NotificationChannelGroupCompat;
.super Ljava/lang/Object;
.source "NotificationChannelGroupCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationChannelGroupCompat$Api26Impl;,
        Landroidx/core/app/NotificationChannelGroupCompat$Api28Impl;,
        Landroidx/core/app/NotificationChannelGroupCompat$Builder;
    }
.end annotation


# instance fields
.field private mBlocked:Z

.field private mChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationChannelCompat;",
            ">;"
        }
    .end annotation
.end field

.field mDescription:Ljava/lang/String;

.field final mId:Ljava/lang/String;

.field mName:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/app/NotificationChannelGroup;)V
    .registers 3
    .param p1, "group"    # Landroid/app/NotificationChannelGroup;

    .line 110
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/core/app/NotificationChannelGroupCompat;-><init>(Landroid/app/NotificationChannelGroup;Ljava/util/List;)V

    .line 111
    return-void
.end method

.method constructor <init>(Landroid/app/NotificationChannelGroup;Ljava/util/List;)V
    .registers 5
    .param p1, "group"    # Landroid/app/NotificationChannelGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/NotificationChannelGroup;",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;)V"
        }
    .end annotation

    .line 116
    .local p2, "allChannels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    invoke-static {p1}, Landroidx/core/app/NotificationChannelGroupCompat$Api26Impl;->getId(Landroid/app/NotificationChannelGroup;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/core/app/NotificationChannelGroupCompat;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-static {p1}, Landroidx/core/app/NotificationChannelGroupCompat$Api26Impl;->getName(Landroid/app/NotificationChannelGroup;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationChannelGroupCompat;->mName:Ljava/lang/CharSequence;

    .line 119
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_19

    .line 120
    invoke-static {p1}, Landroidx/core/app/NotificationChannelGroupCompat$Api28Impl;->getDescription(Landroid/app/NotificationChannelGroup;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationChannelGroupCompat;->mDescription:Ljava/lang/String;

    .line 123
    :cond_19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_2e

    .line 124
    invoke-static {p1}, Landroidx/core/app/NotificationChannelGroupCompat$Api28Impl;->isBlocked(Landroid/app/NotificationChannelGroup;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/core/app/NotificationChannelGroupCompat;->mBlocked:Z

    .line 125
    invoke-static {p1}, Landroidx/core/app/NotificationChannelGroupCompat$Api26Impl;->getChannels(Landroid/app/NotificationChannelGroup;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/core/app/NotificationChannelGroupCompat;->getChannelsCompat(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationChannelGroupCompat;->mChannels:Ljava/util/List;

    goto :goto_34

    .line 129
    :cond_2e
    invoke-direct {p0, p2}, Landroidx/core/app/NotificationChannelGroupCompat;->getChannelsCompat(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationChannelGroupCompat;->mChannels:Ljava/util/List;

    .line 131
    :goto_34
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "id"    # Ljava/lang/String;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationChannelGroupCompat;->mChannels:Ljava/util/List;

    .line 105
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/core/app/NotificationChannelGroupCompat;->mId:Ljava/lang/String;

    .line 106
    return-void
.end method

.method private getChannelsCompat(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationChannelCompat;",
            ">;"
        }
    .end annotation

    .line 135
    .local p1, "channels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v0, "channelsCompat":Ljava/util/List;, "Ljava/util/List<Landroidx/core/app/NotificationChannelCompat;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 137
    .local v2, "channel":Landroid/app/NotificationChannel;
    iget-object v3, p0, Landroidx/core/app/NotificationChannelGroupCompat;->mId:Ljava/lang/String;

    invoke-static {v2}, Landroidx/core/app/NotificationChannelGroupCompat$Api26Impl;->getGroup(Landroid/app/NotificationChannel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 138
    new-instance v3, Landroidx/core/app/NotificationChannelCompat;

    invoke-direct {v3, v2}, Landroidx/core/app/NotificationChannelCompat;-><init>(Landroid/app/NotificationChannel;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    .end local v2    # "channel":Landroid/app/NotificationChannel;
    :cond_29
    goto :goto_9

    .line 141
    :cond_2a
    return-object v0
.end method


# virtual methods
.method public getChannels()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationChannelCompat;",
            ">;"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Landroidx/core/app/NotificationChannelGroupCompat;->mChannels:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 191
    iget-object v0, p0, Landroidx/core/app/NotificationChannelGroupCompat;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 175
    iget-object v0, p0, Landroidx/core/app/NotificationChannelGroupCompat;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .registers 2

    .line 183
    iget-object v0, p0, Landroidx/core/app/NotificationChannelGroupCompat;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method getNotificationChannelGroup()Landroid/app/NotificationChannelGroup;
    .registers 4

    .line 150
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_8

    .line 151
    const/4 v0, 0x0

    return-object v0

    .line 153
    :cond_8
    iget-object v0, p0, Landroidx/core/app/NotificationChannelGroupCompat;->mId:Ljava/lang/String;

    iget-object v1, p0, Landroidx/core/app/NotificationChannelGroupCompat;->mName:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroidx/core/app/NotificationChannelGroupCompat$Api26Impl;->createNotificationChannelGroup(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/app/NotificationChannelGroup;

    move-result-object v0

    .line 154
    .local v0, "group":Landroid/app/NotificationChannelGroup;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1b

    .line 155
    iget-object v1, p0, Landroidx/core/app/NotificationChannelGroupCompat;->mDescription:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/core/app/NotificationChannelGroupCompat$Api28Impl;->setDescription(Landroid/app/NotificationChannelGroup;Ljava/lang/String;)V

    .line 157
    :cond_1b
    return-object v0
.end method

.method public isBlocked()Z
    .registers 2

    .line 206
    iget-boolean v0, p0, Landroidx/core/app/NotificationChannelGroupCompat;->mBlocked:Z

    return v0
.end method

.method public toBuilder()Landroidx/core/app/NotificationChannelGroupCompat$Builder;
    .registers 3

    .line 165
    new-instance v0, Landroidx/core/app/NotificationChannelGroupCompat$Builder;

    iget-object v1, p0, Landroidx/core/app/NotificationChannelGroupCompat;->mId:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroidx/core/app/NotificationChannelGroupCompat$Builder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/core/app/NotificationChannelGroupCompat;->mName:Ljava/lang/CharSequence;

    .line 166
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationChannelGroupCompat$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationChannelGroupCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/NotificationChannelGroupCompat;->mDescription:Ljava/lang/String;

    .line 167
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationChannelGroupCompat$Builder;->setDescription(Ljava/lang/String;)Landroidx/core/app/NotificationChannelGroupCompat$Builder;

    move-result-object v0

    .line 165
    return-object v0
.end method

###### Class androidx.core.app.NotificationChannelGroupCompat.Api26Impl (androidx.core.app.NotificationChannelGroupCompat$Api26Impl)
.class Landroidx/core/app/NotificationChannelGroupCompat$Api26Impl;
.super Ljava/lang/Object;
.source "NotificationChannelGroupCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationChannelGroupCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api26Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createNotificationChannelGroup(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/app/NotificationChannelGroup;
    .registers 3
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 232
    new-instance v0, Landroid/app/NotificationChannelGroup;

    invoke-direct {v0, p0, p1}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method static getChannels(Landroid/app/NotificationChannelGroup;)Ljava/util/List;
    .registers 2
    .param p0, "notificationChannelGroup"    # Landroid/app/NotificationChannelGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/NotificationChannelGroup;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .line 248
    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static getGroup(Landroid/app/NotificationChannel;)Ljava/lang/String;
    .registers 2
    .param p0, "notificationChannel"    # Landroid/app/NotificationChannel;

    .line 253
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getId(Landroid/app/NotificationChannelGroup;)Ljava/lang/String;
    .registers 2
    .param p0, "notificationChannelGroup"    # Landroid/app/NotificationChannelGroup;

    .line 237
    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getName(Landroid/app/NotificationChannelGroup;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "notificationChannelGroup"    # Landroid/app/NotificationChannelGroup;

    .line 242
    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

###### Class androidx.core.app.NotificationChannelGroupCompat.Api28Impl (androidx.core.app.NotificationChannelGroupCompat$Api28Impl)
.class Landroidx/core/app/NotificationChannelGroupCompat$Api28Impl;
.super Ljava/lang/Object;
.source "NotificationChannelGroupCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationChannelGroupCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api28Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDescription(Landroid/app/NotificationChannelGroup;)Ljava/lang/String;
    .registers 2
    .param p0, "notificationChannelGroup"    # Landroid/app/NotificationChannelGroup;

    .line 273
    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static isBlocked(Landroid/app/NotificationChannelGroup;)Z
    .registers 2
    .param p0, "notificationChannelGroup"    # Landroid/app/NotificationChannelGroup;

    .line 268
    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v0

    return v0
.end method

.method static setDescription(Landroid/app/NotificationChannelGroup;Ljava/lang/String;)V
    .registers 2
    .param p0, "notificationChannelGroup"    # Landroid/app/NotificationChannelGroup;
    .param p1, "description"    # Ljava/lang/String;

    .line 279
    invoke-virtual {p0, p1}, Landroid/app/NotificationChannelGroup;->setDescription(Ljava/lang/String;)V

    .line 280
    return-void
.end method

###### Class androidx.core.app.NotificationChannelGroupCompat.Builder (androidx.core.app.NotificationChannelGroupCompat$Builder)
.class public Landroidx/core/app/NotificationChannelGroupCompat$Builder;
.super Ljava/lang/Object;
.source "NotificationChannelGroupCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationChannelGroupCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field final mGroup:Landroidx/core/app/NotificationChannelGroupCompat;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "id"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Landroidx/core/app/NotificationChannelGroupCompat;

    invoke-direct {v0, p1}, Landroidx/core/app/NotificationChannelGroupCompat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/core/app/NotificationChannelGroupCompat$Builder;->mGroup:Landroidx/core/app/NotificationChannelGroupCompat;

    .line 65
    return-void
.end method


# virtual methods
.method public build()Landroidx/core/app/NotificationChannelGroupCompat;
    .registers 2

    .line 100
    iget-object v0, p0, Landroidx/core/app/NotificationChannelGroupCompat$Builder;->mGroup:Landroidx/core/app/NotificationChannelGroupCompat;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)Landroidx/core/app/NotificationChannelGroupCompat$Builder;
    .registers 3
    .param p1, "description"    # Ljava/lang/String;

    .line 91
    iget-object v0, p0, Landroidx/core/app/NotificationChannelGroupCompat$Builder;->mGroup:Landroidx/core/app/NotificationChannelGroupCompat;

    iput-object p1, v0, Landroidx/core/app/NotificationChannelGroupCompat;->mDescription:Ljava/lang/String;

    .line 92
    return-object p0
.end method

.method public setName(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationChannelGroupCompat$Builder;
    .registers 3
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 78
    iget-object v0, p0, Landroidx/core/app/NotificationChannelGroupCompat$Builder;->mGroup:Landroidx/core/app/NotificationChannelGroupCompat;

    iput-object p1, v0, Landroidx/core/app/NotificationChannelGroupCompat;->mName:Ljava/lang/CharSequence;

    .line 79
    return-object p0
.end method
