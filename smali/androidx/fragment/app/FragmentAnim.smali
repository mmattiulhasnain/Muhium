###### Class androidx.fragment.app.FragmentAnim (androidx.fragment.app.FragmentAnim)
.class Landroidx/fragment/app/FragmentAnim;
.super Ljava/lang/Object;
.source "FragmentAnim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;,
        Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method static animateRemoveFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;Landroidx/fragment/app/FragmentTransition$Callback;)V
    .registers 10
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p1, "anim"    # Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;
    .param p2, "callback"    # Landroidx/fragment/app/FragmentTransition$Callback;

    .line 146
    iget-object v2, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 147
    .local v2, "viewToAnimate":Landroid/view/View;
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 148
    .local v1, "container":Landroid/view/ViewGroup;
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 149
    new-instance v5, Landroidx/core/os/CancellationSignal;

    invoke-direct {v5}, Landroidx/core/os/CancellationSignal;-><init>()V

    .line 150
    .local v5, "signal":Landroidx/core/os/CancellationSignal;
    new-instance v0, Landroidx/fragment/app/FragmentAnim$1;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentAnim$1;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v5, v0}, Landroidx/core/os/CancellationSignal;->setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    .line 161
    invoke-interface {p2, p0, v5}, Landroidx/fragment/app/FragmentTransition$Callback;->onStart(Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V

    .line 162
    iget-object v0, p1, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_37

    .line 163
    new-instance v0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;

    iget-object v3, p1, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-direct {v0, v3, v1, v2}, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 165
    .local v0, "animation":Landroid/view/animation/Animation;
    iget-object v3, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 166
    new-instance v3, Landroidx/fragment/app/FragmentAnim$2;

    invoke-direct {v3, v1, p0, p2, v5}, Landroidx/fragment/app/FragmentAnim$2;-><init>(Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentTransition$Callback;Landroidx/core/os/CancellationSignal;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 191
    iget-object v3, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 192
    .end local v0    # "animation":Landroid/view/animation/Animation;
    move-object v3, p0

    move-object v4, p2

    goto :goto_50

    .line 193
    :cond_37
    iget-object v6, p1, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    .line 194
    .local v6, "animator":Landroid/animation/Animator;
    iget-object v0, p1, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    .line 195
    new-instance v0, Landroidx/fragment/app/FragmentAnim$3;

    move-object v3, p0

    move-object v4, p2

    .end local p0    # "fragment":Landroidx/fragment/app/Fragment;
    .end local p2    # "callback":Landroidx/fragment/app/FragmentTransition$Callback;
    .local v3, "fragment":Landroidx/fragment/app/Fragment;
    .local v4, "callback":Landroidx/fragment/app/FragmentTransition$Callback;
    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/FragmentAnim$3;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentTransition$Callback;Landroidx/core/os/CancellationSignal;)V

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 208
    iget-object p0, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 209
    invoke-virtual {v6}, Landroid/animation/Animator;->start()V

    .line 211
    .end local v6    # "animator":Landroid/animation/Animator;
    :goto_50
    return-void
.end method

.method private static getNextAnim(Landroidx/fragment/app/Fragment;ZZ)I
    .registers 4
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p1, "enter"    # Z
    .param p2, "isPop"    # Z

    .line 121
    if-eqz p2, :cond_e

    .line 122
    if-eqz p1, :cond_9

    .line 123
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getPopEnterAnim()I

    move-result v0

    return v0

    .line 125
    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getPopExitAnim()I

    move-result v0

    return v0

    .line 128
    :cond_e
    if-eqz p1, :cond_15

    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getEnterAnim()I

    move-result v0

    return v0

    .line 131
    :cond_15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getExitAnim()I

    move-result v0

    return v0
.end method

.method static loadAnimation(Landroid/content/Context;Landroidx/fragment/app/Fragment;ZZ)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "enter"    # Z
    .param p3, "isPop"    # Z

    .line 46
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getNextTransition()I

    move-result v0

    .line 47
    .local v0, "transit":I
    invoke-static {p1, p2, p3}, Landroidx/fragment/app/FragmentAnim;->getNextAnim(Landroidx/fragment/app/Fragment;ZZ)I

    move-result v1

    .line 49
    .local v1, "nextAnim":I
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v2, v2}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 55
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    if-eqz v2, :cond_22

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    sget v4, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    .line 56
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 57
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    sget v4, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    invoke-virtual {v2, v4, v3}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 60
    :cond_22
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2f

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 61
    return-object v3

    .line 63
    :cond_2f
    invoke-virtual {p1, v0, p2, v1}, Landroidx/fragment/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v2

    .line 64
    .local v2, "animation":Landroid/view/animation/Animation;
    if-eqz v2, :cond_3b

    .line 65
    new-instance v3, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    invoke-direct {v3, v2}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    return-object v3

    .line 68
    :cond_3b
    invoke-virtual {p1, v0, p2, v1}, Landroidx/fragment/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object v4

    .line 69
    .local v4, "animator":Landroid/animation/Animator;
    if-eqz v4, :cond_47

    .line 70
    new-instance v3, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    invoke-direct {v3, v4}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/animation/Animator;)V

    return-object v3

    .line 73
    :cond_47
    if-nez v1, :cond_4f

    if-eqz v0, :cond_4f

    .line 74
    invoke-static {v0, p2}, Landroidx/fragment/app/FragmentAnim;->transitToAnimResourceId(IZ)I

    move-result v1

    .line 78
    :cond_4f
    if-eqz v1, :cond_95

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, "dir":Ljava/lang/String;
    const-string v6, "anim"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 81
    .local v6, "isAnim":Z
    const/4 v7, 0x0

    .line 82
    .local v7, "successfulLoad":Z
    if-eqz v6, :cond_75

    .line 85
    :try_start_62
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    move-object v2, v8

    .line 86
    if-eqz v2, :cond_6f

    .line 87
    new-instance v8, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    invoke-direct {v8, v2}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V
    :try_end_6e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_62 .. :try_end_6e} :catch_73
    .catch Ljava/lang/RuntimeException; {:try_start_62 .. :try_end_6e} :catch_71

    return-object v8

    .line 90
    :cond_6f
    const/4 v7, 0x1

    .line 95
    goto :goto_75

    .line 93
    :catch_71
    move-exception v8

    goto :goto_75

    .line 91
    :catch_73
    move-exception v3

    .line 92
    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    throw v3

    .line 97
    .end local v3    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_75
    :goto_75
    if-nez v7, :cond_95

    .line 100
    :try_start_77
    invoke-static {p0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v8

    move-object v4, v8

    .line 101
    if-eqz v4, :cond_84

    .line 102
    new-instance v8, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    invoke-direct {v8, v4}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/animation/Animator;)V
    :try_end_83
    .catch Ljava/lang/RuntimeException; {:try_start_77 .. :try_end_83} :catch_85

    return-object v8

    .line 114
    :cond_84
    goto :goto_95

    .line 104
    :catch_85
    move-exception v8

    .line 105
    .local v8, "e":Ljava/lang/RuntimeException;
    if-nez v6, :cond_94

    .line 110
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 111
    if-eqz v2, :cond_95

    .line 112
    new-instance v3, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    invoke-direct {v3, v2}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    return-object v3

    .line 107
    :cond_94
    throw v8

    .line 117
    .end local v5    # "dir":Ljava/lang/String;
    .end local v6    # "isAnim":Z
    .end local v7    # "successfulLoad":Z
    .end local v8    # "e":Ljava/lang/RuntimeException;
    :cond_95
    :goto_95
    return-object v3
.end method

.method private static transitToAnimResourceId(IZ)I
    .registers 4
    .param p0, "transit"    # I
    .param p1, "enter"    # Z

    .line 215
    const/4 v0, -0x1

    .line 216
    .local v0, "animAttr":I
    sparse-switch p0, :sswitch_data_22

    goto :goto_20

    .line 221
    :sswitch_5
    if-eqz p1, :cond_a

    sget v1, Landroidx/fragment/R$animator;->fragment_close_enter:I

    goto :goto_c

    :cond_a
    sget v1, Landroidx/fragment/R$animator;->fragment_close_exit:I

    :goto_c
    move v0, v1

    .line 222
    goto :goto_20

    .line 224
    :sswitch_e
    if-eqz p1, :cond_13

    sget v1, Landroidx/fragment/R$animator;->fragment_fade_enter:I

    goto :goto_15

    :cond_13
    sget v1, Landroidx/fragment/R$animator;->fragment_fade_exit:I

    :goto_15
    move v0, v1

    goto :goto_20

    .line 218
    :sswitch_17
    if-eqz p1, :cond_1c

    sget v1, Landroidx/fragment/R$animator;->fragment_open_enter:I

    goto :goto_1e

    :cond_1c
    sget v1, Landroidx/fragment/R$animator;->fragment_open_exit:I

    :goto_1e
    move v0, v1

    .line 219
    nop

    .line 227
    :goto_20
    return v0

    nop

    :sswitch_data_22
    .sparse-switch
        0x1001 -> :sswitch_17
        0x1003 -> :sswitch_e
        0x2002 -> :sswitch_5
    .end sparse-switch
.end method

###### Class androidx.fragment.app.FragmentAnim.AnonymousClass1 (androidx.fragment.app.FragmentAnim$1)
.class Landroidx/fragment/app/FragmentAnim$1;
.super Ljava/lang/Object;
.source "FragmentAnim.java"

# interfaces
.implements Landroidx/core/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentAnim;->animateRemoveFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;Landroidx/fragment/app/FragmentTransition$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$fragment:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;)V
    .registers 2

    .line 150
    iput-object p1, p0, Landroidx/fragment/app/FragmentAnim$1;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 4

    .line 153
    iget-object v0, p0, Landroidx/fragment/app/FragmentAnim$1;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 154
    iget-object v0, p0, Landroidx/fragment/app/FragmentAnim$1;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    .line 155
    .local v0, "v":Landroid/view/View;
    iget-object v2, p0, Landroidx/fragment/app/FragmentAnim$1;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v1}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 156
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 158
    .end local v0    # "v":Landroid/view/View;
    :cond_17
    iget-object v0, p0, Landroidx/fragment/app/FragmentAnim$1;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    .line 159
    return-void
.end method

###### Class androidx.fragment.app.FragmentAnim.AnonymousClass2 (androidx.fragment.app.FragmentAnim$2)
.class Landroidx/fragment/app/FragmentAnim$2;
.super Ljava/lang/Object;
.source "FragmentAnim.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentAnim;->animateRemoveFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;Landroidx/fragment/app/FragmentTransition$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroidx/fragment/app/FragmentTransition$Callback;

.field final synthetic val$container:Landroid/view/ViewGroup;

.field final synthetic val$fragment:Landroidx/fragment/app/Fragment;

.field final synthetic val$signal:Landroidx/core/os/CancellationSignal;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentTransition$Callback;Landroidx/core/os/CancellationSignal;)V
    .registers 5

    .line 166
    iput-object p1, p0, Landroidx/fragment/app/FragmentAnim$2;->val$container:Landroid/view/ViewGroup;

    iput-object p2, p0, Landroidx/fragment/app/FragmentAnim$2;->val$fragment:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Landroidx/fragment/app/FragmentAnim$2;->val$callback:Landroidx/fragment/app/FragmentTransition$Callback;

    iput-object p4, p0, Landroidx/fragment/app/FragmentAnim$2;->val$signal:Landroidx/core/os/CancellationSignal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 176
    iget-object v0, p0, Landroidx/fragment/app/FragmentAnim$2;->val$container:Landroid/view/ViewGroup;

    new-instance v1, Landroidx/fragment/app/FragmentAnim$2$1;

    invoke-direct {v1, p0}, Landroidx/fragment/app/FragmentAnim$2$1;-><init>(Landroidx/fragment/app/FragmentAnim$2;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 185
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 189
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 169
    return-void
.end method

###### Class androidx.fragment.app.FragmentAnim.AnonymousClass2.AnonymousClass1 (androidx.fragment.app.FragmentAnim$2$1)
.class Landroidx/fragment/app/FragmentAnim$2$1;
.super Ljava/lang/Object;
.source "FragmentAnim.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentAnim$2;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/fragment/app/FragmentAnim$2;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentAnim$2;)V
    .registers 2
    .param p1, "this$0"    # Landroidx/fragment/app/FragmentAnim$2;

    .line 176
    iput-object p1, p0, Landroidx/fragment/app/FragmentAnim$2$1;->this$0:Landroidx/fragment/app/FragmentAnim$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 179
    iget-object v0, p0, Landroidx/fragment/app/FragmentAnim$2$1;->this$0:Landroidx/fragment/app/FragmentAnim$2;

    iget-object v0, v0, Landroidx/fragment/app/FragmentAnim$2;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 180
    iget-object v0, p0, Landroidx/fragment/app/FragmentAnim$2$1;->this$0:Landroidx/fragment/app/FragmentAnim$2;

    iget-object v0, v0, Landroidx/fragment/app/FragmentAnim$2;->val$fragment:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 181
    iget-object v0, p0, Landroidx/fragment/app/FragmentAnim$2$1;->this$0:Landroidx/fragment/app/FragmentAnim$2;

    iget-object v0, v0, Landroidx/fragment/app/FragmentAnim$2;->val$callback:Landroidx/fragment/app/FragmentTransition$Callback;

    iget-object v1, p0, Landroidx/fragment/app/FragmentAnim$2$1;->this$0:Landroidx/fragment/app/FragmentAnim$2;

    iget-object v1, v1, Landroidx/fragment/app/FragmentAnim$2;->val$fragment:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Landroidx/fragment/app/FragmentAnim$2$1;->this$0:Landroidx/fragment/app/FragmentAnim$2;

    iget-object v2, v2, Landroidx/fragment/app/FragmentAnim$2;->val$signal:Landroidx/core/os/CancellationSignal;

    invoke-interface {v0, v1, v2}, Landroidx/fragment/app/FragmentTransition$Callback;->onComplete(Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V

    .line 183
    :cond_21
    return-void
.end method

###### Class androidx.fragment.app.FragmentAnim.AnonymousClass3 (androidx.fragment.app.FragmentAnim$3)
.class Landroidx/fragment/app/FragmentAnim$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FragmentAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentAnim;->animateRemoveFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;Landroidx/fragment/app/FragmentTransition$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroidx/fragment/app/FragmentTransition$Callback;

.field final synthetic val$container:Landroid/view/ViewGroup;

.field final synthetic val$fragment:Landroidx/fragment/app/Fragment;

.field final synthetic val$signal:Landroidx/core/os/CancellationSignal;

.field final synthetic val$viewToAnimate:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentTransition$Callback;Landroidx/core/os/CancellationSignal;)V
    .registers 6

    .line 195
    iput-object p1, p0, Landroidx/fragment/app/FragmentAnim$3;->val$container:Landroid/view/ViewGroup;

    iput-object p2, p0, Landroidx/fragment/app/FragmentAnim$3;->val$viewToAnimate:Landroid/view/View;

    iput-object p3, p0, Landroidx/fragment/app/FragmentAnim$3;->val$fragment:Landroidx/fragment/app/Fragment;

    iput-object p4, p0, Landroidx/fragment/app/FragmentAnim$3;->val$callback:Landroidx/fragment/app/FragmentTransition$Callback;

    iput-object p5, p0, Landroidx/fragment/app/FragmentAnim$3;->val$signal:Landroidx/core/os/CancellationSignal;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6
    .param p1, "anim"    # Landroid/animation/Animator;

    .line 198
    iget-object v0, p0, Landroidx/fragment/app/FragmentAnim$3;->val$container:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/fragment/app/FragmentAnim$3;->val$viewToAnimate:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 201
    iget-object v0, p0, Landroidx/fragment/app/FragmentAnim$3;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    .line 202
    .local v0, "animator":Landroid/animation/Animator;
    iget-object v1, p0, Landroidx/fragment/app/FragmentAnim$3;->val$fragment:Landroidx/fragment/app/Fragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    .line 203
    if-eqz v0, :cond_28

    iget-object v1, p0, Landroidx/fragment/app/FragmentAnim$3;->val$container:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroidx/fragment/app/FragmentAnim$3;->val$viewToAnimate:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-gez v1, :cond_28

    .line 204
    iget-object v1, p0, Landroidx/fragment/app/FragmentAnim$3;->val$callback:Landroidx/fragment/app/FragmentTransition$Callback;

    iget-object v2, p0, Landroidx/fragment/app/FragmentAnim$3;->val$fragment:Landroidx/fragment/app/Fragment;

    iget-object v3, p0, Landroidx/fragment/app/FragmentAnim$3;->val$signal:Landroidx/core/os/CancellationSignal;

    invoke-interface {v1, v2, v3}, Landroidx/fragment/app/FragmentTransition$Callback;->onComplete(Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V

    .line 206
    :cond_28
    return-void
.end method

###### Class androidx.fragment.app.FragmentAnim.AnimationOrAnimator (androidx.fragment.app.FragmentAnim$AnimationOrAnimator)
.class Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;
.super Ljava/lang/Object;
.source "FragmentAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimationOrAnimator"
.end annotation


# instance fields
.field public final animation:Landroid/view/animation/Animation;

.field public final animator:Landroid/animation/Animator;


# direct methods
.method constructor <init>(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    .line 247
    iput-object p1, p0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    .line 248
    if-eqz p1, :cond_b

    .line 251
    return-void

    .line 249
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Animator cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-object p1, p0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    .line 240
    if-eqz p1, :cond_b

    .line 243
    return-void

    .line 241
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Animation cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class androidx.fragment.app.FragmentAnim.EndViewTransitionAnimation (androidx.fragment.app.FragmentAnim$EndViewTransitionAnimation)
.class Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;
.super Landroid/view/animation/AnimationSet;
.source "FragmentAnim.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EndViewTransitionAnimation"
.end annotation


# instance fields
.field private mAnimating:Z

.field private final mChild:Landroid/view/View;

.field private mEnded:Z

.field private final mParent:Landroid/view/ViewGroup;

.field private mTransitionEnded:Z


# direct methods
.method constructor <init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 5
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "child"    # Landroid/view/View;

    .line 269
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mAnimating:Z

    .line 270
    iput-object p2, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mParent:Landroid/view/ViewGroup;

    .line 271
    iput-object p3, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mChild:Landroid/view/View;

    .line 272
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->addAnimation(Landroid/view/animation/Animation;)V

    .line 275
    iget-object v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 276
    return-void
.end method


# virtual methods
.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .registers 7
    .param p1, "currentTime"    # J
    .param p3, "t"    # Landroid/view/animation/Transformation;

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mAnimating:Z

    .line 281
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mEnded:Z

    if-eqz v1, :cond_b

    .line 282
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mTransitionEnded:Z

    xor-int/2addr v0, v1

    return v0

    .line 284
    :cond_b
    invoke-super {p0, p1, p2, p3}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v1

    .line 285
    .local v1, "more":Z
    if-nez v1, :cond_18

    .line 286
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mEnded:Z

    .line 287
    iget-object v2, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mParent:Landroid/view/ViewGroup;

    invoke-static {v2, p0}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    .line 289
    :cond_18
    return v0
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;F)Z
    .registers 8
    .param p1, "currentTime"    # J
    .param p3, "outTransformation"    # Landroid/view/animation/Transformation;
    .param p4, "scale"    # F

    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mAnimating:Z

    .line 296
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mEnded:Z

    if-eqz v1, :cond_b

    .line 297
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mTransitionEnded:Z

    xor-int/2addr v0, v1

    return v0

    .line 299
    :cond_b
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    move-result v1

    .line 300
    .local v1, "more":Z
    if-nez v1, :cond_18

    .line 301
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mEnded:Z

    .line 302
    iget-object v2, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mParent:Landroid/view/ViewGroup;

    invoke-static {v2, p0}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    .line 304
    :cond_18
    return v0
.end method

.method public run()V
    .registers 3

    .line 309
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mEnded:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mAnimating:Z

    if-eqz v0, :cond_11

    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mAnimating:Z

    .line 312
    iget-object v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_1b

    .line 314
    :cond_11
    iget-object v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mTransitionEnded:Z

    .line 317
    :goto_1b
    return-void
.end method
