###### Class androidx.emoji2.viewsintegration.EmojiInputFilter (androidx.emoji2.viewsintegration.EmojiInputFilter)
.class final Landroidx/emoji2/viewsintegration/EmojiInputFilter;
.super Ljava/lang/Object;
.source "EmojiInputFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/viewsintegration/EmojiInputFilter$InitCallbackImpl;
    }
.end annotation


# instance fields
.field private mInitCallback:Landroidx/emoji2/text/EmojiCompat$InitCallback;

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .registers 2
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroidx/emoji2/viewsintegration/EmojiInputFilter;->mTextView:Landroid/widget/TextView;

    .line 51
    return-void
.end method

.method private getInitCallback()Landroidx/emoji2/text/EmojiCompat$InitCallback;
    .registers 3

    .line 93
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiInputFilter;->mInitCallback:Landroidx/emoji2/text/EmojiCompat$InitCallback;

    if-nez v0, :cond_d

    .line 94
    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiInputFilter$InitCallbackImpl;

    iget-object v1, p0, Landroidx/emoji2/viewsintegration/EmojiInputFilter;->mTextView:Landroid/widget/TextView;

    invoke-direct {v0, v1, p0}, Landroidx/emoji2/viewsintegration/EmojiInputFilter$InitCallbackImpl;-><init>(Landroid/widget/TextView;Landroidx/emoji2/viewsintegration/EmojiInputFilter;)V

    iput-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiInputFilter;->mInitCallback:Landroidx/emoji2/text/EmojiCompat$InitCallback;

    .line 96
    :cond_d
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiInputFilter;->mInitCallback:Landroidx/emoji2/text/EmojiCompat$InitCallback;

    return-object v0
.end method

.method static updateSelection(Landroid/text/Spannable;II)V
    .registers 3
    .param p0, "spannable"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 163
    if-ltz p1, :cond_8

    if-ltz p2, :cond_8

    .line 164
    invoke-static {p0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_13

    .line 165
    :cond_8
    if-ltz p1, :cond_e

    .line 166
    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_13

    .line 167
    :cond_e
    if-ltz p2, :cond_13

    .line 168
    invoke-static {p0, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 170
    :cond_13
    :goto_13
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 12
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "sourceStart"    # I
    .param p3, "sourceEnd"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "destStart"    # I
    .param p6, "destEnd"    # I

    .line 56
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiInputFilter;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 57
    return-object p1

    .line 60
    :cond_9
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiCompat;->getLoadState()I

    move-result v0

    packed-switch v0, :pswitch_data_56

    .line 88
    :pswitch_14
    return-object p1

    .line 62
    :pswitch_15
    const/4 v0, 0x1

    .line 63
    .local v0, "process":Z
    if-nez p6, :cond_29

    if-nez p5, :cond_29

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v1

    if-nez v1, :cond_29

    .line 64
    iget-object v1, p0, Landroidx/emoji2/viewsintegration/EmojiInputFilter;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 65
    .local v1, "oldText":Ljava/lang/CharSequence;
    if-ne p1, v1, :cond_29

    .line 66
    const/4 v0, 0x0

    .line 70
    .end local v1    # "oldText":Ljava/lang/CharSequence;
    :cond_29
    if-eqz v0, :cond_49

    if-eqz p1, :cond_49

    .line 72
    if-nez p2, :cond_37

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne p3, v1, :cond_37

    .line 73
    move-object v1, p1

    .local v1, "text":Ljava/lang/CharSequence;
    goto :goto_3b

    .line 75
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_37
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 77
    .restart local v1    # "text":Ljava/lang/CharSequence;
    :goto_3b
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4}, Landroidx/emoji2/text/EmojiCompat;->process(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    .line 80
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_49
    return-object p1

    .line 83
    .end local v0    # "process":Z
    :pswitch_4a
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    move-result-object v0

    invoke-direct {p0}, Landroidx/emoji2/viewsintegration/EmojiInputFilter;->getInitCallback()Landroidx/emoji2/text/EmojiCompat$InitCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/emoji2/text/EmojiCompat;->registerInitCallback(Landroidx/emoji2/text/EmojiCompat$InitCallback;)V

    .line 84
    return-object p1

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_15
        :pswitch_14
        :pswitch_4a
    .end packed-switch
.end method

###### Class androidx.emoji2.viewsintegration.EmojiInputFilter.InitCallbackImpl (androidx.emoji2.viewsintegration.EmojiInputFilter$InitCallbackImpl)
.class Landroidx/emoji2/viewsintegration/EmojiInputFilter$InitCallbackImpl;
.super Landroidx/emoji2/text/EmojiCompat$InitCallback;
.source "EmojiInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/viewsintegration/EmojiInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InitCallbackImpl"
.end annotation


# instance fields
.field private final mEmojiInputFilterReference:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Landroidx/emoji2/viewsintegration/EmojiInputFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/widget/TextView;Landroidx/emoji2/viewsintegration/EmojiInputFilter;)V
    .registers 4
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "emojiInputFilter"    # Landroidx/emoji2/viewsintegration/EmojiInputFilter;

    .line 105
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiCompat$InitCallback;-><init>()V

    .line 106
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiInputFilter$InitCallbackImpl;->mViewRef:Ljava/lang/ref/Reference;

    .line 107
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiInputFilter$InitCallbackImpl;->mEmojiInputFilterReference:Ljava/lang/ref/Reference;

    .line 108
    return-void
.end method

.method private isInputFilterCurrentlyRegisteredOnTextView(Landroid/widget/TextView;Landroid/text/InputFilter;)Z
    .registers 7
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "myInputFilter"    # Landroid/text/InputFilter;

    .line 144
    const/4 v0, 0x0

    if-eqz p2, :cond_1b

    if-nez p1, :cond_6

    goto :goto_1b

    .line 148
    :cond_6
    invoke-virtual {p1}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v1

    .line 149
    .local v1, "currentFilters":[Landroid/text/InputFilter;
    if-nez v1, :cond_d

    .line 151
    return v0

    .line 153
    :cond_d
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    array-length v3, v1

    if-ge v2, v3, :cond_1a

    .line 154
    aget-object v3, v1, v2

    if-ne v3, p2, :cond_17

    .line 155
    const/4 v0, 0x1

    return v0

    .line 153
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 158
    .end local v2    # "i":I
    :cond_1a
    return v0

    .line 146
    .end local v1    # "currentFilters":[Landroid/text/InputFilter;
    :cond_1b
    :goto_1b
    return v0
.end method


# virtual methods
.method public onInitialized()V
    .registers 8

    .line 112
    invoke-super {p0}, Landroidx/emoji2/text/EmojiCompat$InitCallback;->onInitialized()V

    .line 113
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiInputFilter$InitCallbackImpl;->mViewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 114
    .local v0, "textView":Landroid/widget/TextView;
    iget-object v1, p0, Landroidx/emoji2/viewsintegration/EmojiInputFilter$InitCallbackImpl;->mEmojiInputFilterReference:Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/InputFilter;

    .line 115
    .local v1, "myInputFilter":Landroid/text/InputFilter;
    invoke-direct {p0, v0, v1}, Landroidx/emoji2/viewsintegration/EmojiInputFilter$InitCallbackImpl;->isInputFilterCurrentlyRegisteredOnTextView(Landroid/widget/TextView;Landroid/text/InputFilter;)Z

    move-result v2

    if-nez v2, :cond_1a

    return-void

    .line 116
    :cond_1a
    invoke-virtual {v0}, Landroid/widget/TextView;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 117
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 118
    .local v2, "originalText":Ljava/lang/CharSequence;
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/emoji2/text/EmojiCompat;->process(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 121
    .local v3, "result":Ljava/lang/CharSequence;
    if-ne v2, v3, :cond_2f

    .line 128
    return-void

    .line 131
    :cond_2f
    invoke-static {v3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    .line 132
    .local v4, "selectionStart":I
    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v5

    .line 134
    .local v5, "selectionEnd":I
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    instance-of v6, v3, Landroid/text/Spannable;

    if-eqz v6, :cond_44

    .line 137
    move-object v6, v3

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6, v4, v5}, Landroidx/emoji2/viewsintegration/EmojiInputFilter;->updateSelection(Landroid/text/Spannable;II)V

    .line 140
    .end local v2    # "originalText":Ljava/lang/CharSequence;
    .end local v3    # "result":Ljava/lang/CharSequence;
    .end local v4    # "selectionStart":I
    .end local v5    # "selectionEnd":I
    :cond_44
    return-void
.end method
