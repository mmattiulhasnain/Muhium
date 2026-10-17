###### Class androidx.core.content.res.GradientColorInflaterCompat (androidx.core.content.res.GradientColorInflaterCompat)
.class final Landroidx/core/content/res/GradientColorInflaterCompat;
.super Ljava/lang/Object;
.source "GradientColorInflaterCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;
    }
.end annotation


# static fields
.field private static final TILE_MODE_CLAMP:I = 0x0

.field private static final TILE_MODE_MIRROR:I = 0x2

.field private static final TILE_MODE_REPEAT:I = 0x1


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method private static checkColors(Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;IIZI)Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;
    .registers 6
    .param p0, "colorItems"    # Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;
    .param p1, "startColor"    # I
    .param p2, "endColor"    # I
    .param p3, "hasCenterColor"    # Z
    .param p4, "centerColor"    # I

    .line 192
    if-eqz p0, :cond_3

    .line 193
    return-object p0

    .line 194
    :cond_3
    if-eqz p3, :cond_b

    .line 195
    new-instance v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;

    invoke-direct {v0, p1, p4, p2}, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;-><init>(III)V

    return-object v0

    .line 197
    :cond_b
    new-instance v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;

    invoke-direct {v0, p1, p2}, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;-><init>(II)V

    return-object v0
.end method

.method static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/graphics/Shader;
    .registers 7
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 74
    .local v0, "attrs":Landroid/util/AttributeSet;
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x2

    if-eq v1, v3, :cond_10

    const/4 v1, 0x1

    if-eq v2, v1, :cond_10

    goto :goto_4

    .line 79
    :cond_10
    if-ne v2, v3, :cond_17

    .line 83
    invoke-static {p0, p1, v0, p2}, Landroidx/core/content/res/GradientColorInflaterCompat;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/Shader;

    move-result-object v1

    return-object v1

    .line 80
    :cond_17
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "No start tag found"

    invoke-direct {v1, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/Shader;
    .registers 27
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 90
    move-object/from16 v0, p1

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "name":Ljava/lang/String;
    const-string v2, "gradient"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d8

    .line 96
    sget-object v2, Landroidx/core/R$styleable;->GradientColor:[I

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-static {v3, v5, v4, v2}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 98
    .local v2, "a":Landroid/content/res/TypedArray;
    const-string v6, "startX"

    sget v7, Landroidx/core/R$styleable;->GradientColor_android_startX:I

    const/4 v8, 0x0

    invoke-static {v2, v0, v6, v7, v8}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v10

    .line 100
    .local v10, "startX":F
    const-string v6, "startY"

    sget v7, Landroidx/core/R$styleable;->GradientColor_android_startY:I

    invoke-static {v2, v0, v6, v7, v8}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v11

    .line 102
    .local v11, "startY":F
    const-string v6, "endX"

    sget v7, Landroidx/core/R$styleable;->GradientColor_android_endX:I

    invoke-static {v2, v0, v6, v7, v8}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v12

    .line 104
    .local v12, "endX":F
    const-string v6, "endY"

    sget v7, Landroidx/core/R$styleable;->GradientColor_android_endY:I

    invoke-static {v2, v0, v6, v7, v8}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v13

    .line 106
    .local v13, "endY":F
    const-string v6, "centerX"

    sget v7, Landroidx/core/R$styleable;->GradientColor_android_centerX:I

    invoke-static {v2, v0, v6, v7, v8}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v15

    .line 108
    .local v15, "centerX":F
    const-string v6, "centerY"

    sget v7, Landroidx/core/R$styleable;->GradientColor_android_centerY:I

    invoke-static {v2, v0, v6, v7, v8}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v6

    .line 110
    .local v6, "centerY":F
    const-string/jumbo v7, "type"

    sget v9, Landroidx/core/R$styleable;->GradientColor_android_type:I

    const/4 v14, 0x0

    invoke-static {v2, v0, v7, v9, v14}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v7

    .line 112
    .local v7, "type":I
    const-string v9, "startColor"

    sget v8, Landroidx/core/R$styleable;->GradientColor_android_startColor:I

    invoke-static {v2, v0, v9, v8, v14}, Landroidx/core/content/res/TypedArrayUtils;->getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v8

    .line 114
    .local v8, "startColor":I
    const-string v9, "centerColor"

    invoke-static {v0, v9}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v14

    .line 115
    .local v14, "hasCenterColor":Z
    sget v3, Landroidx/core/R$styleable;->GradientColor_android_centerColor:I

    const/4 v4, 0x0

    invoke-static {v2, v0, v9, v3, v4}, Landroidx/core/content/res/TypedArrayUtils;->getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v3

    .line 117
    .local v3, "centerColor":I
    const-string v9, "endColor"

    sget v5, Landroidx/core/R$styleable;->GradientColor_android_endColor:I

    invoke-static {v2, v0, v9, v5, v4}, Landroidx/core/content/res/TypedArrayUtils;->getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v5

    .line 119
    .local v5, "endColor":I
    const-string/jumbo v9, "tileMode"

    move/from16 v21, v7

    .end local v7    # "type":I
    .local v21, "type":I
    sget v7, Landroidx/core/R$styleable;->GradientColor_android_tileMode:I

    invoke-static {v2, v0, v9, v7, v4}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v4

    .line 121
    .local v4, "tileMode":I
    const-string v7, "gradientRadius"

    sget v9, Landroidx/core/R$styleable;->GradientColor_android_gradientRadius:I

    move/from16 v22, v4

    const/4 v4, 0x0

    .end local v4    # "tileMode":I
    .local v22, "tileMode":I
    invoke-static {v2, v0, v7, v9, v4}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v17

    .line 123
    .local v17, "gradientRadius":F
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 125
    invoke-static/range {p0 .. p3}, Landroidx/core/content/res/GradientColorInflaterCompat;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;

    move-result-object v4

    .line 126
    .local v4, "colorStops":Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;
    invoke-static {v4, v8, v5, v14, v3}, Landroidx/core/content/res/GradientColorInflaterCompat;->checkColors(Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;IIZI)Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;

    move-result-object v4

    .line 128
    packed-switch v21, :pswitch_data_fa

    .line 141
    move v7, v6

    move v0, v14

    move v6, v15

    .end local v14    # "hasCenterColor":Z
    .end local v15    # "centerX":F
    .local v0, "hasCenterColor":Z
    .local v6, "centerX":F
    .local v7, "centerY":F
    new-instance v9, Landroid/graphics/LinearGradient;

    iget-object v14, v4, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mColors:[I

    iget-object v15, v4, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mOffsets:[F

    .line 142
    invoke-static/range {v22 .. v22}, Landroidx/core/content/res/GradientColorInflaterCompat;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v16

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 141
    return-object v9

    .line 137
    .end local v0    # "hasCenterColor":Z
    .end local v7    # "centerY":F
    .local v6, "centerY":F
    .restart local v14    # "hasCenterColor":Z
    .restart local v15    # "centerX":F
    :pswitch_a7
    new-instance v7, Landroid/graphics/SweepGradient;

    iget-object v9, v4, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mColors:[I

    iget-object v0, v4, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mOffsets:[F

    invoke-direct {v7, v15, v6, v9, v0}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    return-object v7

    .line 130
    :pswitch_b1
    const/16 v16, 0x0

    cmpg-float v0, v17, v16

    if-lez v0, :cond_cf

    .line 134
    move v0, v14

    .end local v14    # "hasCenterColor":Z
    .restart local v0    # "hasCenterColor":Z
    new-instance v14, Landroid/graphics/RadialGradient;

    iget-object v7, v4, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mColors:[I

    iget-object v9, v4, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mOffsets:[F

    .line 135
    invoke-static/range {v22 .. v22}, Landroidx/core/content/res/GradientColorInflaterCompat;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v20

    move/from16 v16, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v9

    .end local v6    # "centerY":F
    .local v16, "centerY":F
    invoke-direct/range {v14 .. v20}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 134
    move v6, v15

    move/from16 v7, v16

    .end local v15    # "centerX":F
    .end local v16    # "centerY":F
    .local v6, "centerX":F
    .restart local v7    # "centerY":F
    return-object v14

    .line 131
    .end local v0    # "hasCenterColor":Z
    .end local v7    # "centerY":F
    .local v6, "centerY":F
    .restart local v14    # "hasCenterColor":Z
    .restart local v15    # "centerX":F
    :cond_cf
    move v0, v14

    .end local v14    # "hasCenterColor":Z
    .restart local v0    # "hasCenterColor":Z
    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v14, "<gradient> tag requires \'gradientRadius\' attribute with radial type"

    invoke-direct {v9, v14}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 92
    .end local v0    # "hasCenterColor":Z
    .end local v2    # "a":Landroid/content/res/TypedArray;
    .end local v3    # "centerColor":I
    .end local v4    # "colorStops":Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;
    .end local v5    # "endColor":I
    .end local v6    # "centerY":F
    .end local v8    # "startColor":I
    .end local v10    # "startX":F
    .end local v11    # "startY":F
    .end local v12    # "endX":F
    .end local v13    # "endY":F
    .end local v15    # "centerX":F
    .end local v17    # "gradientRadius":F
    .end local v21    # "type":I
    .end local v22    # "tileMode":I
    :cond_d8
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": invalid gradient color tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_fa
    .packed-switch 0x1
        :pswitch_b1
        :pswitch_a7
    .end packed-switch
.end method

.method private static inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;
    .registers 16
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 154
    .local v0, "innerDepth":I
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    .local v2, "offsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 157
    .local v4, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_12
    :goto_12
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v5, v3

    .local v5, "type":I
    if-eq v3, v1, :cond_89

    .line 158
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move v6, v3

    .local v6, "depth":I
    if-ge v3, v0, :cond_23

    const/4 v3, 0x3

    if-eq v5, v3, :cond_89

    .line 160
    :cond_23
    const/4 v3, 0x2

    if-eq v5, v3, :cond_27

    .line 161
    goto :goto_12

    .line 163
    :cond_27
    if-gt v6, v0, :cond_12

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v7, "item"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 164
    goto :goto_12

    .line 167
    :cond_36
    sget-object v3, Landroidx/core/R$styleable;->GradientColorItem:[I

    invoke-static {p0, p3, p2, v3}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 169
    .local v3, "a":Landroid/content/res/TypedArray;
    sget v7, Landroidx/core/R$styleable;->GradientColorItem_android_color:I

    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    .line 170
    .local v7, "hasColor":Z
    sget v8, Landroidx/core/R$styleable;->GradientColorItem_android_offset:I

    invoke-virtual {v3, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    .line 171
    .local v8, "hasOffset":Z
    if-eqz v7, :cond_6c

    if-eqz v8, :cond_6c

    .line 178
    sget v9, Landroidx/core/R$styleable;->GradientColorItem_android_color:I

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    .line 179
    .local v9, "color":I
    sget v10, Landroidx/core/R$styleable;->GradientColorItem_android_offset:I

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    .line 180
    .local v10, "offset":F
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 182
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v7    # "hasColor":Z
    .end local v8    # "hasOffset":Z
    .end local v9    # "color":I
    .end local v10    # "offset":F
    goto :goto_12

    .line 172
    .restart local v3    # "a":Landroid/content/res/TypedArray;
    .restart local v7    # "hasColor":Z
    .restart local v8    # "hasOffset":Z
    :cond_6c
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": <item> tag requires a \'color\' attribute and a \'offset\' attribute!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v6    # "depth":I
    .end local v7    # "hasColor":Z
    .end local v8    # "hasOffset":Z
    :cond_89
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_95

    new-instance v1, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;

    invoke-direct {v1, v4, v2}, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v1

    .line 186
    :cond_95
    const/4 v1, 0x0

    return-object v1
.end method

.method private static parseTileMode(I)Landroid/graphics/Shader$TileMode;
    .registers 2
    .param p0, "tileMode"    # I

    .line 202
    packed-switch p0, :pswitch_data_c

    .line 209
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    return-object v0

    .line 206
    :pswitch_6
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    return-object v0

    .line 204
    :pswitch_9
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    return-object v0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

###### Class androidx.core.content.res.GradientColorInflaterCompat.ColorStops (androidx.core.content.res.GradientColorInflaterCompat$ColorStops)
.class final Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;
.super Ljava/lang/Object;
.source "GradientColorInflaterCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/res/GradientColorInflaterCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ColorStops"
.end annotation


# instance fields
.field final mColors:[I

.field final mOffsets:[F


# direct methods
.method constructor <init>(II)V
    .registers 4
    .param p1, "startColor"    # I
    .param p2, "endColor"    # I

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    filled-new-array {p1, p2}, [I

    move-result-object v0

    iput-object v0, p0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mColors:[I

    .line 229
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_12

    iput-object v0, p0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mOffsets:[F

    .line 230
    return-void

    :array_12
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>(III)V
    .registers 5
    .param p1, "startColor"    # I
    .param p2, "centerColor"    # I
    .param p3, "endColor"    # I

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    filled-new-array {p1, p2, p3}, [I

    move-result-object v0

    iput-object v0, p0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mColors:[I

    .line 234
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_12

    iput-object v0, p0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mOffsets:[F

    .line 235
    return-void

    :array_12
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 217
    .local p1, "colorsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "offsetsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 219
    .local v0, "size":I
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mColors:[I

    .line 220
    new-array v1, v0, [F

    iput-object v1, p0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mOffsets:[F

    .line 221
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v0, :cond_31

    .line 222
    iget-object v2, p0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mColors:[I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    .line 223
    iget-object v2, p0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mOffsets:[F

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v2, v1

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 225
    .end local v1    # "i":I
    :cond_31
    return-void
.end method
