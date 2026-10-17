###### Class androidx.constraintlayout.motion.utils.Easing (androidx.constraintlayout.motion.utils.Easing)
.class public Landroidx/constraintlayout/motion/utils/Easing;
.super Ljava/lang/Object;
.source "Easing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;
    }
.end annotation


# static fields
.field private static final ACCELERATE:Ljava/lang/String; = "cubic(0.4, 0.05, 0.8, 0.7)"

.field private static final ACCELERATE_NAME:Ljava/lang/String; = "accelerate"

.field private static final DECELERATE:Ljava/lang/String; = "cubic(0.0, 0.0, 0.2, 0.95)"

.field private static final DECELERATE_NAME:Ljava/lang/String; = "decelerate"

.field private static final LINEAR:Ljava/lang/String; = "cubic(1, 1, 0, 0)"

.field private static final LINEAR_NAME:Ljava/lang/String; = "linear"

.field public static NAMED_EASING:[Ljava/lang/String; = null

.field private static final STANDARD:Ljava/lang/String; = "cubic(0.4, 0.0, 0.2, 1)"

.field private static final STANDARD_NAME:Ljava/lang/String; = "standard"

.field static sDefault:Landroidx/constraintlayout/motion/utils/Easing;


# instance fields
.field str:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 29
    new-instance v0, Landroidx/constraintlayout/motion/utils/Easing;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/Easing;-><init>()V

    sput-object v0, Landroidx/constraintlayout/motion/utils/Easing;->sDefault:Landroidx/constraintlayout/motion/utils/Easing;

    .line 40
    const-string v0, "decelerate"

    const-string v1, "linear"

    const-string v2, "standard"

    const-string v3, "accelerate"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/utils/Easing;->NAMED_EASING:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "identity"

    iput-object v0, p0, Landroidx/constraintlayout/motion/utils/Easing;->str:Ljava/lang/String;

    return-void
.end method

.method public static getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/motion/utils/Easing;
    .registers 3
    .param p0, "configString"    # Ljava/lang/String;

    .line 43
    if-nez p0, :cond_4

    .line 44
    const/4 v0, 0x0

    return-object v0

    .line 46
    :cond_4
    const-string v0, "cubic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 47
    new-instance v0, Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 49
    :cond_12
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_88

    :cond_19
    goto :goto_42

    :sswitch_1a
    const-string v0, "standard"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    goto :goto_43

    :sswitch_24
    const-string v0, "linear"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x3

    goto :goto_43

    :sswitch_2e
    const-string v0, "decelerate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x2

    goto :goto_43

    :sswitch_38
    const-string v0, "accelerate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_43

    :goto_42
    const/4 v0, -0x1

    :goto_43
    packed-switch v0, :pswitch_data_9a

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "transitionEasing syntax error syntax:transitionEasing=\"cubic(1.0,0.5,0.0,0.6)\" or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/motion/utils/Easing;->NAMED_EASING:[Ljava/lang/String;

    .line 61
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    const-string v1, "ConstraintSet"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    sget-object v0, Landroidx/constraintlayout/motion/utils/Easing;->sDefault:Landroidx/constraintlayout/motion/utils/Easing;

    return-object v0

    .line 57
    :pswitch_68
    new-instance v0, Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;

    const-string v1, "cubic(1, 1, 0, 0)"

    invoke-direct {v0, v1}, Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 55
    :pswitch_70
    new-instance v0, Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;

    const-string v1, "cubic(0.0, 0.0, 0.2, 0.95)"

    invoke-direct {v0, v1}, Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 53
    :pswitch_78
    new-instance v0, Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;

    const-string v1, "cubic(0.4, 0.05, 0.8, 0.7)"

    invoke-direct {v0, v1}, Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 51
    :pswitch_80
    new-instance v0, Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;

    const-string v1, "cubic(0.4, 0.0, 0.2, 1)"

    invoke-direct {v0, v1}, Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;-><init>(Ljava/lang/String;)V

    return-object v0

    :sswitch_data_88
    .sparse-switch
        -0x50bb8523 -> :sswitch_38
        -0x4b5653c4 -> :sswitch_2e
        -0x41b970db -> :sswitch_24
        0x4e3d1ebd -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_80
        :pswitch_78
        :pswitch_70
        :pswitch_68
    .end packed-switch
.end method


# virtual methods
.method public get(D)D
    .registers 3
    .param p1, "x"    # D

    .line 69
    return-wide p1
.end method

.method public getDiff(D)D
    .registers 5
    .param p1, "x"    # D

    .line 77
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/Easing;->str:Ljava/lang/String;

    return-object v0
.end method

###### Class androidx.constraintlayout.motion.utils.Easing.CubicEasing (androidx.constraintlayout.motion.utils.Easing$CubicEasing)
.class Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;
.super Landroidx/constraintlayout/motion/utils/Easing;
.source "Easing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/utils/Easing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CubicEasing"
.end annotation


# static fields
.field private static d_error:D

.field private static error:D


# instance fields
.field x1:D

.field x2:D

.field y1:D

.field y2:D


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 82
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    sput-wide v0, Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;->error:D

    .line 83
    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    sput-wide v0, Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;->d_error:D

    return-void
.end method

.method public constructor <init>(DDDD)V
    .registers 9
    .param p1, "x1"    # D
    .param p3, "y1"    # D
    .param p5, "x2"    # D
    .param p7, "y2"    # D

    .line 100
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/Easing;-><init>()V

    .line 101
    invoke-virtual/range {p0 .. p8}, Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;->setup(DDDD)V

    .line 102
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 9
    .param p1, "configString"    # Ljava/lang/String;

    .line 86
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/Easing;-><init>()V

    .line 88
    iput-object p1, p0, Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;->str:Ljava/lang/String;

    .line 89
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 90
    .local v0, "start":I
    const/16 v1, 0x2c

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 91
    .local v2, "off1":I
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, p0, Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;->x1:D

    .line 92
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 93
    .local v3, "off2":I
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, p0, Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;->y1:D

    .line 94
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 95
    .local v1, "off3":I
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, p0, Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;->x2:D

    .line 96
    add-int/lit8 v4, v1, 0x1

    const/16 v5, 0x29

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 97
    .local v4, "end":I
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, p0, Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;->y2:D

    .line 98
    return-void
.end method

.method private getDiffX(D)D
    .registers 17
    .param p1, "t"    # D

    .line 130
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double v2, v0, p1

    .line 131
    .local v2, "t1":D
    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    mul-double v6, v2, v4

    mul-double/2addr v6, v2

    iget-wide v8, p0, Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;->x1:D

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    mul-double/2addr v8, v2

    mul-double/2addr v8, p1

    iget-wide v10, p0, Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;->x2:D

    iget-wide v12, p0, Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;->x1:D

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    mul-double/2addr v4, p1

    mul-double/2addr v4, p1

    iget-wide v8, p0, Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;->x2:D

    sub-double/2addr v0, v8

    mul-double/2addr v4, v0

    add-double/2addr v6, v4

    return-wide v6
.end method

.method private getDiffY(D)D
    .registers 17
    .param p1, "t"    # D

    .line 135
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double v2, v0, p1

    .line 136
    .local v2, "t1":D
    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    mul-double v6, v2, v4

    mul-double/2addr v6, v2

    iget-wide v8, p0, Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;->y1:D

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    mul-double/2addr v8, v2

    mul-double/2addr v8, p1

    iget-wide v10, p0, Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;->y2:D

    iget-wide v12, p0, Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;->y1:D

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    mul-double/2addr v4, p1

    mul-double/2addr v4, p1

    iget-wide v8, p0, Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;->y2:D

    sub-double/2addr v0, v8

    mul-double/2addr v4, v0

    add-double/2addr v6, v4

    return-wide v6
.end method

.method private getX(D)D
    .registers 15
    .param p1, "t"    # D

    .line 112
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p1

    .line 114
    .local v0, "t1":D
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double v4, v0, v2

    mul-double/2addr v4, v0

    mul-double/2addr v4, p1

    .line 115
    .local v4, "f1":D
    mul-double/2addr v2, v0

    mul-double/2addr v2, p1

    mul-double/2addr v2, p1

    .line 116
    .local v2, "f2":D
    mul-double v6, p1, p1

    mul-double/2addr v6, p1

    .line 117
    .local v6, "f3":D
    iget-wide v8, p0, Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;->x1:D

    mul-double/2addr v8, v4

    iget-wide v10, p0, Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;->x2:D

    mul-double/2addr v10, v2

    add-double/2addr v8, v10

    add-double/2addr v8, v6

    return-wide v8
.end method

.method private getY(D)D
    .registers 15
    .param p1, "t"    # D

    .line 121
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p1

    .line 123
    .local v0, "t1":D
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double v4, v0, v2

    mul-double/2addr v4, v0

    mul-double/2addr v4, p1

    .line 124
    .local v4, "f1":D
    mul-double/2addr v2, v0

    mul-double/2addr v2, p1

    mul-double/2addr v2, p1

    .line 125
    .local v2, "f2":D
    mul-double v6, p1, p1

    mul-double/2addr v6, p1

    .line 126
    .local v6, "f3":D
    iget-wide v8, p0, Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;->y1:D

    mul-double/2addr v8, v4

    iget-wide v10, p0, Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;->y2:D

    mul-double/2addr v10, v2

    add-double/2addr v8, v10

    add-double/2addr v8, v6

    return-wide v8
.end method


# virtual methods
.method public get(D)D
    .registers 20
    .param p1, "x"    # D

    .line 169
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    cmpg-double v3, p1, v1

    if-gtz v3, :cond_9

    .line 170
    return-wide v1

    .line 172
    :cond_9
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, p1, v1

    if-ltz v3, :cond_10

    .line 173
    return-wide v1

    .line 175
    :cond_10
    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    .line 176
    .local v1, "t":D
    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    .line 177
    .local v3, "range":D
    :goto_14
    sget-wide v5, Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;->error:D

    cmpl-double v5, v3, v5

    if-lez v5, :cond_29

    .line 178
    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;->getX(D)D

    move-result-wide v5

    .line 179
    .local v5, "tx":D
    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v3, v7

    .line 180
    cmpg-double v7, v5, p1

    if-gez v7, :cond_27

    .line 181
    add-double/2addr v1, v3

    goto :goto_28

    .line 183
    :cond_27
    sub-double/2addr v1, v3

    .line 185
    .end local v5    # "tx":D
    :goto_28
    goto :goto_14

    .line 187
    :cond_29
    sub-double v5, v1, v3

    invoke-direct {v0, v5, v6}, Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;->getX(D)D

    move-result-wide v5

    .line 188
    .local v5, "x1":D
    add-double v7, v1, v3

    invoke-direct {v0, v7, v8}, Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;->getX(D)D

    move-result-wide v7

    .line 189
    .local v7, "x2":D
    sub-double v9, v1, v3

    invoke-direct {v0, v9, v10}, Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;->getY(D)D

    move-result-wide v9

    .line 190
    .local v9, "y1":D
    add-double v11, v1, v3

    invoke-direct {v0, v11, v12}, Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;->getY(D)D

    move-result-wide v11

    .line 192
    .local v11, "y2":D
    sub-double v13, v11, v9

    sub-double v15, p1, v5

    mul-double/2addr v13, v15

    sub-double v15, v7, v5

    div-double/2addr v13, v15

    add-double/2addr v13, v9

    return-wide v13
.end method

.method public getDiff(D)D
    .registers 20
    .param p1, "x"    # D

    .line 144
    move-object/from16 v0, p0

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    .line 145
    .local v1, "t":D
    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    .line 146
    .local v3, "range":D
    :goto_6
    sget-wide v5, Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;->d_error:D

    cmpl-double v5, v3, v5

    if-lez v5, :cond_1b

    .line 147
    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;->getX(D)D

    move-result-wide v5

    .line 148
    .local v5, "tx":D
    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v3, v7

    .line 149
    cmpg-double v7, v5, p1

    if-gez v7, :cond_19

    .line 150
    add-double/2addr v1, v3

    goto :goto_1a

    .line 152
    :cond_19
    sub-double/2addr v1, v3

    .line 154
    .end local v5    # "tx":D
    :goto_1a
    goto :goto_6

    .line 156
    :cond_1b
    sub-double v5, v1, v3

    invoke-direct {v0, v5, v6}, Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;->getX(D)D

    move-result-wide v5

    .line 157
    .local v5, "x1":D
    add-double v7, v1, v3

    invoke-direct {v0, v7, v8}, Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;->getX(D)D

    move-result-wide v7

    .line 158
    .local v7, "x2":D
    sub-double v9, v1, v3

    invoke-direct {v0, v9, v10}, Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;->getY(D)D

    move-result-wide v9

    .line 159
    .local v9, "y1":D
    add-double v11, v1, v3

    invoke-direct {v0, v11, v12}, Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;->getY(D)D

    move-result-wide v11

    .line 161
    .local v11, "y2":D
    sub-double v13, v11, v9

    sub-double v15, v7, v5

    div-double/2addr v13, v15

    return-wide v13
.end method

.method setup(DDDD)V
    .registers 9
    .param p1, "x1"    # D
    .param p3, "y1"    # D
    .param p5, "x2"    # D
    .param p7, "y2"    # D

    .line 105
    iput-wide p1, p0, Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;->x1:D

    .line 106
    iput-wide p3, p0, Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;->y1:D

    .line 107
    iput-wide p5, p0, Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;->x2:D

    .line 108
    iput-wide p7, p0, Landroidx/constraintlayout/motion/utils/Easing$CubicEasing;->y2:D

    .line 109
    return-void
.end method
