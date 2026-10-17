###### Class androidx.constraintlayout.widget.StateSet (androidx.constraintlayout.widget.StateSet)
.class public Landroidx/constraintlayout/widget/StateSet;
.super Ljava/lang/Object;
.source "StateSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/StateSet$Variant;,
        Landroidx/constraintlayout/widget/StateSet$State;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "ConstraintLayoutStates"


# instance fields
.field private mConstraintSetMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/ConstraintSet;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraintsChangedListener:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

.field mCurrentConstraintNumber:I

.field mCurrentStateId:I

.field mDefaultConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field mDefaultState:I

.field private mStateList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/StateSet$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/widget/StateSet;->mDefaultState:I

    .line 44
    iput v0, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentStateId:I

    .line 45
    iput v0, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentConstraintNumber:I

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    .line 47
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/StateSet;->mConstraintSetMap:Landroid/util/SparseArray;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/StateSet;->mConstraintsChangedListener:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

    .line 56
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/StateSet;->load(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 57
    return-void
.end method

.method private load(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 70
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 71
    .local v0, "attrs":Landroid/util/AttributeSet;
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->StateSet:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 72
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 74
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v2, :cond_24

    .line 75
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 76
    .local v4, "attr":I
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->StateSet_defaultState:I

    if-ne v4, v5, :cond_21

    .line 77
    iget v5, p0, Landroidx/constraintlayout/widget/StateSet;->mDefaultState:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/StateSet;->mDefaultState:I

    .line 74
    .end local v4    # "attr":I
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 81
    .end local v3    # "i":I
    :cond_24
    const/4 v3, 0x0

    .line 84
    .local v3, "tagName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 85
    .local v4, "document":Ljava/lang/String;
    const/4 v5, 0x0

    .line 86
    .local v5, "state":Landroidx/constraintlayout/widget/StateSet$State;
    :try_start_27
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6
    :try_end_2b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_27 .. :try_end_2b} :catch_c1
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2b} :catch_bc

    .line 87
    .local v6, "eventType":I
    :goto_2b
    const/4 v7, 0x1

    if-eq v6, v7, :cond_bb

    .line 90
    const-string v8, "StateSet"

    packed-switch v6, :pswitch_data_c8

    :pswitch_33
    goto/16 :goto_b4

    .line 118
    :pswitch_35
    :try_start_35
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 122
    return-void

    .line 125
    :cond_40
    const/4 v3, 0x0

    .line 126
    goto/16 :goto_b4

    .line 95
    :pswitch_43
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    .line 96
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_d4

    :cond_4f
    goto :goto_75

    :sswitch_50
    const-string v7, "Variant"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4f

    const/4 v7, 0x3

    goto :goto_76

    :sswitch_5a
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4f

    goto :goto_76

    :sswitch_61
    const-string v7, "LayoutDescription"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4f

    const/4 v7, 0x0

    goto :goto_76

    :sswitch_6b
    const-string v7, "State"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4f

    const/4 v7, 0x2

    goto :goto_76

    :goto_75
    const/4 v7, -0x1

    :goto_76
    packed-switch v7, :pswitch_data_e6

    .line 113
    const-string v7, "ConstraintLayoutStates"

    goto :goto_97

    .line 106
    :pswitch_7c
    new-instance v7, Landroidx/constraintlayout/widget/StateSet$Variant;

    invoke-direct {v7, p1, p2}, Landroidx/constraintlayout/widget/StateSet$Variant;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 107
    .local v7, "match":Landroidx/constraintlayout/widget/StateSet$Variant;
    if-eqz v5, :cond_ae

    .line 108
    invoke-virtual {v5, v7}, Landroidx/constraintlayout/widget/StateSet$State;->add(Landroidx/constraintlayout/widget/StateSet$Variant;)V

    goto :goto_ae

    .line 102
    .end local v7    # "match":Landroidx/constraintlayout/widget/StateSet$Variant;
    :pswitch_87
    new-instance v7, Landroidx/constraintlayout/widget/StateSet$State;

    invoke-direct {v7, p1, p2}, Landroidx/constraintlayout/widget/StateSet$State;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    move-object v5, v7

    .line 103
    iget-object v7, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    iget v8, v5, Landroidx/constraintlayout/widget/StateSet$State;->mId:I

    invoke-virtual {v7, v8, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    goto :goto_ae

    .line 100
    :pswitch_95
    goto :goto_ae

    .line 98
    :pswitch_96
    goto :goto_ae

    .line 113
    :goto_97
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unknown tag "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_ae
    :goto_ae
    goto :goto_b4

    .line 92
    :pswitch_af
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 93
    .end local v4    # "document":Ljava/lang/String;
    .local v7, "document":Ljava/lang/String;
    move-object v4, v7

    .line 88
    .end local v7    # "document":Ljava/lang/String;
    .restart local v4    # "document":Ljava/lang/String;
    :goto_b4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7
    :try_end_b8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_35 .. :try_end_b8} :catch_c1
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_b8} :catch_bc

    move v6, v7

    goto/16 :goto_2b

    .line 87
    .end local v4    # "document":Ljava/lang/String;
    .end local v5    # "state":Landroidx/constraintlayout/widget/StateSet$State;
    .end local v6    # "eventType":I
    :cond_bb
    goto :goto_c5

    .line 134
    :catch_bc
    move-exception v4

    .line 135
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c6

    .line 132
    .end local v4    # "e":Ljava/io/IOException;
    :catch_c1
    move-exception v4

    .line 133
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 136
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_c5
    nop

    .line 137
    :goto_c6
    return-void

    nop

    :pswitch_data_c8
    .packed-switch 0x0
        :pswitch_af
        :pswitch_33
        :pswitch_43
        :pswitch_35
    .end packed-switch

    :sswitch_data_d4
    .sparse-switch
        0x4c7d471 -> :sswitch_6b
        0x4d92b252 -> :sswitch_61
        0x526c4e31 -> :sswitch_5a
        0x7155a865 -> :sswitch_50
    .end sparse-switch

    :pswitch_data_e6
    .packed-switch 0x0
        :pswitch_96
        :pswitch_95
        :pswitch_87
        :pswitch_7c
    .end packed-switch
.end method


# virtual methods
.method public convertToConstraintSet(IIFF)I
    .registers 10
    .param p1, "currentConstrainSettId"    # I
    .param p2, "stateId"    # I
    .param p3, "width"    # F
    .param p4, "height"    # F

    .line 176
    iget-object v0, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/StateSet$State;

    .line 177
    .local v0, "state":Landroidx/constraintlayout/widget/StateSet$State;
    if-nez v0, :cond_b

    .line 178
    return p2

    .line 180
    :cond_b
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v2, p3, v1

    if-eqz v2, :cond_3e

    cmpl-float v1, p4, v1

    if-nez v1, :cond_16

    goto :goto_3e

    .line 191
    :cond_16
    const/4 v1, 0x0

    .line 192
    .local v1, "match":Landroidx/constraintlayout/widget/StateSet$Variant;
    iget-object v2, v0, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/StateSet$Variant;

    .line 193
    .local v3, "mVariant":Landroidx/constraintlayout/widget/StateSet$Variant;
    invoke-virtual {v3, p3, p4}, Landroidx/constraintlayout/widget/StateSet$Variant;->match(FF)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 194
    iget v4, v3, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    if-ne p1, v4, :cond_34

    .line 195
    return p1

    .line 197
    :cond_34
    move-object v1, v3

    .line 199
    .end local v3    # "mVariant":Landroidx/constraintlayout/widget/StateSet$Variant;
    :cond_35
    goto :goto_1d

    .line 200
    :cond_36
    if-eqz v1, :cond_3b

    .line 201
    iget v2, v1, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    return v2

    .line 204
    :cond_3b
    iget v2, v0, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    return v2

    .line 181
    .end local v1    # "match":Landroidx/constraintlayout/widget/StateSet$Variant;
    :cond_3e
    :goto_3e
    iget v1, v0, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    if-ne v1, p1, :cond_43

    .line 182
    return p1

    .line 184
    :cond_43
    iget-object v1, v0, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_49
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/StateSet$Variant;

    .line 185
    .local v2, "mVariant":Landroidx/constraintlayout/widget/StateSet$Variant;
    iget v3, v2, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    if-ne p1, v3, :cond_5a

    .line 186
    return p1

    .line 188
    .end local v2    # "mVariant":Landroidx/constraintlayout/widget/StateSet$Variant;
    :cond_5a
    goto :goto_49

    .line 189
    :cond_5b
    iget v1, v0, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    return v1
.end method

.method public needsToChange(IFF)Z
    .registers 9
    .param p1, "id"    # I
    .param p2, "width"    # F
    .param p3, "height"    # F

    .line 140
    iget v0, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentStateId:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_6

    .line 141
    return v1

    .line 144
    :cond_6
    iget-object v0, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne p1, v2, :cond_11

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_17

    :cond_11
    iget v4, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentStateId:I

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_17
    check-cast v0, Landroidx/constraintlayout/widget/StateSet$State;

    .line 146
    .local v0, "state":Landroidx/constraintlayout/widget/StateSet$State;
    iget v4, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentConstraintNumber:I

    if-eq v4, v2, :cond_2e

    .line 147
    iget-object v2, v0, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    iget v4, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentConstraintNumber:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/StateSet$Variant;

    invoke-virtual {v2, p2, p3}, Landroidx/constraintlayout/widget/StateSet$Variant;->match(FF)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 148
    return v3

    .line 152
    :cond_2e
    iget v2, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentConstraintNumber:I

    invoke-virtual {v0, p2, p3}, Landroidx/constraintlayout/widget/StateSet$State;->findMatch(FF)I

    move-result v4

    if-ne v2, v4, :cond_37

    .line 153
    return v3

    .line 155
    :cond_37
    return v1
.end method

.method public setOnConstraintsChanged(Landroidx/constraintlayout/widget/ConstraintsChangedListener;)V
    .registers 2
    .param p1, "constraintsChangedListener"    # Landroidx/constraintlayout/widget/ConstraintsChangedListener;

    .line 159
    iput-object p1, p0, Landroidx/constraintlayout/widget/StateSet;->mConstraintsChangedListener:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

    .line 160
    return-void
.end method

.method public stateGetConstraintID(III)I
    .registers 7
    .param p1, "id"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 163
    int-to-float v0, p2

    int-to-float v1, p3

    const/4 v2, -0x1

    invoke-virtual {p0, v2, p1, v0, v1}, Landroidx/constraintlayout/widget/StateSet;->updateConstraints(IIFF)I

    move-result v0

    return v0
.end method

.method public updateConstraints(IIFF)I
    .registers 8
    .param p1, "currentid"    # I
    .param p2, "id"    # I
    .param p3, "width"    # F
    .param p4, "height"    # F

    .line 209
    const/4 v0, -0x1

    if-ne p1, p2, :cond_45

    .line 211
    nop

    .line 214
    iget-object v1, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    .line 211
    if-ne p2, v0, :cond_10

    .line 212
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/StateSet$State;

    .local v1, "state":Landroidx/constraintlayout/widget/StateSet$State;
    goto :goto_18

    .line 214
    .end local v1    # "state":Landroidx/constraintlayout/widget/StateSet$State;
    :cond_10
    iget v2, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentStateId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/StateSet$State;

    .line 217
    .restart local v1    # "state":Landroidx/constraintlayout/widget/StateSet$State;
    :goto_18
    if-nez v1, :cond_1b

    .line 218
    return v0

    .line 220
    :cond_1b
    iget v2, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentConstraintNumber:I

    if-eq v2, v0, :cond_2e

    .line 221
    iget-object v2, v1, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/StateSet$Variant;

    invoke-virtual {v2, p3, p4}, Landroidx/constraintlayout/widget/StateSet$Variant;->match(FF)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 222
    return p1

    .line 225
    :cond_2e
    invoke-virtual {v1, p3, p4}, Landroidx/constraintlayout/widget/StateSet$State;->findMatch(FF)I

    move-result v2

    .line 226
    .local v2, "match":I
    if-ne p1, v2, :cond_35

    .line 227
    return p1

    .line 230
    :cond_35
    if-ne v2, v0, :cond_3a

    iget v0, v1, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    goto :goto_44

    :cond_3a
    iget-object v0, v1, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/StateSet$Variant;

    iget v0, v0, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    :goto_44
    return v0

    .line 233
    .end local v1    # "state":Landroidx/constraintlayout/widget/StateSet$State;
    .end local v2    # "match":I
    :cond_45
    iget-object v1, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/StateSet$State;

    .line 234
    .restart local v1    # "state":Landroidx/constraintlayout/widget/StateSet$State;
    if-nez v1, :cond_50

    .line 235
    return v0

    .line 237
    :cond_50
    invoke-virtual {v1, p3, p4}, Landroidx/constraintlayout/widget/StateSet$State;->findMatch(FF)I

    move-result v2

    .line 238
    .restart local v2    # "match":I
    if-ne v2, v0, :cond_59

    iget v0, v1, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    goto :goto_63

    :cond_59
    iget-object v0, v1, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/StateSet$Variant;

    iget v0, v0, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    :goto_63
    return v0
.end method

###### Class androidx.constraintlayout.widget.StateSet.State (androidx.constraintlayout.widget.StateSet$State)
.class Landroidx/constraintlayout/widget/StateSet$State;
.super Ljava/lang/Object;
.source "StateSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/StateSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "State"
.end annotation


# instance fields
.field mConstraintID:I

.field mId:I

.field mIsLayout:Z

.field mVariants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/widget/StateSet$Variant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    .line 249
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/StateSet$State;->mIsLayout:Z

    .line 252
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 253
    .local v0, "attrs":Landroid/util/AttributeSet;
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->State:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 254
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 255
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    if-ge v3, v2, :cond_60

    .line 256
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 257
    .local v4, "attr":I
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->State_android_id:I

    if-ne v4, v5, :cond_32

    .line 258
    iget v5, p0, Landroidx/constraintlayout/widget/StateSet$State;->mId:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/StateSet$State;->mId:I

    goto :goto_5d

    .line 259
    :cond_32
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->State_constraints:I

    if-ne v4, v5, :cond_5d

    .line 260
    iget v5, p0, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    .line 261
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v5

    .line 262
    .local v5, "type":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    .line 264
    .local v6, "name":Ljava/lang/String;
    const-string v7, "layout"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5d

    .line 265
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroidx/constraintlayout/widget/StateSet$State;->mIsLayout:Z

    .line 255
    .end local v4    # "attr":I
    .end local v5    # "type":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    :cond_5d
    :goto_5d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 269
    .end local v3    # "i":I
    :cond_60
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 270
    return-void
.end method


# virtual methods
.method add(Landroidx/constraintlayout/widget/StateSet$Variant;)V
    .registers 3
    .param p1, "size"    # Landroidx/constraintlayout/widget/StateSet$Variant;

    .line 273
    iget-object v0, p0, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    return-void
.end method

.method public findMatch(FF)I
    .registers 5
    .param p1, "width"    # F
    .param p2, "height"    # F

    .line 277
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 278
    iget-object v1, p0, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/StateSet$Variant;

    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/widget/StateSet$Variant;->match(FF)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 279
    return v0

    .line 277
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 282
    .end local v0    # "i":I
    :cond_1b
    const/4 v0, -0x1

    return v0
.end method

###### Class androidx.constraintlayout.widget.StateSet.Variant (androidx.constraintlayout.widget.StateSet$Variant)
.class Landroidx/constraintlayout/widget/StateSet$Variant;
.super Ljava/lang/Object;
.source "StateSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/StateSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Variant"
.end annotation


# instance fields
.field mConstraintID:I

.field mId:I

.field mIsLayout:Z

.field mMaxHeight:F

.field mMaxWidth:F

.field mMinHeight:F

.field mMinWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMinWidth:F

    .line 289
    iput v0, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMinHeight:F

    .line 290
    iput v0, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMaxWidth:F

    .line 291
    iput v0, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMaxHeight:F

    .line 292
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    .line 293
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mIsLayout:Z

    .line 296
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 297
    .local v0, "attrs":Landroid/util/AttributeSet;
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->Variant:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 298
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 303
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_22
    if-ge v3, v2, :cond_92

    .line 304
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 305
    .local v4, "attr":I
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->Variant_constraints:I

    if-ne v4, v5, :cond_54

    .line 306
    iget v5, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    .line 307
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v5

    .line 308
    .local v5, "type":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    .line 310
    .local v6, "name":Ljava/lang/String;
    const-string v7, "layout"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_53

    .line 311
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mIsLayout:Z

    .line 313
    .end local v5    # "type":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    :cond_53
    goto :goto_8f

    :cond_54
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->Variant_region_heightLessThan:I

    if-ne v4, v5, :cond_61

    .line 314
    iget v5, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMaxHeight:F

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMaxHeight:F

    goto :goto_8f

    .line 315
    :cond_61
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->Variant_region_heightMoreThan:I

    if-ne v4, v5, :cond_6e

    .line 316
    iget v5, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMinHeight:F

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMinHeight:F

    goto :goto_8f

    .line 317
    :cond_6e
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->Variant_region_widthLessThan:I

    if-ne v4, v5, :cond_7b

    .line 318
    iget v5, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMaxWidth:F

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMaxWidth:F

    goto :goto_8f

    .line 319
    :cond_7b
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->Variant_region_widthMoreThan:I

    if-ne v4, v5, :cond_88

    .line 320
    iget v5, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMinWidth:F

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMinWidth:F

    goto :goto_8f

    .line 322
    :cond_88
    const-string v5, "ConstraintLayoutStates"

    const-string v6, "Unknown tag"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    .end local v4    # "attr":I
    :goto_8f
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 325
    .end local v3    # "i":I
    :cond_92
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 341
    return-void
.end method


# virtual methods
.method match(FF)Z
    .registers 5
    .param p1, "widthDp"    # F
    .param p2, "heightDp"    # F

    .line 348
    iget v0, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMinWidth:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 349
    iget v0, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMinWidth:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_10

    return v1

    .line 351
    :cond_10
    iget v0, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMinHeight:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 352
    iget v0, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMinHeight:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1f

    return v1

    .line 354
    :cond_1f
    iget v0, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMaxWidth:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 355
    iget v0, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMaxWidth:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2e

    return v1

    .line 357
    :cond_2e
    iget v0, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMaxHeight:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 358
    iget v0, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMaxHeight:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_3d

    return v1

    .line 360
    :cond_3d
    const/4 v0, 0x1

    return v0
.end method
