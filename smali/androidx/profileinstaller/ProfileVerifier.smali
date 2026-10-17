###### Class androidx.profileinstaller.ProfileVerifier (androidx.profileinstaller.ProfileVerifier)
.class public final Landroidx/profileinstaller/ProfileVerifier;
.super Ljava/lang/Object;
.source "ProfileVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;,
        Landroidx/profileinstaller/ProfileVerifier$Cache;,
        Landroidx/profileinstaller/ProfileVerifier$Api33Impl;
    }
.end annotation


# static fields
.field private static final CUR_PROFILES_BASE_DIR:Ljava/lang/String; = "/data/misc/profiles/cur/0/"

.field private static final PROFILE_FILE_NAME:Ljava/lang/String; = "primary.prof"

.field private static final PROFILE_INSTALLED_CACHE_FILE_NAME:Ljava/lang/String; = "profileInstalled"

.field private static final REF_PROFILES_BASE_DIR:Ljava/lang/String; = "/data/misc/profiles/ref/"

.field private static final SYNC_OBJ:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "ProfileVerifier"

.field private static sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

.field private static final sFuture:Landroidx/concurrent/futures/ResolvableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/ResolvableFuture<",
            "Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 76
    invoke-static {}, Landroidx/concurrent/futures/ResolvableFuture;->create()Landroidx/concurrent/futures/ResolvableFuture;

    move-result-object v0

    sput-object v0, Landroidx/profileinstaller/ProfileVerifier;->sFuture:Landroidx/concurrent/futures/ResolvableFuture;

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/profileinstaller/ProfileVerifier;->SYNC_OBJ:Ljava/lang/Object;

    .line 81
    const/4 v0, 0x0

    sput-object v0, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method

.method public static getCompilationStatusAsync()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;",
            ">;"
        }
    .end annotation

    .line 320
    sget-object v0, Landroidx/profileinstaller/ProfileVerifier;->sFuture:Landroidx/concurrent/futures/ResolvableFuture;

    return-object v0
.end method

.method private static getPackageLastUpdateTime(Landroid/content/Context;)J
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 299
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 300
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_15

    .line 301
    invoke-static {v0, p0}, Landroidx/profileinstaller/ProfileVerifier$Api33Impl;->getPackageInfo(Landroid/content/pm/PackageManager;Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-wide v1, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    return-wide v1

    .line 303
    :cond_15
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-wide v1, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    return-wide v1
.end method

.method private static setCompilationStatus(IZZ)Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;
    .registers 5
    .param p0, "resultCode"    # I
    .param p1, "hasReferenceProfile"    # Z
    .param p2, "hasCurrentProfile"    # Z

    .line 285
    new-instance v0, Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    invoke-direct {v0, p0, p1, p2}, Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;-><init>(IZZ)V

    sput-object v0, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    .line 290
    sget-object v0, Landroidx/profileinstaller/ProfileVerifier;->sFuture:Landroidx/concurrent/futures/ResolvableFuture;

    sget-object v1, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    .line 291
    sget-object v0, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    return-object v0
.end method

.method public static writeProfileVerification(Landroid/content/Context;)Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 100
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/profileinstaller/ProfileVerifier;->writeProfileVerification(Landroid/content/Context;Z)Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    move-result-object v0

    return-object v0
.end method

.method static writeProfileVerification(Landroid/content/Context;Z)Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;
    .registers 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "forceVerifyCurrentProfile"    # Z

    .line 129
    if-nez p1, :cond_9

    sget-object v0, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    if-eqz v0, :cond_9

    .line 130
    sget-object v0, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    return-object v0

    .line 133
    :cond_9
    sget-object v1, Landroidx/profileinstaller/ProfileVerifier;->SYNC_OBJ:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    if-nez p1, :cond_16

    :try_start_e
    sget-object v0, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    if-eqz v0, :cond_16

    .line 136
    sget-object v0, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    monitor-exit v1

    return-object v0

    .line 140
    :cond_16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    const/4 v3, 0x0

    if-lt v0, v2, :cond_f1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ne v0, v2, :cond_25

    goto/16 :goto_f1

    .line 152
    :cond_25
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    const-string v4, "/data/misc/profiles/ref/"

    .line 153
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "primary.prof"

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v0

    .line 154
    .local v2, "referenceProfileFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 155
    .local v4, "referenceProfileSize":J
    nop

    .line 156
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_4c

    cmp-long v0, v4, v6

    if-lez v0, :cond_4c

    move v0, v8

    goto :goto_4d

    :cond_4c
    move v0, v3

    :goto_4d
    move v9, v0

    .line 159
    .local v9, "hasReferenceProfile":Z
    new-instance v0, Ljava/io/File;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/misc/profiles/cur/0/"

    .line 160
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "primary.prof"

    invoke-direct {v0, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v10, v0

    .line 161
    .local v10, "currentProfileFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v11

    move-wide/from16 v18, v11

    .line 162
    .local v18, "currentProfileSize":J
    nop

    .line 163
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_6c
    .catchall {:try_start_e .. :try_end_6c} :catchall_f9

    if-eqz v0, :cond_73

    cmp-long v0, v18, v6

    if-lez v0, :cond_73

    move v3, v8

    .line 169
    .local v3, "hasCurrentProfile":Z
    :cond_73
    :try_start_73
    invoke-static/range {p0 .. p0}, Landroidx/profileinstaller/ProfileVerifier;->getPackageLastUpdateTime(Landroid/content/Context;)J

    move-result-wide v16
    :try_end_77
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_73 .. :try_end_77} :catch_e8
    .catchall {:try_start_73 .. :try_end_77} :catchall_f9

    .line 176
    .local v16, "packageLastUpdateTime":J
    nop

    .line 179
    :try_start_78
    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "profileInstalled"

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v6, v0

    .line 180
    .local v6, "cacheFile":Ljava/io/File;
    const/4 v7, 0x0

    .line 181
    .local v7, "currentCache":Landroidx/profileinstaller/ProfileVerifier$Cache;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_89
    .catchall {:try_start_78 .. :try_end_89} :catchall_f9

    if-eqz v0, :cond_9a

    .line 183
    :try_start_8b
    invoke-static {v6}, Landroidx/profileinstaller/ProfileVerifier$Cache;->readFromFile(Ljava/io/File;)Landroidx/profileinstaller/ProfileVerifier$Cache;

    move-result-object v0
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8f} :catch_91
    .catchall {:try_start_8b .. :try_end_8f} :catchall_f9

    move-object v7, v0

    .line 190
    goto :goto_9a

    .line 184
    :catch_91
    move-exception v0

    .line 185
    .local v0, "e":Ljava/io/IOException;
    const/high16 v8, 0x20000

    :try_start_94
    invoke-static {v8, v9, v3}, Landroidx/profileinstaller/ProfileVerifier;->setCompilationStatus(IZZ)Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    move-result-object v8

    monitor-exit v1

    return-object v8

    .line 205
    .end local v0    # "e":Ljava/io/IOException;
    :cond_9a
    :goto_9a
    const/4 v0, 0x2

    if-eqz v7, :cond_ab

    iget-wide v11, v7, Landroidx/profileinstaller/ProfileVerifier$Cache;->mPackageLastUpdateTime:J

    cmp-long v11, v11, v16

    if-nez v11, :cond_ab

    iget v11, v7, Landroidx/profileinstaller/ProfileVerifier$Cache;->mResultCode:I

    if-ne v11, v0, :cond_a8

    goto :goto_ab

    .line 223
    :cond_a8
    iget v11, v7, Landroidx/profileinstaller/ProfileVerifier$Cache;->mResultCode:I

    .local v11, "resultCode":I
    goto :goto_b4

    .line 212
    .end local v11    # "resultCode":I
    :cond_ab
    :goto_ab
    if-eqz v9, :cond_af

    .line 213
    const/4 v11, 0x1

    .restart local v11    # "resultCode":I
    goto :goto_b4

    .line 214
    .end local v11    # "resultCode":I
    :cond_af
    if-eqz v3, :cond_b3

    .line 215
    const/4 v11, 0x2

    .restart local v11    # "resultCode":I
    goto :goto_b4

    .line 217
    .end local v11    # "resultCode":I
    :cond_b3
    const/4 v11, 0x0

    .line 230
    .restart local v11    # "resultCode":I
    :goto_b4
    if-eqz p1, :cond_bb

    if-eqz v3, :cond_bb

    if-eq v11, v8, :cond_bb

    .line 232
    const/4 v11, 0x2

    .line 237
    :cond_bb
    if-eqz v7, :cond_cc

    iget v12, v7, Landroidx/profileinstaller/ProfileVerifier$Cache;->mResultCode:I

    if-ne v12, v0, :cond_cc

    if-ne v11, v8, :cond_cc

    .line 251
    iget-wide v12, v7, Landroidx/profileinstaller/ProfileVerifier$Cache;->mInstalledCurrentProfileSize:J

    cmp-long v0, v4, v12

    if-gez v0, :cond_cc

    .line 252
    const/4 v11, 0x3

    move v15, v11

    goto :goto_cd

    .line 257
    :cond_cc
    move v15, v11

    .end local v11    # "resultCode":I
    .local v15, "resultCode":I
    :goto_cd
    new-instance v13, Landroidx/profileinstaller/ProfileVerifier$Cache;

    const/4 v14, 0x1

    invoke-direct/range {v13 .. v19}, Landroidx/profileinstaller/ProfileVerifier$Cache;-><init>(IIJJ)V

    .line 266
    .local v13, "newCache":Landroidx/profileinstaller/ProfileVerifier$Cache;
    if-eqz v7, :cond_db

    invoke-virtual {v7, v13}, Landroidx/profileinstaller/ProfileVerifier$Cache;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_d9
    .catchall {:try_start_94 .. :try_end_d9} :catchall_f9

    if-nez v0, :cond_e2

    .line 268
    :cond_db
    :try_start_db
    invoke-virtual {v13, v6}, Landroidx/profileinstaller/ProfileVerifier$Cache;->writeOnFile(Ljava/io/File;)V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_de} :catch_df
    .catchall {:try_start_db .. :try_end_de} :catchall_f9

    .line 272
    goto :goto_e2

    .line 269
    :catch_df
    move-exception v0

    .line 270
    .restart local v0    # "e":Ljava/io/IOException;
    const/high16 v15, 0x30000

    .line 276
    .end local v0    # "e":Ljava/io/IOException;
    :cond_e2
    :goto_e2
    :try_start_e2
    invoke-static {v15, v9, v3}, Landroidx/profileinstaller/ProfileVerifier;->setCompilationStatus(IZZ)Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 170
    .end local v6    # "cacheFile":Ljava/io/File;
    .end local v7    # "currentCache":Landroidx/profileinstaller/ProfileVerifier$Cache;
    .end local v13    # "newCache":Landroidx/profileinstaller/ProfileVerifier$Cache;
    .end local v15    # "resultCode":I
    .end local v16    # "packageLastUpdateTime":J
    :catch_e8
    move-exception v0

    .line 171
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/high16 v6, 0x10000

    invoke-static {v6, v9, v3}, Landroidx/profileinstaller/ProfileVerifier;->setCompilationStatus(IZZ)Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    move-result-object v6

    monitor-exit v1

    return-object v6

    .line 142
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "referenceProfileFile":Ljava/io/File;
    .end local v3    # "hasCurrentProfile":Z
    .end local v4    # "referenceProfileSize":J
    .end local v9    # "hasReferenceProfile":Z
    .end local v10    # "currentProfileFile":Ljava/io/File;
    .end local v18    # "currentProfileSize":J
    :cond_f1
    :goto_f1
    const/high16 v0, 0x40000

    invoke-static {v0, v3, v3}, Landroidx/profileinstaller/ProfileVerifier;->setCompilationStatus(IZZ)Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 277
    :catchall_f9
    move-exception v0

    monitor-exit v1
    :try_end_fb
    .catchall {:try_start_e2 .. :try_end_fb} :catchall_f9

    throw v0
.end method

###### Class androidx.profileinstaller.ProfileVerifier.Api33Impl (androidx.profileinstaller.ProfileVerifier$Api33Impl)
.class Landroidx/profileinstaller/ProfileVerifier$Api33Impl;
.super Ljava/lang/Object;
.source "ProfileVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/profileinstaller/ProfileVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api33Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    return-void
.end method

.method static getPackageInfo(Landroid/content/pm/PackageManager;Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .registers 5
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 558
    nop

    .line 559
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 560
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v1

    .line 558
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

###### Class androidx.profileinstaller.ProfileVerifier.Cache (androidx.profileinstaller.ProfileVerifier$Cache)
.class Landroidx/profileinstaller/ProfileVerifier$Cache;
.super Ljava/lang/Object;
.source "ProfileVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/profileinstaller/ProfileVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Cache"
.end annotation


# static fields
.field private static final SCHEMA:I = 0x1


# instance fields
.field final mInstalledCurrentProfileSize:J

.field final mPackageLastUpdateTime:J

.field final mResultCode:I

.field final mSchema:I


# direct methods
.method constructor <init>(IIJJ)V
    .registers 7
    .param p1, "schema"    # I
    .param p2, "resultCode"    # I
    .param p3, "packageLastUpdateTime"    # J
    .param p5, "installedCurrentProfileSize"    # J

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    iput p1, p0, Landroidx/profileinstaller/ProfileVerifier$Cache;->mSchema:I

    .line 339
    iput p2, p0, Landroidx/profileinstaller/ProfileVerifier$Cache;->mResultCode:I

    .line 340
    iput-wide p3, p0, Landroidx/profileinstaller/ProfileVerifier$Cache;->mPackageLastUpdateTime:J

    .line 341
    iput-wide p5, p0, Landroidx/profileinstaller/ProfileVerifier$Cache;->mInstalledCurrentProfileSize:J

    .line 342
    return-void
.end method

.method static readFromFile(Ljava/io/File;)Landroidx/profileinstaller/ProfileVerifier$Cache;
    .registers 10
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v0

    .line 377
    .local v1, "dis":Ljava/io/DataInputStream;
    :try_start_b
    new-instance v2, Landroidx/profileinstaller/ProfileVerifier$Cache;

    .line 378
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 379
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 380
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v5

    .line 381
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v7

    invoke-direct/range {v2 .. v8}, Landroidx/profileinstaller/ProfileVerifier$Cache;-><init>(IIJJ)V
    :try_end_20
    .catchall {:try_start_b .. :try_end_20} :catchall_24

    .line 383
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 377
    return-object v2

    .line 376
    :catchall_24
    move-exception v0

    move-object v2, v0

    :try_start_26
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2e
    throw v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 346
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 347
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2e

    instance-of v2, p1, Landroidx/profileinstaller/ProfileVerifier$Cache;

    if-nez v2, :cond_c

    goto :goto_2e

    .line 348
    :cond_c
    move-object v2, p1

    check-cast v2, Landroidx/profileinstaller/ProfileVerifier$Cache;

    .line 349
    .local v2, "cacheFile":Landroidx/profileinstaller/ProfileVerifier$Cache;
    iget v3, p0, Landroidx/profileinstaller/ProfileVerifier$Cache;->mResultCode:I

    iget v4, v2, Landroidx/profileinstaller/ProfileVerifier$Cache;->mResultCode:I

    if-ne v3, v4, :cond_2c

    iget-wide v3, p0, Landroidx/profileinstaller/ProfileVerifier$Cache;->mPackageLastUpdateTime:J

    iget-wide v5, v2, Landroidx/profileinstaller/ProfileVerifier$Cache;->mPackageLastUpdateTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2c

    iget v3, p0, Landroidx/profileinstaller/ProfileVerifier$Cache;->mSchema:I

    iget v4, v2, Landroidx/profileinstaller/ProfileVerifier$Cache;->mSchema:I

    if-ne v3, v4, :cond_2c

    iget-wide v3, p0, Landroidx/profileinstaller/ProfileVerifier$Cache;->mInstalledCurrentProfileSize:J

    iget-wide v5, v2, Landroidx/profileinstaller/ProfileVerifier$Cache;->mInstalledCurrentProfileSize:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2c

    goto :goto_2d

    :cond_2c
    move v0, v1

    :goto_2d
    return v0

    .line 347
    .end local v2    # "cacheFile":Landroidx/profileinstaller/ProfileVerifier$Cache;
    :cond_2e
    :goto_2e
    return v1
.end method

.method public hashCode()I
    .registers 7

    .line 357
    iget v0, p0, Landroidx/profileinstaller/ProfileVerifier$Cache;->mResultCode:I

    .line 358
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-wide v1, p0, Landroidx/profileinstaller/ProfileVerifier$Cache;->mPackageLastUpdateTime:J

    .line 359
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, p0, Landroidx/profileinstaller/ProfileVerifier$Cache;->mSchema:I

    .line 360
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v3, p0, Landroidx/profileinstaller/ProfileVerifier$Cache;->mInstalledCurrentProfileSize:J

    .line 361
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    .line 357
    invoke-static {v4}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method writeOnFile(Ljava/io/File;)V
    .registers 5
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 367
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 368
    .local v0, "dos":Ljava/io/DataOutputStream;
    :try_start_d
    iget v1, p0, Landroidx/profileinstaller/ProfileVerifier$Cache;->mSchema:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 369
    iget v1, p0, Landroidx/profileinstaller/ProfileVerifier$Cache;->mResultCode:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 370
    iget-wide v1, p0, Landroidx/profileinstaller/ProfileVerifier$Cache;->mPackageLastUpdateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 371
    iget-wide v1, p0, Landroidx/profileinstaller/ProfileVerifier$Cache;->mInstalledCurrentProfileSize:J

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_25

    .line 372
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 373
    .end local v0    # "dos":Ljava/io/DataOutputStream;
    return-void

    .line 367
    .restart local v0    # "dos":Ljava/io/DataOutputStream;
    :catchall_25
    move-exception v1

    :try_start_26
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2e
    throw v1
.end method

###### Class androidx.profileinstaller.ProfileVerifier.CompilationStatus (androidx.profileinstaller.ProfileVerifier$CompilationStatus)
.class public Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;
.super Ljava/lang/Object;
.source "ProfileVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/profileinstaller/ProfileVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompilationStatus"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/profileinstaller/ProfileVerifier$CompilationStatus$ResultCode;
    }
.end annotation


# static fields
.field public static final RESULT_CODE_COMPILED_WITH_PROFILE:I = 0x1

.field public static final RESULT_CODE_COMPILED_WITH_PROFILE_NON_MATCHING:I = 0x3

.field public static final RESULT_CODE_ERROR_CACHE_FILE_EXISTS_BUT_CANNOT_BE_READ:I = 0x20000

.field public static final RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE:I = 0x30000

.field private static final RESULT_CODE_ERROR_CODE_BIT_SHIFT:I = 0x10

.field public static final RESULT_CODE_ERROR_PACKAGE_NAME_DOES_NOT_EXIST:I = 0x10000

.field public static final RESULT_CODE_ERROR_UNSUPPORTED_API_VERSION:I = 0x40000

.field public static final RESULT_CODE_NO_PROFILE:I = 0x0

.field public static final RESULT_CODE_PROFILE_ENQUEUED_FOR_COMPILATION:I = 0x2


# instance fields
.field private final mHasCurrentProfile:Z

.field private final mHasReferenceProfile:Z

.field final mResultCode:I


# direct methods
.method constructor <init>(IZZ)V
    .registers 4
    .param p1, "resultCode"    # I
    .param p2, "hasReferenceProfile"    # Z
    .param p3, "hasCurrentProfile"    # Z

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    iput p1, p0, Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;->mResultCode:I

    .line 488
    iput-boolean p3, p0, Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;->mHasCurrentProfile:Z

    .line 489
    iput-boolean p2, p0, Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;->mHasReferenceProfile:Z

    .line 490
    return-void
.end method


# virtual methods
.method public getProfileInstallResultCode()I
    .registers 2

    .line 521
    iget v0, p0, Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;->mResultCode:I

    return v0
.end method

.method public hasProfileEnqueuedForCompilation()Z
    .registers 2

    .line 545
    iget-boolean v0, p0, Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;->mHasCurrentProfile:Z

    return v0
.end method

.method public isCompiledWithProfile()Z
    .registers 2

    .line 534
    iget-boolean v0, p0, Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;->mHasReferenceProfile:Z

    return v0
.end method

###### Class androidx.profileinstaller.ProfileVerifier.CompilationStatus.ResultCode (androidx.profileinstaller.ProfileVerifier$CompilationStatus$ResultCode)
.class public interface abstract annotation Landroidx/profileinstaller/ProfileVerifier$CompilationStatus$ResultCode;
.super Ljava/lang/Object;
.source "ProfileVerifier.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ResultCode"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation
