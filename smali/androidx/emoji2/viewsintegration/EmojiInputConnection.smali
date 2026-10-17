###### Class androidx.emoji2.viewsintegration.EmojiInputConnection (androidx.emoji2.viewsintegration.EmojiInputConnection)
.class final Landroidx/emoji2/viewsintegration/EmojiInputConnection;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "EmojiInputConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/viewsintegration/EmojiInputConnection$EmojiCompatDeleteHelper;
    }
.end annotation


# instance fields
.field private final mEmojiCompatDeleteHelper:Landroidx/emoji2/viewsintegration/EmojiInputConnection$EmojiCompatDeleteHelper;

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .registers 5
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "inputConnection"    # Landroid/view/inputmethod/InputConnection;
    .param p3, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .line 49
    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiInputConnection$EmojiCompatDeleteHelper;

    invoke-direct {v0}, Landroidx/emoji2/viewsintegration/EmojiInputConnection$EmojiCompatDeleteHelper;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/emoji2/viewsintegration/EmojiInputConnection;-><init>(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroidx/emoji2/viewsintegration/EmojiInputConnection$EmojiCompatDeleteHelper;)V

    .line 50
    return-void
.end method

.method constructor <init>(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroidx/emoji2/viewsintegration/EmojiInputConnection$EmojiCompatDeleteHelper;)V
    .registers 6
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "inputConnection"    # Landroid/view/inputmethod/InputConnection;
    .param p3, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;
    .param p4, "emojiCompatDeleteHelper"    # Landroidx/emoji2/viewsintegration/EmojiInputConnection$EmojiCompatDeleteHelper;

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    .line 59
    iput-object p1, p0, Landroidx/emoji2/viewsintegration/EmojiInputConnection;->mTextView:Landroid/widget/TextView;

    .line 60
    iput-object p4, p0, Landroidx/emoji2/viewsintegration/EmojiInputConnection;->mEmojiCompatDeleteHelper:Landroidx/emoji2/viewsintegration/EmojiInputConnection$EmojiCompatDeleteHelper;

    .line 61
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiInputConnection;->mEmojiCompatDeleteHelper:Landroidx/emoji2/viewsintegration/EmojiInputConnection$EmojiCompatDeleteHelper;

    invoke-virtual {v0, p3}, Landroidx/emoji2/viewsintegration/EmojiInputConnection$EmojiCompatDeleteHelper;->updateEditorInfoAttrs(Landroid/view/inputmethod/EditorInfo;)V

    .line 62
    return-void
.end method

.method private getEditable()Landroid/text/Editable;
    .registers 2

    .line 80
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteSurroundingText(II)Z
    .registers 9
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .line 66
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiInputConnection;->mEmojiCompatDeleteHelper:Landroidx/emoji2/viewsintegration/EmojiInputConnection$EmojiCompatDeleteHelper;

    .line 67
    invoke-direct {p0}, Landroidx/emoji2/viewsintegration/EmojiInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 66
    const/4 v5, 0x0

    move-object v1, p0

    move v3, p1

    move v4, p2

    .end local p1    # "beforeLength":I
    .end local p2    # "afterLength":I
    .local v3, "beforeLength":I
    .local v4, "afterLength":I
    invoke-virtual/range {v0 .. v5}, Landroidx/emoji2/viewsintegration/EmojiInputConnection$EmojiCompatDeleteHelper;->handleDeleteSurroundingText(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z

    move-result p1

    .line 68
    .local p1, "result":Z
    if-nez p1, :cond_19

    invoke-super {p0, v3, v4}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingText(II)Z

    move-result p2

    if-eqz p2, :cond_17

    goto :goto_19

    :cond_17
    const/4 p2, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p2, 0x1

    :goto_1a
    return p2
.end method

.method public deleteSurroundingTextInCodePoints(II)Z
    .registers 9
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .line 74
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiInputConnection;->mEmojiCompatDeleteHelper:Landroidx/emoji2/viewsintegration/EmojiInputConnection$EmojiCompatDeleteHelper;

    .line 75
    invoke-direct {p0}, Landroidx/emoji2/viewsintegration/EmojiInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 74
    const/4 v5, 0x1

    move-object v1, p0

    move v3, p1

    move v4, p2

    .end local p1    # "beforeLength":I
    .end local p2    # "afterLength":I
    .local v3, "beforeLength":I
    .local v4, "afterLength":I
    invoke-virtual/range {v0 .. v5}, Landroidx/emoji2/viewsintegration/EmojiInputConnection$EmojiCompatDeleteHelper;->handleDeleteSurroundingText(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z

    move-result p1

    .line 76
    .local p1, "result":Z
    if-nez p1, :cond_19

    invoke-super {p0, v3, v4}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingTextInCodePoints(II)Z

    move-result p2

    if-eqz p2, :cond_17

    goto :goto_19

    :cond_17
    const/4 p2, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p2, 0x1

    :goto_1a
    return p2
.end method

###### Class androidx.emoji2.viewsintegration.EmojiInputConnection.EmojiCompatDeleteHelper (androidx.emoji2.viewsintegration.EmojiInputConnection$EmojiCompatDeleteHelper)
.class public Landroidx/emoji2/viewsintegration/EmojiInputConnection$EmojiCompatDeleteHelper;
.super Ljava/lang/Object;
.source "EmojiInputConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/viewsintegration/EmojiInputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmojiCompatDeleteHelper"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleDeleteSurroundingText(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z
    .registers 7
    .param p1, "inputConnection"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "editable"    # Landroid/text/Editable;
    .param p3, "beforeLength"    # I
    .param p4, "afterLength"    # I
    .param p5, "inCodePoints"    # Z

    .line 90
    invoke-static {p1, p2, p3, p4, p5}, Landroidx/emoji2/text/EmojiCompat;->handleDeleteSurroundingText(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z

    move-result v0

    return v0
.end method

.method public updateEditorInfoAttrs(Landroid/view/inputmethod/EditorInfo;)V
    .registers 3
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .line 95
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->isConfigured()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 96
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/emoji2/text/EmojiCompat;->updateEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    .line 98
    :cond_d
    return-void
.end method
