###### Class androidx.core.location.GnssStatusWrapper (androidx.core.location.GnssStatusWrapper)
.class Landroidx/core/location/GnssStatusWrapper;
.super Landroidx/core/location/GnssStatusCompat;
.source "GnssStatusWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/location/GnssStatusWrapper$Api26Impl;,
        Landroidx/core/location/GnssStatusWrapper$Api30Impl;
    }
.end annotation


# instance fields
.field private final mWrapped:Landroid/location/GnssStatus;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .param p1, "gnssStatus"    # Ljava/lang/Object;

    .line 37
    invoke-direct {p0}, Landroidx/core/location/GnssStatusCompat;-><init>()V

    .line 38
    move-object v0, p1

    check-cast v0, Landroid/location/GnssStatus;

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GnssStatus;

    iput-object v0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 124
    if-ne p0, p1, :cond_4

    .line 125
    const/4 v0, 0x1

    return v0

    .line 127
    :cond_4
    instance-of v0, p1, Landroidx/core/location/GnssStatusWrapper;

    if-nez v0, :cond_a

    .line 128
    const/4 v0, 0x0

    return v0

    .line 130
    :cond_a
    move-object v0, p1

    check-cast v0, Landroidx/core/location/GnssStatusWrapper;

    .line 131
    .local v0, "that":Landroidx/core/location/GnssStatusWrapper;
    iget-object v1, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    iget-object v2, v0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    invoke-virtual {v1, v2}, Landroid/location/GnssStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getAzimuthDegrees(I)F
    .registers 3
    .param p1, "satelliteIndex"    # I

    .line 68
    iget-object v0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    invoke-virtual {v0, p1}, Landroid/location/GnssStatus;->getAzimuthDegrees(I)F

    move-result v0

    return v0
.end method

.method public getBasebandCn0DbHz(I)F
    .registers 4
    .param p1, "satelliteIndex"    # I

    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_d

    .line 116
    iget-object v0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    invoke-static {v0, p1}, Landroidx/core/location/GnssStatusWrapper$Api30Impl;->getBasebandCn0DbHz(Landroid/location/GnssStatus;I)F

    move-result v0

    return v0

    .line 118
    :cond_d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCarrierFrequencyHz(I)F
    .registers 4
    .param p1, "satelliteIndex"    # I

    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_d

    .line 98
    iget-object v0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    invoke-static {v0, p1}, Landroidx/core/location/GnssStatusWrapper$Api26Impl;->getCarrierFrequencyHz(Landroid/location/GnssStatus;I)F

    move-result v0

    return v0

    .line 100
    :cond_d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCn0DbHz(I)F
    .registers 3
    .param p1, "satelliteIndex"    # I

    .line 58
    iget-object v0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    invoke-virtual {v0, p1}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v0

    return v0
.end method

.method public getConstellationType(I)I
    .registers 3
    .param p1, "satelliteIndex"    # I

    .line 48
    iget-object v0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    invoke-virtual {v0, p1}, Landroid/location/GnssStatus;->getConstellationType(I)I

    move-result v0

    return v0
.end method

.method public getElevationDegrees(I)F
    .registers 3
    .param p1, "satelliteIndex"    # I

    .line 63
    iget-object v0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    invoke-virtual {v0, p1}, Landroid/location/GnssStatus;->getElevationDegrees(I)F

    move-result v0

    return v0
.end method

.method public getSatelliteCount()I
    .registers 2

    .line 43
    iget-object v0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    invoke-virtual {v0}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v0

    return v0
.end method

.method public getSvid(I)I
    .registers 3
    .param p1, "satelliteIndex"    # I

    .line 53
    iget-object v0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    invoke-virtual {v0, p1}, Landroid/location/GnssStatus;->getSvid(I)I

    move-result v0

    return v0
.end method

.method public hasAlmanacData(I)Z
    .registers 3
    .param p1, "satelliteIndex"    # I

    .line 78
    iget-object v0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    invoke-virtual {v0, p1}, Landroid/location/GnssStatus;->hasAlmanacData(I)Z

    move-result v0

    return v0
.end method

.method public hasBasebandCn0DbHz(I)Z
    .registers 4
    .param p1, "satelliteIndex"    # I

    .line 106
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_d

    .line 107
    iget-object v0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    invoke-static {v0, p1}, Landroidx/core/location/GnssStatusWrapper$Api30Impl;->hasBasebandCn0DbHz(Landroid/location/GnssStatus;I)Z

    move-result v0

    return v0

    .line 109
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public hasCarrierFrequencyHz(I)Z
    .registers 4
    .param p1, "satelliteIndex"    # I

    .line 88
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_d

    .line 89
    iget-object v0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    invoke-static {v0, p1}, Landroidx/core/location/GnssStatusWrapper$Api26Impl;->hasCarrierFrequencyHz(Landroid/location/GnssStatus;I)Z

    move-result v0

    return v0

    .line 91
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public hasEphemerisData(I)Z
    .registers 3
    .param p1, "satelliteIndex"    # I

    .line 73
    iget-object v0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    invoke-virtual {v0, p1}, Landroid/location/GnssStatus;->hasEphemerisData(I)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 136
    iget-object v0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    invoke-virtual {v0}, Landroid/location/GnssStatus;->hashCode()I

    move-result v0

    return v0
.end method

.method public usedInFix(I)Z
    .registers 3
    .param p1, "satelliteIndex"    # I

    .line 83
    iget-object v0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    invoke-virtual {v0, p1}, Landroid/location/GnssStatus;->usedInFix(I)Z

    move-result v0

    return v0
.end method

###### Class androidx.core.location.GnssStatusWrapper.Api26Impl (androidx.core.location.GnssStatusWrapper$Api26Impl)
.class Landroidx/core/location/GnssStatusWrapper$Api26Impl;
.super Ljava/lang/Object;
.source "GnssStatusWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/GnssStatusWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api26Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    return-void
.end method

.method static getCarrierFrequencyHz(Landroid/location/GnssStatus;I)F
    .registers 3
    .param p0, "gnssStatus"    # Landroid/location/GnssStatus;
    .param p1, "satelliteIndex"    # I

    .line 147
    invoke-virtual {p0, p1}, Landroid/location/GnssStatus;->getCarrierFrequencyHz(I)F

    move-result v0

    return v0
.end method

.method static hasCarrierFrequencyHz(Landroid/location/GnssStatus;I)Z
    .registers 3
    .param p0, "gnssStatus"    # Landroid/location/GnssStatus;
    .param p1, "satelliteIndex"    # I

    .line 152
    invoke-virtual {p0, p1}, Landroid/location/GnssStatus;->hasCarrierFrequencyHz(I)Z

    move-result v0

    return v0
.end method

###### Class androidx.core.location.GnssStatusWrapper.Api30Impl (androidx.core.location.GnssStatusWrapper$Api30Impl)
.class Landroidx/core/location/GnssStatusWrapper$Api30Impl;
.super Ljava/lang/Object;
.source "GnssStatusWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/GnssStatusWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api30Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    return-void
.end method

.method static getBasebandCn0DbHz(Landroid/location/GnssStatus;I)F
    .registers 3
    .param p0, "gnssStatus"    # Landroid/location/GnssStatus;
    .param p1, "satelliteIndex"    # I

    .line 169
    invoke-virtual {p0, p1}, Landroid/location/GnssStatus;->getBasebandCn0DbHz(I)F

    move-result v0

    return v0
.end method

.method static hasBasebandCn0DbHz(Landroid/location/GnssStatus;I)Z
    .registers 3
    .param p0, "gnssStatus"    # Landroid/location/GnssStatus;
    .param p1, "satelliteIndex"    # I

    .line 164
    invoke-virtual {p0, p1}, Landroid/location/GnssStatus;->hasBasebandCn0DbHz(I)Z

    move-result v0

    return v0
.end method
