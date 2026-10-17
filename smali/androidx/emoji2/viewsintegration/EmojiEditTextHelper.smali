###### Class androidx.emoji2.viewsintegration.EmojiEditTextHelper (androidx.emoji2.viewsintegration.EmojiEditTextHelper)
.class public final Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;
.super Ljava/lang/Object;
.source "EmojiEditTextHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;,
        Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal;
    }
.end annotation


# instance fields
.field private mEmojiReplaceStrategy:I

.field private final mHelper:Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal;

.field private mMaxEmojiCount:I


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .registers 3
    .param p1, "editText"    # Landroid/widget/EditText;

    .line 83
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;-><init>(Landroid/widget/EditText;Z)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;Z)V
    .registers 4
    .param p1, "editText"    # Landroid/widget/EditText;
    .param p2, "expectInitializedEmojiCompat"    # Z

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const v0, 0x7fffffff

    iput v0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->mMaxEmojiCount:I

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->mEmojiReplaceStrategy:I

    .line 106
    const-string v0, "editText cannot be null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    nop

    .line 110
    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;

    invoke-direct {v0, p1, p2}, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;-><init>(Landroid/widget/EditText;Z)V

    iput-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->mHelper:Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal;

    .line 112
    return-void
.end method


# virtual methods
.method public getEmojiReplaceStrategy()I
    .registers 2

    .line 204
    iget v0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->mEmojiReplaceStrategy:I

    return v0
.end method

.method public getKeyListener(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;
    .registers 3
    .param p1, "keyListener"    # Landroid/text/method/KeyListener;

    .line 155
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->mHelper:Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal;

    invoke-virtual {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal;->getKeyListener(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;

    move-result-object v0

    return-object v0
.end method

.method public getMaxEmojiCount()I
    .registers 2

    .line 139
    iget v0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->mMaxEmojiCount:I

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 214
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->mHelper:Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal;

    invoke-virtual {v0}, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 4
    .param p1, "inputConnection"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .line 173
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 174
    :cond_4
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->mHelper:Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal;

    invoke-virtual {v0, p1, p2}, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal;->onCreateInputConnection(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method public setEmojiReplaceStrategy(I)V
    .registers 3
    .param p1, "replaceStrategy"    # I

    .line 189
    iput p1, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->mEmojiReplaceStrategy:I

    .line 190
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->mHelper:Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal;

    invoke-virtual {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal;->setEmojiReplaceStrategy(I)V

    .line 191
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3
    .param p1, "isEnabled"    # Z

    .line 227
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->mHelper:Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal;

    invoke-virtual {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal;->setEnabled(Z)V

    .line 228
    return-void
.end method

.method public setMaxEmojiCount(I)V
    .registers 3
    .param p1, "maxEmojiCount"    # I

    .line 126
    const-string v0, "maxEmojiCount should be greater than 0"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 128
    iput p1, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->mMaxEmojiCount:I

    .line 129
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->mHelper:Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal;

    invoke-virtual {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal;->setMaxEmojiCount(I)V

    .line 130
    return-void
.end method

###### Class androidx.emoji2.viewsintegration.EmojiEditTextHelper.HelperInternal (androidx.emoji2.viewsintegration.EmojiEditTextHelper$HelperInternal)
.class Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal;
.super Ljava/lang/Object;
.source "EmojiEditTextHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HelperInternal"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getKeyListener(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;
    .registers 2
    .param p1, "keyListener"    # Landroid/text/method/KeyListener;

    .line 235
    return-object p1
.end method

.method isEnabled()Z
    .registers 2

    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method onCreateInputConnection(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 3
    .param p1, "inputConnection"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .line 240
    return-object p1
.end method

.method setEmojiReplaceStrategy(I)V
    .registers 2
    .param p1, "replaceStrategy"    # I

    .line 249
    return-void
.end method

.method setEnabled(Z)V
    .registers 2
    .param p1, "isEnabled"    # Z

    .line 253
    return-void
.end method

.method setMaxEmojiCount(I)V
    .registers 2
    .param p1, "maxEmojiCount"    # I

    .line 245
    return-void
.end method

###### Class androidx.emoji2.viewsintegration.EmojiEditTextHelper.HelperInternal19 (androidx.emoji2.viewsintegration.EmojiEditTextHelper$HelperInternal19)
.class Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;
.super Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal;
.source "EmojiEditTextHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HelperInternal19"
.end annotation


# instance fields
.field private final mEditText:Landroid/widget/EditText;

.field private final mTextWatcher:Landroidx/emoji2/viewsintegration/EmojiTextWatcher;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Z)V
    .registers 5
    .param p1, "editText"    # Landroid/widget/EditText;
    .param p2, "expectInitializedEmojiCompat"    # Z

    .line 265
    invoke-direct {p0}, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal;-><init>()V

    .line 266
    iput-object p1, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;->mEditText:Landroid/widget/EditText;

    .line 267
    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;

    iget-object v1, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;->mEditText:Landroid/widget/EditText;

    invoke-direct {v0, v1, p2}, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;-><init>(Landroid/widget/EditText;Z)V

    iput-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;->mTextWatcher:Landroidx/emoji2/viewsintegration/EmojiTextWatcher;

    .line 268
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;->mTextWatcher:Landroidx/emoji2/viewsintegration/EmojiTextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 269
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;->mEditText:Landroid/widget/EditText;

    invoke-static {}, Landroidx/emoji2/viewsintegration/EmojiEditableFactory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEditableFactory(Landroid/text/Editable$Factory;)V

    .line 270
    return-void
.end method


# virtual methods
.method getKeyListener(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;
    .registers 3
    .param p1, "keyListener"    # Landroid/text/method/KeyListener;

    .line 284
    instance-of v0, p1, Landroidx/emoji2/viewsintegration/EmojiKeyListener;

    if-eqz v0, :cond_5

    .line 285
    return-object p1

    .line 287
    :cond_5
    if-nez p1, :cond_9

    .line 291
    const/4 v0, 0x0

    return-object v0

    .line 293
    :cond_9
    instance-of v0, p1, Landroid/text/method/NumberKeyListener;

    if-eqz v0, :cond_e

    .line 296
    return-object p1

    .line 299
    :cond_e
    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiKeyListener;

    invoke-direct {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiKeyListener;-><init>(Landroid/text/method/KeyListener;)V

    return-object v0
.end method

.method isEnabled()Z
    .registers 2

    .line 324
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;->mTextWatcher:Landroidx/emoji2/viewsintegration/EmojiTextWatcher;

    invoke-virtual {v0}, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->isEnabled()Z

    move-result v0

    return v0
.end method

.method onCreateInputConnection(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 5
    .param p1, "inputConnection"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .line 305
    instance-of v0, p1, Landroidx/emoji2/viewsintegration/EmojiInputConnection;

    if-eqz v0, :cond_5

    .line 306
    return-object p1

    .line 310
    :cond_5
    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiInputConnection;

    iget-object v1, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;->mEditText:Landroid/widget/EditText;

    invoke-direct {v0, v1, p1, p2}, Landroidx/emoji2/viewsintegration/EmojiInputConnection;-><init>(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    return-object v0
.end method

.method setEmojiReplaceStrategy(I)V
    .registers 3
    .param p1, "replaceStrategy"    # I

    .line 279
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;->mTextWatcher:Landroidx/emoji2/viewsintegration/EmojiTextWatcher;

    invoke-virtual {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->setEmojiReplaceStrategy(I)V

    .line 280
    return-void
.end method

.method setEnabled(Z)V
    .registers 3
    .param p1, "isEnabled"    # Z

    .line 315
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;->mTextWatcher:Landroidx/emoji2/viewsintegration/EmojiTextWatcher;

    invoke-virtual {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->setEnabled(Z)V

    .line 320
    return-void
.end method

.method setMaxEmojiCount(I)V
    .registers 3
    .param p1, "maxEmojiCount"    # I

    .line 274
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;->mTextWatcher:Landroidx/emoji2/viewsintegration/EmojiTextWatcher;

    invoke-virtual {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->setMaxEmojiCount(I)V

    .line 275
    return-void
.end method
