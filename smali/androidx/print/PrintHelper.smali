###### Class androidx.print.PrintHelper (androidx.print.PrintHelper)
.class public final Landroidx/print/PrintHelper;
.super Ljava/lang/Object;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/print/PrintHelper$PrintUriAdapter;,
        Landroidx/print/PrintHelper$PrintBitmapAdapter;,
        Landroidx/print/PrintHelper$OnPrintFinishCallback;
    }
.end annotation


# static fields
.field public static final COLOR_MODE_COLOR:I = 0x2

.field public static final COLOR_MODE_MONOCHROME:I = 0x1

.field static final IS_MIN_MARGINS_HANDLING_CORRECT:Z

.field private static final LOG_TAG:Ljava/lang/String; = "PrintHelper"

.field private static final MAX_PRINT_SIZE:I = 0xdac

.field public static final ORIENTATION_LANDSCAPE:I = 0x1

.field public static final ORIENTATION_PORTRAIT:I = 0x2

.field static final PRINT_ACTIVITY_RESPECTS_ORIENTATION:Z

.field public static final SCALE_MODE_FILL:I = 0x2

.field public static final SCALE_MODE_FIT:I = 0x1


# instance fields
.field mColorMode:I

.field final mContext:Landroid/content/Context;

.field mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

.field final mLock:Ljava/lang/Object;

.field mOrientation:I

.field mScaleMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    const/4 v3, 0x1

    if-le v0, v2, :cond_a

    move v0, v3

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    sput-boolean v0, Landroidx/print/PrintHelper;->PRINT_ACTIVITY_RESPECTS_ORIENTATION:Z

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq v0, v2, :cond_12

    move v1, v3

    :cond_12
    sput-boolean v1, Landroidx/print/PrintHelper;->IS_MIN_MARGINS_HANDLING_CORRECT:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 140
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/print/PrintHelper;->mLock:Ljava/lang/Object;

    .line 143
    const/4 v0, 0x2

    iput v0, p0, Landroidx/print/PrintHelper;->mScaleMode:I

    .line 144
    iput v0, p0, Landroidx/print/PrintHelper;->mColorMode:I

    .line 145
    const/4 v0, 0x1

    iput v0, p0, Landroidx/print/PrintHelper;->mOrientation:I

    .line 163
    iput-object p1, p0, Landroidx/print/PrintHelper;->mContext:Landroid/content/Context;

    .line 164
    return-void
.end method

.method static convertBitmapForColorMode(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 8
    .param p0, "original"    # Landroid/graphics/Bitmap;
    .param p1, "colorMode"    # I

    .line 816
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    .line 817
    return-object p0

    .line 820
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 822
    .local v0, "grayscale":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 823
    .local v1, "c":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 824
    .local v2, "p":Landroid/graphics/Paint;
    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 825
    .local v3, "cm":Landroid/graphics/ColorMatrix;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 826
    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 827
    .local v5, "f":Landroid/graphics/ColorMatrixColorFilter;
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 828
    invoke-virtual {v1, p0, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 829
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 831
    return-object v0
.end method

.method private static copyAttributes(Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes$Builder;
    .registers 3
    .param p0, "other"    # Landroid/print/PrintAttributes;

    .line 558
    new-instance v0, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v0}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 559
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    .line 560
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getResolution()Landroid/print/PrintAttributes$Resolution;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setResolution(Landroid/print/PrintAttributes$Resolution;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    .line 561
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getMinMargins()Landroid/print/PrintAttributes$Margins;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    .line 563
    .local v0, "b":Landroid/print/PrintAttributes$Builder;
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v1

    if-eqz v1, :cond_2a

    .line 564
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    .line 567
    :cond_2a
    nop

    .line 568
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getDuplexMode()I

    move-result v1

    if-eqz v1, :cond_38

    .line 569
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getDuplexMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setDuplexMode(I)Landroid/print/PrintAttributes$Builder;

    .line 573
    :cond_38
    return-object v0
.end method

.method static getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
    .registers 10
    .param p0, "imageWidth"    # I
    .param p1, "imageHeight"    # I
    .param p2, "content"    # Landroid/graphics/RectF;
    .param p3, "fittingMode"    # I

    .line 589
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 592
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    int-to-float v2, p0

    div-float/2addr v1, v2

    .line 593
    .local v1, "scale":F
    const/4 v2, 0x2

    if-ne p3, v2, :cond_19

    .line 594
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    int-to-float v3, p1

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_23

    .line 596
    :cond_19
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    int-to-float v3, p1

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 598
    :goto_23
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 601
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    int-to-float v3, p0

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 603
    .local v2, "translateX":F
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v4

    int-to-float v5, p1

    mul-float/2addr v5, v1

    sub-float/2addr v4, v5

    div-float/2addr v4, v3

    .line 605
    .local v4, "translateY":F
    invoke-virtual {v0, v2, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 606
    return-object v0
.end method

.method static isPortrait(Landroid/graphics/Bitmap;)Z
    .registers 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 546
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "o"    # Landroid/graphics/BitmapFactory$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 796
    const-string v0, "close fail "

    const-string v1, "PrintHelper"

    if-eqz p1, :cond_32

    iget-object v2, p0, Landroidx/print/PrintHelper;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_32

    .line 799
    const/4 v2, 0x0

    .line 801
    .local v2, "is":Ljava/io/InputStream;
    :try_start_b
    iget-object v3, p0, Landroidx/print/PrintHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    move-object v2, v3

    .line 802
    const/4 v3, 0x0

    invoke-static {v2, v3, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_26

    .line 804
    if-eqz v2, :cond_25

    .line 806
    :try_start_1d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_21

    .line 809
    goto :goto_25

    .line 807
    :catch_21
    move-exception v4

    .line 808
    .local v4, "t":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 809
    .end local v4    # "t":Ljava/io/IOException;
    :cond_25
    :goto_25
    return-object v3

    .line 804
    :catchall_26
    move-exception v3

    if-eqz v2, :cond_31

    .line 806
    :try_start_29
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2d

    .line 809
    goto :goto_31

    .line 807
    :catch_2d
    move-exception v4

    .line 808
    .restart local v4    # "t":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 809
    .end local v4    # "t":Ljava/io/IOException;
    :cond_31
    :goto_31
    throw v3

    .line 797
    .end local v2    # "is":Ljava/io/InputStream;
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad argument to loadBitmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static systemSupportsPrint()Z
    .registers 1

    .line 154
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getColorMode()I
    .registers 2

    .line 210
    iget v0, p0, Landroidx/print/PrintHelper;->mColorMode:I

    return v0
.end method

.method public getOrientation()I
    .registers 2

    .line 232
    iget v0, p0, Landroidx/print/PrintHelper;->mOrientation:I

    if-nez v0, :cond_6

    .line 233
    const/4 v0, 0x1

    return v0

    .line 235
    :cond_6
    iget v0, p0, Landroidx/print/PrintHelper;->mOrientation:I

    return v0
.end method

.method public getScaleMode()I
    .registers 2

    .line 187
    iget v0, p0, Landroidx/print/PrintHelper;->mScaleMode:I

    return v0
.end method

.method loadConstrainedBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 12
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 746
    if-eqz p1, :cond_6a

    iget-object v0, p0, Landroidx/print/PrintHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_6a

    .line 750
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 751
    .local v0, "opt":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 752
    invoke-direct {p0, p1, v0}, Landroidx/print/PrintHelper;->loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 754
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 755
    .local v2, "w":I
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 758
    .local v3, "h":I
    const/4 v4, 0x0

    if-lez v2, :cond_69

    if-gtz v3, :cond_1b

    goto :goto_69

    .line 763
    :cond_1b
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 765
    .local v5, "imageSide":I
    const/4 v6, 0x1

    .line 766
    .local v6, "sampleSize":I
    :goto_20
    const/16 v7, 0xdac

    if-le v5, v7, :cond_29

    .line 767
    ushr-int/lit8 v5, v5, 0x1

    .line 768
    shl-int/lit8 v6, v6, 0x1

    goto :goto_20

    .line 772
    :cond_29
    if-lez v6, :cond_68

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    div-int/2addr v7, v6

    if-gtz v7, :cond_33

    goto :goto_68

    .line 776
    :cond_33
    iget-object v7, p0, Landroidx/print/PrintHelper;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 777
    const/4 v8, 0x0

    :try_start_37
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v9, p0, Landroidx/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 778
    iget-object v9, p0, Landroidx/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v1, v9, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 779
    iget-object v1, p0, Landroidx/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    iput v6, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 780
    iget-object v1, p0, Landroidx/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;
    :try_end_48
    .catchall {:try_start_37 .. :try_end_48} :catchall_62

    .line 781
    .local v1, "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    :try_start_48
    monitor-exit v7
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_66

    .line 783
    :try_start_49
    invoke-direct {p0, p1, v1}, Landroidx/print/PrintHelper;->loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_57

    .line 785
    iget-object v8, p0, Landroidx/print/PrintHelper;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 786
    :try_start_50
    iput-object v4, p0, Landroidx/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 787
    monitor-exit v8

    return-object v7

    :catchall_54
    move-exception v4

    monitor-exit v8
    :try_end_56
    .catchall {:try_start_50 .. :try_end_56} :catchall_54

    throw v4

    .line 785
    :catchall_57
    move-exception v7

    iget-object v8, p0, Landroidx/print/PrintHelper;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 786
    :try_start_5b
    iput-object v4, p0, Landroidx/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 787
    monitor-exit v8
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_5f

    throw v7

    :catchall_5f
    move-exception v4

    :try_start_60
    monitor-exit v8
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v4

    .line 781
    .end local v1    # "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    :catchall_62
    move-exception v4

    move-object v1, v8

    .restart local v1    # "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    :goto_64
    :try_start_64
    monitor-exit v7
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_66

    throw v4

    :catchall_66
    move-exception v4

    goto :goto_64

    .line 773
    .end local v1    # "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    :cond_68
    :goto_68
    return-object v4

    .line 759
    .end local v5    # "imageSide":I
    .end local v6    # "sampleSize":I
    :cond_69
    :goto_69
    return-object v4

    .line 747
    .end local v0    # "opt":Landroid/graphics/BitmapFactory$Options;
    .end local v2    # "w":I
    .end local v3    # "h":I
    :cond_6a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad argument to getScaledBitmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 246
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/print/PrintHelper;->printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroidx/print/PrintHelper$OnPrintFinishCallback;)V

    .line 247
    return-void
.end method

.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroidx/print/PrintHelper$OnPrintFinishCallback;)V
    .registers 13
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "callback"    # Landroidx/print/PrintHelper$OnPrintFinishCallback;

    .line 258
    if-nez p2, :cond_3

    .line 259
    return-void

    .line 262
    :cond_3
    iget-object v0, p0, Landroidx/print/PrintHelper;->mContext:Landroid/content/Context;

    .line 263
    const-string v1, "print"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    .line 265
    .local v0, "printManager":Landroid/print/PrintManager;
    invoke-static {p2}, Landroidx/print/PrintHelper;->isPortrait(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 266
    sget-object v1, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_PORTRAIT:Landroid/print/PrintAttributes$MediaSize;

    .local v1, "mediaSize":Landroid/print/PrintAttributes$MediaSize;
    goto :goto_18

    .line 268
    .end local v1    # "mediaSize":Landroid/print/PrintAttributes$MediaSize;
    :cond_16
    sget-object v1, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_LANDSCAPE:Landroid/print/PrintAttributes$MediaSize;

    .line 270
    .restart local v1    # "mediaSize":Landroid/print/PrintAttributes$MediaSize;
    :goto_18
    new-instance v2, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v2}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 271
    invoke-virtual {v2, v1}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    move-result-object v2

    iget v3, p0, Landroidx/print/PrintHelper;->mColorMode:I

    .line 272
    invoke-virtual {v2, v3}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    move-result-object v2

    .line 273
    invoke-virtual {v2}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v2

    .line 275
    .local v2, "attr":Landroid/print/PrintAttributes;
    new-instance v3, Landroidx/print/PrintHelper$PrintBitmapAdapter;

    iget v6, p0, Landroidx/print/PrintHelper;->mScaleMode:I

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move-object v8, p3

    .end local p1    # "jobName":Ljava/lang/String;
    .end local p2    # "bitmap":Landroid/graphics/Bitmap;
    .end local p3    # "callback":Landroidx/print/PrintHelper$OnPrintFinishCallback;
    .local v5, "jobName":Ljava/lang/String;
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    .local v8, "callback":Landroidx/print/PrintHelper$OnPrintFinishCallback;
    invoke-direct/range {v3 .. v8}, Landroidx/print/PrintHelper$PrintBitmapAdapter;-><init>(Landroidx/print/PrintHelper;Ljava/lang/String;ILandroid/graphics/Bitmap;Landroidx/print/PrintHelper$OnPrintFinishCallback;)V

    invoke-virtual {v0, v5, v3, v2}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    .line 277
    return-void
.end method

.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "imageFile"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 340
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/print/PrintHelper;->printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroidx/print/PrintHelper$OnPrintFinishCallback;)V

    .line 341
    return-void
.end method

.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroidx/print/PrintHelper$OnPrintFinishCallback;)V
    .registers 10
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "imageFile"    # Landroid/net/Uri;
    .param p3, "callback"    # Landroidx/print/PrintHelper$OnPrintFinishCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 356
    nop

    .line 360
    new-instance v0, Landroidx/print/PrintHelper$PrintUriAdapter;

    iget v5, p0, Landroidx/print/PrintHelper;->mScaleMode:I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .end local p1    # "jobName":Ljava/lang/String;
    .end local p2    # "imageFile":Landroid/net/Uri;
    .end local p3    # "callback":Landroidx/print/PrintHelper$OnPrintFinishCallback;
    .local v2, "jobName":Ljava/lang/String;
    .local v3, "imageFile":Landroid/net/Uri;
    .local v4, "callback":Landroidx/print/PrintHelper$OnPrintFinishCallback;
    invoke-direct/range {v0 .. v5}, Landroidx/print/PrintHelper$PrintUriAdapter;-><init>(Landroidx/print/PrintHelper;Ljava/lang/String;Landroid/net/Uri;Landroidx/print/PrintHelper$OnPrintFinishCallback;I)V

    .line 363
    .local v0, "printDocumentAdapter":Landroid/print/PrintDocumentAdapter;
    iget-object p1, p0, Landroidx/print/PrintHelper;->mContext:Landroid/content/Context;

    .line 364
    const-string p2, "print"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/print/PrintManager;

    .line 365
    .local p1, "printManager":Landroid/print/PrintManager;
    new-instance p2, Landroid/print/PrintAttributes$Builder;

    invoke-direct {p2}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 366
    .local p2, "builder":Landroid/print/PrintAttributes$Builder;
    iget p3, p0, Landroidx/print/PrintHelper;->mColorMode:I

    invoke-virtual {p2, p3}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    .line 368
    iget p3, p0, Landroidx/print/PrintHelper;->mOrientation:I

    const/4 v1, 0x1

    if-eq p3, v1, :cond_35

    iget p3, p0, Landroidx/print/PrintHelper;->mOrientation:I

    if-nez p3, :cond_2a

    goto :goto_35

    .line 370
    :cond_2a
    iget p3, p0, Landroidx/print/PrintHelper;->mOrientation:I

    const/4 v1, 0x2

    if-ne p3, v1, :cond_3a

    .line 371
    sget-object p3, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_PORTRAIT:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {p2, p3}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    goto :goto_3a

    .line 369
    :cond_35
    :goto_35
    sget-object p3, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_LANDSCAPE:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {p2, p3}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    .line 373
    :cond_3a
    :goto_3a
    invoke-virtual {p2}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object p3

    .line 375
    .local p3, "attr":Landroid/print/PrintAttributes;
    invoke-virtual {p1, v2, v0, p3}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    .line 376
    return-void
.end method

.method public setColorMode(I)V
    .registers 2
    .param p1, "colorMode"    # I

    .line 199
    iput p1, p0, Landroidx/print/PrintHelper;->mColorMode:I

    .line 200
    return-void
.end method

.method public setOrientation(I)V
    .registers 2
    .param p1, "orientation"    # I

    .line 221
    iput p1, p0, Landroidx/print/PrintHelper;->mOrientation:I

    .line 222
    return-void
.end method

.method public setScaleMode(I)V
    .registers 2
    .param p1, "scaleMode"    # I

    .line 176
    iput p1, p0, Landroidx/print/PrintHelper;->mScaleMode:I

    .line 177
    return-void
.end method

.method writeBitmap(Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .registers 18
    .param p1, "attributes"    # Landroid/print/PrintAttributes;
    .param p2, "fittingMode"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p6, "writeResultCallback"    # Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    .line 626
    sget-boolean v0, Landroidx/print/PrintHelper;->IS_MIN_MARGINS_HANDLING_CORRECT:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 627
    move-object v0, p1

    move-object v5, v0

    .local v0, "pdfAttributes":Landroid/print/PrintAttributes;
    goto :goto_1a

    .line 631
    .end local v0    # "pdfAttributes":Landroid/print/PrintAttributes;
    :cond_8
    invoke-static {p1}, Landroidx/print/PrintHelper;->copyAttributes(Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    new-instance v2, Landroid/print/PrintAttributes$Margins;

    invoke-direct {v2, v1, v1, v1, v1}, Landroid/print/PrintAttributes$Margins;-><init>(IIII)V

    .line 632
    invoke-virtual {v0, v2}, Landroid/print/PrintAttributes$Builder;->setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v0

    move-object v5, v0

    .line 635
    .local v5, "pdfAttributes":Landroid/print/PrintAttributes;
    :goto_1a
    new-instance v2, Landroidx/print/PrintHelper$1;

    move-object v3, p0

    move-object v7, p1

    move v8, p2

    move-object v6, p3

    move-object v9, p4

    move-object/from16 v4, p5

    move-object/from16 v10, p6

    invoke-direct/range {v2 .. v10}, Landroidx/print/PrintHelper$1;-><init>(Landroidx/print/PrintHelper;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/graphics/Bitmap;Landroid/print/PrintAttributes;ILandroid/os/ParcelFileDescriptor;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    new-array v0, v1, [Ljava/lang/Void;

    .line 734
    invoke-virtual {v2, v0}, Landroidx/print/PrintHelper$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 735
    return-void
.end method

###### Class androidx.print.PrintHelper.AnonymousClass1 (androidx.print.PrintHelper$1)
.class Landroidx/print/PrintHelper$1;
.super Landroid/os/AsyncTask;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/print/PrintHelper;->writeBitmap(Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/print/PrintHelper;

.field final synthetic val$attributes:Landroid/print/PrintAttributes;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$cancellationSignal:Landroid/os/CancellationSignal;

.field final synthetic val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

.field final synthetic val$fittingMode:I

.field final synthetic val$pdfAttributes:Landroid/print/PrintAttributes;

.field final synthetic val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;


# direct methods
.method constructor <init>(Landroidx/print/PrintHelper;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/graphics/Bitmap;Landroid/print/PrintAttributes;ILandroid/os/ParcelFileDescriptor;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .registers 9
    .param p1, "this$0"    # Landroidx/print/PrintHelper;

    .line 635
    iput-object p1, p0, Landroidx/print/PrintHelper$1;->this$0:Landroidx/print/PrintHelper;

    iput-object p2, p0, Landroidx/print/PrintHelper$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    iput-object p3, p0, Landroidx/print/PrintHelper$1;->val$pdfAttributes:Landroid/print/PrintAttributes;

    iput-object p4, p0, Landroidx/print/PrintHelper$1;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p5, p0, Landroidx/print/PrintHelper$1;->val$attributes:Landroid/print/PrintAttributes;

    iput p6, p0, Landroidx/print/PrintHelper$1;->val$fittingMode:I

    iput-object p7, p0, Landroidx/print/PrintHelper$1;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    iput-object p8, p0, Landroidx/print/PrintHelper$1;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 635
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroidx/print/PrintHelper$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Throwable;
    .registers 10
    .param p1, "params"    # [Ljava/lang/Void;

    .line 639
    :try_start_0
    iget-object v0, p0, Landroidx/print/PrintHelper$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 640
    return-object v1

    .line 643
    :cond_a
    new-instance v0, Landroid/print/pdf/PrintedPdfDocument;

    iget-object v2, p0, Landroidx/print/PrintHelper$1;->this$0:Landroidx/print/PrintHelper;

    iget-object v2, v2, Landroidx/print/PrintHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroidx/print/PrintHelper$1;->val$pdfAttributes:Landroid/print/PrintAttributes;

    invoke-direct {v0, v2, v3}, Landroid/print/pdf/PrintedPdfDocument;-><init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V

    .line 646
    .local v0, "pdfDocument":Landroid/print/pdf/PrintedPdfDocument;
    iget-object v2, p0, Landroidx/print/PrintHelper$1;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Landroidx/print/PrintHelper$1;->val$pdfAttributes:Landroid/print/PrintAttributes;

    .line 647
    invoke-virtual {v3}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v3

    .line 646
    invoke-static {v2, v3}, Landroidx/print/PrintHelper;->convertBitmapForColorMode(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 649
    .local v2, "maybeGrayscale":Landroid/graphics/Bitmap;
    iget-object v3, p0, Landroidx/print/PrintHelper$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v3
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_ec

    if-eqz v3, :cond_2a

    .line 650
    return-object v1

    .line 654
    :cond_2a
    const/4 v3, 0x1

    :try_start_2b
    invoke-virtual {v0, v3}, Landroid/print/pdf/PrintedPdfDocument;->startPage(I)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v4

    .line 657
    .local v4, "page":Landroid/graphics/pdf/PdfDocument$Page;
    sget-boolean v5, Landroidx/print/PrintHelper;->IS_MIN_MARGINS_HANDLING_CORRECT:Z

    if-eqz v5, :cond_41

    .line 658
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/pdf/PdfDocument$Page;->getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/pdf/PdfDocument$PageInfo;->getContentRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .local v3, "contentRect":Landroid/graphics/RectF;
    goto :goto_64

    .line 662
    .end local v3    # "contentRect":Landroid/graphics/RectF;
    :cond_41
    new-instance v5, Landroid/print/pdf/PrintedPdfDocument;

    iget-object v6, p0, Landroidx/print/PrintHelper$1;->this$0:Landroidx/print/PrintHelper;

    iget-object v6, v6, Landroidx/print/PrintHelper;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroidx/print/PrintHelper$1;->val$attributes:Landroid/print/PrintAttributes;

    invoke-direct {v5, v6, v7}, Landroid/print/pdf/PrintedPdfDocument;-><init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V

    .line 664
    .local v5, "dummyDocument":Landroid/print/pdf/PrintedPdfDocument;
    invoke-virtual {v5, v3}, Landroid/print/pdf/PrintedPdfDocument;->startPage(I)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v3

    .line 665
    .local v3, "dummyPage":Landroid/graphics/pdf/PdfDocument$Page;
    new-instance v6, Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/pdf/PdfDocument$Page;->getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/pdf/PdfDocument$PageInfo;->getContentRect()Landroid/graphics/Rect;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 666
    .local v6, "contentRect":Landroid/graphics/RectF;
    invoke-virtual {v5, v3}, Landroid/print/pdf/PrintedPdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V

    .line 667
    invoke-virtual {v5}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    move-object v3, v6

    .line 671
    .end local v5    # "dummyDocument":Landroid/print/pdf/PrintedPdfDocument;
    .end local v6    # "contentRect":Landroid/graphics/RectF;
    .local v3, "contentRect":Landroid/graphics/RectF;
    :goto_64
    nop

    .line 672
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget v7, p0, Landroidx/print/PrintHelper$1;->val$fittingMode:I

    .line 671
    invoke-static {v5, v6, v3, v7}, Landroidx/print/PrintHelper;->getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;

    move-result-object v5

    .line 675
    .local v5, "matrix":Landroid/graphics/Matrix;
    sget-boolean v6, Landroidx/print/PrintHelper;->IS_MIN_MARGINS_HANDLING_CORRECT:Z

    if-eqz v6, :cond_78

    goto :goto_86

    .line 679
    :cond_78
    iget v6, v3, Landroid/graphics/RectF;->left:F

    iget v7, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 682
    invoke-virtual {v4}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 686
    :goto_86
    invoke-virtual {v4}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v6

    invoke-virtual {v6, v2, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 689
    invoke-virtual {v0, v4}, Landroid/print/pdf/PrintedPdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V

    .line 691
    iget-object v6, p0, Landroidx/print/PrintHelper$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v6}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v6
    :try_end_96
    .catchall {:try_start_2b .. :try_end_96} :catchall_d4

    if-eqz v6, :cond_af

    .line 692
    nop

    .line 700
    :try_start_99
    invoke-virtual {v0}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    .line 702
    iget-object v6, p0, Landroidx/print/PrintHelper$1;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_9e
    .catchall {:try_start_99 .. :try_end_9e} :catchall_ec

    if-eqz v6, :cond_a7

    .line 704
    :try_start_a0
    iget-object v6, p0, Landroidx/print/PrintHelper$1;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a5} :catch_a6
    .catchall {:try_start_a0 .. :try_end_a5} :catchall_ec

    .line 707
    goto :goto_a7

    .line 705
    :catch_a6
    move-exception v6

    .line 710
    :cond_a7
    :goto_a7
    :try_start_a7
    iget-object v6, p0, Landroidx/print/PrintHelper$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-eq v2, v6, :cond_ae

    .line 711
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_ae
    .catchall {:try_start_a7 .. :try_end_ae} :catchall_ec

    :cond_ae
    return-object v1

    .line 696
    :cond_af
    :try_start_af
    new-instance v6, Ljava/io/FileOutputStream;

    iget-object v7, p0, Landroidx/print/PrintHelper$1;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 697
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 696
    invoke-virtual {v0, v6}, Landroid/print/pdf/PrintedPdfDocument;->writeTo(Ljava/io/OutputStream;)V
    :try_end_bd
    .catchall {:try_start_af .. :try_end_bd} :catchall_d4

    .line 698
    nop

    .line 700
    :try_start_be
    invoke-virtual {v0}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    .line 702
    iget-object v6, p0, Landroidx/print/PrintHelper$1;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_c3
    .catchall {:try_start_be .. :try_end_c3} :catchall_ec

    if-eqz v6, :cond_cc

    .line 704
    :try_start_c5
    iget-object v6, p0, Landroidx/print/PrintHelper$1;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_ca} :catch_cb
    .catchall {:try_start_c5 .. :try_end_ca} :catchall_ec

    .line 707
    goto :goto_cc

    .line 705
    :catch_cb
    move-exception v6

    .line 710
    :cond_cc
    :goto_cc
    :try_start_cc
    iget-object v6, p0, Landroidx/print/PrintHelper$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-eq v2, v6, :cond_d3

    .line 711
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_d3
    return-object v1

    .line 700
    .end local v3    # "contentRect":Landroid/graphics/RectF;
    .end local v4    # "page":Landroid/graphics/pdf/PdfDocument$Page;
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    :catchall_d4
    move-exception v1

    invoke-virtual {v0}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    .line 702
    iget-object v3, p0, Landroidx/print/PrintHelper$1;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_da
    .catchall {:try_start_cc .. :try_end_da} :catchall_ec

    if-eqz v3, :cond_e3

    .line 704
    :try_start_dc
    iget-object v3, p0, Landroidx/print/PrintHelper$1;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_e1} :catch_e2
    .catchall {:try_start_dc .. :try_end_e1} :catchall_ec

    .line 707
    goto :goto_e3

    .line 705
    :catch_e2
    move-exception v3

    .line 710
    :cond_e3
    :goto_e3
    :try_start_e3
    iget-object v3, p0, Landroidx/print/PrintHelper$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-eq v2, v3, :cond_ea

    .line 711
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_ea
    nop

    .end local p1    # "params":[Ljava/lang/Void;
    throw v1
    :try_end_ec
    .catchall {:try_start_e3 .. :try_end_ec} :catchall_ec

    .line 714
    .end local v0    # "pdfDocument":Landroid/print/pdf/PrintedPdfDocument;
    .end local v2    # "maybeGrayscale":Landroid/graphics/Bitmap;
    .restart local p1    # "params":[Ljava/lang/Void;
    :catchall_ec
    move-exception v0

    .line 715
    .local v0, "t":Ljava/lang/Throwable;
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 635
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Landroidx/print/PrintHelper$1;->onPostExecute(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 721
    iget-object v0, p0, Landroidx/print/PrintHelper$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 723
    iget-object v0, p0, Landroidx/print/PrintHelper$1;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    invoke-virtual {v0}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteCancelled()V

    goto :goto_2b

    .line 724
    :cond_e
    if-nez p1, :cond_1e

    .line 726
    iget-object v0, p0, Landroidx/print/PrintHelper$1;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/print/PageRange;

    const/4 v2, 0x0

    sget-object v3, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFinished([Landroid/print/PageRange;)V

    goto :goto_2b

    .line 730
    :cond_1e
    const-string v0, "PrintHelper"

    const-string v1, "Error writing printed content"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 731
    iget-object v0, p0, Landroidx/print/PrintHelper$1;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V

    .line 733
    :goto_2b
    return-void
.end method

###### Class androidx.print.PrintHelper.OnPrintFinishCallback (androidx.print.PrintHelper$OnPrintFinishCallback)
.class public interface abstract Landroidx/print/PrintHelper$OnPrintFinishCallback;
.super Ljava/lang/Object;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/print/PrintHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPrintFinishCallback"
.end annotation


# virtual methods
.method public abstract onFinish()V
.end method

###### Class androidx.print.PrintHelper.PrintBitmapAdapter (androidx.print.PrintHelper$PrintBitmapAdapter)
.class Landroidx/print/PrintHelper$PrintBitmapAdapter;
.super Landroid/print/PrintDocumentAdapter;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/print/PrintHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrintBitmapAdapter"
.end annotation


# instance fields
.field private mAttributes:Landroid/print/PrintAttributes;

.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mCallback:Landroidx/print/PrintHelper$OnPrintFinishCallback;

.field private final mFittingMode:I

.field private final mJobName:Ljava/lang/String;

.field final synthetic this$0:Landroidx/print/PrintHelper;


# direct methods
.method constructor <init>(Landroidx/print/PrintHelper;Ljava/lang/String;ILandroid/graphics/Bitmap;Landroidx/print/PrintHelper$OnPrintFinishCallback;)V
    .registers 6
    .param p2, "jobName"    # Ljava/lang/String;
    .param p3, "fittingMode"    # I
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;
    .param p5, "callback"    # Landroidx/print/PrintHelper$OnPrintFinishCallback;

    .line 288
    iput-object p1, p0, Landroidx/print/PrintHelper$PrintBitmapAdapter;->this$0:Landroidx/print/PrintHelper;

    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter;-><init>()V

    .line 289
    iput-object p2, p0, Landroidx/print/PrintHelper$PrintBitmapAdapter;->mJobName:Ljava/lang/String;

    .line 290
    iput p3, p0, Landroidx/print/PrintHelper$PrintBitmapAdapter;->mFittingMode:I

    .line 291
    iput-object p4, p0, Landroidx/print/PrintHelper$PrintBitmapAdapter;->mBitmap:Landroid/graphics/Bitmap;

    .line 292
    iput-object p5, p0, Landroidx/print/PrintHelper$PrintBitmapAdapter;->mCallback:Landroidx/print/PrintHelper$OnPrintFinishCallback;

    .line 293
    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 2

    .line 323
    iget-object v0, p0, Landroidx/print/PrintHelper$PrintBitmapAdapter;->mCallback:Landroidx/print/PrintHelper$OnPrintFinishCallback;

    if-eqz v0, :cond_9

    .line 324
    iget-object v0, p0, Landroidx/print/PrintHelper$PrintBitmapAdapter;->mCallback:Landroidx/print/PrintHelper$OnPrintFinishCallback;

    invoke-interface {v0}, Landroidx/print/PrintHelper$OnPrintFinishCallback;->onFinish()V

    .line 326
    :cond_9
    return-void
.end method

.method public onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
    .registers 9
    .param p1, "oldPrintAttributes"    # Landroid/print/PrintAttributes;
    .param p2, "newPrintAttributes"    # Landroid/print/PrintAttributes;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "layoutResultCallback"    # Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
    .param p5, "bundle"    # Landroid/os/Bundle;

    .line 302
    iput-object p2, p0, Landroidx/print/PrintHelper$PrintBitmapAdapter;->mAttributes:Landroid/print/PrintAttributes;

    .line 304
    new-instance v0, Landroid/print/PrintDocumentInfo$Builder;

    iget-object v1, p0, Landroidx/print/PrintHelper$PrintBitmapAdapter;->mJobName:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 305
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v0

    .line 306
    invoke-virtual {v0, v1}, Landroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    move-result-object v0

    .line 308
    .local v0, "info":Landroid/print/PrintDocumentInfo;
    invoke-virtual {p2, p1}, Landroid/print/PrintAttributes;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v1, v2

    .line 309
    .local v1, "changed":Z
    invoke-virtual {p4, v0, v1}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    .line 310
    return-void
.end method

.method public onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .registers 12
    .param p1, "pageRanges"    # [Landroid/print/PageRange;
    .param p2, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "writeResultCallback"    # Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    .line 317
    iget-object v0, p0, Landroidx/print/PrintHelper$PrintBitmapAdapter;->this$0:Landroidx/print/PrintHelper;

    iget-object v1, p0, Landroidx/print/PrintHelper$PrintBitmapAdapter;->mAttributes:Landroid/print/PrintAttributes;

    iget v2, p0, Landroidx/print/PrintHelper$PrintBitmapAdapter;->mFittingMode:I

    iget-object v3, p0, Landroidx/print/PrintHelper$PrintBitmapAdapter;->mBitmap:Landroid/graphics/Bitmap;

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p2    # "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    .end local p4    # "writeResultCallback":Landroid/print/PrintDocumentAdapter$WriteResultCallback;
    .local v4, "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    .local v5, "cancellationSignal":Landroid/os/CancellationSignal;
    .local v6, "writeResultCallback":Landroid/print/PrintDocumentAdapter$WriteResultCallback;
    invoke-virtual/range {v0 .. v6}, Landroidx/print/PrintHelper;->writeBitmap(Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    .line 319
    return-void
.end method

###### Class androidx.print.PrintHelper.PrintUriAdapter (androidx.print.PrintHelper$PrintUriAdapter)
.class Landroidx/print/PrintHelper$PrintUriAdapter;
.super Landroid/print/PrintDocumentAdapter;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/print/PrintHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrintUriAdapter"
.end annotation


# instance fields
.field mAttributes:Landroid/print/PrintAttributes;

.field mBitmap:Landroid/graphics/Bitmap;

.field final mCallback:Landroidx/print/PrintHelper$OnPrintFinishCallback;

.field final mFittingMode:I

.field final mImageFile:Landroid/net/Uri;

.field final mJobName:Ljava/lang/String;

.field mLoadBitmap:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Landroid/net/Uri;",
            "Ljava/lang/Boolean;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/print/PrintHelper;


# direct methods
.method constructor <init>(Landroidx/print/PrintHelper;Ljava/lang/String;Landroid/net/Uri;Landroidx/print/PrintHelper$OnPrintFinishCallback;I)V
    .registers 6
    .param p2, "jobName"    # Ljava/lang/String;
    .param p3, "imageFile"    # Landroid/net/Uri;
    .param p4, "callback"    # Landroidx/print/PrintHelper$OnPrintFinishCallback;
    .param p5, "fittingMode"    # I

    .line 389
    iput-object p1, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->this$0:Landroidx/print/PrintHelper;

    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter;-><init>()V

    .line 390
    iput-object p2, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->mJobName:Ljava/lang/String;

    .line 391
    iput-object p3, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->mImageFile:Landroid/net/Uri;

    .line 392
    iput-object p4, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->mCallback:Landroidx/print/PrintHelper$OnPrintFinishCallback;

    .line 393
    iput p5, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->mFittingMode:I

    .line 394
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->mBitmap:Landroid/graphics/Bitmap;

    .line 395
    return-void
.end method


# virtual methods
.method cancelLoad()V
    .registers 4

    .line 502
    iget-object v0, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->this$0:Landroidx/print/PrintHelper;

    iget-object v0, v0, Landroidx/print/PrintHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 503
    :try_start_5
    iget-object v1, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->this$0:Landroidx/print/PrintHelper;

    iget-object v1, v1, Landroidx/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    if-eqz v1, :cond_1d

    .line 504
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_18

    .line 506
    iget-object v1, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->this$0:Landroidx/print/PrintHelper;

    iget-object v1, v1, Landroidx/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v1}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    .line 508
    :cond_18
    iget-object v1, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->this$0:Landroidx/print/PrintHelper;

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 510
    :cond_1d
    monitor-exit v0

    .line 511
    return-void

    .line 510
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public onFinish()V
    .registers 3

    .line 515
    invoke-super {p0}, Landroid/print/PrintDocumentAdapter;->onFinish()V

    .line 516
    invoke-virtual {p0}, Landroidx/print/PrintHelper$PrintUriAdapter;->cancelLoad()V

    .line 517
    iget-object v0, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->mLoadBitmap:Landroid/os/AsyncTask;

    if-eqz v0, :cond_10

    .line 518
    iget-object v0, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->mLoadBitmap:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 520
    :cond_10
    iget-object v0, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->mCallback:Landroidx/print/PrintHelper$OnPrintFinishCallback;

    if-eqz v0, :cond_19

    .line 521
    iget-object v0, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->mCallback:Landroidx/print/PrintHelper$OnPrintFinishCallback;

    invoke-interface {v0}, Landroidx/print/PrintHelper$OnPrintFinishCallback;->onFinish()V

    .line 523
    :cond_19
    iget-object v0, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_25

    .line 524
    iget-object v0, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 525
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->mBitmap:Landroid/graphics/Bitmap;

    .line 527
    :cond_25
    return-void
.end method

.method public onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
    .registers 14
    .param p1, "oldPrintAttributes"    # Landroid/print/PrintAttributes;
    .param p2, "newPrintAttributes"    # Landroid/print/PrintAttributes;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "layoutResultCallback"    # Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
    .param p5, "bundle"    # Landroid/os/Bundle;

    .line 404
    monitor-enter p0

    .line 405
    :try_start_1
    iput-object p2, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->mAttributes:Landroid/print/PrintAttributes;

    .line 406
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_43

    .line 409
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 410
    invoke-virtual {p4}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutCancelled()V

    .line 411
    return-void

    .line 414
    :cond_e
    iget-object v0, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2f

    .line 415
    new-instance v0, Landroid/print/PrintDocumentInfo$Builder;

    iget-object v1, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->mJobName:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 416
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v0

    .line 417
    invoke-virtual {v0, v1}, Landroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v0

    .line 418
    invoke-virtual {v0}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    move-result-object v0

    .line 419
    .local v0, "info":Landroid/print/PrintDocumentInfo;
    invoke-virtual {p2, p1}, Landroid/print/PrintAttributes;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v1, v2

    .line 420
    .local v1, "changed":Z
    invoke-virtual {p4, v0, v1}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    .line 421
    return-void

    .line 424
    .end local v0    # "info":Landroid/print/PrintDocumentInfo;
    .end local v1    # "changed":Z
    :cond_2f
    new-instance v2, Landroidx/print/PrintHelper$PrintUriAdapter$1;

    move-object v3, p0

    move-object v6, p1

    move-object v5, p2

    move-object v4, p3

    move-object v7, p4

    .end local p1    # "oldPrintAttributes":Landroid/print/PrintAttributes;
    .end local p2    # "newPrintAttributes":Landroid/print/PrintAttributes;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    .end local p4    # "layoutResultCallback":Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
    .local v4, "cancellationSignal":Landroid/os/CancellationSignal;
    .local v5, "newPrintAttributes":Landroid/print/PrintAttributes;
    .local v6, "oldPrintAttributes":Landroid/print/PrintAttributes;
    .local v7, "layoutResultCallback":Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
    invoke-direct/range {v2 .. v7}, Landroidx/print/PrintHelper$PrintUriAdapter$1;-><init>(Landroidx/print/PrintHelper$PrintUriAdapter;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;)V

    const/4 p1, 0x0

    new-array p1, p1, [Landroid/net/Uri;

    .line 497
    invoke-virtual {v2, p1}, Landroidx/print/PrintHelper$PrintUriAdapter$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->mLoadBitmap:Landroid/os/AsyncTask;

    .line 498
    return-void

    .line 406
    .end local v4    # "cancellationSignal":Landroid/os/CancellationSignal;
    .end local v5    # "newPrintAttributes":Landroid/print/PrintAttributes;
    .end local v6    # "oldPrintAttributes":Landroid/print/PrintAttributes;
    .end local v7    # "layoutResultCallback":Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
    .restart local p1    # "oldPrintAttributes":Landroid/print/PrintAttributes;
    .restart local p2    # "newPrintAttributes":Landroid/print/PrintAttributes;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    .restart local p4    # "layoutResultCallback":Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
    :catchall_43
    move-exception v0

    move-object v6, p1

    move-object v5, p2

    move-object v4, p3

    move-object v7, p4

    move-object p1, v0

    .end local p1    # "oldPrintAttributes":Landroid/print/PrintAttributes;
    .end local p2    # "newPrintAttributes":Landroid/print/PrintAttributes;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    .end local p4    # "layoutResultCallback":Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
    .restart local v4    # "cancellationSignal":Landroid/os/CancellationSignal;
    .restart local v5    # "newPrintAttributes":Landroid/print/PrintAttributes;
    .restart local v6    # "oldPrintAttributes":Landroid/print/PrintAttributes;
    .restart local v7    # "layoutResultCallback":Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
    :goto_49
    :try_start_49
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_4b

    throw p1

    :catchall_4b
    move-exception v0

    move-object p1, v0

    goto :goto_49
.end method

.method public onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .registers 12
    .param p1, "pageRanges"    # [Landroid/print/PageRange;
    .param p2, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "writeResultCallback"    # Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    .line 533
    iget-object v0, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->this$0:Landroidx/print/PrintHelper;

    iget-object v1, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->mAttributes:Landroid/print/PrintAttributes;

    iget v2, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->mFittingMode:I

    iget-object v3, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->mBitmap:Landroid/graphics/Bitmap;

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p2    # "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    .end local p4    # "writeResultCallback":Landroid/print/PrintDocumentAdapter$WriteResultCallback;
    .local v4, "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    .local v5, "cancellationSignal":Landroid/os/CancellationSignal;
    .local v6, "writeResultCallback":Landroid/print/PrintDocumentAdapter$WriteResultCallback;
    invoke-virtual/range {v0 .. v6}, Landroidx/print/PrintHelper;->writeBitmap(Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    .line 535
    return-void
.end method

###### Class androidx.print.PrintHelper.PrintUriAdapter.AnonymousClass1 (androidx.print.PrintHelper$PrintUriAdapter$1)
.class Landroidx/print/PrintHelper$PrintUriAdapter$1;
.super Landroid/os/AsyncTask;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/print/PrintHelper$PrintUriAdapter;->onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/net/Uri;",
        "Ljava/lang/Boolean;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/print/PrintHelper$PrintUriAdapter;

.field final synthetic val$cancellationSignal:Landroid/os/CancellationSignal;

.field final synthetic val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

.field final synthetic val$newPrintAttributes:Landroid/print/PrintAttributes;

.field final synthetic val$oldPrintAttributes:Landroid/print/PrintAttributes;


# direct methods
.method constructor <init>(Landroidx/print/PrintHelper$PrintUriAdapter;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;)V
    .registers 6
    .param p1, "this$1"    # Landroidx/print/PrintHelper$PrintUriAdapter;

    .line 424
    iput-object p1, p0, Landroidx/print/PrintHelper$PrintUriAdapter$1;->this$1:Landroidx/print/PrintHelper$PrintUriAdapter;

    iput-object p2, p0, Landroidx/print/PrintHelper$PrintUriAdapter$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    iput-object p3, p0, Landroidx/print/PrintHelper$PrintUriAdapter$1;->val$newPrintAttributes:Landroid/print/PrintAttributes;

    iput-object p4, p0, Landroidx/print/PrintHelper$PrintUriAdapter$1;->val$oldPrintAttributes:Landroid/print/PrintAttributes;

    iput-object p5, p0, Landroidx/print/PrintHelper$PrintUriAdapter$1;->val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "uris"    # [Landroid/net/Uri;

    .line 441
    :try_start_0
    iget-object v0, p0, Landroidx/print/PrintHelper$PrintUriAdapter$1;->this$1:Landroidx/print/PrintHelper$PrintUriAdapter;

    iget-object v0, v0, Landroidx/print/PrintHelper$PrintUriAdapter;->this$0:Landroidx/print/PrintHelper;

    iget-object v1, p0, Landroidx/print/PrintHelper$PrintUriAdapter$1;->this$1:Landroidx/print/PrintHelper$PrintUriAdapter;

    iget-object v1, v1, Landroidx/print/PrintHelper$PrintUriAdapter;->mImageFile:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroidx/print/PrintHelper;->loadConstrainedBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 442
    :catch_d
    move-exception v0

    .line 445
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 424
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Landroidx/print/PrintHelper$PrintUriAdapter$1;->doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .line 494
    iget-object v0, p0, Landroidx/print/PrintHelper$PrintUriAdapter$1;->val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    invoke-virtual {v0}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutCancelled()V

    .line 495
    iget-object v0, p0, Landroidx/print/PrintHelper$PrintUriAdapter$1;->this$1:Landroidx/print/PrintHelper$PrintUriAdapter;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/print/PrintHelper$PrintUriAdapter;->mLoadBitmap:Landroid/os/AsyncTask;

    .line 496
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .registers 2

    .line 424
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Landroidx/print/PrintHelper$PrintUriAdapter$1;->onCancelled(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .registers 11

    .line 450
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 454
    if-eqz p1, :cond_4e

    sget-boolean v0, Landroidx/print/PrintHelper;->PRINT_ACTIVITY_RESPECTS_ORIENTATION:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroidx/print/PrintHelper$PrintUriAdapter$1;->this$1:Landroidx/print/PrintHelper$PrintUriAdapter;

    iget-object v0, v0, Landroidx/print/PrintHelper$PrintUriAdapter;->this$0:Landroidx/print/PrintHelper;

    iget v0, v0, Landroidx/print/PrintHelper;->mOrientation:I

    if-nez v0, :cond_12

    goto :goto_14

    :cond_12
    move-object v2, p1

    goto :goto_4f

    .line 458
    :cond_14
    :goto_14
    monitor-enter p0

    .line 459
    :try_start_15
    iget-object v0, p0, Landroidx/print/PrintHelper$PrintUriAdapter$1;->this$1:Landroidx/print/PrintHelper$PrintUriAdapter;

    iget-object v0, v0, Landroidx/print/PrintHelper$PrintUriAdapter;->mAttributes:Landroid/print/PrintAttributes;

    invoke-virtual {v0}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v0

    .line 460
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_4a

    .line 462
    if-eqz v0, :cond_48

    .line 463
    invoke-virtual {v0}, Landroid/print/PrintAttributes$MediaSize;->isPortrait()Z

    move-result v0

    invoke-static {p1}, Landroidx/print/PrintHelper;->isPortrait(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eq v0, v1, :cond_46

    .line 464
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 466
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {v7, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 467
    nop

    .line 468
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 467
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_50

    .line 463
    :cond_46
    move-object v2, p1

    goto :goto_4f

    .line 462
    :cond_48
    move-object v2, p1

    goto :goto_4f

    .line 460
    :catchall_4a
    move-exception v0

    move-object p1, v0

    :try_start_4c
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4a

    throw p1

    .line 454
    :cond_4e
    move-object v2, p1

    .line 474
    :goto_4f
    move-object p1, v2

    :goto_50
    iget-object v0, p0, Landroidx/print/PrintHelper$PrintUriAdapter$1;->this$1:Landroidx/print/PrintHelper$PrintUriAdapter;

    iput-object p1, v0, Landroidx/print/PrintHelper$PrintUriAdapter;->mBitmap:Landroid/graphics/Bitmap;

    .line 475
    const/4 v0, 0x0

    if-eqz p1, :cond_7c

    .line 476
    new-instance p1, Landroid/print/PrintDocumentInfo$Builder;

    iget-object v1, p0, Landroidx/print/PrintHelper$PrintUriAdapter$1;->this$1:Landroidx/print/PrintHelper$PrintUriAdapter;

    iget-object v1, v1, Landroidx/print/PrintHelper$PrintUriAdapter;->mJobName:Ljava/lang/String;

    invoke-direct {p1, v1}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 477
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object p1

    .line 478
    invoke-virtual {p1, v1}, Landroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object p1

    .line 479
    invoke-virtual {p1}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    move-result-object p1

    .line 481
    iget-object v2, p0, Landroidx/print/PrintHelper$PrintUriAdapter$1;->val$newPrintAttributes:Landroid/print/PrintAttributes;

    iget-object v3, p0, Landroidx/print/PrintHelper$PrintUriAdapter$1;->val$oldPrintAttributes:Landroid/print/PrintAttributes;

    invoke-virtual {v2, v3}, Landroid/print/PrintAttributes;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 483
    xor-int/2addr v1, v2

    iget-object v2, p0, Landroidx/print/PrintHelper$PrintUriAdapter$1;->val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    invoke-virtual {v2, p1, v1}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    .line 485
    goto :goto_81

    .line 486
    :cond_7c
    iget-object p1, p0, Landroidx/print/PrintHelper$PrintUriAdapter$1;->val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    invoke-virtual {p1, v0}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFailed(Ljava/lang/CharSequence;)V

    .line 488
    :goto_81
    iget-object p1, p0, Landroidx/print/PrintHelper$PrintUriAdapter$1;->this$1:Landroidx/print/PrintHelper$PrintUriAdapter;

    iput-object v0, p1, Landroidx/print/PrintHelper$PrintUriAdapter;->mLoadBitmap:Landroid/os/AsyncTask;

    .line 489
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 424
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Landroidx/print/PrintHelper$PrintUriAdapter$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 3

    .line 428
    iget-object v0, p0, Landroidx/print/PrintHelper$PrintUriAdapter$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    new-instance v1, Landroidx/print/PrintHelper$PrintUriAdapter$1$1;

    invoke-direct {v1, p0}, Landroidx/print/PrintHelper$PrintUriAdapter$1$1;-><init>(Landroidx/print/PrintHelper$PrintUriAdapter$1;)V

    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 436
    return-void
.end method

###### Class androidx.print.PrintHelper.PrintUriAdapter.AnonymousClass1.C00011 (androidx.print.PrintHelper$PrintUriAdapter$1$1)
.class Landroidx/print/PrintHelper$PrintUriAdapter$1$1;
.super Ljava/lang/Object;
.source "PrintHelper.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/print/PrintHelper$PrintUriAdapter$1;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Landroidx/print/PrintHelper$PrintUriAdapter$1;


# direct methods
.method constructor <init>(Landroidx/print/PrintHelper$PrintUriAdapter$1;)V
    .registers 2
    .param p1, "this$2"    # Landroidx/print/PrintHelper$PrintUriAdapter$1;

    .line 429
    iput-object p1, p0, Landroidx/print/PrintHelper$PrintUriAdapter$1$1;->this$2:Landroidx/print/PrintHelper$PrintUriAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 3

    .line 432
    iget-object v0, p0, Landroidx/print/PrintHelper$PrintUriAdapter$1$1;->this$2:Landroidx/print/PrintHelper$PrintUriAdapter$1;

    iget-object v0, v0, Landroidx/print/PrintHelper$PrintUriAdapter$1;->this$1:Landroidx/print/PrintHelper$PrintUriAdapter;

    invoke-virtual {v0}, Landroidx/print/PrintHelper$PrintUriAdapter;->cancelLoad()V

    .line 433
    iget-object v0, p0, Landroidx/print/PrintHelper$PrintUriAdapter$1$1;->this$2:Landroidx/print/PrintHelper$PrintUriAdapter$1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/print/PrintHelper$PrintUriAdapter$1;->cancel(Z)Z

    .line 434
    return-void
.end method
