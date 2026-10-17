###### Class com.google.android.material.shape.ShapeAppearanceModel (com.google.android.material.shape.ShapeAppearanceModel)
.class public Lcom/google/android/material/shape/ShapeAppearanceModel;
.super Ljava/lang/Object;
.source "ShapeAppearanceModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;,
        Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    }
.end annotation


# static fields
.field public static final PILL:Lcom/google/android/material/shape/CornerSize;


# instance fields
.field bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

.field bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

.field bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

.field bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

.field leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field topEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

.field topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

.field topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

.field topRightCornerSize:Lcom/google/android/material/shape/CornerSize;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 593
    new-instance v0, Lcom/google/android/material/shape/RelativeCornerSize;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/RelativeCornerSize;-><init>(F)V

    sput-object v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->PILL:Lcom/google/android/material/shape/CornerSize;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 627
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 628
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 629
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 630
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 632
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 633
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 634
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 635
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 637
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 638
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 639
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 640
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 641
    return-void
.end method

.method private constructor <init>(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 609
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$100(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 610
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$200(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 611
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$300(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 612
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$400(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 614
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$500(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 615
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$600(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 616
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$700(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 617
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$800(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 619
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$900(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 620
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$1000(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 621
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$1100(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 622
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$1200(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 623
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;Lcom/google/android/material/shape/ShapeAppearanceModel$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .param p2, "x1"    # Lcom/google/android/material/shape/ShapeAppearanceModel$1;

    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)V

    return-void
.end method

.method public static builder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .registers 1

    .line 465
    new-instance v0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    invoke-direct {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;-><init>()V

    return-object v0
.end method

.method public static builder(Landroid/content/Context;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shapeAppearanceResId"    # I
    .param p2, "shapeAppearanceOverlayResId"    # I

    .line 510
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;III)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static builder(Landroid/content/Context;III)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shapeAppearanceResId"    # I
    .param p2, "shapeAppearanceOverlayResId"    # I
    .param p3, "defaultCornerSize"    # I

    .line 519
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    int-to-float v1, p3

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;IILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static builder(Landroid/content/Context;IILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shapeAppearanceResId"    # I
    .param p2, "shapeAppearanceOverlayResId"    # I
    .param p3, "defaultCornerSize"    # Lcom/google/android/material/shape/CornerSize;

    .line 533
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 534
    .end local p0    # "context":Landroid/content/Context;
    .local v0, "context":Landroid/content/Context;
    if-eqz p2, :cond_d

    .line 535
    new-instance p0, Landroid/view/ContextThemeWrapper;

    invoke-direct {p0, v0, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v0, p0

    .line 537
    :cond_d
    sget-object p0, Lcom/google/android/material/R$styleable;->ShapeAppearance:[I

    invoke-virtual {v0, p0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 540
    .local p0, "a":Landroid/content/res/TypedArray;
    :try_start_13
    sget v1, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamily:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 541
    .local v1, "cornerFamily":I
    sget v2, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyTopLeft:I

    .line 542
    invoke-virtual {p0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 543
    .local v2, "cornerFamilyTopLeft":I
    sget v3, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyTopRight:I

    .line 544
    invoke-virtual {p0, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 545
    .local v3, "cornerFamilyTopRight":I
    sget v4, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyBottomRight:I

    .line 546
    invoke-virtual {p0, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 547
    .local v4, "cornerFamilyBottomRight":I
    sget v5, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyBottomLeft:I

    .line 548
    invoke-virtual {p0, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 550
    .local v5, "cornerFamilyBottomLeft":I
    sget v6, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSize:I

    .line 551
    invoke-static {p0, v6, p3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getCornerSize(Landroid/content/res/TypedArray;ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v6

    .line 553
    .local v6, "cornerSize":Lcom/google/android/material/shape/CornerSize;
    sget v7, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeTopLeft:I

    .line 554
    invoke-static {p0, v7, v6}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getCornerSize(Landroid/content/res/TypedArray;ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v7

    .line 555
    .local v7, "cornerSizeTopLeft":Lcom/google/android/material/shape/CornerSize;
    sget v8, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeTopRight:I

    .line 556
    invoke-static {p0, v8, v6}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getCornerSize(Landroid/content/res/TypedArray;ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v8

    .line 557
    .local v8, "cornerSizeTopRight":Lcom/google/android/material/shape/CornerSize;
    sget v9, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeBottomRight:I

    .line 558
    invoke-static {p0, v9, v6}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getCornerSize(Landroid/content/res/TypedArray;ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v9

    .line 559
    .local v9, "cornerSizeBottomRight":Lcom/google/android/material/shape/CornerSize;
    sget v10, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeBottomLeft:I

    .line 560
    invoke-static {p0, v10, v6}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getCornerSize(Landroid/content/res/TypedArray;ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v10

    .line 562
    .local v10, "cornerSizeBottomLeft":Lcom/google/android/material/shape/CornerSize;
    new-instance v11, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    invoke-direct {v11}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;-><init>()V

    .line 563
    invoke-virtual {v11, v2, v7}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCorner(ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v11

    .line 564
    invoke-virtual {v11, v3, v8}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCorner(ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v11

    .line 565
    invoke-virtual {v11, v4, v9}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCorner(ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v11

    .line 566
    invoke-virtual {v11, v5, v10}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCorner(ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v11
    :try_end_65
    .catchall {:try_start_13 .. :try_end_65} :catchall_69

    .line 568
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 562
    return-object v11

    .line 568
    .end local v1    # "cornerFamily":I
    .end local v2    # "cornerFamilyTopLeft":I
    .end local v3    # "cornerFamilyTopRight":I
    .end local v4    # "cornerFamilyBottomRight":I
    .end local v5    # "cornerFamilyBottomLeft":I
    .end local v6    # "cornerSize":Lcom/google/android/material/shape/CornerSize;
    .end local v7    # "cornerSizeTopLeft":Lcom/google/android/material/shape/CornerSize;
    .end local v8    # "cornerSizeTopRight":Lcom/google/android/material/shape/CornerSize;
    .end local v9    # "cornerSizeBottomRight":Lcom/google/android/material/shape/CornerSize;
    .end local v10    # "cornerSizeBottomLeft":Lcom/google/android/material/shape/CornerSize;
    :catchall_69
    move-exception v1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 569
    throw v1
.end method

.method public static builder(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .line 474
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;Landroid/util/AttributeSet;III)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static builder(Landroid/content/Context;Landroid/util/AttributeSet;III)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I
    .param p4, "defaultCornerSize"    # I

    .line 484
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    int-to-float v1, p4

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;Landroid/util/AttributeSet;IILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static builder(Landroid/content/Context;Landroid/util/AttributeSet;IILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I
    .param p4, "defaultCornerSize"    # Lcom/google/android/material/shape/CornerSize;

    .line 495
    sget-object v0, Lcom/google/android/material/R$styleable;->MaterialShape:[I

    .line 496
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 498
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/google/android/material/R$styleable;->MaterialShape_shapeAppearance:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 499
    .local v1, "shapeAppearanceResId":I
    sget v3, Lcom/google/android/material/R$styleable;->MaterialShape_shapeAppearanceOverlay:I

    .line 500
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 501
    .local v2, "shapeAppearanceOverlayResId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 502
    invoke-static {p0, v1, v2, p4}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;IILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v3

    return-object v3
.end method

.method private static getCornerSize(Landroid/content/res/TypedArray;ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;
    .registers 7
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "defaultValue"    # Lcom/google/android/material/shape/CornerSize;

    .line 575
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 576
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_7

    .line 577
    return-object p2

    .line 580
    :cond_7
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_21

    .line 583
    new-instance v1, Lcom/google/android/material/shape/AbsoluteCornerSize;

    iget v2, v0, Landroid/util/TypedValue;->data:I

    .line 584
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v2}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    .line 583
    return-object v1

    .line 585
    :cond_21
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_32

    .line 586
    new-instance v1, Lcom/google/android/material/shape/RelativeCornerSize;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v2

    invoke-direct {v1, v2}, Lcom/google/android/material/shape/RelativeCornerSize;-><init>(F)V

    return-object v1

    .line 588
    :cond_32
    return-object p2
.end method


# virtual methods
.method public getBottomEdge()Lcom/google/android/material/shape/EdgeTreatment;
    .registers 2

    .line 760
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-object v0
.end method

.method public getBottomLeftCorner()Lcom/google/android/material/shape/CornerTreatment;
    .registers 2

    .line 680
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-object v0
.end method

.method public getBottomLeftCornerSize()Lcom/google/android/material/shape/CornerSize;
    .registers 2

    .line 720
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    return-object v0
.end method

.method public getBottomRightCorner()Lcom/google/android/material/shape/CornerTreatment;
    .registers 2

    .line 670
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-object v0
.end method

.method public getBottomRightCornerSize()Lcom/google/android/material/shape/CornerSize;
    .registers 2

    .line 710
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    return-object v0
.end method

.method public getLeftEdge()Lcom/google/android/material/shape/EdgeTreatment;
    .registers 2

    .line 730
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-object v0
.end method

.method public getRightEdge()Lcom/google/android/material/shape/EdgeTreatment;
    .registers 2

    .line 750
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-object v0
.end method

.method public getTopEdge()Lcom/google/android/material/shape/EdgeTreatment;
    .registers 2

    .line 740
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-object v0
.end method

.method public getTopLeftCorner()Lcom/google/android/material/shape/CornerTreatment;
    .registers 2

    .line 650
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-object v0
.end method

.method public getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;
    .registers 2

    .line 690
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    return-object v0
.end method

.method public getTopRightCorner()Lcom/google/android/material/shape/CornerTreatment;
    .registers 2

    .line 660
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-object v0
.end method

.method public getTopRightCornerSize()Lcom/google/android/material/shape/CornerSize;
    .registers 2

    .line 700
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    return-object v0
.end method

.method public isRoundRect(Landroid/graphics/RectF;)Z
    .registers 8
    .param p1, "bounds"    # Landroid/graphics/RectF;

    .line 819
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 820
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/android/material/shape/EdgeTreatment;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 821
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/google/android/material/shape/EdgeTreatment;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 822
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/google/android/material/shape/EdgeTreatment;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 823
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/google/android/material/shape/EdgeTreatment;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    move v0, v1

    goto :goto_3d

    :cond_3c
    move v0, v2

    .line 825
    .local v0, "hasDefaultEdges":Z
    :goto_3d
    iget-object v3, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    invoke-interface {v3, p1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v3

    .line 827
    .local v3, "cornerSize":F
    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 828
    invoke-interface {v4, p1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v3

    if-nez v4, :cond_63

    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 829
    invoke-interface {v4, p1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v3

    if-nez v4, :cond_63

    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 830
    invoke-interface {v4, p1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v3

    if-nez v4, :cond_63

    move v4, v1

    goto :goto_64

    :cond_63
    move v4, v2

    .line 832
    .local v4, "cornersHaveSameSize":Z
    :goto_64
    iget-object v5, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    instance-of v5, v5, Lcom/google/android/material/shape/RoundedCornerTreatment;

    if-eqz v5, :cond_7e

    iget-object v5, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    instance-of v5, v5, Lcom/google/android/material/shape/RoundedCornerTreatment;

    if-eqz v5, :cond_7e

    iget-object v5, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    instance-of v5, v5, Lcom/google/android/material/shape/RoundedCornerTreatment;

    if-eqz v5, :cond_7e

    iget-object v5, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    instance-of v5, v5, Lcom/google/android/material/shape/RoundedCornerTreatment;

    if-eqz v5, :cond_7e

    move v5, v1

    goto :goto_7f

    :cond_7e
    move v5, v2

    .line 838
    .local v5, "hasRoundedCorners":Z
    :goto_7f
    if-eqz v0, :cond_86

    if-eqz v4, :cond_86

    if-eqz v5, :cond_86

    goto :goto_87

    :cond_86
    move v1, v2

    :goto_87
    return v1
.end method

.method public toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .registers 2

    .line 766
    new-instance v0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-object v0
.end method

.method public withCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel;
    .registers 3
    .param p1, "cornerSize"    # F

    .line 775
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCornerSizes(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    return-object v0
.end method

.method public withCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel;
    .registers 3
    .param p1, "cornerSize"    # Lcom/google/android/material/shape/CornerSize;

    .line 780
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCornerSizes(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    return-object v0
.end method

.method public withTransformedCornerSizes(Lcom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;)Lcom/google/android/material/shape/ShapeAppearanceModel;
    .registers 4
    .param p1, "op"    # Lcom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;

    .line 803
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 804
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;->apply(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 805
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;->apply(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 806
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;->apply(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 807
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;->apply(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 808
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    .line 803
    return-object v0
.end method

###### Class com.google.android.material.shape.ShapeAppearanceModel.AnonymousClass1 (com.google.android.material.shape.ShapeAppearanceModel$1)
.class synthetic Lcom/google/android/material/shape/ShapeAppearanceModel$1;
.super Ljava/lang/Object;
.source "ShapeAppearanceModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapeAppearanceModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.material.shape.ShapeAppearanceModel.Builder (com.google.android.material.shape.ShapeAppearanceModel$Builder)
.class public final Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
.super Ljava/lang/Object;
.source "ShapeAppearanceModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapeAppearanceModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field private bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

.field private bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

.field private bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

.field private bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

.field private leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field private rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field private topEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field private topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

.field private topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

.field private topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

.field private topRightCornerSize:Lcom/google/android/material/shape/CornerSize;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    nop

    .line 48
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 50
    nop

    .line 51
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 53
    nop

    .line 54
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 56
    nop

    .line 57
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 59
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 60
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 61
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 62
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 64
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 65
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 66
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 67
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .registers 4
    .param p1, "other"    # Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    nop

    .line 48
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 50
    nop

    .line 51
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 53
    nop

    .line 54
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 56
    nop

    .line 57
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 59
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 60
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 61
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 62
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 64
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 65
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 66
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 67
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 72
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 73
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 74
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 75
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 77
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 78
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 79
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 80
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 82
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 83
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 84
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 85
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 86
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerTreatment;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 45
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/EdgeTreatment;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 45
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/EdgeTreatment;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 45
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/EdgeTreatment;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 45
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerTreatment;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 45
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerTreatment;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 45
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerTreatment;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 45
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerSize;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 45
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerSize;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 45
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerSize;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 45
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerSize;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 45
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/EdgeTreatment;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 45
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-object v0
.end method

.method private static compatCornerTreatmentSize(Lcom/google/android/material/shape/CornerTreatment;)F
    .registers 2
    .param p0, "treatment"    # Lcom/google/android/material/shape/CornerTreatment;

    .line 448
    instance-of v0, p0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    if-eqz v0, :cond_a

    .line 449
    move-object v0, p0

    check-cast v0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    iget v0, v0, Lcom/google/android/material/shape/RoundedCornerTreatment;->radius:F

    return v0

    .line 450
    :cond_a
    instance-of v0, p0, Lcom/google/android/material/shape/CutCornerTreatment;

    if-eqz v0, :cond_14

    .line 451
    move-object v0, p0

    check-cast v0, Lcom/google/android/material/shape/CutCornerTreatment;

    iget v0, v0, Lcom/google/android/material/shape/CutCornerTreatment;->size:F

    return v0

    .line 453
    :cond_14
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method


# virtual methods
.method public build()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .registers 3

    .line 459
    new-instance v0, Lcom/google/android/material/shape/ShapeAppearanceModel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;Lcom/google/android/material/shape/ShapeAppearanceModel$1;)V

    return-object v0
.end method

.method public setAllCornerSizes(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .registers 3
    .param p1, "cornerSize"    # F

    .line 136
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 137
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 138
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 139
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 136
    return-object v0
.end method

.method public setAllCornerSizes(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .registers 3
    .param p1, "cornerSize"    # Lcom/google/android/material/shape/CornerSize;

    .line 126
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 127
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 128
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 129
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 126
    return-object v0
.end method

.method public setAllCorners(IF)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .registers 4
    .param p1, "cornerFamily"    # I
    .param p2, "cornerSize"    # F

    .line 100
    invoke-static {p1}, Lcom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(I)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCorners(Lcom/google/android/material/shape/CornerTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 101
    invoke-virtual {v0, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCornerSizes(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 100
    return-object v0
.end method

.method public setAllCorners(Lcom/google/android/material/shape/CornerTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .registers 3
    .param p1, "cornerTreatment"    # Lcom/google/android/material/shape/CornerTreatment;

    .line 112
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCorner(Lcom/google/android/material/shape/CornerTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 113
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCorner(Lcom/google/android/material/shape/CornerTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 114
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCorner(Lcom/google/android/material/shape/CornerTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 115
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCorner(Lcom/google/android/material/shape/CornerTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 112
    return-object v0
.end method

.method public setAllEdges(Lcom/google/android/material/shape/EdgeTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .registers 3
    .param p1, "edgeTreatment"    # Lcom/google/android/material/shape/EdgeTreatment;

    .line 392
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setLeftEdge(Lcom/google/android/material/shape/EdgeTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 393
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopEdge(Lcom/google/android/material/shape/EdgeTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 394
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setRightEdge(Lcom/google/android/material/shape/EdgeTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 395
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomEdge(Lcom/google/android/material/shape/EdgeTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 392
    return-object v0
.end method

.method public setBottomEdge(Lcom/google/android/material/shape/EdgeTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .registers 2
    .param p1, "bottomEdge"    # Lcom/google/android/material/shape/EdgeTreatment;

    .line 442
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 443
    return-object p0
.end method

.method public setBottomLeftCorner(IF)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .registers 4
    .param p1, "cornerFamily"    # I
    .param p2, "cornerSize"    # F

    .line 349
    invoke-static {p1}, Lcom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(I)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCorner(Lcom/google/android/material/shape/CornerTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 350
    invoke-virtual {v0, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 349
    return-object v0
.end method

.method public setBottomLeftCorner(ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .registers 4
    .param p1, "cornerFamily"    # I
    .param p2, "cornerSize"    # Lcom/google/android/material/shape/CornerSize;

    .line 363
    invoke-static {p1}, Lcom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(I)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCorner(Lcom/google/android/material/shape/CornerTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 364
    invoke-virtual {v0, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 363
    return-object v0
.end method

.method public setBottomLeftCorner(Lcom/google/android/material/shape/CornerTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .registers 4
    .param p1, "bottomLeftCorner"    # Lcom/google/android/material/shape/CornerTreatment;

    .line 375
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 377
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->compatCornerTreatmentSize(Lcom/google/android/material/shape/CornerTreatment;)F

    move-result v0

    .line 378
    .local v0, "size":F
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_f

    .line 379
    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 381
    :cond_f
    return-object p0
.end method

.method public setBottomLeftCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .registers 3
    .param p1, "cornerSize"    # F

    .line 194
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, p1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 195
    return-object p0
.end method

.method public setBottomLeftCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .registers 2
    .param p1, "cornerSize"    # Lcom/google/android/material/shape/CornerSize;

    .line 202
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 203
    return-object p0
.end method

.method public setBottomRightCorner(IF)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .registers 4
    .param p1, "cornerFamily"    # I
    .param p2, "cornerSize"    # F

    .line 304
    invoke-static {p1}, Lcom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(I)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCorner(Lcom/google/android/material/shape/CornerTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 305
    invoke-virtual {v0, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 304
    return-object v0
.end method

.method public setBottomRightCorner(ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .registers 4
    .param p1, "cornerFamily"    # I
    .param p2, "cornerSize"    # Lcom/google/android/material/shape/CornerSize;

    .line 318
    invoke-static {p1}, Lcom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(I)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCorner(Lcom/google/android/material/shape/CornerTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 319
    invoke-virtual {v0, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 318
    return-object v0
.end method

.method public setBottomRightCorner(Lcom/google/android/material/shape/CornerTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .registers 4
    .param p1, "bottomRightCorner"    # Lcom/google/android/material/shape/CornerTreatment;

    .line 330
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 332
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->compatCornerTreatmentSize(Lcom/google/android/material/shape/CornerTreatment;)F

    move-result v0

    .line 333
    .local v0, "size":F
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_f

    .line 334
    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 336
    :cond_f
    return-object p0
.end method

.method public setBottomRightCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .registers 3
    .param p1, "cornerSize"    # F

    .line 178
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, p1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 179
    return-object p0
.end method

.method public setBottomRightCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .registers 2
    .param p1, "cornerSize"    # Lcom/google/android/material/shape/CornerSize;

    .line 186
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 187
    return-object p0
.end method

.method public setLeftEdge(Lcom/google/android/material/shape/EdgeTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .registers 2
    .param p1, "leftEdge"    # Lcom/google/android/material/shape/EdgeTreatment;

    .line 406
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 407
    return-object p0
.end method

.method public setRightEdge(Lcom/google/android/material/shape/EdgeTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .registers 2
    .param p1, "rightEdge"    # Lcom/google/android/material/shape/EdgeTreatment;

    .line 430
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 431
    return-object p0
.end method

.method public setTopEdge(Lcom/google/android/material/shape/EdgeTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .registers 2
    .param p1, "topEdge"    # Lcom/google/android/material/shape/EdgeTreatment;

    .line 418
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 419
    return-object p0
.end method

.method public setTopLeftCorner(IF)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .registers 4
    .param p1, "cornerFamily"    # I
    .param p2, "cornerSize"    # F

    .line 215
    invoke-static {p1}, Lcom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(I)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCorner(Lcom/google/android/material/shape/CornerTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 216
    invoke-virtual {v0, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 215
    return-object v0
.end method

.method public setTopLeftCorner(ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .registers 4
    .param p1, "cornerFamily"    # I
    .param p2, "cornerSize"    # Lcom/google/android/material/shape/CornerSize;

    .line 229
    invoke-static {p1}, Lcom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(I)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCorner(Lcom/google/android/material/shape/CornerTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 230
    invoke-virtual {v0, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 229
    return-object v0
.end method

.method public setTopLeftCorner(Lcom/google/android/material/shape/CornerTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .registers 4
    .param p1, "topLeftCorner"    # Lcom/google/android/material/shape/CornerTreatment;

    .line 241
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 243
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->compatCornerTreatmentSize(Lcom/google/android/material/shape/CornerTreatment;)F

    move-result v0

    .line 244
    .local v0, "size":F
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_f

    .line 245
    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 247
    :cond_f
    return-object p0
.end method

.method public setTopLeftCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .registers 3
    .param p1, "cornerSize"    # F

    .line 146
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, p1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 147
    return-object p0
.end method

.method public setTopLeftCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .registers 2
    .param p1, "cornerSize"    # Lcom/google/android/material/shape/CornerSize;

    .line 154
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 155
    return-object p0
.end method

.method public setTopRightCorner(IF)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .registers 4
    .param p1, "cornerFamily"    # I
    .param p2, "cornerSize"    # F

    .line 259
    invoke-static {p1}, Lcom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(I)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCorner(Lcom/google/android/material/shape/CornerTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 260
    invoke-virtual {v0, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 259
    return-object v0
.end method

.method public setTopRightCorner(ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .registers 4
    .param p1, "cornerFamily"    # I
    .param p2, "cornerSize"    # Lcom/google/android/material/shape/CornerSize;

    .line 273
    invoke-static {p1}, Lcom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(I)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCorner(Lcom/google/android/material/shape/CornerTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 274
    invoke-virtual {v0, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 273
    return-object v0
.end method

.method public setTopRightCorner(Lcom/google/android/material/shape/CornerTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .registers 4
    .param p1, "topRightCorner"    # Lcom/google/android/material/shape/CornerTreatment;

    .line 285
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 287
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->compatCornerTreatmentSize(Lcom/google/android/material/shape/CornerTreatment;)F

    move-result v0

    .line 288
    .local v0, "size":F
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_f

    .line 289
    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 291
    :cond_f
    return-object p0
.end method

.method public setTopRightCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .registers 3
    .param p1, "cornerSize"    # F

    .line 162
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, p1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 163
    return-object p0
.end method

.method public setTopRightCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .registers 2
    .param p1, "cornerSize"    # Lcom/google/android/material/shape/CornerSize;

    .line 170
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 171
    return-object p0
.end method

###### Class com.google.android.material.shape.ShapeAppearanceModel.CornerSizeUnaryOperator (com.google.android.material.shape.ShapeAppearanceModel$CornerSizeUnaryOperator)
.class public interface abstract Lcom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;
.super Ljava/lang/Object;
.source "ShapeAppearanceModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapeAppearanceModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CornerSizeUnaryOperator"
.end annotation


# virtual methods
.method public abstract apply(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;
.end method
