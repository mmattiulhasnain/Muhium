###### Class androidx.constraintlayout.solver.widgets.Flow (androidx.constraintlayout.solver.widgets.Flow)
.class public Landroidx/constraintlayout/solver/widgets/Flow;
.super Landroidx/constraintlayout/solver/widgets/VirtualLayout;
.source "Flow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    }
.end annotation


# static fields
.field public static final HORIZONTAL_ALIGN_CENTER:I = 0x2

.field public static final HORIZONTAL_ALIGN_END:I = 0x1

.field public static final HORIZONTAL_ALIGN_START:I = 0x0

.field public static final VERTICAL_ALIGN_BASELINE:I = 0x3

.field public static final VERTICAL_ALIGN_BOTTOM:I = 0x1

.field public static final VERTICAL_ALIGN_CENTER:I = 0x2

.field public static final VERTICAL_ALIGN_TOP:I = 0x0

.field public static final WRAP_ALIGNED:I = 0x2

.field public static final WRAP_CHAIN:I = 0x1

.field public static final WRAP_NONE:I


# instance fields
.field private mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field private mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field private mAlignedDimensions:[I

.field private mChainList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayedWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field private mDisplayedWidgetsCount:I

.field private mFirstHorizontalBias:F

.field private mFirstHorizontalStyle:I

.field private mFirstVerticalBias:F

.field private mFirstVerticalStyle:I

.field private mHorizontalAlign:I

.field private mHorizontalBias:F

.field private mHorizontalGap:I

.field private mHorizontalStyle:I

.field private mLastHorizontalBias:F

.field private mLastHorizontalStyle:I

.field private mLastVerticalBias:F

.field private mLastVerticalStyle:I

.field private mMaxElementsWrap:I

.field private mOrientation:I

.field private mVerticalAlign:I

.field private mVerticalBias:F

.field private mVerticalGap:I

.field private mVerticalStyle:I

.field private mWrapMode:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 32
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    .line 48
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    .line 49
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalStyle:I

    .line 50
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalStyle:I

    .line 51
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalStyle:I

    .line 52
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalStyle:I

    .line 54
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalBias:F

    .line 55
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalBias:F

    .line 56
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalBias:F

    .line 57
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalBias:F

    .line 58
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalBias:F

    .line 59
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalBias:F

    .line 61
    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    .line 62
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    .line 64
    const/4 v2, 0x2

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalAlign:I

    .line 65
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalAlign:I

    .line 66
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mWrapMode:I

    .line 68
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    .line 70
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 77
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 78
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedDimensions:[I

    .line 80
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mDisplayedWidgetsCount:I

    return-void
.end method

.method static synthetic access$000(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    return v0
.end method

.method static synthetic access$100(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    return v0
.end method

.method static synthetic access$1000(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalStyle:I

    return v0
.end method

.method static synthetic access$1100(Landroidx/constraintlayout/solver/widgets/Flow;)F
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalBias:F

    return v0
.end method

.method static synthetic access$1200(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalStyle:I

    return v0
.end method

.method static synthetic access$1300(Landroidx/constraintlayout/solver/widgets/Flow;)F
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalBias:F

    return v0
.end method

.method static synthetic access$1400(Landroidx/constraintlayout/solver/widgets/Flow;)F
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalBias:F

    return v0
.end method

.method static synthetic access$1500(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalStyle:I

    return v0
.end method

.method static synthetic access$1600(Landroidx/constraintlayout/solver/widgets/Flow;)F
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalBias:F

    return v0
.end method

.method static synthetic access$1700(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalStyle:I

    return v0
.end method

.method static synthetic access$1800(Landroidx/constraintlayout/solver/widgets/Flow;)F
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalBias:F

    return v0
.end method

.method static synthetic access$1900(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalAlign:I

    return v0
.end method

.method static synthetic access$200(Landroidx/constraintlayout/solver/widgets/Flow;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I
    .registers 4
    .param p0, "x0"    # Landroidx/constraintlayout/solver/widgets/Flow;
    .param p1, "x1"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p2, "x2"    # I

    .line 32
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroidx/constraintlayout/solver/widgets/Flow;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I
    .registers 4
    .param p0, "x0"    # Landroidx/constraintlayout/solver/widgets/Flow;
    .param p1, "x1"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p2, "x2"    # I

    .line 32
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mDisplayedWidgetsCount:I

    return v0
.end method

.method static synthetic access$500(Landroidx/constraintlayout/solver/widgets/Flow;)[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/solver/widgets/Flow;

    .line 32
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    return-object v0
.end method

.method static synthetic access$600(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    return v0
.end method

.method static synthetic access$700(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalAlign:I

    return v0
.end method

.method static synthetic access$800(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    return v0
.end method

.method static synthetic access$900(Landroidx/constraintlayout/solver/widgets/Flow;)F
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalBias:F

    return v0
.end method

.method private createAlignedConstraints(Z)V
    .registers 16
    .param p1, "isInRtl"    # Z

    .line 1119
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedDimensions:[I

    if-eqz v0, :cond_11c

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_11c

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-nez v0, :cond_e

    goto/16 :goto_11c

    .line 1125
    :cond_e
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mDisplayedWidgetsCount:I

    if-ge v0, v1, :cond_1d

    .line 1126
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v1, v1, v0

    .line 1127
    .local v1, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resetAnchors()V

    .line 1125
    .end local v1    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 1130
    .end local v0    # "i":I
    :cond_1d
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedDimensions:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 1131
    .local v0, "cols":I
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedDimensions:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    .line 1133
    .local v2, "rows":I
    const/4 v4, 0x0

    .line 1134
    .local v4, "previous":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_29
    const/16 v6, 0x8

    if-ge v5, v0, :cond_7d

    .line 1135
    move v7, v5

    .line 1136
    .local v7, "index":I
    if-eqz p1, :cond_34

    .line 1137
    sub-int v8, v0, v5

    add-int/lit8 v7, v8, -0x1

    .line 1139
    :cond_34
    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v8, v8, v7

    .line 1140
    .local v8, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v8, :cond_7a

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v9

    if-ne v9, v6, :cond_41

    .line 1141
    goto :goto_7a

    .line 1143
    :cond_41
    if-nez v5, :cond_58

    .line 1144
    iget-object v6, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingLeft()I

    move-result v10

    invoke-virtual {v8, v6, v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1145
    iget v6, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    invoke-virtual {v8, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    .line 1146
    iget v6, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalBias:F

    invoke-virtual {v8, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    .line 1148
    :cond_58
    add-int/lit8 v6, v0, -0x1

    if-ne v5, v6, :cond_67

    .line 1149
    iget-object v6, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingRight()I

    move-result v10

    invoke-virtual {v8, v6, v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1151
    :cond_67
    if-lez v5, :cond_79

    .line 1152
    iget-object v6, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v10, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    invoke-virtual {v8, v6, v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1153
    iget-object v6, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4, v6, v9, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1155
    :cond_79
    move-object v4, v8

    .line 1134
    .end local v7    # "index":I
    .end local v8    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_7a
    :goto_7a
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    .line 1157
    .end local v5    # "i":I
    :cond_7d
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_7e
    if-ge v5, v2, :cond_c9

    .line 1158
    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v7, v7, v5

    .line 1159
    .local v7, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v7, :cond_c6

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v8

    if-ne v8, v6, :cond_8d

    .line 1160
    goto :goto_c6

    .line 1162
    :cond_8d
    if-nez v5, :cond_a4

    .line 1163
    iget-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingTop()I

    move-result v10

    invoke-virtual {v7, v8, v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1164
    iget v8, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    .line 1165
    iget v8, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalBias:F

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    .line 1167
    :cond_a4
    add-int/lit8 v8, v2, -0x1

    if-ne v5, v8, :cond_b3

    .line 1168
    iget-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingBottom()I

    move-result v10

    invoke-virtual {v7, v8, v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1170
    :cond_b3
    if-lez v5, :cond_c5

    .line 1171
    iget-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v10, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    invoke-virtual {v7, v8, v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1172
    iget-object v8, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4, v8, v9, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1174
    :cond_c5
    move-object v4, v7

    .line 1157
    .end local v7    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_c6
    :goto_c6
    add-int/lit8 v5, v5, 0x1

    goto :goto_7e

    .line 1177
    .end local v5    # "j":I
    :cond_c9
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_ca
    if-ge v5, v0, :cond_11b

    .line 1178
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_cd
    if-ge v7, v2, :cond_118

    .line 1179
    mul-int v8, v7, v0

    add-int/2addr v8, v5

    .line 1180
    .local v8, "index":I
    iget v9, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    if-ne v9, v3, :cond_da

    .line 1181
    mul-int v9, v5, v2

    add-int v8, v9, v7

    .line 1183
    :cond_da
    iget-object v9, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    array-length v9, v9

    if-lt v8, v9, :cond_e0

    .line 1184
    goto :goto_115

    .line 1186
    :cond_e0
    iget-object v9, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v9, v9, v8

    .line 1187
    .local v9, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v9, :cond_115

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v10

    if-ne v10, v6, :cond_ed

    .line 1188
    goto :goto_115

    .line 1190
    :cond_ed
    iget-object v10, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v10, v10, v5

    .line 1191
    .local v10, "biggestInCol":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v11, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v11, v11, v7

    .line 1192
    .local v11, "biggestInRow":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eq v9, v10, :cond_105

    .line 1193
    iget-object v12, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v13, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v12, v13, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1194
    iget-object v12, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v13, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v12, v13, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1196
    :cond_105
    if-eq v9, v11, :cond_115

    .line 1197
    iget-object v12, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v13, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v12, v13, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1198
    iget-object v12, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v13, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v12, v13, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1178
    .end local v8    # "index":I
    .end local v9    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v10    # "biggestInCol":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v11    # "biggestInRow":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_115
    :goto_115
    add-int/lit8 v7, v7, 0x1

    goto :goto_cd

    .line 1177
    .end local v7    # "j":I
    :cond_118
    add-int/lit8 v5, v5, 0x1

    goto :goto_ca

    .line 1202
    .end local v5    # "i":I
    :cond_11b
    return-void

    .line 1122
    .end local v0    # "cols":I
    .end local v2    # "rows":I
    .end local v4    # "previous":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_11c
    :goto_11c
    return-void
.end method

.method private final getWidgetHeight(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I
    .registers 10
    .param p1, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p2, "max"    # I

    .line 199
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 200
    return v0

    .line 202
    :cond_4
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_50

    .line 203
    iget v1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v1, :cond_11

    .line 204
    return v0

    .line 205
    :cond_11
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_33

    .line 206
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    int-to-float v1, p2

    mul-float/2addr v0, v1

    float-to-int v6, v0

    .line 207
    .local v6, "value":I
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    if-eq v6, v0, :cond_31

    .line 208
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v1, p0

    move-object v2, p1

    .end local p1    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v2, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/solver/widgets/Flow;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    goto :goto_32

    .line 207
    .end local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local p1    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_31
    move-object v2, p1

    .line 210
    .end local p1    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_32
    return v6

    .line 211
    .end local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v6    # "value":I
    .restart local p1    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_33
    move-object v2, p1

    .end local p1    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget p1, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3e

    .line 212
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result p1

    return p1

    .line 213
    :cond_3e
    iget p1, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_51

    .line 214
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget v0, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1

    .line 202
    .end local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local p1    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_50
    move-object v2, p1

    .line 217
    .end local p1    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_51
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result p1

    return p1
.end method

.method private final getWidgetWidth(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I
    .registers 10
    .param p1, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p2, "max"    # I

    .line 177
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 178
    return v0

    .line 180
    :cond_4
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_50

    .line 181
    iget v1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v1, :cond_11

    .line 182
    return v0

    .line 183
    :cond_11
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_33

    .line 184
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    int-to-float v1, p2

    mul-float/2addr v0, v1

    float-to-int v4, v0

    .line 185
    .local v4, "value":I
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    if-eq v4, v0, :cond_31

    .line 186
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    .end local p1    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v2, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/solver/widgets/Flow;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    goto :goto_32

    .line 185
    .end local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local p1    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_31
    move-object v2, p1

    .line 188
    .end local p1    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_32
    return v4

    .line 189
    .end local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v4    # "value":I
    .restart local p1    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_33
    move-object v2, p1

    .end local p1    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget p1, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3e

    .line 190
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result p1

    return p1

    .line 191
    :cond_3e
    iget p1, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_51

    .line 192
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget v0, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1

    .line 180
    .end local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local p1    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_50
    move-object v2, p1

    .line 195
    .end local p1    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_51
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result p1

    return p1
.end method

.method private measureAligned([Landroidx/constraintlayout/solver/widgets/ConstraintWidget;III[I)V
    .registers 23
    .param p1, "widgets"    # [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p2, "count"    # I
    .param p3, "orientation"    # I
    .param p4, "max"    # I
    .param p5, "measured"    # [I

    .line 965
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const/4 v5, 0x0

    .line 966
    .local v5, "done":Z
    const/4 v6, 0x0

    .line 967
    .local v6, "rows":I
    const/4 v7, 0x0

    .line 969
    .local v7, "cols":I
    if-nez v3, :cond_30

    .line 970
    iget v7, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    .line 971
    if-gtz v7, :cond_50

    .line 973
    const/4 v8, 0x0

    .line 974
    .local v8, "w":I
    const/4 v7, 0x0

    .line 975
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_16
    if-ge v9, v2, :cond_2f

    .line 976
    if-lez v9, :cond_1d

    .line 977
    iget v10, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v8, v10

    .line 979
    :cond_1d
    aget-object v10, v1, v9

    .line 980
    .local v10, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-nez v10, :cond_22

    .line 981
    goto :goto_2c

    .line 983
    :cond_22
    invoke-direct {v0, v10, v4}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v11

    add-int/2addr v8, v11

    .line 984
    if-le v8, v4, :cond_2a

    .line 985
    goto :goto_2f

    .line 987
    :cond_2a
    add-int/lit8 v7, v7, 0x1

    .line 975
    .end local v10    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_2c
    add-int/lit8 v9, v9, 0x1

    goto :goto_16

    .line 989
    .end local v8    # "w":I
    .end local v9    # "i":I
    :cond_2f
    :goto_2f
    goto :goto_50

    .line 991
    :cond_30
    iget v6, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    .line 992
    if-gtz v6, :cond_50

    .line 994
    const/4 v8, 0x0

    .line 995
    .local v8, "h":I
    const/4 v6, 0x0

    .line 996
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_37
    if-ge v9, v2, :cond_50

    .line 997
    if-lez v9, :cond_3e

    .line 998
    iget v10, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    add-int/2addr v8, v10

    .line 1000
    :cond_3e
    aget-object v10, v1, v9

    .line 1001
    .restart local v10    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-nez v10, :cond_43

    .line 1002
    goto :goto_4d

    .line 1004
    :cond_43
    invoke-direct {v0, v10, v4}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v11

    add-int/2addr v8, v11

    .line 1005
    if-le v8, v4, :cond_4b

    .line 1006
    goto :goto_50

    .line 1008
    :cond_4b
    add-int/lit8 v6, v6, 0x1

    .line 996
    .end local v10    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_4d
    add-int/lit8 v9, v9, 0x1

    goto :goto_37

    .line 1013
    .end local v8    # "h":I
    .end local v9    # "i":I
    :cond_50
    :goto_50
    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedDimensions:[I

    if-nez v8, :cond_59

    .line 1014
    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedDimensions:[I

    .line 1017
    :cond_59
    const/4 v8, 0x1

    if-nez v6, :cond_5e

    if-eq v3, v8, :cond_62

    :cond_5e
    if-nez v7, :cond_63

    if-nez v3, :cond_63

    .line 1019
    :cond_62
    const/4 v5, 0x1

    .line 1022
    :cond_63
    :goto_63
    if-nez v5, :cond_146

    .line 1026
    if-nez v3, :cond_71

    .line 1027
    int-to-float v10, v2

    int-to-float v11, v7

    div-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v6, v10

    goto :goto_7a

    .line 1029
    :cond_71
    int-to-float v10, v2

    int-to-float v11, v6

    div-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v7, v10

    .line 1032
    :goto_7a
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v11, 0x0

    if-eqz v10, :cond_8b

    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    array-length v10, v10

    if-ge v10, v7, :cond_85

    goto :goto_8b

    .line 1035
    :cond_85
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-static {v10, v11}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8f

    .line 1033
    :cond_8b
    :goto_8b
    new-array v10, v7, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput-object v10, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1037
    :goto_8f
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v10, :cond_9f

    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    array-length v10, v10

    if-ge v10, v6, :cond_99

    goto :goto_9f

    .line 1040
    :cond_99
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-static {v10, v11}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a3

    .line 1038
    :cond_9f
    :goto_9f
    new-array v10, v6, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput-object v10, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1043
    :goto_a3
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_a4
    if-ge v10, v7, :cond_f9

    .line 1044
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_a7
    if-ge v11, v6, :cond_f4

    .line 1045
    mul-int v12, v11, v7

    add-int/2addr v12, v10

    .line 1046
    .local v12, "index":I
    if-ne v3, v8, :cond_b2

    .line 1047
    mul-int v13, v10, v6

    add-int v12, v13, v11

    .line 1049
    :cond_b2
    array-length v13, v1

    if-lt v12, v13, :cond_b8

    .line 1050
    const/16 v16, 0x0

    goto :goto_f1

    .line 1052
    :cond_b8
    aget-object v13, v1, v12

    .line 1053
    .local v13, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-nez v13, :cond_bf

    .line 1054
    const/16 v16, 0x0

    goto :goto_f1

    .line 1056
    :cond_bf
    invoke-direct {v0, v13, v4}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v14

    .line 1057
    .local v14, "w":I
    iget-object v15, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v15, v15, v10

    if-eqz v15, :cond_d3

    iget-object v15, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v15, v15, v10

    .line 1058
    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v15

    if-ge v15, v14, :cond_d7

    .line 1059
    :cond_d3
    iget-object v15, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aput-object v13, v15, v10

    .line 1061
    :cond_d7
    invoke-direct {v0, v13, v4}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v15

    .line 1062
    .local v15, "h":I
    const/16 v16, 0x0

    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v9, v9, v11

    if-eqz v9, :cond_ed

    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v9, v9, v11

    .line 1063
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v9

    if-ge v9, v15, :cond_f1

    .line 1064
    :cond_ed
    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aput-object v13, v9, v11

    .line 1044
    .end local v12    # "index":I
    .end local v13    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v14    # "w":I
    .end local v15    # "h":I
    :cond_f1
    :goto_f1
    add-int/lit8 v11, v11, 0x1

    goto :goto_a7

    :cond_f4
    const/16 v16, 0x0

    .line 1043
    .end local v11    # "j":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_a4

    :cond_f9
    const/16 v16, 0x0

    .line 1069
    .end local v10    # "i":I
    const/4 v9, 0x0

    .line 1070
    .local v9, "w":I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_fd
    if-ge v10, v7, :cond_112

    .line 1071
    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v11, v11, v10

    .line 1072
    .local v11, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v11, :cond_10f

    .line 1073
    if-lez v10, :cond_10a

    .line 1074
    iget v12, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v9, v12

    .line 1076
    :cond_10a
    invoke-direct {v0, v11, v4}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v12

    add-int/2addr v9, v12

    .line 1070
    .end local v11    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_10f
    add-int/lit8 v10, v10, 0x1

    goto :goto_fd

    .line 1079
    .end local v10    # "i":I
    :cond_112
    const/4 v10, 0x0

    .line 1080
    .local v10, "h":I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_114
    if-ge v11, v6, :cond_129

    .line 1081
    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v12, v12, v11

    .line 1082
    .local v12, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v12, :cond_126

    .line 1083
    if-lez v11, :cond_121

    .line 1084
    iget v13, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    add-int/2addr v10, v13

    .line 1086
    :cond_121
    invoke-direct {v0, v12, v4}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v13

    add-int/2addr v10, v13

    .line 1080
    .end local v12    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_126
    add-int/lit8 v11, v11, 0x1

    goto :goto_114

    .line 1089
    .end local v11    # "j":I
    :cond_129
    aput v9, p5, v16

    .line 1090
    aput v10, p5, v8

    .line 1092
    if-nez v3, :cond_13a

    .line 1093
    if-le v9, v4, :cond_138

    .line 1094
    if-le v7, v8, :cond_136

    .line 1095
    add-int/lit8 v7, v7, -0x1

    goto :goto_144

    .line 1097
    :cond_136
    const/4 v5, 0x1

    goto :goto_144

    .line 1100
    :cond_138
    const/4 v5, 0x1

    goto :goto_144

    .line 1103
    :cond_13a
    if-le v10, v4, :cond_143

    .line 1104
    if-le v6, v8, :cond_141

    .line 1105
    add-int/lit8 v6, v6, -0x1

    goto :goto_144

    .line 1107
    :cond_141
    const/4 v5, 0x1

    goto :goto_144

    .line 1110
    :cond_143
    const/4 v5, 0x1

    .line 1113
    .end local v9    # "w":I
    .end local v10    # "h":I
    :goto_144
    goto/16 :goto_63

    .line 1114
    :cond_146
    const/16 v16, 0x0

    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedDimensions:[I

    aput v7, v9, v16

    .line 1115
    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedDimensions:[I

    aput v6, v9, v8

    .line 1116
    return-void
.end method

.method private measureChainWrap([Landroidx/constraintlayout/solver/widgets/ConstraintWidget;III[I)V
    .registers 31
    .param p1, "widgets"    # [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p2, "count"    # I
    .param p3, "orientation"    # I
    .param p4, "max"    # I
    .param p5, "measured"    # [I

    .line 776
    move-object/from16 v1, p0

    move/from16 v8, p2

    if-nez v8, :cond_7

    .line 777
    return-void

    .line 780
    :cond_7
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 781
    new-instance v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move/from16 v2, p3

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/solver/widgets/Flow;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 782
    .local v0, "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    const/4 v2, 0x0

    .line 786
    .local v2, "nbMatchConstraintsWidgets":I
    const/16 v20, 0x0

    const/16 v21, 0x1

    if-nez p3, :cond_97

    .line 787
    const/4 v3, 0x0

    .line 788
    .local v3, "width":I
    const/4 v4, 0x0

    move-object v9, v0

    move v10, v4

    .end local v0    # "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    .local v9, "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    .local v10, "i":I
    :goto_2d
    if-ge v10, v8, :cond_94

    .line 789
    aget-object v11, p1, v10

    .line 790
    .local v11, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-direct {v1, v11, v7}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v12

    .line 791
    .local v12, "w":I
    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v4, :cond_41

    .line 792
    add-int/lit8 v2, v2, 0x1

    move v13, v2

    goto :goto_42

    .line 791
    :cond_41
    move v13, v2

    .line 794
    .end local v2    # "nbMatchConstraintsWidgets":I
    .local v13, "nbMatchConstraintsWidgets":I
    :goto_42
    if-eq v3, v7, :cond_4a

    iget v0, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v0, v3

    add-int/2addr v0, v12

    if-le v0, v7, :cond_53

    :cond_4a
    invoke-static {v9}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_53

    move/from16 v0, v21

    goto :goto_55

    :cond_53
    move/from16 v0, v20

    .line 795
    .local v0, "doWrap":Z
    :goto_55
    if-nez v0, :cond_66

    if-lez v10, :cond_66

    iget v2, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    if-lez v2, :cond_66

    iget v2, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    rem-int v2, v10, v2

    if-nez v2, :cond_66

    .line 796
    const/4 v0, 0x1

    move v14, v0

    goto :goto_67

    .line 798
    :cond_66
    move v14, v0

    .end local v0    # "doWrap":Z
    .local v14, "doWrap":Z
    :goto_67
    if-eqz v14, :cond_84

    .line 799
    move v15, v12

    .line 800
    .end local v3    # "width":I
    .local v15, "width":I
    new-instance v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move/from16 v2, p3

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/solver/widgets/Flow;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 801
    .end local v9    # "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    .local v0, "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    invoke-virtual {v0, v10}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->setStartIndex(I)V

    .line 802
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v9, v0

    move v3, v15

    goto :goto_8d

    .line 804
    .end local v0    # "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    .end local v15    # "width":I
    .restart local v3    # "width":I
    .restart local v9    # "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    :cond_84
    if-lez v10, :cond_8b

    .line 805
    iget v0, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v0, v12

    add-int/2addr v3, v0

    goto :goto_8d

    .line 807
    :cond_8b
    move v0, v12

    move v3, v0

    .line 810
    :goto_8d
    invoke-virtual {v9, v11}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 788
    .end local v11    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v12    # "w":I
    .end local v14    # "doWrap":Z
    add-int/lit8 v10, v10, 0x1

    move v2, v13

    goto :goto_2d

    .line 812
    .end local v3    # "width":I
    .end local v10    # "i":I
    .end local v13    # "nbMatchConstraintsWidgets":I
    .restart local v2    # "nbMatchConstraintsWidgets":I
    :cond_94
    move-object v0, v9

    goto/16 :goto_105

    .line 813
    .end local v9    # "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    .restart local v0    # "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    :cond_97
    const/4 v3, 0x0

    .line 814
    .local v3, "height":I
    const/4 v4, 0x0

    move-object v9, v0

    move v10, v4

    .end local v0    # "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    .restart local v9    # "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    .restart local v10    # "i":I
    :goto_9b
    if-ge v10, v8, :cond_104

    .line 815
    aget-object v11, p1, v10

    .line 816
    .restart local v11    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-direct {v1, v11, v7}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v12

    .line 817
    .local v12, "h":I
    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v4, :cond_af

    .line 818
    add-int/lit8 v2, v2, 0x1

    move v13, v2

    goto :goto_b0

    .line 817
    :cond_af
    move v13, v2

    .line 820
    .end local v2    # "nbMatchConstraintsWidgets":I
    .restart local v13    # "nbMatchConstraintsWidgets":I
    :goto_b0
    if-eq v3, v7, :cond_b8

    iget v0, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    add-int/2addr v0, v3

    add-int/2addr v0, v12

    if-le v0, v7, :cond_c1

    :cond_b8
    invoke-static {v9}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_c1

    move/from16 v0, v21

    goto :goto_c3

    :cond_c1
    move/from16 v0, v20

    .line 821
    .local v0, "doWrap":Z
    :goto_c3
    if-nez v0, :cond_d4

    if-lez v10, :cond_d4

    iget v2, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    if-lez v2, :cond_d4

    iget v2, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    rem-int v2, v10, v2

    if-nez v2, :cond_d4

    .line 822
    const/4 v0, 0x1

    move v14, v0

    goto :goto_d5

    .line 824
    :cond_d4
    move v14, v0

    .end local v0    # "doWrap":Z
    .restart local v14    # "doWrap":Z
    :goto_d5
    if-eqz v14, :cond_f2

    .line 825
    move v15, v12

    .line 826
    .end local v3    # "height":I
    .local v15, "height":I
    new-instance v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move/from16 v2, p3

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/solver/widgets/Flow;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 827
    .end local v9    # "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    .local v0, "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    invoke-virtual {v0, v10}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->setStartIndex(I)V

    .line 828
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v9, v0

    move v3, v15

    goto :goto_fb

    .line 830
    .end local v0    # "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    .end local v15    # "height":I
    .restart local v3    # "height":I
    .restart local v9    # "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    :cond_f2
    if-lez v10, :cond_f9

    .line 831
    iget v0, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    add-int/2addr v0, v12

    add-int/2addr v3, v0

    goto :goto_fb

    .line 833
    :cond_f9
    move v0, v12

    move v3, v0

    .line 836
    :goto_fb
    invoke-virtual {v9, v11}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 814
    .end local v11    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v12    # "h":I
    .end local v14    # "doWrap":Z
    add-int/lit8 v10, v10, 0x1

    move/from16 v7, p4

    move v2, v13

    goto :goto_9b

    .end local v13    # "nbMatchConstraintsWidgets":I
    .restart local v2    # "nbMatchConstraintsWidgets":I
    :cond_104
    move-object v0, v9

    .line 839
    .end local v3    # "height":I
    .end local v9    # "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    .end local v10    # "i":I
    .restart local v0    # "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    :goto_105
    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 841
    .local v3, "listCount":I
    iget-object v4, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 842
    .local v4, "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 843
    .local v5, "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 844
    .local v6, "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v7, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 846
    .local v7, "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingLeft()I

    move-result v9

    .line 847
    .local v9, "paddingLeft":I
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingTop()I

    move-result v10

    .line 848
    .local v10, "paddingTop":I
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingRight()I

    move-result v11

    .line 849
    .local v11, "paddingRight":I
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingBottom()I

    move-result v12

    .line 851
    .local v12, "paddingBottom":I
    const/4 v13, 0x0

    .line 852
    .local v13, "maxWidth":I
    const/4 v14, 0x0

    .line 854
    .local v14, "maxHeight":I
    nop

    .line 855
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/Flow;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v15

    move-object/from16 v22, v0

    .end local v0    # "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    .local v22, "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v15, v0, :cond_13c

    .line 856
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/Flow;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v15, :cond_139

    goto :goto_13c

    :cond_139
    move/from16 v0, v20

    goto :goto_13e

    :cond_13c
    :goto_13c
    move/from16 v0, v21

    .line 858
    .local v0, "needInternalMeasure":Z
    :goto_13e
    if-lez v2, :cond_174

    if-eqz v0, :cond_174

    .line 860
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_143
    if-ge v15, v3, :cond_16f

    .line 861
    move/from16 v23, v0

    .end local v0    # "needInternalMeasure":Z
    .local v23, "needInternalMeasure":Z
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    .line 862
    .local v0, "current":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    if-nez p3, :cond_15d

    .line 863
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getWidth()I

    move-result v16

    move/from16 v24, v2

    .end local v2    # "nbMatchConstraintsWidgets":I
    .local v24, "nbMatchConstraintsWidgets":I
    sub-int v2, p4, v16

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    goto :goto_168

    .line 865
    .end local v24    # "nbMatchConstraintsWidgets":I
    .restart local v2    # "nbMatchConstraintsWidgets":I
    :cond_15d
    move/from16 v24, v2

    .end local v2    # "nbMatchConstraintsWidgets":I
    .restart local v24    # "nbMatchConstraintsWidgets":I
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getHeight()I

    move-result v2

    sub-int v2, p4, v2

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    .line 860
    .end local v0    # "current":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    :goto_168
    add-int/lit8 v15, v15, 0x1

    move/from16 v0, v23

    move/from16 v2, v24

    goto :goto_143

    .end local v23    # "needInternalMeasure":Z
    .end local v24    # "nbMatchConstraintsWidgets":I
    .local v0, "needInternalMeasure":Z
    .restart local v2    # "nbMatchConstraintsWidgets":I
    :cond_16f
    move/from16 v23, v0

    move/from16 v24, v2

    .end local v0    # "needInternalMeasure":Z
    .end local v2    # "nbMatchConstraintsWidgets":I
    .restart local v23    # "needInternalMeasure":Z
    .restart local v24    # "nbMatchConstraintsWidgets":I
    goto :goto_178

    .line 858
    .end local v15    # "i":I
    .end local v23    # "needInternalMeasure":Z
    .end local v24    # "nbMatchConstraintsWidgets":I
    .restart local v0    # "needInternalMeasure":Z
    .restart local v2    # "nbMatchConstraintsWidgets":I
    :cond_174
    move/from16 v23, v0

    move/from16 v24, v2

    .line 870
    .end local v0    # "needInternalMeasure":Z
    .end local v2    # "nbMatchConstraintsWidgets":I
    .restart local v23    # "needInternalMeasure":Z
    .restart local v24    # "nbMatchConstraintsWidgets":I
    :goto_178
    const/4 v0, 0x0

    move v15, v9

    move/from16 v16, v10

    move/from16 v17, v11

    move/from16 v18, v12

    move v2, v13

    move-object v11, v4

    move-object v12, v5

    move-object v13, v6

    move v4, v14

    move-object v14, v7

    .end local v5    # "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v6    # "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v7    # "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v9    # "paddingLeft":I
    .end local v10    # "paddingTop":I
    .local v0, "i":I
    .local v2, "maxWidth":I
    .local v4, "maxHeight":I
    .local v11, "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v12, "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v13, "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v14, "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v15, "paddingLeft":I
    .local v16, "paddingTop":I
    .local v17, "paddingRight":I
    .local v18, "paddingBottom":I
    :goto_186
    if-ge v0, v3, :cond_226

    .line 871
    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    .line 872
    .local v9, "current":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    if-nez p3, :cond_1da

    .line 873
    add-int/lit8 v5, v3, -0x1

    if-ge v0, v5, :cond_1ac

    .line 874
    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    .line 875
    .local v5, "next":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    invoke-static {v5}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v6

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 876
    .end local v14    # "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v6, "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    const/4 v5, 0x0

    .line 877
    .end local v18    # "paddingBottom":I
    .local v5, "paddingBottom":I
    move/from16 v18, v5

    move-object v14, v6

    goto :goto_1b5

    .line 878
    .end local v5    # "paddingBottom":I
    .end local v6    # "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v14    # "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v18    # "paddingBottom":I
    :cond_1ac
    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 879
    .end local v14    # "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v6    # "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingBottom()I

    move-result v5

    move/from16 v18, v5

    move-object v14, v6

    .line 881
    .end local v6    # "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v14    # "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :goto_1b5
    invoke-static {v9}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v5

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 882
    .local v5, "currentBottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move/from16 v10, p3

    move/from16 v19, p4

    invoke-virtual/range {v9 .. v19}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIII)V

    .line 884
    move-object v6, v5

    .line 885
    .end local v12    # "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v6, "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    const/4 v7, 0x0

    .line 886
    .end local v16    # "paddingTop":I
    .local v7, "paddingTop":I
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getWidth()I

    move-result v10

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 887
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getHeight()I

    move-result v10

    add-int/2addr v4, v10

    .line 888
    if-lez v0, :cond_1d6

    .line 889
    iget v10, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    add-int/2addr v4, v10

    .line 891
    .end local v5    # "currentBottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_1d6
    move-object v12, v6

    move/from16 v16, v7

    goto :goto_222

    .line 892
    .end local v6    # "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v7    # "paddingTop":I
    .restart local v12    # "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v16    # "paddingTop":I
    :cond_1da
    add-int/lit8 v5, v3, -0x1

    if-ge v0, v5, :cond_1f3

    .line 893
    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    .line 894
    .local v5, "next":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    invoke-static {v5}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v6

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 895
    .end local v13    # "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v6, "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    const/4 v5, 0x0

    .line 896
    .end local v17    # "paddingRight":I
    .local v5, "paddingRight":I
    move/from16 v17, v5

    move-object v13, v6

    goto :goto_1fc

    .line 897
    .end local v5    # "paddingRight":I
    .end local v6    # "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v13    # "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v17    # "paddingRight":I
    :cond_1f3
    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 898
    .end local v13    # "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v6    # "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingRight()I

    move-result v5

    move/from16 v17, v5

    move-object v13, v6

    .line 900
    .end local v6    # "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v13    # "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :goto_1fc
    invoke-static {v9}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v5

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 901
    .local v5, "currentRight":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move/from16 v10, p3

    move/from16 v19, p4

    invoke-virtual/range {v9 .. v19}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIII)V

    .line 903
    move-object v6, v5

    .line 904
    .end local v11    # "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v6, "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    const/4 v7, 0x0

    .line 905
    .end local v15    # "paddingLeft":I
    .local v7, "paddingLeft":I
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getWidth()I

    move-result v10

    add-int/2addr v2, v10

    .line 906
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getHeight()I

    move-result v10

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 907
    if-lez v0, :cond_220

    .line 908
    iget v10, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v2, v10

    move-object v11, v6

    move v15, v7

    goto :goto_222

    .line 907
    :cond_220
    move-object v11, v6

    move v15, v7

    .line 870
    .end local v5    # "currentRight":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v6    # "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v7    # "paddingLeft":I
    .end local v9    # "current":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    .restart local v11    # "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v15    # "paddingLeft":I
    :goto_222
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_186

    .line 912
    .end local v0    # "i":I
    :cond_226
    aput v2, p5, v20

    .line 913
    aput v4, p5, v21

    .line 914
    return-void
.end method

.method private measureNoWrap([Landroidx/constraintlayout/solver/widgets/ConstraintWidget;III[I)V
    .registers 28
    .param p1, "widgets"    # [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p2, "count"    # I
    .param p3, "orientation"    # I
    .param p4, "max"    # I
    .param p5, "measured"    # [I

    .line 929
    move-object/from16 v1, p0

    move/from16 v8, p2

    if-nez v8, :cond_7

    .line 930
    return-void

    .line 932
    :cond_7
    const/4 v9, 0x0

    .line 933
    .local v9, "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_28

    .line 934
    new-instance v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move/from16 v2, p3

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/solver/widgets/Flow;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 935
    .end local v9    # "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    .local v0, "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_56

    .line 937
    .end local v0    # "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    .restart local v9    # "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    :cond_28
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    .line 938
    .end local v9    # "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    .local v11, "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->clear()V

    .line 939
    iget-object v13, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v14, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v15, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 940
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingLeft()I

    move-result v17

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingTop()I

    move-result v18

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingRight()I

    move-result v19

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingBottom()I

    move-result v20

    .line 939
    move/from16 v12, p3

    move/from16 v21, p4

    move-object/from16 v16, v0

    invoke-virtual/range {v11 .. v21}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIII)V

    move-object v0, v11

    .line 943
    .end local v11    # "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    .restart local v0    # "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    :goto_56
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_57
    if-ge v2, v8, :cond_61

    .line 944
    aget-object v3, p1, v2

    .line 945
    .local v3, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 943
    .end local v3    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    .line 948
    .end local v2    # "i":I
    :cond_61
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getWidth()I

    move-result v2

    aput v2, p5, v10

    .line 949
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getHeight()I

    move-result v2

    const/4 v3, 0x1

    aput v2, p5, v3

    .line 950
    return-void
.end method


# virtual methods
.method public addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V
    .registers 9
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;

    .line 1215
    invoke-super {p0, p1}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 1217
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result v0

    goto :goto_16

    :cond_15
    move v0, v1

    .line 1218
    .local v0, "isInRtl":Z
    :goto_16
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mWrapMode:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_58

    goto :goto_54

    .line 1234
    :pswitch_1d
    invoke-direct {p0, v0}, Landroidx/constraintlayout/solver/widgets/Flow;->createAlignedConstraints(Z)V

    goto :goto_54

    .line 1220
    :pswitch_21
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1221
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_28
    if-ge v4, v2, :cond_3f

    .line 1222
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    .line 1223
    .local v5, "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    add-int/lit8 v6, v2, -0x1

    if-ne v4, v6, :cond_38

    move v6, v3

    goto :goto_39

    :cond_38
    move v6, v1

    :goto_39
    invoke-virtual {v5, v0, v4, v6}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->createConstraints(ZIZ)V

    .line 1221
    .end local v5    # "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 1225
    .end local v2    # "count":I
    .end local v4    # "i":I
    :cond_3f
    goto :goto_54

    .line 1227
    :pswitch_40
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_54

    .line 1228
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    .line 1229
    .local v2, "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    invoke-virtual {v2, v0, v1, v3}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->createConstraints(ZIZ)V

    .line 1230
    .end local v2    # "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    nop

    .line 1237
    :cond_54
    :goto_54
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/widgets/Flow;->needsCallbackFromSolver(Z)V

    .line 1238
    return-void

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_40
        :pswitch_21
        :pswitch_1d
    .end packed-switch
.end method

.method public copy(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V
    .registers 5
    .param p1, "src"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            "Ljava/util/HashMap<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    .line 85
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->copy(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    .line 86
    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/solver/widgets/Flow;

    .line 88
    .local v0, "srcFLow":Landroidx/constraintlayout/solver/widgets/Flow;
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    .line 89
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    .line 90
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalStyle:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalStyle:I

    .line 91
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalStyle:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalStyle:I

    .line 92
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalStyle:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalStyle:I

    .line 93
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalStyle:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalStyle:I

    .line 95
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalBias:F

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalBias:F

    .line 96
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalBias:F

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalBias:F

    .line 97
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalBias:F

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalBias:F

    .line 98
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalBias:F

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalBias:F

    .line 99
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalBias:F

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalBias:F

    .line 100
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalBias:F

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalBias:F

    .line 102
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    .line 103
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    .line 105
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalAlign:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalAlign:I

    .line 106
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalAlign:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalAlign:I

    .line 107
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mWrapMode:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mWrapMode:I

    .line 109
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    .line 111
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    .line 112
    return-void
.end method

.method public measure(IIII)V
    .registers 28
    .param p1, "widthMode"    # I
    .param p2, "widthSize"    # I
    .param p3, "heightMode"    # I
    .param p4, "heightSize"    # I

    .line 225
    move-object/from16 v0, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mWidgetsCount:I

    const/4 v10, 0x0

    if-lez v1, :cond_1c

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/Flow;->measureChildren()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 226
    invoke-virtual {v0, v10, v10}, Landroidx/constraintlayout/solver/widgets/Flow;->setMeasure(II)V

    .line 227
    invoke-virtual {v0, v10}, Landroidx/constraintlayout/solver/widgets/Flow;->needsCallbackFromSolver(Z)V

    .line 228
    return-void

    .line 231
    :cond_1c
    const/4 v11, 0x0

    .line 232
    .local v11, "width":I
    const/4 v12, 0x0

    .line 233
    .local v12, "height":I
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingLeft()I

    move-result v13

    .line 234
    .local v13, "paddingLeft":I
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingRight()I

    move-result v14

    .line 235
    .local v14, "paddingRight":I
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingTop()I

    move-result v15

    .line 236
    .local v15, "paddingTop":I
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingBottom()I

    move-result v16

    .line 238
    .local v16, "paddingBottom":I
    const/4 v1, 0x2

    new-array v5, v1, [I

    .line 239
    .local v5, "measured":[I
    sub-int v1, v7, v13

    sub-int/2addr v1, v14

    .line 240
    .local v1, "max":I
    iget v2, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3f

    .line 241
    sub-int v2, v9, v15

    sub-int v1, v2, v16

    move v4, v1

    goto :goto_40

    .line 240
    :cond_3f
    move v4, v1

    .line 244
    .end local v1    # "max":I
    .local v4, "max":I
    :goto_40
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    .line 252
    iget v2, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    .line 244
    const/4 v3, -0x1

    if-nez v1, :cond_52

    .line 245
    if-ne v2, v3, :cond_4b

    .line 246
    iput v10, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    .line 248
    :cond_4b
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    if-ne v1, v3, :cond_5c

    .line 249
    iput v10, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    goto :goto_5c

    .line 252
    :cond_52
    if-ne v2, v3, :cond_56

    .line 253
    iput v10, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    .line 255
    :cond_56
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    if-ne v1, v3, :cond_5c

    .line 256
    iput v10, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    .line 260
    :cond_5c
    :goto_5c
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 262
    .local v1, "widgets":[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/4 v2, 0x0

    .line 263
    .local v2, "gone":I
    const/4 v3, 0x0

    move/from16 v18, v2

    .end local v2    # "gone":I
    .local v3, "i":I
    .local v18, "gone":I
    :goto_62
    iget v2, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mWidgetsCount:I

    move/from16 v19, v10

    const/16 v10, 0x8

    if-ge v3, v2, :cond_7f

    .line 264
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v2, v2, v3

    .line 265
    .local v2, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v20, v1

    .end local v1    # "widgets":[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v20, "widgets":[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v1

    if-ne v1, v10, :cond_78

    .line 266
    add-int/lit8 v18, v18, 0x1

    .line 263
    .end local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_78
    add-int/lit8 v3, v3, 0x1

    move/from16 v10, v19

    move-object/from16 v1, v20

    goto :goto_62

    .end local v20    # "widgets":[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v1    # "widgets":[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_7f
    move-object/from16 v20, v1

    .line 269
    .end local v1    # "widgets":[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v3    # "i":I
    .restart local v20    # "widgets":[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mWidgetsCount:I

    .line 270
    .local v1, "count":I
    if-lez v18, :cond_b8

    .line 271
    iget v2, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mWidgetsCount:I

    sub-int v2, v2, v18

    new-array v2, v2, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 272
    .end local v20    # "widgets":[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v2, "widgets":[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/4 v3, 0x0

    .line 273
    .local v3, "j":I
    const/16 v20, 0x0

    move/from16 v10, v20

    .local v10, "i":I
    :goto_90
    move/from16 v21, v1

    .end local v1    # "count":I
    .local v21, "count":I
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mWidgetsCount:I

    if-ge v10, v1, :cond_b1

    .line 274
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v1, v1, v10

    .line 275
    .local v1, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v20, v1

    .end local v1    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v20, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual/range {v20 .. v20}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v1

    move-object/from16 v22, v2

    const/16 v2, 0x8

    .end local v2    # "widgets":[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v22, "widgets":[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eq v1, v2, :cond_aa

    .line 276
    aput-object v20, v22, v3

    .line 277
    add-int/lit8 v3, v3, 0x1

    .line 273
    .end local v20    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_aa
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, v21

    move-object/from16 v2, v22

    goto :goto_90

    .end local v22    # "widgets":[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v2    # "widgets":[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_b1
    move-object/from16 v22, v2

    .line 280
    .end local v2    # "widgets":[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v10    # "i":I
    .restart local v22    # "widgets":[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, v3

    move v2, v1

    move-object/from16 v1, v22

    .end local v21    # "count":I
    .local v1, "count":I
    goto :goto_be

    .line 270
    .end local v3    # "j":I
    .end local v22    # "widgets":[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v20, "widgets":[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_b8
    move/from16 v21, v1

    .end local v1    # "count":I
    .restart local v21    # "count":I
    move-object/from16 v1, v20

    move/from16 v2, v21

    .line 282
    .end local v20    # "widgets":[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v21    # "count":I
    .local v1, "widgets":[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v2, "count":I
    :goto_be
    iput-object v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 283
    iput v2, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mDisplayedWidgetsCount:I

    .line 284
    iget v3, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mWrapMode:I

    packed-switch v3, :pswitch_data_12a

    const/16 v17, 0x1

    goto :goto_e1

    .line 286
    :pswitch_ca
    iget v3, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    const/16 v17, 0x1

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/solver/widgets/Flow;->measureAligned([Landroidx/constraintlayout/solver/widgets/ConstraintWidget;III[I)V

    .line 288
    goto :goto_e1

    .line 290
    :pswitch_d2
    const/16 v17, 0x1

    iget v3, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/solver/widgets/Flow;->measureChainWrap([Landroidx/constraintlayout/solver/widgets/ConstraintWidget;III[I)V

    .line 292
    goto :goto_e1

    .line 294
    :pswitch_da
    const/16 v17, 0x1

    iget v3, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/solver/widgets/Flow;->measureNoWrap([Landroidx/constraintlayout/solver/widgets/ConstraintWidget;III[I)V

    .line 299
    :goto_e1
    aget v3, v5, v19

    add-int/2addr v3, v13

    add-int/2addr v3, v14

    .line 300
    .end local v11    # "width":I
    .local v3, "width":I
    aget v10, v5, v17

    add-int/2addr v10, v15

    add-int v10, v10, v16

    .line 302
    .end local v12    # "height":I
    .local v10, "height":I
    const/4 v11, 0x0

    .line 303
    .local v11, "measuredWidth":I
    const/4 v12, 0x0

    .line 305
    .local v12, "measuredHeight":I
    move-object/from16 v20, v1

    .end local v1    # "widgets":[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v20    # "widgets":[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v6, v1, :cond_f5

    .line 306
    move/from16 v11, p2

    goto :goto_101

    .line 307
    :cond_f5
    const/high16 v1, -0x80000000

    if-ne v6, v1, :cond_fe

    .line 308
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v11

    goto :goto_101

    .line 309
    :cond_fe
    if-nez v6, :cond_101

    .line 310
    move v11, v3

    .line 313
    :cond_101
    :goto_101
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v8, v1, :cond_108

    .line 314
    move/from16 v12, p4

    goto :goto_114

    .line 315
    :cond_108
    const/high16 v1, -0x80000000

    if-ne v8, v1, :cond_111

    .line 316
    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v12

    goto :goto_114

    .line 317
    :cond_111
    if-nez v8, :cond_114

    .line 318
    move v12, v10

    .line 321
    :cond_114
    :goto_114
    invoke-virtual {v0, v11, v12}, Landroidx/constraintlayout/solver/widgets/Flow;->setMeasure(II)V

    .line 322
    invoke-virtual {v0, v11}, Landroidx/constraintlayout/solver/widgets/Flow;->setWidth(I)V

    .line 323
    invoke-virtual {v0, v12}, Landroidx/constraintlayout/solver/widgets/Flow;->setHeight(I)V

    .line 324
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mWidgetsCount:I

    if-lez v1, :cond_124

    move/from16 v1, v17

    goto :goto_126

    :cond_124
    move/from16 v1, v19

    :goto_126
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/widgets/Flow;->needsCallbackFromSolver(Z)V

    .line 325
    return-void

    :pswitch_data_12a
    .packed-switch 0x0
        :pswitch_da
        :pswitch_d2
        :pswitch_ca
    .end packed-switch
.end method

.method public setFirstHorizontalBias(F)V
    .registers 2
    .param p1, "value"    # F

    .line 146
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalBias:F

    return-void
.end method

.method public setFirstHorizontalStyle(I)V
    .registers 2
    .param p1, "value"    # I

    .line 122
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalStyle:I

    return-void
.end method

.method public setFirstVerticalBias(F)V
    .registers 2
    .param p1, "value"    # F

    .line 148
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalBias:F

    return-void
.end method

.method public setFirstVerticalStyle(I)V
    .registers 2
    .param p1, "value"    # I

    .line 124
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalStyle:I

    return-void
.end method

.method public setHorizontalAlign(I)V
    .registers 2
    .param p1, "value"    # I

    .line 155
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalAlign:I

    .line 156
    return-void
.end method

.method public setHorizontalBias(F)V
    .registers 2
    .param p1, "value"    # F

    .line 139
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalBias:F

    .line 140
    return-void
.end method

.method public setHorizontalGap(I)V
    .registers 2
    .param p1, "value"    # I

    .line 166
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    return-void
.end method

.method public setHorizontalStyle(I)V
    .registers 2
    .param p1, "value"    # I

    .line 131
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    .line 132
    return-void
.end method

.method public setLastHorizontalBias(F)V
    .registers 2
    .param p1, "value"    # F

    .line 150
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalBias:F

    return-void
.end method

.method public setLastHorizontalStyle(I)V
    .registers 2
    .param p1, "value"    # I

    .line 126
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalStyle:I

    return-void
.end method

.method public setLastVerticalBias(F)V
    .registers 2
    .param p1, "value"    # F

    .line 152
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalBias:F

    return-void
.end method

.method public setLastVerticalStyle(I)V
    .registers 2
    .param p1, "value"    # I

    .line 128
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalStyle:I

    return-void
.end method

.method public setMaxElementsWrap(I)V
    .registers 2
    .param p1, "value"    # I

    .line 170
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    return-void
.end method

.method public setOrientation(I)V
    .registers 2
    .param p1, "value"    # I

    .line 119
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    .line 120
    return-void
.end method

.method public setVerticalAlign(I)V
    .registers 2
    .param p1, "value"    # I

    .line 159
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalAlign:I

    .line 160
    return-void
.end method

.method public setVerticalBias(F)V
    .registers 2
    .param p1, "value"    # F

    .line 143
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalBias:F

    .line 144
    return-void
.end method

.method public setVerticalGap(I)V
    .registers 2
    .param p1, "value"    # I

    .line 168
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    return-void
.end method

.method public setVerticalStyle(I)V
    .registers 2
    .param p1, "value"    # I

    .line 135
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    .line 136
    return-void
.end method

.method public setWrapMode(I)V
    .registers 2
    .param p1, "value"    # I

    .line 163
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mWrapMode:I

    .line 164
    return-void
.end method

###### Class androidx.constraintlayout.solver.widgets.Flow.WidgetsList (androidx.constraintlayout.solver.widgets.Flow$WidgetsList)
.class Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
.super Ljava/lang/Object;
.source "Flow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/widgets/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetsList"
.end annotation


# instance fields
.field private biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field biggestDimension:I

.field private mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field private mCount:I

.field private mHeight:I

.field private mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field private mMax:I

.field private mNbMatchConstraintsWidgets:I

.field private mOrientation:I

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I

.field private mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field private mStartIndex:I

.field private mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field private mWidth:I

.field final synthetic this$0:Landroidx/constraintlayout/solver/widgets/Flow;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/Flow;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V
    .registers 10
    .param p2, "orientation"    # I
    .param p3, "left"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .param p4, "top"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .param p5, "right"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .param p6, "bottom"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .param p7, "max"    # I

    .line 353
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mOrientation:I

    .line 333
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 334
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 339
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingLeft:I

    .line 340
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingTop:I

    .line 341
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    .line 342
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingBottom:I

    .line 343
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mWidth:I

    .line 344
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mHeight:I

    .line 345
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 346
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mCount:I

    .line 347
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    .line 348
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mMax:I

    .line 354
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mOrientation:I

    .line 355
    iput-object p3, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 356
    iput-object p4, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 357
    iput-object p5, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 358
    iput-object p6, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 359
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingLeft:I

    .line 360
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingTop()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingTop:I

    .line 361
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingRight()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    .line 362
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingBottom()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingBottom:I

    .line 363
    iput p7, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mMax:I

    .line 364
    return-void
.end method

.method static synthetic access$2000(Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    .line 331
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    return-object v0
.end method

.method private recomputeDimensions()V
    .registers 9

    .line 721
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mWidth:I

    .line 722
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mHeight:I

    .line 723
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 724
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 725
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mCount:I

    .line 726
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_92

    .line 727
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v2, v1

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v3}, Landroidx/constraintlayout/solver/widgets/Flow;->access$400(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v3

    if-lt v2, v3, :cond_1c

    .line 728
    goto/16 :goto_92

    .line 730
    :cond_1c
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v2}, Landroidx/constraintlayout/solver/widgets/Flow;->access$500(Landroidx/constraintlayout/solver/widgets/Flow;)[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v2

    iget v3, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v3, v1

    aget-object v2, v2, v3

    .line 731
    .local v2, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget v3, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mOrientation:I

    const/16 v4, 0x8

    if-nez v3, :cond_5c

    .line 732
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    .line 733
    .local v3, "width":I
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v5}, Landroidx/constraintlayout/solver/widgets/Flow;->access$000(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v5

    .line 734
    .local v5, "gap":I
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v6

    if-ne v6, v4, :cond_3e

    .line 735
    const/4 v5, 0x0

    .line 737
    :cond_3e
    iget v4, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mWidth:I

    add-int v6, v3, v5

    add-int/2addr v4, v6

    iput v4, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mWidth:I

    .line 738
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    iget v6, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mMax:I

    invoke-static {v4, v2, v6}, Landroidx/constraintlayout/solver/widgets/Flow;->access$300(Landroidx/constraintlayout/solver/widgets/Flow;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v4

    .line 739
    .local v4, "height":I
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v6, :cond_55

    iget v6, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    if-ge v6, v4, :cond_5b

    .line 740
    :cond_55
    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 741
    iput v4, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 742
    iput v4, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mHeight:I

    .line 744
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "gap":I
    :cond_5b
    goto :goto_8e

    .line 745
    :cond_5c
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mMax:I

    invoke-static {v3, v2, v5}, Landroidx/constraintlayout/solver/widgets/Flow;->access$200(Landroidx/constraintlayout/solver/widgets/Flow;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v3

    .line 746
    .restart local v3    # "width":I
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    iget v6, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mMax:I

    invoke-static {v5, v2, v6}, Landroidx/constraintlayout/solver/widgets/Flow;->access$300(Landroidx/constraintlayout/solver/widgets/Flow;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v5

    .line 747
    .local v5, "height":I
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v6}, Landroidx/constraintlayout/solver/widgets/Flow;->access$100(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v6

    .line 748
    .local v6, "gap":I
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v7

    if-ne v7, v4, :cond_79

    .line 749
    const/4 v6, 0x0

    .line 751
    :cond_79
    iget v4, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mHeight:I

    add-int v7, v5, v6

    add-int/2addr v4, v7

    iput v4, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mHeight:I

    .line 752
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v4, :cond_88

    iget v4, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    if-ge v4, v3, :cond_8e

    .line 753
    :cond_88
    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 754
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 755
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mWidth:I

    .line 726
    .end local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v3    # "width":I
    .end local v5    # "height":I
    .end local v6    # "gap":I
    :cond_8e
    :goto_8e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_d

    .line 759
    .end local v1    # "i":I
    :cond_92
    :goto_92
    return-void
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .registers 7
    .param p1, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 409
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mOrientation:I

    .line 427
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    .line 409
    const/16 v2, 0x8

    if-nez v0, :cond_48

    .line 410
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mMax:I

    invoke-static {v1, p1, v0}, Landroidx/constraintlayout/solver/widgets/Flow;->access$200(Landroidx/constraintlayout/solver/widgets/Flow;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v0

    .line 411
    .local v0, "width":I
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v3, :cond_1d

    .line 412
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    .line 413
    const/4 v0, 0x0

    .line 415
    :cond_1d
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v1}, Landroidx/constraintlayout/solver/widgets/Flow;->access$000(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v1

    .line 416
    .local v1, "gap":I
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v3

    if-ne v3, v2, :cond_2a

    .line 417
    const/4 v1, 0x0

    .line 419
    :cond_2a
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mWidth:I

    add-int v3, v0, v1

    add-int/2addr v2, v3

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mWidth:I

    .line 420
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    iget v3, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mMax:I

    invoke-static {v2, p1, v3}, Landroidx/constraintlayout/solver/widgets/Flow;->access$300(Landroidx/constraintlayout/solver/widgets/Flow;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v2

    .line 421
    .local v2, "height":I
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v3, :cond_41

    iget v3, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    if-ge v3, v2, :cond_47

    .line 422
    :cond_41
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 423
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 424
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mHeight:I

    .line 426
    .end local v0    # "width":I
    .end local v1    # "gap":I
    .end local v2    # "height":I
    :cond_47
    goto :goto_87

    .line 427
    :cond_48
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mMax:I

    invoke-static {v1, p1, v0}, Landroidx/constraintlayout/solver/widgets/Flow;->access$200(Landroidx/constraintlayout/solver/widgets/Flow;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v0

    .line 428
    .restart local v0    # "width":I
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    iget v3, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mMax:I

    invoke-static {v1, p1, v3}, Landroidx/constraintlayout/solver/widgets/Flow;->access$300(Landroidx/constraintlayout/solver/widgets/Flow;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v1

    .line 429
    .local v1, "height":I
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_65

    .line 430
    iget v3, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    .line 431
    const/4 v1, 0x0

    .line 433
    :cond_65
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v3}, Landroidx/constraintlayout/solver/widgets/Flow;->access$100(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v3

    .line 434
    .local v3, "gap":I
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v4

    if-ne v4, v2, :cond_72

    .line 435
    const/4 v3, 0x0

    .line 437
    :cond_72
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mHeight:I

    add-int v4, v1, v3

    add-int/2addr v2, v4

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mHeight:I

    .line 438
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v2, :cond_81

    iget v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    if-ge v2, v0, :cond_87

    .line 439
    :cond_81
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 440
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 441
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mWidth:I

    .line 444
    .end local v0    # "width":I
    .end local v1    # "height":I
    .end local v3    # "gap":I
    :cond_87
    :goto_87
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mCount:I

    .line 445
    return-void
.end method

.method public clear()V
    .registers 3

    .line 383
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 384
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 385
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mWidth:I

    .line 386
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mHeight:I

    .line 387
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 388
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mCount:I

    .line 389
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    .line 390
    return-void
.end method

.method public createConstraints(ZIZ)V
    .registers 20
    .param p1, "isInRtl"    # Z
    .param p2, "chainIndex"    # I
    .param p3, "isLastChain"    # Z

    .line 448
    move-object/from16 v0, p0

    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mCount:I

    .line 449
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v1, :cond_26

    .line 450
    iget v3, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v3, v2

    iget-object v4, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v4}, Landroidx/constraintlayout/solver/widgets/Flow;->access$400(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v4

    if-lt v3, v4, :cond_13

    .line 451
    goto :goto_26

    .line 453
    :cond_13
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v3}, Landroidx/constraintlayout/solver/widgets/Flow;->access$500(Landroidx/constraintlayout/solver/widgets/Flow;)[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v3

    iget v4, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v4, v2

    aget-object v3, v3, v4

    .line 454
    .local v3, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v3, :cond_23

    .line 455
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resetAnchors()V

    .line 449
    .end local v3    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 458
    .end local v2    # "i":I
    :cond_26
    :goto_26
    if-eqz v1, :cond_362

    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-nez v2, :cond_2e

    goto/16 :goto_362

    .line 462
    :cond_2e
    const/4 v2, 0x0

    if-eqz p3, :cond_35

    if-nez p2, :cond_35

    const/4 v3, 0x1

    goto :goto_36

    :cond_35
    move v3, v2

    .line 463
    .local v3, "singleChain":Z
    :goto_36
    const/4 v4, -0x1

    .line 464
    .local v4, "firstVisible":I
    const/4 v5, -0x1

    .line 465
    .local v5, "lastVisible":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_39
    const/4 v7, -0x1

    if-ge v6, v1, :cond_67

    .line 466
    move v8, v6

    .line 467
    .local v8, "index":I
    if-eqz p1, :cond_43

    .line 468
    add-int/lit8 v9, v1, -0x1

    sub-int v8, v9, v6

    .line 470
    :cond_43
    iget v9, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v9, v8

    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v10}, Landroidx/constraintlayout/solver/widgets/Flow;->access$400(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v10

    if-lt v9, v10, :cond_4f

    .line 471
    goto :goto_67

    .line 473
    :cond_4f
    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v9}, Landroidx/constraintlayout/solver/widgets/Flow;->access$500(Landroidx/constraintlayout/solver/widgets/Flow;)[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v9

    iget v10, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v10, v8

    aget-object v9, v9, v10

    .line 474
    .local v9, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v10

    if-nez v10, :cond_64

    .line 475
    if-ne v4, v7, :cond_63

    .line 476
    move v4, v6

    .line 478
    :cond_63
    move v5, v6

    .line 465
    .end local v8    # "index":I
    .end local v9    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_64
    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    .line 482
    .end local v6    # "i":I
    :cond_67
    :goto_67
    const/4 v6, 0x0

    .line 483
    .local v6, "previous":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget v8, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mOrientation:I

    if-nez v8, :cond_1ef

    .line 484
    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 485
    .local v8, "verticalWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v9}, Landroidx/constraintlayout/solver/widgets/Flow;->access$600(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    .line 486
    iget v9, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingTop:I

    .line 487
    .local v9, "padding":I
    if-lez p2, :cond_82

    .line 488
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v10}, Landroidx/constraintlayout/solver/widgets/Flow;->access$100(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v10

    add-int/2addr v9, v10

    .line 490
    :cond_82
    iget-object v10, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v10, v11, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 491
    if-eqz p3, :cond_94

    .line 492
    iget-object v10, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingBottom:I

    invoke-virtual {v10, v11, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 494
    :cond_94
    if-lez p2, :cond_a1

    .line 495
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 496
    .local v10, "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v11, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v10, v11, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 499
    .end local v10    # "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_a1
    move-object v10, v8

    .line 500
    .local v10, "baselineVerticalWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v11}, Landroidx/constraintlayout/solver/widgets/Flow;->access$700(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_dd

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v11

    if-nez v11, :cond_dd

    .line 501
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_b2
    if-ge v11, v1, :cond_dd

    .line 502
    move v13, v11

    .line 503
    .local v13, "index":I
    if-eqz p1, :cond_bb

    .line 504
    add-int/lit8 v14, v1, -0x1

    sub-int v13, v14, v11

    .line 506
    :cond_bb
    iget v14, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v14, v13

    iget-object v15, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v15}, Landroidx/constraintlayout/solver/widgets/Flow;->access$400(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v15

    if-lt v14, v15, :cond_c7

    .line 507
    goto :goto_dd

    .line 509
    :cond_c7
    iget-object v14, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v14}, Landroidx/constraintlayout/solver/widgets/Flow;->access$500(Landroidx/constraintlayout/solver/widgets/Flow;)[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v14

    iget v15, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v15, v13

    aget-object v14, v14, v15

    .line 510
    .local v14, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v15

    if-eqz v15, :cond_da

    .line 511
    move-object v10, v14

    .line 512
    goto :goto_dd

    .line 501
    .end local v13    # "index":I
    .end local v14    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_da
    add-int/lit8 v11, v11, 0x1

    goto :goto_b2

    .line 517
    .end local v11    # "i":I
    :cond_dd
    :goto_dd
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_de
    if-ge v11, v1, :cond_1ed

    .line 518
    move v13, v11

    .line 519
    .restart local v13    # "index":I
    if-eqz p1, :cond_e7

    .line 520
    add-int/lit8 v14, v1, -0x1

    sub-int v13, v14, v11

    .line 522
    :cond_e7
    iget v14, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v14, v13

    iget-object v15, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v15}, Landroidx/constraintlayout/solver/widgets/Flow;->access$400(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v15

    if-lt v14, v15, :cond_f4

    .line 523
    goto/16 :goto_1ed

    .line 525
    :cond_f4
    iget-object v14, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v14}, Landroidx/constraintlayout/solver/widgets/Flow;->access$500(Landroidx/constraintlayout/solver/widgets/Flow;)[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v14

    iget v15, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v15, v13

    aget-object v14, v14, v15

    .line 526
    .restart local v14    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-nez v11, :cond_10a

    .line 527
    iget-object v15, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v2, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingLeft:I

    invoke-virtual {v14, v15, v12, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 532
    :cond_10a
    if-nez v13, :cond_14d

    .line 533
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v2}, Landroidx/constraintlayout/solver/widgets/Flow;->access$800(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v2

    .line 534
    .local v2, "style":I
    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v12}, Landroidx/constraintlayout/solver/widgets/Flow;->access$900(Landroidx/constraintlayout/solver/widgets/Flow;)F

    move-result v12

    .line 535
    .local v12, "bias":F
    iget v15, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    if-nez v15, :cond_131

    iget-object v15, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v15}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1000(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v15

    if-eq v15, v7, :cond_131

    .line 536
    iget-object v15, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v15}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1000(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v2

    .line 537
    iget-object v15, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v15}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1100(Landroidx/constraintlayout/solver/widgets/Flow;)F

    move-result v12

    goto :goto_147

    .line 538
    :cond_131
    if-eqz p3, :cond_147

    iget-object v15, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v15}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1200(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v15

    if-eq v15, v7, :cond_147

    .line 539
    iget-object v15, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v15}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1200(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v2

    .line 540
    iget-object v15, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v15}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1300(Landroidx/constraintlayout/solver/widgets/Flow;)F

    move-result v12

    .line 542
    :cond_147
    :goto_147
    invoke-virtual {v14, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    .line 543
    invoke-virtual {v14, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    .line 545
    .end local v2    # "style":I
    .end local v12    # "bias":F
    :cond_14d
    add-int/lit8 v2, v1, -0x1

    if-ne v11, v2, :cond_15a

    .line 546
    iget-object v2, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v15, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    invoke-virtual {v14, v2, v12, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 548
    :cond_15a
    if-eqz v6, :cond_185

    .line 549
    iget-object v2, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v15, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v15}, Landroidx/constraintlayout/solver/widgets/Flow;->access$000(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v15

    invoke-virtual {v2, v12, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 550
    if-ne v11, v4, :cond_172

    .line 551
    iget-object v2, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingLeft:I

    invoke-virtual {v2, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->setGoneMargin(I)V

    .line 553
    :cond_172
    iget-object v2, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v15, 0x0

    invoke-virtual {v2, v12, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 554
    add-int/lit8 v2, v5, 0x1

    if-ne v11, v2, :cond_185

    .line 555
    iget-object v2, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    invoke-virtual {v2, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->setGoneMargin(I)V

    .line 558
    :cond_185
    if-eq v14, v8, :cond_1e6

    .line 559
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v2}, Landroidx/constraintlayout/solver/widgets/Flow;->access$700(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v2

    const/4 v12, 0x3

    if-ne v2, v12, :cond_1a7

    .line 560
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v2

    if-eqz v2, :cond_1a7

    if-eq v14, v10, :cond_1a7

    .line 562
    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v2

    if-eqz v2, :cond_1a7

    .line 563
    iget-object v2, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v15, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v12, 0x0

    invoke-virtual {v2, v15, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_1e6

    .line 565
    :cond_1a7
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v2}, Landroidx/constraintlayout/solver/widgets/Flow;->access$700(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v2

    packed-switch v2, :pswitch_data_364

    .line 576
    if-eqz v3, :cond_1d7

    .line 577
    iget-object v2, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v15, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingTop:I

    invoke-virtual {v2, v12, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 578
    iget-object v2, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v15, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingBottom:I

    invoke-virtual {v2, v12, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_1e6

    .line 571
    :pswitch_1c5
    iget-object v2, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v15, 0x0

    invoke-virtual {v2, v12, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 573
    goto :goto_1e6

    .line 567
    :pswitch_1ce
    const/4 v15, 0x0

    iget-object v2, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2, v12, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 569
    goto :goto_1e6

    .line 580
    :cond_1d7
    iget-object v2, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v15, 0x0

    invoke-virtual {v2, v12, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 581
    iget-object v2, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2, v12, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 587
    :cond_1e6
    :goto_1e6
    move-object v6, v14

    .line 517
    .end local v13    # "index":I
    .end local v14    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    add-int/lit8 v11, v11, 0x1

    const/4 v2, 0x0

    const/4 v12, 0x3

    goto/16 :goto_de

    .line 589
    .end local v8    # "verticalWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v9    # "padding":I
    .end local v10    # "baselineVerticalWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v11    # "i":I
    :cond_1ed
    :goto_1ed
    goto/16 :goto_361

    .line 590
    :cond_1ef
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 591
    .local v2, "horizontalWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v8}, Landroidx/constraintlayout/solver/widgets/Flow;->access$800(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v8

    invoke-virtual {v2, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    .line 592
    iget v8, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingLeft:I

    .line 593
    .local v8, "padding":I
    if-lez p2, :cond_205

    .line 594
    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v9}, Landroidx/constraintlayout/solver/widgets/Flow;->access$000(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v9

    add-int/2addr v8, v9

    .line 596
    :cond_205
    if-eqz p1, :cond_228

    .line 597
    iget-object v9, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v10, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 598
    if-eqz p3, :cond_219

    .line 599
    iget-object v9, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v11, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    invoke-virtual {v9, v10, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 601
    :cond_219
    if-lez p2, :cond_248

    .line 602
    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 603
    .local v9, "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v10, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v15, 0x0

    invoke-virtual {v9, v10, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 604
    .end local v9    # "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    goto :goto_248

    .line 606
    :cond_228
    iget-object v9, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v10, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 607
    if-eqz p3, :cond_23a

    .line 608
    iget-object v9, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v11, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    invoke-virtual {v9, v10, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 610
    :cond_23a
    if-lez p2, :cond_248

    .line 611
    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 612
    .local v9, "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v10, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v15, 0x0

    invoke-virtual {v9, v10, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 615
    .end local v9    # "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_248
    :goto_248
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_249
    if-ge v9, v1, :cond_361

    .line 616
    iget v10, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v10, v9

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v11}, Landroidx/constraintlayout/solver/widgets/Flow;->access$400(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v11

    if-lt v10, v11, :cond_258

    .line 617
    goto/16 :goto_361

    .line 619
    :cond_258
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v10}, Landroidx/constraintlayout/solver/widgets/Flow;->access$500(Landroidx/constraintlayout/solver/widgets/Flow;)[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v10

    iget v11, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v11, v9

    aget-object v10, v10, v11

    .line 620
    .local v10, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-nez v9, :cond_2af

    .line 621
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v13, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingTop:I

    invoke-virtual {v10, v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 622
    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v11}, Landroidx/constraintlayout/solver/widgets/Flow;->access$600(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v11

    .line 623
    .local v11, "style":I
    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v12}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1400(Landroidx/constraintlayout/solver/widgets/Flow;)F

    move-result v12

    .line 624
    .restart local v12    # "bias":F
    iget v13, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    if-nez v13, :cond_293

    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v13}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1500(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v13

    if-eq v13, v7, :cond_293

    .line 625
    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v13}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1500(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v11

    .line 626
    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v13}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1600(Landroidx/constraintlayout/solver/widgets/Flow;)F

    move-result v12

    goto :goto_2a9

    .line 627
    :cond_293
    if-eqz p3, :cond_2a9

    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v13}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1700(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v13

    if-eq v13, v7, :cond_2a9

    .line 628
    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v13}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1700(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v11

    .line 629
    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v13}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1800(Landroidx/constraintlayout/solver/widgets/Flow;)F

    move-result v12

    .line 631
    :cond_2a9
    :goto_2a9
    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    .line 632
    invoke-virtual {v10, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    .line 634
    .end local v11    # "style":I
    .end local v12    # "bias":F
    :cond_2af
    add-int/lit8 v11, v1, -0x1

    if-ne v9, v11, :cond_2bc

    .line 635
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v13, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingBottom:I

    invoke-virtual {v10, v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 637
    :cond_2bc
    if-eqz v6, :cond_2e7

    .line 638
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v13}, Landroidx/constraintlayout/solver/widgets/Flow;->access$100(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 639
    if-ne v9, v4, :cond_2d4

    .line 640
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingTop:I

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->setGoneMargin(I)V

    .line 642
    :cond_2d4
    iget-object v11, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 643
    add-int/lit8 v11, v5, 0x1

    if-ne v9, v11, :cond_2e7

    .line 644
    iget-object v11, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingBottom:I

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->setGoneMargin(I)V

    .line 647
    :cond_2e7
    if-eq v10, v2, :cond_35b

    .line 648
    nop

    .line 665
    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    .line 648
    if-eqz p1, :cond_31a

    .line 649
    invoke-static {v11}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1900(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v11

    packed-switch v11, :pswitch_data_36c

    goto :goto_318

    .line 655
    :pswitch_2f6
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 656
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v11, v12, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 658
    goto :goto_318

    .line 660
    :pswitch_306
    const/4 v15, 0x0

    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v11, v12, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_318

    .line 651
    :pswitch_30f
    const/4 v15, 0x0

    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v11, v12, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 653
    nop

    .line 662
    :goto_318
    const/4 v15, 0x0

    goto :goto_35c

    .line 665
    :cond_31a
    invoke-static {v11}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1900(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v11

    packed-switch v11, :pswitch_data_376

    const/4 v15, 0x0

    goto :goto_35c

    .line 671
    :pswitch_323
    if-eqz v3, :cond_339

    .line 672
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v13, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingLeft:I

    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 673
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v13, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    const/4 v15, 0x0

    goto :goto_35c

    .line 675
    :cond_339
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 676
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v11, v12, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 679
    goto :goto_35c

    .line 681
    :pswitch_349
    const/4 v15, 0x0

    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v11, v12, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_35c

    .line 667
    :pswitch_352
    const/4 v15, 0x0

    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v11, v12, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 669
    goto :goto_35c

    .line 647
    :cond_35b
    const/4 v15, 0x0

    .line 687
    :goto_35c
    move-object v6, v10

    .line 615
    .end local v10    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_249

    .line 690
    .end local v2    # "horizontalWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v8    # "padding":I
    .end local v9    # "i":I
    :cond_361
    :goto_361
    return-void

    .line 459
    .end local v3    # "singleChain":Z
    .end local v4    # "firstVisible":I
    .end local v5    # "lastVisible":I
    .end local v6    # "previous":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_362
    :goto_362
    return-void

    nop

    :pswitch_data_364
    .packed-switch 0x0
        :pswitch_1ce
        :pswitch_1c5
    .end packed-switch

    :pswitch_data_36c
    .packed-switch 0x0
        :pswitch_30f
        :pswitch_306
        :pswitch_2f6
    .end packed-switch

    :pswitch_data_376
    .packed-switch 0x0
        :pswitch_352
        :pswitch_349
        :pswitch_323
    .end packed-switch
.end method

.method public getHeight()I
    .registers 4

    .line 402
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mOrientation:I

    .line 405
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mHeight:I

    .line 402
    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    .line 403
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v0}, Landroidx/constraintlayout/solver/widgets/Flow;->access$100(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v0

    sub-int/2addr v1, v0

    return v1

    .line 405
    :cond_f
    return v1
.end method

.method public getWidth()I
    .registers 3

    .line 395
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mOrientation:I

    .line 398
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mWidth:I

    .line 395
    if-nez v0, :cond_e

    .line 396
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v0}, Landroidx/constraintlayout/solver/widgets/Flow;->access$000(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v0

    sub-int/2addr v1, v0

    return v1

    .line 398
    :cond_e
    return v1
.end method

.method public measureMatchConstraints(I)V
    .registers 10
    .param p1, "availableSpace"    # I

    .line 693
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    if-nez v0, :cond_5

    .line 694
    return-void

    .line 696
    :cond_5
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mCount:I

    .line 697
    .local v0, "count":I
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    div-int v5, p1, v1

    .line 698
    .local v5, "widgetSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_69

    .line 699
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v2, v1

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v3}, Landroidx/constraintlayout/solver/widgets/Flow;->access$400(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v3

    if-lt v2, v3, :cond_1a

    .line 700
    goto :goto_69

    .line 702
    :cond_1a
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v2}, Landroidx/constraintlayout/solver/widgets/Flow;->access$500(Landroidx/constraintlayout/solver/widgets/Flow;)[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v2

    iget v3, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v3, v1

    aget-object v3, v2, v3

    .line 703
    .local v3, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mOrientation:I

    if-nez v2, :cond_47

    .line 704
    if-eqz v3, :cond_66

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v4, :cond_66

    .line 705
    iget v2, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v2, :cond_66

    .line 706
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/solver/widgets/Flow;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    goto :goto_66

    .line 710
    :cond_47
    if-eqz v3, :cond_66

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v4, :cond_66

    .line 711
    iget v2, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v2, :cond_66

    .line 712
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    move v7, v5

    .end local v5    # "widgetSize":I
    .local v7, "widgetSize":I
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/solver/widgets/Flow;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    move v5, v7

    .line 698
    .end local v3    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v7    # "widgetSize":I
    .restart local v5    # "widgetSize":I
    :cond_66
    :goto_66
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 717
    .end local v1    # "i":I
    :cond_69
    :goto_69
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->recomputeDimensions()V

    .line 718
    return-void
.end method

.method public setStartIndex(I)V
    .registers 2
    .param p1, "value"    # I

    .line 392
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    return-void
.end method

.method public setup(ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIII)V
    .registers 11
    .param p1, "orientation"    # I
    .param p2, "left"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .param p3, "top"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .param p4, "right"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .param p5, "bottom"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .param p6, "paddingLeft"    # I
    .param p7, "paddingTop"    # I
    .param p8, "paddingRight"    # I
    .param p9, "paddingBottom"    # I
    .param p10, "max"    # I

    .line 370
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mOrientation:I

    .line 371
    iput-object p2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 372
    iput-object p3, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 373
    iput-object p4, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 374
    iput-object p5, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 375
    iput p6, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingLeft:I

    .line 376
    iput p7, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingTop:I

    .line 377
    iput p8, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    .line 378
    iput p9, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingBottom:I

    .line 379
    iput p10, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mMax:I

    .line 380
    return-void
.end method
