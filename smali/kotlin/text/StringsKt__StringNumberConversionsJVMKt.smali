###### Class kotlin.text.StringsKt__StringNumberConversionsJVMKt (kotlin.text.StringsKt__StringNumberConversionsJVMKt)
.class Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;
.super Lkotlin/text/StringsKt__StringBuilderKt;
.source "StringNumberConversionsJVM.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStringNumberConversionsJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StringNumberConversionsJVM.kt\nkotlin/text/StringsKt__StringNumberConversionsJVMKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,512:1\n267#1,7:513\n267#1,7:520\n267#1,7:527\n267#1,7:534\n1#2:541\n*S KotlinDebug\n*F\n+ 1 StringNumberConversionsJVM.kt\nkotlin/text/StringsKt__StringNumberConversionsJVMKt\n*L\n166#1:513,7\n173#1:520,7\n253#1:527,7\n264#1:534,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0000\n\u0002\u0010\u000e\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u0008\n\u0002\u0010\n\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000c\n\u0002\u0008\u000e\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0008\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0008\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0008\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0008\u001a\u000f\u0010\u0007\u001a\u00020\u0008*\u0004\u0018\u00010\u0001H\u0087\u0008\u001a\r\u0010\t\u001a\u00020\u0002*\u00020\u0001H\u0087\u0008\u001a\u0015\u0010\t\u001a\u00020\u0002*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0008\u001a\r\u0010\n\u001a\u00020\u0005*\u00020\u0001H\u0087\u0008\u001a\u0015\u0010\n\u001a\u00020\u0005*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0008\u001a\r\u0010\u000b\u001a\u00020\u0004*\u00020\u0001H\u0087\u0008\u001a\u0015\u0010\u000b\u001a\u00020\u0004*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0008\u001a\r\u0010\u000c\u001a\u00020\u0006*\u00020\u0001H\u0087\u0008\u001a\u0015\u0010\u000c\u001a\u00020\u0006*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0008\u001a\r\u0010\r\u001a\u00020\u000e*\u00020\u0001H\u0087\u0008\u001a\r\u0010\u000f\u001a\u00020\u0010*\u00020\u0001H\u0087\u0008\u001a\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u000e*\u00020\u0001H\u0007\u00a2\u0006\u0002\u0010\u0012\u001a\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0010*\u00020\u0001H\u0007\u00a2\u0006\u0002\u0010\u0014\u001a\r\u0010\u0015\u001a\u00020\u0016*\u00020\u0001H\u0087\u0008\u001a\u0015\u0010\u0015\u001a\u00020\u0016*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0008\u001a\u000e\u0010\u0017\u001a\u0004\u0018\u00010\u0016*\u00020\u0001H\u0007\u001a\u0016\u0010\u0017\u001a\u0004\u0018\u00010\u0016*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007\u001a\r\u0010\u0018\u001a\u00020\u0019*\u00020\u0001H\u0087\u0008\u001a\u0015\u0010\u0018\u001a\u00020\u0019*\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u001bH\u0087\u0008\u001a\u000e\u0010\u001c\u001a\u0004\u0018\u00010\u0019*\u00020\u0001H\u0007\u001a\u0016\u0010\u001c\u001a\u0004\u0018\u00010\u0019*\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u001bH\u0007\u001a4\u0010\u001d\u001a\u0004\u0018\u0001H\u001e\"\u0004\u0008\u0000\u0010\u001e2\u0006\u0010\u001f\u001a\u00020\u00012\u0012\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u0002H\u001e0!H\u0082\u0008\u00a2\u0006\u0004\u0008\"\u0010#\u001a\u0015\u0010$\u001a\u00020\u00082\u0006\u0010%\u001a\u00020\u0001H\u0002\u00a2\u0006\u0002\u0008&\u001a \u0010\'\u001a\u0004\u0018\u00010\u00012\u0006\u0010(\u001a\u00020\u00042\u0006\u0010)\u001a\u00020\u0004H\u0083\u0008\u00a2\u0006\u0002\u0008*\u001a\u0012\u0010+\u001a\u00020\u0008*\u00020,H\u0083\u0008\u00a2\u0006\u0002\u0008-\u001a\u0012\u0010.\u001a\u00020\u0008*\u00020,H\u0083\u0008\u00a2\u0006\u0002\u0008/\u001a\u0012\u00100\u001a\u00020\u0004*\u00020,H\u0083\u0008\u00a2\u0006\u0002\u00081\u001a6\u00102\u001a\u00020\u0004*\u00020\u00012\u0006\u0010(\u001a\u00020\u00042\u0006\u0010)\u001a\u00020\u00042\u0012\u00103\u001a\u000e\u0012\u0004\u0012\u00020,\u0012\u0004\u0012\u00020\u00080!H\u0083\u0008\u00a2\u0006\u0002\u00084\u001a6\u00105\u001a\u00020\u0004*\u00020\u00012\u0006\u0010(\u001a\u00020\u00042\u0006\u0010)\u001a\u00020\u00042\u0012\u00103\u001a\u000e\u0012\u0004\u0012\u00020,\u0012\u0004\u0012\u00020\u00080!H\u0083\u0008\u00a2\u0006\u0002\u00086\u001a>\u00107\u001a\u00020\u0004*\u00020\u00012\u0006\u0010(\u001a\u00020\u00042\u0006\u0010)\u001a\u00020\u00042\u0006\u00108\u001a\u00020\u00082\u0012\u00103\u001a\u000e\u0012\u0004\u0012\u00020,\u0012\u0004\u0012\u00020\u00080!H\u0083\u0008\u00a2\u0006\u0002\u00089\u00a8\u0006:"
    }
    d2 = {
        "toString",
        "",
        "",
        "radix",
        "",
        "",
        "",
        "toBoolean",
        "",
        "toByte",
        "toShort",
        "toInt",
        "toLong",
        "toFloat",
        "",
        "toDouble",
        "",
        "toFloatOrNull",
        "(Ljava/lang/String;)Ljava/lang/Float;",
        "toDoubleOrNull",
        "(Ljava/lang/String;)Ljava/lang/Double;",
        "toBigInteger",
        "Ljava/math/BigInteger;",
        "toBigIntegerOrNull",
        "toBigDecimal",
        "Ljava/math/BigDecimal;",
        "mathContext",
        "Ljava/math/MathContext;",
        "toBigDecimalOrNull",
        "screenFloatValue",
        "T",
        "str",
        "parse",
        "Lkotlin/Function1;",
        "screenFloatValue$StringsKt__StringNumberConversionsJVMKt",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "isValidFloat",
        "s",
        "isValidFloat$StringsKt__StringNumberConversionsJVMKt",
        "guessNamedFloatConstant",
        "start",
        "endInclusive",
        "guessNamedFloatConstant$StringsKt__StringNumberConversionsJVMKt",
        "isAsciiDigit",
        "",
        "isAsciiDigit$StringsKt__StringNumberConversionsJVMKt",
        "isHexLetter",
        "isHexLetter$StringsKt__StringNumberConversionsJVMKt",
        "asciiLetterToLowerCaseCode",
        "asciiLetterToLowerCaseCode$StringsKt__StringNumberConversionsJVMKt",
        "advanceWhile",
        "predicate",
        "advanceWhile$StringsKt__StringNumberConversionsJVMKt",
        "backtrackWhile",
        "backtrackWhile$StringsKt__StringNumberConversionsJVMKt",
        "advanceAndValidateMantissa",
        "hexFormat",
        "advanceAndValidateMantissa$StringsKt__StringNumberConversionsJVMKt",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x31
    xs = "kotlin/text/StringsKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lkotlin/text/StringsKt__StringBuilderKt;-><init>()V

    return-void
.end method

.method private static final advanceAndValidateMantissa$StringsKt__StringNumberConversionsJVMKt(Ljava/lang/String;IIZLkotlin/jvm/functions/Function1;)I
    .registers 14
    .param p0, "$this$advanceAndValidateMantissa"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "endInclusive"    # I
    .param p3, "hexFormat"    # Z
    .param p4, "predicate"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Character;",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    .line 471
    move v0, p1

    .line 474
    .local v0, "start":I
    move v1, v0

    .line 475
    .local v1, "checkpoint":I
    move v2, v0

    :goto_3
    if-gt v2, p2, :cond_1c

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {p4, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1c

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 478
    .end local v0    # "start":I
    .local v2, "start":I
    :cond_1c
    const/4 v0, 0x0

    const/4 v3, 0x1

    if-eq v1, v2, :cond_22

    move v4, v3

    goto :goto_23

    :cond_22
    move v4, v0

    .line 482
    .local v4, "hasIntegerPart":Z
    :goto_23
    const/4 v5, -0x1

    if-le v2, p2, :cond_2b

    if-eqz p3, :cond_29

    goto :goto_2a

    :cond_29
    move v5, v2

    :goto_2a
    return v5

    .line 484
    :cond_2b
    const/4 v6, 0x0

    .line 485
    .local v6, "hasFractionalPart":Z
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2e

    if-ne v7, v8, :cond_58

    .line 486
    add-int/lit8 v2, v2, 0x1

    .line 489
    move v1, v2

    .line 490
    move v7, v2

    :goto_38
    if-gt v7, p2, :cond_51

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-interface {p4, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_51

    add-int/lit8 v7, v7, 0x1

    goto :goto_38

    :cond_51
    move v2, v7

    .line 493
    if-eq v1, v2, :cond_56

    move v7, v3

    goto :goto_57

    :cond_56
    move v7, v0

    :goto_57
    move v6, v7

    .line 497
    :cond_58
    if-nez v4, :cond_7f

    if-nez v6, :cond_7f

    .line 498
    if-eqz p3, :cond_5f

    .line 499
    return v5

    .line 502
    :cond_5f
    add-int/lit8 v7, v2, 0x3

    sub-int/2addr v7, v3

    if-ne p2, v7, :cond_67

    const-string v3, "NaN"

    goto :goto_70

    :cond_67
    add-int/lit8 v7, v2, 0x8

    sub-int/2addr v7, v3

    if-ne p2, v7, :cond_6f

    const-string v3, "Infinity"

    goto :goto_70

    :cond_6f
    const/4 v3, 0x0

    .line 503
    .local v3, "constant":Ljava/lang/String;
    :goto_70
    if-nez v3, :cond_73

    return v5

    .line 506
    :cond_73
    move-object v7, p0

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7, v3, v2, v0}, Lkotlin/text/StringsKt;->indexOf(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result v0

    if-ne v0, v2, :cond_7e

    add-int/lit8 v5, p2, 0x1

    :cond_7e
    return v5

    .line 510
    .end local v3    # "constant":Ljava/lang/String;
    :cond_7f
    return v2
.end method

.method private static final advanceWhile$StringsKt__StringNumberConversionsJVMKt(Ljava/lang/String;IILkotlin/jvm/functions/Function1;)I
    .registers 6
    .param p0, "$this$advanceWhile"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "endInclusive"    # I
    .param p3, "predicate"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Character;",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    .line 452
    move v0, p1

    .line 453
    .local v0, "start":I
    :goto_1
    if-gt v0, p2, :cond_1a

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1a

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 454
    :cond_1a
    return v0
.end method

.method private static final asciiLetterToLowerCaseCode$StringsKt__StringNumberConversionsJVMKt(C)I
    .registers 2
    .param p0, "$this$asciiLetterToLowerCaseCode"    # C

    .line 448
    or-int/lit8 v0, p0, 0x20

    return v0
.end method

.method private static final backtrackWhile$StringsKt__StringNumberConversionsJVMKt(Ljava/lang/String;IILkotlin/jvm/functions/Function1;)I
    .registers 6
    .param p0, "$this$backtrackWhile"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "endInclusive"    # I
    .param p3, "predicate"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Character;",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    .line 459
    move v0, p2

    .line 460
    .local v0, "endInclusive":I
    :goto_1
    if-le v0, p1, :cond_1a

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1a

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 461
    :cond_1a
    return v0
.end method

.method private static final guessNamedFloatConstant$StringsKt__StringNumberConversionsJVMKt(II)Ljava/lang/String;
    .registers 3
    .param p0, "start"    # I
    .param p1, "endInclusive"    # I

    .line 409
    nop

    .line 410
    add-int/lit8 v0, p0, 0x3

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_a

    .line 411
    const-string v0, "NaN"

    goto :goto_14

    .line 413
    :cond_a
    add-int/lit8 v0, p0, 0x8

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_13

    .line 414
    const-string v0, "Infinity"

    goto :goto_14

    .line 418
    :cond_13
    const/4 v0, 0x0

    .line 420
    :goto_14
    return-object v0
.end method

.method private static final isAsciiDigit$StringsKt__StringNumberConversionsJVMKt(C)Z
    .registers 3
    .param p0, "$this$isAsciiDigit"    # C

    .line 425
    add-int/lit8 v0, p0, -0x30

    const v1, 0xffff

    and-int/2addr v0, v1

    const/16 v1, 0xa

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static final isHexLetter$StringsKt__StringNumberConversionsJVMKt(C)Z
    .registers 3
    .param p0, "$this$isHexLetter"    # C

    .line 431
    or-int/lit8 v0, p0, 0x20

    add-int/lit8 v0, v0, -0x61

    const v1, 0xffff

    and-int/2addr v0, v1

    const/4 v1, 0x6

    if-ge v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method private static final isValidFloat$StringsKt__StringNumberConversionsJVMKt(Ljava/lang/String;)Z
    .registers 22
    .param p0, "s"    # Ljava/lang/String;

    .line 309
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 310
    .local v1, "start":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 313
    .local v2, "endInclusive":I
    move v4, v1

    :goto_a
    const/16 v5, 0x20

    const/4 v6, 0x0

    if-gt v4, v2, :cond_1e

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 541
    .local v7, "it":C
    const/4 v8, 0x0

    .line 313
    .local v8, "$i$a$-advanceWhile-StringsKt__StringNumberConversionsJVMKt$isValidFloat$1":I
    if-gt v7, v5, :cond_18

    move v7, v3

    goto :goto_19

    :cond_18
    move v7, v6

    .end local v7    # "it":C
    .end local v8    # "$i$a$-advanceWhile-StringsKt__StringNumberConversionsJVMKt$isValidFloat$1":I
    :goto_19
    if-eqz v7, :cond_1e

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 316
    .end local v1    # "start":I
    .local v4, "start":I
    :cond_1e
    if-le v4, v2, :cond_21

    return v6

    .line 319
    :cond_21
    move v1, v2

    :goto_22
    if-le v1, v4, :cond_33

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 541
    .restart local v7    # "it":C
    const/4 v8, 0x0

    .line 319
    .local v8, "$i$a$-backtrackWhile-StringsKt__StringNumberConversionsJVMKt$isValidFloat$2":I
    if-gt v7, v5, :cond_2d

    move v7, v3

    goto :goto_2e

    :cond_2d
    move v7, v6

    .end local v7    # "it":C
    .end local v8    # "$i$a$-backtrackWhile-StringsKt__StringNumberConversionsJVMKt$isValidFloat$2":I
    :goto_2e
    if-eqz v7, :cond_33

    add-int/lit8 v1, v1, -0x1

    goto :goto_22

    .line 322
    .end local v2    # "endInclusive":I
    .local v1, "endInclusive":I
    :cond_33
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v7, 0x2d

    const/16 v8, 0x2b

    if-eq v2, v8, :cond_43

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_45

    :cond_43
    add-int/lit8 v4, v4, 0x1

    .line 324
    :cond_45
    if-le v4, v1, :cond_48

    return v6

    .line 326
    :cond_48
    const/4 v2, 0x0

    .line 329
    .local v2, "isHex":Z
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2e

    const/16 v11, 0xa

    const/16 v12, 0x30

    const v13, 0xffff

    const/4 v14, -0x1

    if-ne v9, v12, :cond_100

    .line 330
    add-int/lit8 v4, v4, 0x1

    .line 332
    if-le v4, v1, :cond_5e

    return v3

    .line 335
    :cond_5e
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    or-int/2addr v9, v5

    const/16 v12, 0x78

    if-ne v9, v12, :cond_fa

    .line 336
    add-int/2addr v4, v3

    .line 338
    move v9, v4

    :goto_69
    const/4 v12, 0x6

    if-gt v9, v1, :cond_99

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 541
    .local v15, "it":C
    const/16 v16, 0x0

    .line 338
    .local v16, "$i$a$-advanceAndValidateMantissa-StringsKt__StringNumberConversionsJVMKt$isValidFloat$3":I
    add-int/lit8 v17, v15, -0x30

    move/from16 v18, v3

    and-int v3, v17, v13

    if-ge v3, v11, :cond_7d

    move/from16 v3, v18

    goto :goto_7e

    :cond_7d
    move v3, v6

    :goto_7e
    if-nez v3, :cond_90

    or-int/lit8 v3, v15, 0x20

    add-int/lit8 v3, v3, -0x61

    and-int/2addr v3, v13

    if-ge v3, v12, :cond_8a

    move/from16 v3, v18

    goto :goto_8b

    :cond_8a
    move v3, v6

    :goto_8b
    if-eqz v3, :cond_8e

    goto :goto_90

    :cond_8e
    move v3, v6

    goto :goto_92

    :cond_90
    :goto_90
    move/from16 v3, v18

    .end local v15    # "it":C
    .end local v16    # "$i$a$-advanceAndValidateMantissa-StringsKt__StringNumberConversionsJVMKt$isValidFloat$3":I
    :goto_92
    if-eqz v3, :cond_9b

    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v18

    goto :goto_69

    :cond_99
    move/from16 v18, v3

    :cond_9b
    if-eq v4, v9, :cond_a0

    move/from16 v3, v18

    goto :goto_a1

    :cond_a0
    move v3, v6

    :goto_a1
    if-le v9, v1, :cond_a7

    move/from16 v20, v5

    :goto_a5
    move v9, v14

    goto :goto_f1

    :cond_a7
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-ne v15, v10, :cond_e9

    add-int/lit8 v9, v9, 0x1

    move v15, v9

    :goto_b0
    if-gt v15, v1, :cond_df

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v16

    .line 541
    .local v16, "it":C
    const/16 v17, 0x0

    .line 338
    .local v17, "$i$a$-advanceAndValidateMantissa-StringsKt__StringNumberConversionsJVMKt$isValidFloat$3":I
    add-int/lit8 v19, v16, -0x30

    move/from16 v20, v5

    and-int v5, v19, v13

    if-ge v5, v11, :cond_c3

    move/from16 v5, v18

    goto :goto_c4

    :cond_c3
    move v5, v6

    :goto_c4
    if-nez v5, :cond_d6

    or-int/lit8 v5, v16, 0x20

    add-int/lit8 v5, v5, -0x61

    and-int/2addr v5, v13

    if-ge v5, v12, :cond_d0

    move/from16 v5, v18

    goto :goto_d1

    :cond_d0
    move v5, v6

    :goto_d1
    if-eqz v5, :cond_d4

    goto :goto_d6

    :cond_d4
    move v5, v6

    goto :goto_d8

    :cond_d6
    :goto_d6
    move/from16 v5, v18

    .end local v16    # "it":C
    .end local v17    # "$i$a$-advanceAndValidateMantissa-StringsKt__StringNumberConversionsJVMKt$isValidFloat$3":I
    :goto_d8
    if-eqz v5, :cond_e1

    add-int/lit8 v15, v15, 0x1

    move/from16 v5, v20

    goto :goto_b0

    :cond_df
    move/from16 v20, v5

    :cond_e1
    if-eq v9, v15, :cond_e6

    move/from16 v5, v18

    goto :goto_e7

    :cond_e6
    move v5, v6

    :goto_e7
    move v9, v15

    goto :goto_ec

    :cond_e9
    move/from16 v20, v5

    move v5, v6

    :goto_ec
    if-nez v3, :cond_f1

    if-nez v5, :cond_f1

    goto :goto_a5

    :cond_f1
    :goto_f1
    move v4, v9

    .line 342
    if-eq v4, v14, :cond_f9

    if-le v4, v1, :cond_f7

    goto :goto_f9

    .line 344
    :cond_f7
    const/4 v2, 0x1

    goto :goto_104

    .line 342
    :cond_f9
    :goto_f9
    return v6

    .line 348
    :cond_fa
    move/from16 v18, v3

    move/from16 v20, v5

    add-int/2addr v4, v14

    goto :goto_104

    .line 329
    :cond_100
    move/from16 v18, v3

    move/from16 v20, v5

    .line 353
    :goto_104
    if-nez v2, :cond_17b

    .line 354
    move v3, v4

    :goto_107
    if-gt v3, v1, :cond_11c

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 541
    .local v5, "it":C
    const/4 v9, 0x0

    .line 354
    .local v9, "$i$a$-advanceAndValidateMantissa-StringsKt__StringNumberConversionsJVMKt$isValidFloat$4":I
    add-int/lit8 v12, v5, -0x30

    and-int/2addr v12, v13

    if-ge v12, v11, :cond_116

    move/from16 v12, v18

    goto :goto_117

    :cond_116
    move v12, v6

    .end local v5    # "it":C
    .end local v9    # "$i$a$-advanceAndValidateMantissa-StringsKt__StringNumberConversionsJVMKt$isValidFloat$4":I
    :goto_117
    if-eqz v12, :cond_11c

    add-int/lit8 v3, v3, 0x1

    goto :goto_107

    :cond_11c
    if-eq v4, v3, :cond_121

    move/from16 v5, v18

    goto :goto_122

    :cond_121
    move v5, v6

    :goto_122
    if-le v3, v1, :cond_125

    goto :goto_174

    :cond_125
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v10, :cond_14a

    add-int/lit8 v3, v3, 0x1

    move v9, v3

    :goto_12e
    if-gt v9, v1, :cond_143

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 541
    .local v10, "it":C
    const/4 v12, 0x0

    .line 354
    .local v12, "$i$a$-advanceAndValidateMantissa-StringsKt__StringNumberConversionsJVMKt$isValidFloat$4":I
    add-int/lit8 v15, v10, -0x30

    and-int/2addr v15, v13

    if-ge v15, v11, :cond_13d

    move/from16 v15, v18

    goto :goto_13e

    :cond_13d
    move v15, v6

    .end local v10    # "it":C
    .end local v12    # "$i$a$-advanceAndValidateMantissa-StringsKt__StringNumberConversionsJVMKt$isValidFloat$4":I
    :goto_13e
    if-eqz v15, :cond_143

    add-int/lit8 v9, v9, 0x1

    goto :goto_12e

    :cond_143
    if-eq v3, v9, :cond_148

    move/from16 v3, v18

    goto :goto_14c

    :cond_148
    move v3, v6

    goto :goto_14c

    :cond_14a
    move v9, v3

    move v3, v6

    :goto_14c
    if-nez v5, :cond_173

    if-nez v3, :cond_173

    add-int/lit8 v3, v9, 0x3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_159

    const-string v3, "NaN"

    goto :goto_163

    :cond_159
    add-int/lit8 v3, v9, 0x8

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_162

    const-string v3, "Infinity"

    goto :goto_163

    :cond_162
    const/4 v3, 0x0

    :goto_163
    if-nez v3, :cond_167

    :cond_165
    move v3, v14

    goto :goto_174

    :cond_167
    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5, v3, v9, v6}, Lkotlin/text/StringsKt;->indexOf(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result v3

    if-ne v3, v9, :cond_165

    add-int/lit8 v3, v1, 0x1

    goto :goto_174

    :cond_173
    move v3, v9

    :goto_174
    move v4, v3

    .line 357
    if-ne v4, v14, :cond_178

    return v6

    .line 360
    :cond_178
    if-le v4, v1, :cond_17b

    return v18

    .line 366
    :cond_17b
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "start":I
    .local v3, "start":I
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    or-int/lit8 v4, v4, 0x20

    .line 367
    .local v4, "l":I
    if-eqz v2, :cond_188

    const/16 v5, 0x70

    goto :goto_18a

    :cond_188
    const/16 v5, 0x65

    :goto_18a
    const/16 v9, 0x64

    const/16 v10, 0x66

    if-eq v4, v5, :cond_19c

    .line 371
    if-nez v2, :cond_199

    if-eq v4, v10, :cond_196

    if-ne v4, v9, :cond_199

    :cond_196
    if-le v3, v1, :cond_199

    goto :goto_19b

    :cond_199
    move/from16 v18, v6

    :goto_19b
    return v18

    .line 375
    :cond_19c
    if-le v3, v1, :cond_19f

    return v6

    .line 378
    :cond_19f
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v8, :cond_1ab

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_1b0

    .line 379
    :cond_1ab
    add-int/lit8 v3, v3, 0x1

    .line 380
    if-le v3, v1, :cond_1b0

    return v6

    .line 384
    :cond_1b0
    move v5, v3

    :goto_1b1
    if-gt v5, v1, :cond_1c6

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 541
    .restart local v7    # "it":C
    const/4 v8, 0x0

    .line 384
    .local v8, "$i$a$-advanceWhile-StringsKt__StringNumberConversionsJVMKt$isValidFloat$5":I
    add-int/lit8 v12, v7, -0x30

    and-int/2addr v12, v13

    if-ge v12, v11, :cond_1c0

    move/from16 v12, v18

    goto :goto_1c1

    :cond_1c0
    move v12, v6

    .end local v7    # "it":C
    .end local v8    # "$i$a$-advanceWhile-StringsKt__StringNumberConversionsJVMKt$isValidFloat$5":I
    :goto_1c1
    if-eqz v12, :cond_1c6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1b1

    .line 387
    .end local v3    # "start":I
    .local v5, "start":I
    :cond_1c6
    if-le v5, v1, :cond_1c9

    return v18

    .line 390
    :cond_1c9
    if-ne v5, v1, :cond_1d9

    .line 391
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    or-int/lit8 v3, v3, 0x20

    .line 392
    .end local v4    # "l":I
    .local v3, "l":I
    if-eq v3, v10, :cond_1d8

    if-ne v3, v9, :cond_1d6

    goto :goto_1d8

    :cond_1d6
    move/from16 v18, v6

    :cond_1d8
    :goto_1d8
    return v18

    .line 396
    .end local v3    # "l":I
    .restart local v4    # "l":I
    :cond_1d9
    return v6
.end method

.method private static final screenFloatValue$StringsKt__StringNumberConversionsJVMKt(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "parse"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 267
    .local v0, "$i$f$screenFloatValue":I
    nop

    .line 268
    const/4 v1, 0x0

    :try_start_3
    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->isValidFloat$StringsKt__StringNumberConversionsJVMKt(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 269
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_d} :catch_10

    goto :goto_f

    .line 271
    :cond_e
    nop

    :goto_f
    goto :goto_12

    .line 272
    :catch_10
    move-exception v2

    .line 273
    .local v2, "<unused var>":Ljava/lang/NumberFormatException;
    nop

    .line 267
    .end local v2    # "<unused var>":Ljava/lang/NumberFormatException;
    :goto_12
    return-object v1
.end method

.method private static final toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .registers 2
    .param p0, "$this$toBigDecimal"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static final toBigDecimal(Ljava/lang/String;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 3
    .param p0, "$this$toBigDecimal"    # Ljava/lang/String;
    .param p1, "mathContext"    # Ljava/math/MathContext;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mathContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;Ljava/math/MathContext;)V

    return-object v0
.end method

.method public static final toBigDecimalOrNull(Ljava/lang/String;)Ljava/math/BigDecimal;
    .registers 6
    .param p0, "$this$toBigDecimalOrNull"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    const/4 v0, 0x0

    .line 527
    .local v0, "$i$f$screenFloatValue":I
    nop

    .line 528
    const/4 v1, 0x0

    :try_start_8
    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->isValidFloat$StringsKt__StringNumberConversionsJVMKt(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 529
    move-object v2, p0

    .local v2, "it":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "$i$a$-screenFloatValue-StringsKt__StringNumberConversionsJVMKt$toBigDecimalOrNull$1":I
    new-instance v4, Ljava/math/BigDecimal;

    .line 253
    invoke-direct {v4, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_15} :catch_19

    .line 529
    .end local v2    # "it":Ljava/lang/String;
    .end local v3    # "$i$a$-screenFloatValue-StringsKt__StringNumberConversionsJVMKt$toBigDecimalOrNull$1":I
    move-object v1, v4

    goto :goto_18

    .line 531
    :cond_17
    nop

    :goto_18
    goto :goto_1b

    .line 532
    :catch_19
    move-exception v2

    .line 533
    .local v2, "<unused var>$iv":Ljava/lang/NumberFormatException;
    nop

    .line 527
    .end local v2    # "<unused var>$iv":Ljava/lang/NumberFormatException;
    :goto_1b
    nop

    .line 253
    .end local v0    # "$i$f$screenFloatValue":I
    return-object v1
.end method

.method public static final toBigDecimalOrNull(Ljava/lang/String;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 7
    .param p0, "$this$toBigDecimalOrNull"    # Ljava/lang/String;
    .param p1, "mathContext"    # Ljava/math/MathContext;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mathContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    const/4 v0, 0x0

    .line 534
    .local v0, "$i$f$screenFloatValue":I
    nop

    .line 535
    const/4 v1, 0x0

    :try_start_d
    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->isValidFloat$StringsKt__StringNumberConversionsJVMKt(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 536
    move-object v2, p0

    .local v2, "it":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "$i$a$-screenFloatValue-StringsKt__StringNumberConversionsJVMKt$toBigDecimalOrNull$2":I
    new-instance v4, Ljava/math/BigDecimal;

    .line 264
    invoke-direct {v4, v2, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;Ljava/math/MathContext;)V
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_1a} :catch_1e

    .line 536
    .end local v2    # "it":Ljava/lang/String;
    .end local v3    # "$i$a$-screenFloatValue-StringsKt__StringNumberConversionsJVMKt$toBigDecimalOrNull$2":I
    move-object v1, v4

    goto :goto_1d

    .line 538
    :cond_1c
    nop

    :goto_1d
    goto :goto_20

    .line 539
    :catch_1e
    move-exception v2

    .line 540
    .local v2, "<unused var>$iv":Ljava/lang/NumberFormatException;
    nop

    .line 534
    .end local v2    # "<unused var>$iv":Ljava/lang/NumberFormatException;
    :goto_20
    nop

    .line 264
    .end local v0    # "$i$f$screenFloatValue":I
    return-object v1
.end method

.method private static final toBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .registers 2
    .param p0, "$this$toBigInteger"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static final toBigInteger(Ljava/lang/String;I)Ljava/math/BigInteger;
    .registers 4
    .param p0, "$this$toBigInteger"    # Ljava/lang/String;
    .param p1, "radix"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v1

    invoke-direct {v0, p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static final toBigIntegerOrNull(Ljava/lang/String;)Ljava/math/BigInteger;
    .registers 2
    .param p0, "$this$toBigIntegerOrNull"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->toBigIntegerOrNull(Ljava/lang/String;I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static final toBigIntegerOrNull(Ljava/lang/String;I)Ljava/math/BigInteger;
    .registers 7
    .param p0, "$this$toBigIntegerOrNull"    # Ljava/lang/String;
    .param p1, "radix"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-static {p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    .line 210
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 211
    .local v0, "length":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_42

    .line 215
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_27

    const/4 v1, 0x1

    goto :goto_27

    .line 213
    :pswitch_1b
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1, p1}, Lkotlin/text/CharsKt;->digitOf(CI)I

    move-result v1

    if-gez v1, :cond_38

    return-object v2

    .line 212
    :pswitch_26
    return-object v2

    .line 216
    .local v1, "start":I
    :cond_27
    :goto_27
    move v3, v1

    .local v3, "index":I
    :goto_28
    if-ge v3, v0, :cond_38

    .line 217
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, p1}, Lkotlin/text/CharsKt;->digitOf(CI)I

    move-result v4

    if-gez v4, :cond_35

    .line 218
    return-object v2

    .line 216
    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .end local v1    # "start":I
    .end local v3    # "index":I
    :cond_38
    new-instance v1, Ljava/math/BigInteger;

    .line 222
    invoke-static {p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v2

    invoke-direct {v1, p0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    return-object v1

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_26
        :pswitch_1b
    .end packed-switch
.end method

.method private static final toBoolean(Ljava/lang/String;)Z
    .registers 2
    .param p0, "$this$toBoolean"    # Ljava/lang/String;

    .line 55
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static final toByte(Ljava/lang/String;)B
    .registers 2
    .param p0, "$this$toByte"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    return v0
.end method

.method private static final toByte(Ljava/lang/String;I)B
    .registers 3
    .param p0, "$this$toByte"    # Ljava/lang/String;
    .param p1, "radix"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-static {p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v0

    return v0
.end method

.method private static final toDouble(Ljava/lang/String;)D
    .registers 3
    .param p0, "$this$toDouble"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;
    .registers 7
    .param p0, "$this$toDoubleOrNull"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    const/4 v0, 0x0

    .line 520
    .local v0, "$i$f$screenFloatValue":I
    nop

    .line 521
    const/4 v1, 0x0

    :try_start_8
    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->isValidFloat$StringsKt__StringNumberConversionsJVMKt(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 522
    move-object v2, p0

    .local v2, "p0":Ljava/lang/String;
    const/4 v3, 0x0

    .line 173
    .local v3, "$i$a$-screenFloatValue-StringsKt__StringNumberConversionsJVMKt$toDoubleOrNull$1":I
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .end local v2    # "p0":Ljava/lang/String;
    .end local v3    # "$i$a$-screenFloatValue-StringsKt__StringNumberConversionsJVMKt$toDoubleOrNull$1":I
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_18} :catch_1b

    .line 522
    goto :goto_1a

    .line 524
    :cond_19
    nop

    :goto_1a
    goto :goto_1d

    .line 525
    :catch_1b
    move-exception v2

    .line 526
    .local v2, "<unused var>$iv":Ljava/lang/NumberFormatException;
    nop

    .line 520
    .end local v2    # "<unused var>$iv":Ljava/lang/NumberFormatException;
    :goto_1d
    nop

    .line 173
    .end local v0    # "$i$f$screenFloatValue":I
    return-object v1
.end method

.method private static final toFloat(Ljava/lang/String;)F
    .registers 2
    .param p0, "$this$toFloat"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static final toFloatOrNull(Ljava/lang/String;)Ljava/lang/Float;
    .registers 6
    .param p0, "$this$toFloatOrNull"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    const/4 v0, 0x0

    .line 513
    .local v0, "$i$f$screenFloatValue":I
    nop

    .line 514
    const/4 v1, 0x0

    :try_start_8
    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->isValidFloat$StringsKt__StringNumberConversionsJVMKt(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 515
    move-object v2, p0

    .local v2, "p0":Ljava/lang/String;
    const/4 v3, 0x0

    .line 166
    .local v3, "$i$a$-screenFloatValue-StringsKt__StringNumberConversionsJVMKt$toFloatOrNull$1":I
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .end local v2    # "p0":Ljava/lang/String;
    .end local v3    # "$i$a$-screenFloatValue-StringsKt__StringNumberConversionsJVMKt$toFloatOrNull$1":I
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_18} :catch_1b

    .line 515
    goto :goto_1a

    .line 517
    :cond_19
    nop

    :goto_1a
    goto :goto_1d

    .line 518
    :catch_1b
    move-exception v2

    .line 519
    .local v2, "<unused var>$iv":Ljava/lang/NumberFormatException;
    nop

    .line 513
    .end local v2    # "<unused var>$iv":Ljava/lang/NumberFormatException;
    :goto_1d
    nop

    .line 166
    .end local v0    # "$i$f$screenFloatValue":I
    return-object v1
.end method

.method private static final toInt(Ljava/lang/String;)I
    .registers 2
    .param p0, "$this$toInt"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static final toInt(Ljava/lang/String;I)I
    .registers 3
    .param p0, "$this$toInt"    # Ljava/lang/String;
    .param p1, "radix"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-static {p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static final toLong(Ljava/lang/String;)J
    .registers 3
    .param p0, "$this$toLong"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final toLong(Ljava/lang/String;I)J
    .registers 4
    .param p0, "$this$toLong"    # Ljava/lang/String;
    .param p1, "radix"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-static {p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final toShort(Ljava/lang/String;)S
    .registers 2
    .param p0, "$this$toShort"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    return v0
.end method

.method private static final toShort(Ljava/lang/String;I)S
    .registers 3
    .param p0, "$this$toShort"    # Ljava/lang/String;
    .param p1, "radix"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-static {p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S

    move-result v0

    return v0
.end method

.method private static final toString(BI)Ljava/lang/String;
    .registers 4
    .param p0, "$this$toString"    # B
    .param p1, "radix"    # I

    .line 19
    invoke-static {p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final toString(II)Ljava/lang/String;
    .registers 4
    .param p0, "$this$toString"    # I
    .param p1, "radix"    # I

    .line 37
    invoke-static {p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final toString(JI)Ljava/lang/String;
    .registers 5
    .param p0, "$this$toString"    # J
    .param p2, "radix"    # I

    .line 46
    invoke-static {p2}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final toString(SI)Ljava/lang/String;
    .registers 4
    .param p0, "$this$toString"    # S
    .param p1, "radix"    # I

    .line 28
    invoke-static {p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
