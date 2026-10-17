###### Class androidx.core.provider.FontProvider (androidx.core.provider.FontProvider)
.class Landroidx/core/provider/FontProvider;
.super Ljava/lang/Object;
.source "FontProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/provider/FontProvider$Api16Impl;
    }
.end annotation


# static fields
.field private static final sByteArrayComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 197
    new-instance v0, Landroidx/core/provider/FontProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/core/provider/FontProvider$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/core/provider/FontProvider;->sByteArrayComparator:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToByteArrayList([Landroid/content/pm/Signature;)Ljava/util/List;
    .registers 6
    .param p0, "signatures"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v0, "shaList":Ljava/util/List;, "Ljava/util/List<[B>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_15

    aget-object v3, p0, v2

    .line 225
    .local v3, "signature":Landroid/content/pm/Signature;
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    .end local v3    # "signature":Landroid/content/pm/Signature;
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 227
    :cond_15
    return-object v0
.end method

.method private static equalsByteArrayList(Ljava/util/List;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/util/List<",
            "[B>;)Z"
        }
    .end annotation

    .line 211
    .local p0, "signatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local p1, "requestSignatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 212
    return v2

    .line 214
    :cond_c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 215
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_26

    .line 216
    return v2

    .line 214
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 219
    .end local v0    # "i":I
    :cond_29
    const/4 v0, 0x1

    return v0
.end method

.method private static getCertificates(Landroidx/core/provider/FontRequest;Landroid/content/res/Resources;)Ljava/util/List;
    .registers 4
    .param p0, "request"    # Landroidx/core/provider/FontRequest;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/provider/FontRequest;",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    .line 190
    invoke-virtual {p0}, Landroidx/core/provider/FontRequest;->getCertificates()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 191
    invoke-virtual {p0}, Landroidx/core/provider/FontRequest;->getCertificates()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 193
    :cond_b
    invoke-virtual {p0}, Landroidx/core/provider/FontRequest;->getCertificatesArrayResId()I

    move-result v0

    .line 194
    .local v0, "resourceId":I
    invoke-static {p1, v0}, Landroidx/core/content/res/FontResourcesParserCompat;->readCerts(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method static getFontFamilyResult(Landroid/content/Context;Landroidx/core/provider/FontRequest;Landroid/os/CancellationSignal;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Landroidx/core/provider/FontRequest;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 55
    nop

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 55
    invoke-static {v0, p1, v1}, Landroidx/core/provider/FontProvider;->getProvider(Landroid/content/pm/PackageManager;Landroidx/core/provider/FontRequest;Landroid/content/res/Resources;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 57
    .local v0, "providerInfo":Landroid/content/pm/ProviderInfo;
    if-nez v0, :cond_16

    .line 58
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->create(I[Landroidx/core/provider/FontsContractCompat$FontInfo;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;

    move-result-object v1

    return-object v1

    .line 61
    :cond_16
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {p0, p1, v1, p2}, Landroidx/core/provider/FontProvider;->query(Landroid/content/Context;Landroidx/core/provider/FontRequest;Ljava/lang/String;Landroid/os/CancellationSignal;)[Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v1

    .line 63
    .local v1, "fonts":[Landroidx/core/provider/FontsContractCompat$FontInfo;
    const/4 v2, 0x0

    invoke-static {v2, v1}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->create(I[Landroidx/core/provider/FontsContractCompat$FontInfo;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;

    move-result-object v2

    return-object v2
.end method

.method static getProvider(Landroid/content/pm/PackageManager;Landroidx/core/provider/FontRequest;Landroid/content/res/Resources;)Landroid/content/pm/ProviderInfo;
    .registers 11
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "request"    # Landroidx/core/provider/FontRequest;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 77
    invoke-virtual {p1}, Landroidx/core/provider/FontRequest;->getProviderAuthority()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "providerAuthority":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 79
    .local v1, "info":Landroid/content/pm/ProviderInfo;
    if-eqz v1, :cond_78

    .line 84
    iget-object v2, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/core/provider/FontRequest;->getProviderPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 93
    iget-object v2, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x40

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 95
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v3}, Landroidx/core/provider/FontProvider;->convertToByteArrayList([Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object v3

    .line 96
    .local v3, "signatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    sget-object v4, Landroidx/core/provider/FontProvider;->sByteArrayComparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 97
    invoke-static {p1, p2}, Landroidx/core/provider/FontProvider;->getCertificates(Landroidx/core/provider/FontRequest;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v4

    .line 98
    .local v4, "requestCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4f

    .line 100
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 101
    .local v6, "requestSignatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    sget-object v7, Landroidx/core/provider/FontProvider;->sByteArrayComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 102
    invoke-static {v3, v6}, Landroidx/core/provider/FontProvider;->equalsByteArrayList(Ljava/util/List;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 103
    return-object v1

    .line 98
    .end local v6    # "requestSignatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_4c
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 106
    .end local v5    # "i":I
    :cond_4f
    const/4 v5, 0x0

    return-object v5

    .line 85
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "signatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v4    # "requestCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    :cond_51
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found content provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", but package was not "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 87
    invoke-virtual {p1}, Landroidx/core/provider/FontRequest;->getProviderPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_78
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No package found for authority: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static synthetic lambda$static$0([B[B)I
    .registers 5
    .param p0, "l"    # [B
    .param p1, "r"    # [B

    .line 198
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_8

    .line 199
    array-length v0, p0

    array-length v1, p1

    sub-int/2addr v0, v1

    return v0

    .line 201
    :cond_8
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    array-length v1, p0

    if-ge v0, v1, :cond_1b

    .line 202
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    if-eq v1, v2, :cond_18

    .line 203
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    sub-int/2addr v1, v2

    return v1

    .line 201
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 206
    .end local v0    # "i":I
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method static query(Landroid/content/Context;Landroidx/core/provider/FontRequest;Ljava/lang/String;Landroid/os/CancellationSignal;)[Landroidx/core/provider/FontsContractCompat$FontInfo;
    .registers 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Landroidx/core/provider/FontRequest;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 120
    move-object/from16 v1, p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 121
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/provider/FontsContractCompat$FontInfo;>;"
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "content"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 122
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 124
    .local v5, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 125
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 126
    const-string v3, "file"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 128
    .local v3, "fileBaseUri":Landroid/net/Uri;
    const/4 v11, 0x0

    .line 130
    .local v11, "cursor":Landroid/database/Cursor;
    :try_start_33
    const-string v12, "_id"

    const-string v13, "file_id"

    const-string v14, "font_ttc_index"

    const-string v15, "font_variation_settings"

    const-string v16, "font_weight"

    const-string v17, "font_italic"

    const-string v18, "result_code"

    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    move-result-object v6

    .line 137
    .local v6, "projection":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 138
    .local v4, "resolver":Landroid/content/ContentResolver;
    nop

    .line 139
    const-string v7, "query = ?"

    .line 140
    invoke-virtual/range {p1 .. p1}, Landroidx/core/provider/FontRequest;->getQuery()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v8

    .line 139
    const/4 v9, 0x0

    move-object/from16 v10, p3

    invoke-static/range {v4 .. v10}, Landroidx/core/provider/FontProvider$Api16Impl;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v0

    move-object v11, v0

    .line 147
    if-eqz v11, :cond_fa

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_fa

    .line 148
    const-string v7, "result_code"

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 150
    .local v7, "resultCodeColumnIndex":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v8

    .line 151
    const-string v8, "_id"

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 152
    .local v8, "idColumnIndex":I
    const-string v9, "file_id"

    invoke-interface {v11, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 154
    .local v9, "fileIdColumnIndex":I
    const-string v10, "font_ttc_index"

    invoke-interface {v11, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 156
    .local v10, "ttcIndexColumnIndex":I
    const-string v12, "font_weight"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 158
    .local v12, "weightColumnIndex":I
    const-string v13, "font_italic"

    invoke-interface {v11, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 160
    .local v13, "italicColumnIndex":I
    :goto_8e
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14
    :try_end_92
    .catchall {:try_start_33 .. :try_end_92} :catchall_10d

    if-eqz v14, :cond_f5

    .line 161
    const/4 v14, -0x1

    if-eq v7, v14, :cond_a1

    .line 162
    :try_start_97
    invoke-interface {v11, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    goto :goto_a2

    .line 182
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .end local v6    # "projection":[Ljava/lang/String;
    .end local v7    # "resultCodeColumnIndex":I
    .end local v8    # "idColumnIndex":I
    .end local v9    # "fileIdColumnIndex":I
    .end local v10    # "ttcIndexColumnIndex":I
    .end local v12    # "weightColumnIndex":I
    .end local v13    # "italicColumnIndex":I
    :catchall_9c
    move-exception v0

    move-object/from16 v18, v3

    goto/16 :goto_110

    .line 163
    .restart local v4    # "resolver":Landroid/content/ContentResolver;
    .restart local v6    # "projection":[Ljava/lang/String;
    .restart local v7    # "resultCodeColumnIndex":I
    .restart local v8    # "idColumnIndex":I
    .restart local v9    # "fileIdColumnIndex":I
    .restart local v10    # "ttcIndexColumnIndex":I
    .restart local v12    # "weightColumnIndex":I
    .restart local v13    # "italicColumnIndex":I
    :cond_a1
    const/4 v15, 0x0

    :goto_a2
    nop

    .line 164
    .local v15, "resultCode":I
    if-eq v10, v14, :cond_aa

    .line 165
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    goto :goto_ac

    :cond_aa
    const/16 v16, 0x0

    :goto_ac
    move/from16 v17, v16

    .line 167
    .local v17, "ttcIndex":I
    if-ne v9, v14, :cond_bf

    .line 168
    invoke-interface {v11, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-wide/from16 v20, v18

    .line 169
    .local v20, "id":J
    move-wide/from16 v0, v20

    .end local v20    # "id":J
    .local v0, "id":J
    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18
    :try_end_bc
    .catchall {:try_start_97 .. :try_end_bc} :catchall_9c

    .line 170
    .end local v0    # "id":J
    .local v18, "fileUri":Landroid/net/Uri;
    move-object/from16 v0, v18

    goto :goto_c9

    .line 171
    .end local v18    # "fileUri":Landroid/net/Uri;
    :cond_bf
    :try_start_bf
    invoke-interface {v11, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 172
    .restart local v0    # "id":J
    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18
    :try_end_c7
    .catchall {:try_start_bf .. :try_end_c7} :catchall_10d

    move-object/from16 v0, v18

    .line 175
    .local v0, "fileUri":Landroid/net/Uri;
    :goto_c9
    if-eq v12, v14, :cond_d0

    :try_start_cb
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_cf
    .catchall {:try_start_cb .. :try_end_cf} :catchall_9c

    goto :goto_d2

    :cond_d0
    const/16 v1, 0x190

    .line 176
    .local v1, "weight":I
    :goto_d2
    if-eq v13, v14, :cond_de

    :try_start_d4
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v14
    :try_end_d8
    .catchall {:try_start_d4 .. :try_end_d8} :catchall_10d

    move-object/from16 v18, v3

    .end local v3    # "fileBaseUri":Landroid/net/Uri;
    .local v18, "fileBaseUri":Landroid/net/Uri;
    const/4 v3, 0x1

    if-ne v14, v3, :cond_e0

    goto :goto_e1

    .end local v18    # "fileBaseUri":Landroid/net/Uri;
    .restart local v3    # "fileBaseUri":Landroid/net/Uri;
    :cond_de
    move-object/from16 v18, v3

    .end local v3    # "fileBaseUri":Landroid/net/Uri;
    .restart local v18    # "fileBaseUri":Landroid/net/Uri;
    :cond_e0
    const/4 v3, 0x0

    .line 178
    .local v3, "italic":Z
    :goto_e1
    move/from16 v14, v17

    move-object/from16 v17, v4

    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .local v14, "ttcIndex":I
    .local v17, "resolver":Landroid/content/ContentResolver;
    :try_start_e5
    invoke-static {v0, v14, v1, v3, v15}, Landroidx/core/provider/FontsContractCompat$FontInfo;->create(Landroid/net/Uri;IIZI)Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_ec
    .catchall {:try_start_e5 .. :try_end_ec} :catchall_f3

    .line 179
    move-object/from16 v1, p2

    move-object/from16 v4, v17

    move-object/from16 v3, v18

    .end local v0    # "fileUri":Landroid/net/Uri;
    .end local v1    # "weight":I
    .end local v3    # "italic":Z
    .end local v14    # "ttcIndex":I
    .end local v15    # "resultCode":I
    goto :goto_8e

    .line 182
    .end local v6    # "projection":[Ljava/lang/String;
    .end local v7    # "resultCodeColumnIndex":I
    .end local v8    # "idColumnIndex":I
    .end local v9    # "fileIdColumnIndex":I
    .end local v10    # "ttcIndexColumnIndex":I
    .end local v12    # "weightColumnIndex":I
    .end local v13    # "italicColumnIndex":I
    .end local v17    # "resolver":Landroid/content/ContentResolver;
    :catchall_f3
    move-exception v0

    goto :goto_110

    .line 160
    .end local v18    # "fileBaseUri":Landroid/net/Uri;
    .local v3, "fileBaseUri":Landroid/net/Uri;
    .restart local v4    # "resolver":Landroid/content/ContentResolver;
    .restart local v6    # "projection":[Ljava/lang/String;
    .restart local v7    # "resultCodeColumnIndex":I
    .restart local v8    # "idColumnIndex":I
    .restart local v9    # "fileIdColumnIndex":I
    .restart local v10    # "ttcIndexColumnIndex":I
    .restart local v12    # "weightColumnIndex":I
    .restart local v13    # "italicColumnIndex":I
    :cond_f5
    move-object/from16 v18, v3

    move-object/from16 v17, v4

    .end local v3    # "fileBaseUri":Landroid/net/Uri;
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .restart local v17    # "resolver":Landroid/content/ContentResolver;
    .restart local v18    # "fileBaseUri":Landroid/net/Uri;
    goto :goto_fe

    .line 147
    .end local v7    # "resultCodeColumnIndex":I
    .end local v8    # "idColumnIndex":I
    .end local v9    # "fileIdColumnIndex":I
    .end local v10    # "ttcIndexColumnIndex":I
    .end local v12    # "weightColumnIndex":I
    .end local v13    # "italicColumnIndex":I
    .end local v17    # "resolver":Landroid/content/ContentResolver;
    .end local v18    # "fileBaseUri":Landroid/net/Uri;
    .restart local v3    # "fileBaseUri":Landroid/net/Uri;
    .restart local v4    # "resolver":Landroid/content/ContentResolver;
    :cond_fa
    move-object/from16 v18, v3

    move-object/from16 v17, v4

    .line 182
    .end local v3    # "fileBaseUri":Landroid/net/Uri;
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .end local v6    # "projection":[Ljava/lang/String;
    .restart local v18    # "fileBaseUri":Landroid/net/Uri;
    :goto_fe
    if-eqz v11, :cond_103

    .line 183
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 186
    :cond_103
    const/4 v0, 0x0

    new-array v0, v0, [Landroidx/core/provider/FontsContractCompat$FontInfo;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/core/provider/FontsContractCompat$FontInfo;

    return-object v0

    .line 182
    .end local v18    # "fileBaseUri":Landroid/net/Uri;
    .restart local v3    # "fileBaseUri":Landroid/net/Uri;
    :catchall_10d
    move-exception v0

    move-object/from16 v18, v3

    .end local v3    # "fileBaseUri":Landroid/net/Uri;
    .restart local v18    # "fileBaseUri":Landroid/net/Uri;
    :goto_110
    if-eqz v11, :cond_115

    .line 183
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 185
    :cond_115
    throw v0
.end method

###### Class androidx.core.provider.FontProvider.Api16Impl (androidx.core.provider.FontProvider$Api16Impl)
.class Landroidx/core/provider/FontProvider$Api16Impl;
.super Ljava/lang/Object;
.source "FontProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/provider/FontProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api16Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    return-void
.end method

.method static query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/database/Cursor;
    .registers 14
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "cancellationSignal"    # Ljava/lang/Object;

    .line 241
    move-object v6, p6

    check-cast v6, Landroid/os/CancellationSignal;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p0    # "contentResolver":Landroid/content/ContentResolver;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "projection":[Ljava/lang/String;
    .end local p3    # "selection":Ljava/lang/String;
    .end local p4    # "selectionArgs":[Ljava/lang/String;
    .end local p5    # "sortOrder":Ljava/lang/String;
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    .local v1, "uri":Landroid/net/Uri;
    .local v2, "projection":[Ljava/lang/String;
    .local v3, "selection":Ljava/lang/String;
    .local v4, "selectionArgs":[Ljava/lang/String;
    .local v5, "sortOrder":Ljava/lang/String;
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

###### Class androidx.core.provider.FontProvider$$ExternalSyntheticLambda0 (androidx.core.provider.FontProvider$$ExternalSyntheticLambda0)
.class public final synthetic Landroidx/core/provider/FontProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/core/provider/FontProvider;"
    method = "lambda$static$0"
    proto = "([B[B)I"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x1c
    versionHash = "3b119036505a817327d30bbe4a430e8676906c2ab0a3363856806bcd3b289007"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    check-cast p1, [B

    check-cast p2, [B

    invoke-static {p1, p2}, Landroidx/core/provider/FontProvider;->lambda$static$0([B[B)I

    move-result p1

    return p1
.end method
