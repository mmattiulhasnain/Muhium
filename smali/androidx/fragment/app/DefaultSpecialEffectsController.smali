###### Class androidx.fragment.app.DefaultSpecialEffectsController (androidx.fragment.app.DefaultSpecialEffectsController)
.class Landroidx/fragment/app/DefaultSpecialEffectsController;
.super Landroidx/fragment/app/SpecialEffectsController;
.source "DefaultSpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;,
        Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;,
        Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .registers 2
    .param p1, "container"    # Landroid/view/ViewGroup;

    .line 52
    invoke-direct {p0, p1}, Landroidx/fragment/app/SpecialEffectsController;-><init>(Landroid/view/ViewGroup;)V

    .line 53
    return-void
.end method

.method private startAnimations(Ljava/util/List;Ljava/util/List;ZLjava/util/Map;)V
    .registers 22
    .param p3, "startedAnyTransition"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            ">;Z",
            "Ljava/util/Map<",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 132
    .local p1, "animationInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;>;"
    .local p2, "awaitingContainerChanges":Ljava/util/List;, "Ljava/util/List<Landroidx/fragment/app/SpecialEffectsController$Operation;>;"
    .local p4, "startedTransitions":Ljava/util/Map;, "Ljava/util/Map<Landroidx/fragment/app/SpecialEffectsController$Operation;Ljava/lang/Boolean;>;"
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    move-result-object v2

    .line 133
    .local v2, "container":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 134
    .local v7, "context":Landroid/content/Context;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 137
    .local v8, "animationsToRun":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;>;"
    const/4 v0, 0x0

    .line 138
    .local v0, "startedAnyAnimator":Z
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_13
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v3, "FragmentManager"

    const/4 v4, 0x2

    if-eqz v1, :cond_be

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    .line 139
    .local v6, "animationInfo":Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;
    invoke-virtual {v6}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->isVisibilityUnchanged()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 141
    invoke-virtual {v6}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->completeSpecialEffect()V

    .line 142
    move-object/from16 v13, p4

    goto :goto_13

    .line 144
    :cond_2f
    invoke-virtual {v6, v7}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->getAnimation(Landroid/content/Context;)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    move-result-object v10

    .line 145
    .local v10, "anim":Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;
    if-nez v10, :cond_3b

    .line 147
    invoke-virtual {v6}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->completeSpecialEffect()V

    .line 148
    move-object/from16 v13, p4

    goto :goto_13

    .line 150
    :cond_3b
    iget-object v11, v10, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    .line 151
    .local v11, "animator":Landroid/animation/Animator;
    if-nez v11, :cond_45

    .line 153
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    move-object/from16 v13, p4

    goto :goto_13

    .line 158
    :cond_45
    invoke-virtual {v6}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v5

    .line 159
    .local v5, "operation":Landroidx/fragment/app/SpecialEffectsController$Operation;
    invoke-virtual {v5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v12

    .line 160
    .local v12, "fragment":Landroidx/fragment/app/Fragment;
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v13, p4

    invoke-interface {v13, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 161
    .local v14, "startedTransition":Z
    if-eqz v14, :cond_81

    .line 162
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring Animator set on "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " as this Fragment was involved in a Transition."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_7d
    invoke-virtual {v6}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->completeSpecialEffect()V

    .line 167
    goto :goto_13

    .line 171
    :cond_81
    const/4 v15, 0x1

    .line 172
    .end local v0    # "startedAnyAnimator":Z
    .local v15, "startedAnyAnimator":Z
    invoke-virtual {v5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v0

    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-ne v0, v1, :cond_8c

    const/4 v0, 0x1

    goto :goto_8d

    :cond_8c
    const/4 v0, 0x0

    :goto_8d
    move v4, v0

    .line 173
    .local v4, "isHideOperation":Z
    if-eqz v4, :cond_96

    .line 177
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_98

    .line 173
    :cond_96
    move-object/from16 v0, p2

    .line 179
    :goto_98
    iget-object v3, v12, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 180
    .local v3, "viewToAnimate":Landroid/view/View;
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 181
    new-instance v0, Landroidx/fragment/app/DefaultSpecialEffectsController$2;

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Landroidx/fragment/app/DefaultSpecialEffectsController$2;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/view/ViewGroup;Landroid/view/View;ZLandroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;)V

    invoke-virtual {v11, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 193
    invoke-virtual {v11, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 194
    invoke-virtual {v11}, Landroid/animation/Animator;->start()V

    .line 196
    invoke-virtual {v6}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->getSignal()Landroidx/core/os/CancellationSignal;

    move-result-object v0

    .line 197
    .local v0, "signal":Landroidx/core/os/CancellationSignal;
    move-object/from16 v16, v3

    .end local v3    # "viewToAnimate":Landroid/view/View;
    .local v16, "viewToAnimate":Landroid/view/View;
    new-instance v3, Landroidx/fragment/app/DefaultSpecialEffectsController$3;

    invoke-direct {v3, v1, v11}, Landroidx/fragment/app/DefaultSpecialEffectsController$3;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/animation/Animator;)V

    invoke-virtual {v0, v3}, Landroidx/core/os/CancellationSignal;->setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    .line 203
    .end local v0    # "signal":Landroidx/core/os/CancellationSignal;
    .end local v4    # "isHideOperation":Z
    .end local v5    # "operation":Landroidx/fragment/app/SpecialEffectsController$Operation;
    .end local v6    # "animationInfo":Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;
    .end local v10    # "anim":Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;
    .end local v11    # "animator":Landroid/animation/Animator;
    .end local v12    # "fragment":Landroidx/fragment/app/Fragment;
    .end local v14    # "startedTransition":Z
    .end local v16    # "viewToAnimate":Landroid/view/View;
    move v0, v15

    goto/16 :goto_13

    .line 206
    .end local v15    # "startedAnyAnimator":Z
    .local v0, "startedAnyAnimator":Z
    :cond_be
    move-object/from16 v1, p0

    move-object/from16 v13, p4

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_c6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    .line 208
    .restart local v6    # "animationInfo":Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;
    invoke-virtual {v6}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v9

    .line 209
    .local v9, "operation":Landroidx/fragment/app/SpecialEffectsController$Operation;
    invoke-virtual {v9}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v10

    .line 210
    .local v10, "fragment":Landroidx/fragment/app/Fragment;
    const-string v11, "Ignoring Animation set on "

    if-eqz p3, :cond_102

    .line 211
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v12

    if-eqz v12, :cond_fe

    .line 212
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " as Animations cannot run alongside Transitions."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_fe
    invoke-virtual {v6}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->completeSpecialEffect()V

    .line 216
    goto :goto_c6

    .line 219
    :cond_102
    if-eqz v0, :cond_128

    .line 220
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v12

    if-eqz v12, :cond_124

    .line 221
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " as Animations cannot run alongside Animators."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_124
    invoke-virtual {v6}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->completeSpecialEffect()V

    .line 225
    goto :goto_c6

    .line 229
    :cond_128
    iget-object v11, v10, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 230
    .local v11, "viewToAnimate":Landroid/view/View;
    nop

    .line 231
    invoke-virtual {v6, v7}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->getAnimation(Landroid/content/Context;)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    move-result-object v12

    invoke-static {v12}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    iget-object v12, v12, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    .line 230
    invoke-static {v12}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/animation/Animation;

    .line 232
    .local v12, "anim":Landroid/view/animation/Animation;
    invoke-virtual {v9}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v14

    .line 233
    .local v14, "finalState":Landroidx/fragment/app/SpecialEffectsController$Operation$State;
    sget-object v15, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->REMOVED:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-eq v14, v15, :cond_14c

    .line 236
    invoke-virtual {v11, v12}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 240
    invoke-virtual {v6}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->completeSpecialEffect()V

    goto :goto_15f

    .line 242
    :cond_14c
    invoke-virtual {v2, v11}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 243
    new-instance v15, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;

    invoke-direct {v15, v12, v2, v11}, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 245
    .local v15, "animation":Landroid/view/animation/Animation;
    new-instance v4, Landroidx/fragment/app/DefaultSpecialEffectsController$4;

    invoke-direct {v4, v1, v2, v11, v6}, Landroidx/fragment/app/DefaultSpecialEffectsController$4;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;)V

    invoke-virtual {v15, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 268
    invoke-virtual {v11, v15}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 271
    .end local v15    # "animation":Landroid/view/animation/Animation;
    :goto_15f
    invoke-virtual {v6}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->getSignal()Landroidx/core/os/CancellationSignal;

    move-result-object v4

    .line 272
    .local v4, "signal":Landroidx/core/os/CancellationSignal;
    new-instance v15, Landroidx/fragment/app/DefaultSpecialEffectsController$5;

    invoke-direct {v15, v1, v11, v2, v6}, Landroidx/fragment/app/DefaultSpecialEffectsController$5;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/view/View;Landroid/view/ViewGroup;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;)V

    invoke-virtual {v4, v15}, Landroidx/core/os/CancellationSignal;->setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    .line 280
    .end local v4    # "signal":Landroidx/core/os/CancellationSignal;
    .end local v6    # "animationInfo":Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;
    .end local v9    # "operation":Landroidx/fragment/app/SpecialEffectsController$Operation;
    .end local v10    # "fragment":Landroidx/fragment/app/Fragment;
    .end local v11    # "viewToAnimate":Landroid/view/View;
    .end local v12    # "anim":Landroid/view/animation/Animation;
    .end local v14    # "finalState":Landroidx/fragment/app/SpecialEffectsController$Operation$State;
    const/4 v4, 0x2

    goto/16 :goto_c6

    .line 281
    :cond_16e
    return-void
.end method

.method private startTransitions(Ljava/util/List;Ljava/util/List;ZLandroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/SpecialEffectsController$Operation;)Ljava/util/Map;
    .registers 40
    .param p3, "isPop"    # Z
    .param p4, "firstOut"    # Landroidx/fragment/app/SpecialEffectsController$Operation;
    .param p5, "lastIn"    # Landroidx/fragment/app/SpecialEffectsController$Operation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            ">;Z",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            ")",
            "Ljava/util/Map<",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 288
    .local p1, "transitionInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;>;"
    .local p2, "awaitingContainerChanges":Ljava/util/List;, "Ljava/util/List<Landroidx/fragment/app/SpecialEffectsController$Operation;>;"
    move-object/from16 v1, p0

    move/from16 v4, p3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v6, v0

    .line 290
    .local v6, "startedTransitions":Ljava/util/Map;, "Ljava/util/Map<Landroidx/fragment/app/SpecialEffectsController$Operation;Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    .line 291
    .local v0, "transitionImpl":Landroidx/fragment/app/FragmentTransitionImpl;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v7, v0

    .end local v0    # "transitionImpl":Landroidx/fragment/app/FragmentTransitionImpl;
    .local v7, "transitionImpl":Landroidx/fragment/app/FragmentTransitionImpl;
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 292
    .local v0, "transitionInfo":Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;
    invoke-virtual {v0}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->isVisibilityUnchanged()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 294
    goto :goto_10

    .line 296
    :cond_23
    invoke-virtual {v0}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getHandlingImpl()Landroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v3

    .line 297
    .local v3, "handlingImpl":Landroidx/fragment/app/FragmentTransitionImpl;
    if-nez v7, :cond_2c

    .line 298
    move-object v5, v3

    move-object v7, v5

    .end local v7    # "transitionImpl":Landroidx/fragment/app/FragmentTransitionImpl;
    .local v5, "transitionImpl":Landroidx/fragment/app/FragmentTransitionImpl;
    goto :goto_66

    .line 299
    .end local v5    # "transitionImpl":Landroidx/fragment/app/FragmentTransitionImpl;
    .restart local v7    # "transitionImpl":Landroidx/fragment/app/FragmentTransitionImpl;
    :cond_2c
    if-eqz v3, :cond_66

    if-ne v7, v3, :cond_31

    goto :goto_66

    .line 300
    :cond_31
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 302
    invoke-virtual {v0}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " returned Transition "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 303
    invoke-virtual {v0}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getTransition()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " which uses a different Transition  type than other Fragments."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 306
    .end local v0    # "transitionInfo":Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;
    .end local v3    # "handlingImpl":Landroidx/fragment/app/FragmentTransitionImpl;
    :cond_66
    :goto_66
    goto :goto_10

    .line 307
    :cond_67
    const/4 v15, 0x0

    if-nez v7, :cond_8a

    .line 309
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_89

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 310
    .local v2, "transitionInfo":Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;
    invoke-virtual {v2}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v3

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v6, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    invoke-virtual {v2}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->completeSpecialEffect()V

    .line 312
    .end local v2    # "transitionInfo":Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;
    goto :goto_6e

    .line 313
    :cond_89
    return-object v6

    .line 319
    :cond_8a
    new-instance v0, Landroid/view/View;

    invoke-virtual {v1}, Landroidx/fragment/app/DefaultSpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object v8, v0

    .line 322
    .local v8, "nonExistentView":Landroid/view/View;
    const/4 v0, 0x0

    .line 323
    .local v0, "sharedElementTransition":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 324
    .local v2, "firstOutEpicenterView":Landroid/view/View;
    const/4 v3, 0x0

    .line 325
    .local v3, "hasLastInEpicenter":Z
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object v9, v5

    .line 326
    .local v9, "lastInEpicenterRect":Landroid/graphics/Rect;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v5

    .line 327
    .local v10, "sharedElementFirstOutViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .local v14, "sharedElementLastInViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v12, Landroidx/collection/ArrayMap;

    invoke-direct {v12}, Landroidx/collection/ArrayMap;-><init>()V

    move-object v11, v12

    .line 329
    .local v11, "sharedElementNameMapping":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move-object v12, v2

    move/from16 v17, v3

    .end local v2    # "firstOutEpicenterView":Landroid/view/View;
    .end local v3    # "hasLastInEpicenter":Z
    .local v12, "firstOutEpicenterView":Landroid/view/View;
    .local v17, "hasLastInEpicenter":Z
    :goto_b9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_365

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 330
    .local v18, "transitionInfo":Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;
    invoke-virtual/range {v18 .. v18}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->hasSharedElementTransition()Z

    move-result v19

    .line 332
    .local v19, "hasSharedElementTransition":Z
    if-eqz v19, :cond_34c

    if-eqz p4, :cond_34c

    if-eqz p5, :cond_34c

    .line 334
    nop

    .line 336
    invoke-virtual/range {v18 .. v18}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getSharedElementTransition()Ljava/lang/Object;

    move-result-object v2

    .line 335
    invoke-virtual {v7, v2}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 334
    invoke-virtual {v7, v2}, Landroidx/fragment/app/FragmentTransitionImpl;->wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 339
    invoke-virtual/range {p5 .. p5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 340
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    move-result-object v2

    .line 343
    .local v2, "exitingNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v3

    .line 344
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    move-result-object v3

    .line 345
    .local v3, "firstOutSourceNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v5

    .line 346
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    move-result-object v5

    .line 349
    .local v5, "firstOutTargetNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v20, 0x0

    move/from16 v15, v20

    .local v15, "index":I
    :goto_fa
    const/16 v20, 0x1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v15, v13, :cond_11b

    .line 350
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    .line 351
    .local v13, "nameIndex":I
    move-object/from16 v22, v0

    .end local v0    # "sharedElementTransition":Ljava/lang/Object;
    .local v22, "sharedElementTransition":Ljava/lang/Object;
    const/4 v0, -0x1

    if-eq v13, v0, :cond_116

    .line 354
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v13, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 349
    .end local v13    # "nameIndex":I
    :cond_116
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v22

    goto :goto_fa

    .end local v22    # "sharedElementTransition":Ljava/lang/Object;
    .restart local v0    # "sharedElementTransition":Ljava/lang/Object;
    :cond_11b
    move-object/from16 v22, v0

    .line 357
    .end local v0    # "sharedElementTransition":Ljava/lang/Object;
    .end local v15    # "index":I
    .restart local v22    # "sharedElementTransition":Ljava/lang/Object;
    invoke-virtual/range {p5 .. p5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 358
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    move-result-object v15

    .line 361
    .local v15, "enteringNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v4, :cond_13d

    .line 364
    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object v0

    .line 365
    .local v0, "exitingCallback":Landroidx/core/app/SharedElementCallback;
    invoke-virtual/range {p5 .. p5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object v13

    move-object/from16 v33, v13

    move-object v13, v0

    move-object/from16 v0, v33

    .local v13, "enteringCallback":Landroidx/core/app/SharedElementCallback;
    goto :goto_152

    .line 369
    .end local v0    # "exitingCallback":Landroidx/core/app/SharedElementCallback;
    .end local v13    # "enteringCallback":Landroidx/core/app/SharedElementCallback;
    :cond_13d
    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object v0

    .line 370
    .restart local v0    # "exitingCallback":Landroidx/core/app/SharedElementCallback;
    invoke-virtual/range {p5 .. p5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object v13

    move-object/from16 v33, v13

    move-object v13, v0

    move-object/from16 v0, v33

    .line 372
    .local v0, "enteringCallback":Landroidx/core/app/SharedElementCallback;
    .local v13, "exitingCallback":Landroidx/core/app/SharedElementCallback;
    :goto_152
    move-object/from16 v23, v12

    .end local v12    # "firstOutEpicenterView":Landroid/view/View;
    .local v23, "firstOutEpicenterView":Landroid/view/View;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 373
    .local v12, "numSharedElements":I
    const/16 v24, 0x0

    move-object/from16 v25, v3

    move/from16 v3, v24

    .local v3, "i":I
    .local v25, "firstOutSourceNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_15e
    if-ge v3, v12, :cond_17c

    .line 374
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v26, v5

    .end local v5    # "firstOutTargetNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v26, "firstOutTargetNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v5, v24

    check-cast v5, Ljava/lang/String;

    .line 375
    .local v5, "exitingName":Ljava/lang/String;
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    move/from16 v27, v3

    .end local v3    # "i":I
    .local v27, "i":I
    move-object/from16 v3, v24

    check-cast v3, Ljava/lang/String;

    .line 376
    .local v3, "enteringName":Ljava/lang/String;
    invoke-virtual {v11, v5, v3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    .end local v3    # "enteringName":Ljava/lang/String;
    .end local v5    # "exitingName":Ljava/lang/String;
    add-int/lit8 v3, v27, 0x1

    move-object/from16 v5, v26

    .end local v27    # "i":I
    .local v3, "i":I
    goto :goto_15e

    .end local v26    # "firstOutTargetNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v5, "firstOutTargetNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_17c
    move/from16 v27, v3

    move-object/from16 v26, v5

    .line 381
    .end local v3    # "i":I
    .end local v5    # "firstOutTargetNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v26    # "firstOutTargetNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Landroidx/collection/ArrayMap;

    invoke-direct {v3}, Landroidx/collection/ArrayMap;-><init>()V

    .line 382
    .local v3, "firstOutViews":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v5

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v3, v5}, Landroidx/fragment/app/DefaultSpecialEffectsController;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 383
    invoke-virtual {v3, v2}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 384
    if-eqz v13, :cond_1de

    .line 386
    invoke-virtual {v13, v2, v3}, Landroidx/core/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 387
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_19c
    if-ltz v5, :cond_1d9

    .line 388
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v27, v2

    .end local v2    # "exitingNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v27, "exitingNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v2, v24

    check-cast v2, Ljava/lang/String;

    .line 389
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v3, v2}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/View;

    .line 390
    .local v24, "view":Landroid/view/View;
    if-nez v24, :cond_1b6

    .line 391
    invoke-virtual {v11, v2}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v28, v5

    goto :goto_1d4

    .line 392
    :cond_1b6
    move/from16 v28, v5

    .end local v5    # "i":I
    .local v28, "i":I
    invoke-static/range {v24 .. v24}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d2

    .line 393
    invoke-virtual {v11, v2}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 394
    .local v5, "targetValue":Ljava/lang/String;
    move-object/from16 v29, v2

    .end local v2    # "name":Ljava/lang/String;
    .local v29, "name":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2, v5}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d4

    .line 392
    .end local v5    # "targetValue":Ljava/lang/String;
    .end local v29    # "name":Ljava/lang/String;
    .restart local v2    # "name":Ljava/lang/String;
    :cond_1d2
    move-object/from16 v29, v2

    .line 387
    .end local v2    # "name":Ljava/lang/String;
    .end local v24    # "view":Landroid/view/View;
    :goto_1d4
    add-int/lit8 v5, v28, -0x1

    move-object/from16 v2, v27

    .end local v28    # "i":I
    .local v5, "i":I
    goto :goto_19c

    .end local v27    # "exitingNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v2, "exitingNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1d9
    move-object/from16 v27, v2

    move/from16 v28, v5

    .end local v2    # "exitingNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "i":I
    .restart local v27    # "exitingNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_1e7

    .line 400
    .end local v27    # "exitingNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "exitingNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1de
    move-object/from16 v27, v2

    .end local v2    # "exitingNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v27    # "exitingNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 405
    :goto_1e7
    new-instance v5, Landroidx/collection/ArrayMap;

    invoke-direct {v5}, Landroidx/collection/ArrayMap;-><init>()V

    .line 406
    .local v5, "lastInViews":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual/range {p5 .. p5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v5, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 407
    invoke-virtual {v5, v15}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 408
    invoke-virtual {v11}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 409
    if-eqz v0, :cond_256

    .line 411
    invoke-virtual {v0, v15, v5}, Landroidx/core/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 412
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_20a
    if-ltz v2, :cond_251

    .line 413
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v28, v0

    .end local v0    # "enteringCallback":Landroidx/core/app/SharedElementCallback;
    .local v28, "enteringCallback":Landroidx/core/app/SharedElementCallback;
    move-object/from16 v0, v24

    check-cast v0, Ljava/lang/String;

    .line 414
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v5, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/View;

    .line 415
    .restart local v24    # "view":Landroid/view/View;
    if-nez v24, :cond_22a

    .line 416
    move/from16 v29, v2

    .end local v2    # "i":I
    .local v29, "i":I
    invoke-static {v11, v0}, Landroidx/fragment/app/FragmentTransition;->findKeyForValue(Landroidx/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 418
    .local v2, "key":Ljava/lang/String;
    if-eqz v2, :cond_229

    .line 419
    invoke-virtual {v11, v2}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    .end local v2    # "key":Ljava/lang/String;
    :cond_229
    goto :goto_24c

    .end local v29    # "i":I
    .local v2, "i":I
    :cond_22a
    move/from16 v29, v2

    .end local v2    # "i":I
    .restart local v29    # "i":I
    invoke-static/range {v24 .. v24}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24a

    .line 422
    invoke-static {v11, v0}, Landroidx/fragment/app/FragmentTransition;->findKeyForValue(Landroidx/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 424
    .local v2, "key":Ljava/lang/String;
    if-eqz v2, :cond_247

    .line 425
    nop

    .line 426
    move-object/from16 v30, v0

    .end local v0    # "name":Ljava/lang/String;
    .local v30, "name":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 425
    invoke-virtual {v11, v2, v0}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_24c

    .line 424
    .end local v30    # "name":Ljava/lang/String;
    .restart local v0    # "name":Ljava/lang/String;
    :cond_247
    move-object/from16 v30, v0

    .end local v0    # "name":Ljava/lang/String;
    .restart local v30    # "name":Ljava/lang/String;
    goto :goto_24c

    .line 421
    .end local v2    # "key":Ljava/lang/String;
    .end local v30    # "name":Ljava/lang/String;
    .restart local v0    # "name":Ljava/lang/String;
    :cond_24a
    move-object/from16 v30, v0

    .line 412
    .end local v0    # "name":Ljava/lang/String;
    .end local v24    # "view":Landroid/view/View;
    :goto_24c
    add-int/lit8 v2, v29, -0x1

    move-object/from16 v0, v28

    .end local v29    # "i":I
    .local v2, "i":I
    goto :goto_20a

    .end local v28    # "enteringCallback":Landroidx/core/app/SharedElementCallback;
    .local v0, "enteringCallback":Landroidx/core/app/SharedElementCallback;
    :cond_251
    move-object/from16 v28, v0

    move/from16 v29, v2

    .end local v0    # "enteringCallback":Landroidx/core/app/SharedElementCallback;
    .end local v2    # "i":I
    .restart local v28    # "enteringCallback":Landroidx/core/app/SharedElementCallback;
    goto :goto_25b

    .line 432
    .end local v28    # "enteringCallback":Landroidx/core/app/SharedElementCallback;
    .restart local v0    # "enteringCallback":Landroidx/core/app/SharedElementCallback;
    :cond_256
    move-object/from16 v28, v0

    .end local v0    # "enteringCallback":Landroidx/core/app/SharedElementCallback;
    .restart local v28    # "enteringCallback":Landroidx/core/app/SharedElementCallback;
    invoke-static {v11, v5}, Landroidx/fragment/app/FragmentTransition;->retainValues(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    .line 437
    :goto_25b
    invoke-virtual {v11}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->retainMatchingViews(Landroidx/collection/ArrayMap;Ljava/util/Collection;)V

    .line 438
    invoke-virtual {v11}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->retainMatchingViews(Landroidx/collection/ArrayMap;Ljava/util/Collection;)V

    .line 440
    invoke-virtual {v11}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_284

    .line 443
    const/4 v0, 0x0

    .line 444
    .end local v22    # "sharedElementTransition":Ljava/lang/Object;
    .local v0, "sharedElementTransition":Ljava/lang/Object;
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 445
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v3, p4

    move-object/from16 v2, p5

    move-object v4, v8

    move-object v5, v9

    move-object v15, v10

    move-object/from16 v24, v11

    move-object v8, v14

    move-object/from16 v12, v23

    goto/16 :goto_35a

    .line 449
    .end local v0    # "sharedElementTransition":Ljava/lang/Object;
    .restart local v22    # "sharedElementTransition":Ljava/lang/Object;
    :cond_284
    nop

    .line 450
    invoke-virtual/range {p5 .. p5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 449
    move-object/from16 v24, v11

    move/from16 v11, v20

    .end local v11    # "sharedElementNameMapping":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v24, "sharedElementNameMapping":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v0, v2, v4, v3, v11}, Landroidx/fragment/app/FragmentTransition;->callSharedElementStartEnd(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V

    .line 454
    invoke-virtual {v1}, Landroidx/fragment/app/DefaultSpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    move-object v2, v0

    new-instance v0, Landroidx/fragment/app/DefaultSpecialEffectsController$6;

    move/from16 v29, v12

    move-object/from16 v11, v22

    move-object v12, v2

    move-object/from16 v22, v3

    move-object/from16 v3, p4

    move-object/from16 v2, p5

    .end local v3    # "firstOutViews":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v12    # "numSharedElements":I
    .local v11, "sharedElementTransition":Ljava/lang/Object;
    .local v22, "firstOutViews":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .local v29, "numSharedElements":I
    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$6;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/SpecialEffectsController$Operation;ZLandroidx/collection/ArrayMap;)V

    invoke-static {v12, v0}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    .line 463
    invoke-virtual/range {v22 .. v22}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 466
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d1

    .line 467
    move-object/from16 v0, v27

    const/4 v4, 0x0

    .end local v27    # "exitingNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v0, "exitingNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v4, v12

    check-cast v4, Ljava/lang/String;

    .line 468
    .local v4, "epicenterViewName":Ljava/lang/String;
    move-object/from16 v12, v22

    .end local v22    # "firstOutViews":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .local v12, "firstOutViews":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {v12, v4}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .end local v0    # "exitingNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v27    # "exitingNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v22

    check-cast v0, Landroid/view/View;

    .line 469
    .end local v23    # "firstOutEpicenterView":Landroid/view/View;
    .local v0, "firstOutEpicenterView":Landroid/view/View;
    invoke-virtual {v7, v11, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    goto :goto_2d5

    .line 466
    .end local v0    # "firstOutEpicenterView":Landroid/view/View;
    .end local v4    # "epicenterViewName":Ljava/lang/String;
    .end local v12    # "firstOutViews":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .restart local v22    # "firstOutViews":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .restart local v23    # "firstOutEpicenterView":Landroid/view/View;
    :cond_2d1
    move-object/from16 v12, v22

    .end local v22    # "firstOutViews":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .restart local v12    # "firstOutViews":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    move-object/from16 v0, v23

    .line 473
    .end local v23    # "firstOutEpicenterView":Landroid/view/View;
    .restart local v0    # "firstOutEpicenterView":Landroid/view/View;
    :goto_2d5
    invoke-virtual {v5}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 476
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_317

    .line 477
    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v4, v22

    check-cast v4, Ljava/lang/String;

    .line 478
    .restart local v4    # "epicenterViewName":Ljava/lang/String;
    invoke-virtual {v5, v4}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v23, v0

    .end local v0    # "firstOutEpicenterView":Landroid/view/View;
    .restart local v23    # "firstOutEpicenterView":Landroid/view/View;
    move-object/from16 v0, v22

    check-cast v0, Landroid/view/View;

    .line 479
    .local v0, "lastInEpicenterView":Landroid/view/View;
    if-eqz v0, :cond_310

    .line 480
    const/16 v17, 0x1

    .line 484
    move-object/from16 v22, v7

    .line 485
    .local v22, "impl":Landroidx/fragment/app/FragmentTransitionImpl;
    move-object/from16 v30, v4

    .end local v4    # "epicenterViewName":Ljava/lang/String;
    .local v30, "epicenterViewName":Ljava/lang/String;
    invoke-virtual {v1}, Landroidx/fragment/app/DefaultSpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    move-result-object v4

    move-object/from16 v31, v5

    .end local v5    # "lastInViews":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .local v31, "lastInViews":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    new-instance v5, Landroidx/fragment/app/DefaultSpecialEffectsController$7;

    move-object/from16 v32, v12

    move-object/from16 v12, v22

    .end local v22    # "impl":Landroidx/fragment/app/FragmentTransitionImpl;
    .local v12, "impl":Landroidx/fragment/app/FragmentTransitionImpl;
    .local v32, "firstOutViews":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-direct {v5, v1, v12, v0, v9}, Landroidx/fragment/app/DefaultSpecialEffectsController$7;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {v4, v5}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    goto :goto_31d

    .line 479
    .end local v30    # "epicenterViewName":Ljava/lang/String;
    .end local v31    # "lastInViews":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v32    # "firstOutViews":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .restart local v4    # "epicenterViewName":Ljava/lang/String;
    .restart local v5    # "lastInViews":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .local v12, "firstOutViews":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    :cond_310
    move-object/from16 v30, v4

    move-object/from16 v31, v5

    move-object/from16 v32, v12

    .end local v4    # "epicenterViewName":Ljava/lang/String;
    .end local v5    # "lastInViews":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v12    # "firstOutViews":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .restart local v30    # "epicenterViewName":Ljava/lang/String;
    .restart local v31    # "lastInViews":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .restart local v32    # "firstOutViews":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    goto :goto_31d

    .line 476
    .end local v23    # "firstOutEpicenterView":Landroid/view/View;
    .end local v30    # "epicenterViewName":Ljava/lang/String;
    .end local v31    # "lastInViews":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v32    # "firstOutViews":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .local v0, "firstOutEpicenterView":Landroid/view/View;
    .restart local v5    # "lastInViews":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .restart local v12    # "firstOutViews":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    :cond_317
    move-object/from16 v23, v0

    move-object/from16 v31, v5

    move-object/from16 v32, v12

    .line 498
    .end local v0    # "firstOutEpicenterView":Landroid/view/View;
    .end local v5    # "lastInViews":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v12    # "firstOutViews":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .restart local v23    # "firstOutEpicenterView":Landroid/view/View;
    .restart local v31    # "lastInViews":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .restart local v32    # "firstOutViews":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    :goto_31d
    invoke-virtual {v7, v11, v8, v10}, Landroidx/fragment/app/FragmentTransitionImpl;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 503
    move-object/from16 v22, v11

    .end local v11    # "sharedElementTransition":Ljava/lang/Object;
    .local v22, "sharedElementTransition":Ljava/lang/Object;
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v9

    .end local v9    # "lastInEpicenterRect":Landroid/graphics/Rect;
    .local v5, "lastInEpicenterRect":Landroid/graphics/Rect;
    const/4 v9, 0x0

    move-object v0, v10

    .end local v10    # "sharedElementFirstOutViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v0, "sharedElementFirstOutViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v10, 0x0

    move-object v4, v13

    .end local v13    # "exitingCallback":Landroidx/core/app/SharedElementCallback;
    .local v4, "exitingCallback":Landroidx/core/app/SharedElementCallback;
    move-object/from16 v13, v22

    move-object/from16 v20, v22

    move-object/from16 v22, v4

    move-object v4, v8

    move-object/from16 v8, v20

    const/16 v20, 0x1

    .local v4, "nonExistentView":Landroid/view/View;
    .local v8, "sharedElementTransition":Ljava/lang/Object;
    .local v22, "exitingCallback":Landroidx/core/app/SharedElementCallback;
    invoke-virtual/range {v7 .. v14}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 508
    move-object v11, v8

    move-object v8, v14

    .end local v14    # "sharedElementLastInViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v8, "sharedElementLastInViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v11    # "sharedElementTransition":Ljava/lang/Object;
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v6, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v6, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v15, v0

    move-object v0, v11

    move-object/from16 v12, v23

    goto :goto_35a

    .line 332
    .end local v4    # "nonExistentView":Landroid/view/View;
    .end local v5    # "lastInEpicenterRect":Landroid/graphics/Rect;
    .end local v15    # "enteringNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "exitingCallback":Landroidx/core/app/SharedElementCallback;
    .end local v23    # "firstOutEpicenterView":Landroid/view/View;
    .end local v24    # "sharedElementNameMapping":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v25    # "firstOutSourceNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v26    # "firstOutTargetNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v27    # "exitingNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v28    # "enteringCallback":Landroidx/core/app/SharedElementCallback;
    .end local v29    # "numSharedElements":I
    .end local v31    # "lastInViews":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v32    # "firstOutViews":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .local v0, "sharedElementTransition":Ljava/lang/Object;
    .local v8, "nonExistentView":Landroid/view/View;
    .restart local v9    # "lastInEpicenterRect":Landroid/graphics/Rect;
    .restart local v10    # "sharedElementFirstOutViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v11, "sharedElementNameMapping":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v12, "firstOutEpicenterView":Landroid/view/View;
    .restart local v14    # "sharedElementLastInViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_34c
    move-object/from16 v3, p4

    move-object/from16 v2, p5

    move-object v4, v8

    move-object v5, v9

    move-object v15, v10

    move-object/from16 v24, v11

    move-object/from16 v23, v12

    move-object v8, v14

    .line 512
    .end local v9    # "lastInEpicenterRect":Landroid/graphics/Rect;
    .end local v10    # "sharedElementFirstOutViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v11    # "sharedElementNameMapping":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "firstOutEpicenterView":Landroid/view/View;
    .end local v14    # "sharedElementLastInViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v18    # "transitionInfo":Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;
    .end local v19    # "hasSharedElementTransition":Z
    .restart local v4    # "nonExistentView":Landroid/view/View;
    .restart local v5    # "lastInEpicenterRect":Landroid/graphics/Rect;
    .local v8, "sharedElementLastInViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v15, "sharedElementFirstOutViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v23    # "firstOutEpicenterView":Landroid/view/View;
    .restart local v24    # "sharedElementNameMapping":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v12, v23

    .end local v23    # "firstOutEpicenterView":Landroid/view/View;
    .restart local v12    # "firstOutEpicenterView":Landroid/view/View;
    :goto_35a
    move-object v9, v5

    move-object v14, v8

    move-object v10, v15

    move-object/from16 v11, v24

    const/4 v15, 0x0

    move-object v8, v4

    move/from16 v4, p3

    goto/16 :goto_b9

    .line 513
    .end local v4    # "nonExistentView":Landroid/view/View;
    .end local v5    # "lastInEpicenterRect":Landroid/graphics/Rect;
    .end local v15    # "sharedElementFirstOutViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v24    # "sharedElementNameMapping":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v8, "nonExistentView":Landroid/view/View;
    .restart local v9    # "lastInEpicenterRect":Landroid/graphics/Rect;
    .restart local v10    # "sharedElementFirstOutViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v11    # "sharedElementNameMapping":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v14    # "sharedElementLastInViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_365
    move-object/from16 v3, p4

    move-object/from16 v2, p5

    move-object v4, v8

    move-object v5, v9

    move-object v15, v10

    move-object/from16 v24, v11

    move-object/from16 v23, v12

    move-object v8, v14

    const/16 v20, 0x1

    .end local v9    # "lastInEpicenterRect":Landroid/graphics/Rect;
    .end local v10    # "sharedElementFirstOutViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v11    # "sharedElementNameMapping":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "firstOutEpicenterView":Landroid/view/View;
    .end local v14    # "sharedElementLastInViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v4    # "nonExistentView":Landroid/view/View;
    .restart local v5    # "lastInEpicenterRect":Landroid/graphics/Rect;
    .local v8, "sharedElementLastInViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v15    # "sharedElementFirstOutViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v23    # "firstOutEpicenterView":Landroid/view/View;
    .restart local v24    # "sharedElementNameMapping":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 515
    .local v9, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v10, 0x0

    .line 517
    .local v10, "mergedTransition":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 519
    .local v11, "mergedNonOverlappingTransition":Ljava/lang/Object;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_37e
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4a9

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v18, v12

    check-cast v18, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 520
    .restart local v18    # "transitionInfo":Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;
    invoke-virtual/range {v18 .. v18}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->isVisibilityUnchanged()Z

    move-result v12

    if-eqz v12, :cond_3a3

    .line 522
    invoke-virtual/range {v18 .. v18}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v12

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v6, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    invoke-virtual/range {v18 .. v18}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->completeSpecialEffect()V

    .line 524
    goto :goto_37e

    .line 526
    :cond_3a3
    invoke-virtual/range {v18 .. v18}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getTransition()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 527
    .local v12, "transition":Ljava/lang/Object;
    invoke-virtual/range {v18 .. v18}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v13

    .line 528
    .local v13, "operation":Landroidx/fragment/app/SpecialEffectsController$Operation;
    if-eqz v0, :cond_3b8

    if-eq v13, v3, :cond_3b5

    if-ne v13, v2, :cond_3b8

    :cond_3b5
    move/from16 v14, v20

    goto :goto_3b9

    :cond_3b8
    const/4 v14, 0x0

    :goto_3b9
    move/from16 v19, v14

    .line 530
    .local v19, "involvedInSharedElementTransition":Z
    if-nez v12, :cond_3d8

    .line 532
    if-nez v19, :cond_3cb

    .line 536
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v6, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    invoke-virtual/range {v18 .. v18}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->completeSpecialEffect()V

    .line 606
    .end local v12    # "transition":Ljava/lang/Object;
    .end local v13    # "operation":Landroidx/fragment/app/SpecialEffectsController$Operation;
    .end local v18    # "transitionInfo":Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;
    .end local v19    # "involvedInSharedElementTransition":Z
    :cond_3cb
    move-object/from16 v13, p2

    move-object/from16 v29, v4

    move-object/from16 v27, v8

    move-object/from16 v22, v15

    move-object/from16 v3, v23

    move-object v15, v9

    goto/16 :goto_49a

    .line 541
    .restart local v12    # "transition":Ljava/lang/Object;
    .restart local v13    # "operation":Landroidx/fragment/app/SpecialEffectsController$Operation;
    .restart local v18    # "transitionInfo":Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;
    .restart local v19    # "involvedInSharedElementTransition":Z
    :cond_3d8
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 542
    .local v14, "transitioningViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    nop

    .line 543
    move-object/from16 v22, v9

    .end local v9    # "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v22, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v13}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v9

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 542
    invoke-virtual {v1, v14, v9}, Landroidx/fragment/app/DefaultSpecialEffectsController;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 544
    if-eqz v19, :cond_3f4

    .line 546
    if-ne v13, v3, :cond_3f1

    .line 547
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_3f4

    .line 549
    :cond_3f1
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 552
    :cond_3f4
    :goto_3f4
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_410

    .line 553
    invoke-virtual {v7, v12, v4}, Landroidx/fragment/app/FragmentTransitionImpl;->addTarget(Ljava/lang/Object;Landroid/view/View;)V

    move-object/from16 v2, v22

    move-object/from16 v22, v15

    move-object v15, v2

    move-object/from16 v29, v4

    move-object/from16 v27, v8

    move-object v4, v10

    move-object v2, v11

    move-object v8, v12

    move-object v9, v13

    move-object v10, v14

    move-object/from16 v3, v23

    move-object/from16 v13, p2

    goto :goto_46b

    .line 555
    :cond_410
    invoke-virtual {v7, v12, v14}, Landroidx/fragment/app/FragmentTransitionImpl;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 556
    move-object v9, v13

    .end local v13    # "operation":Landroidx/fragment/app/SpecialEffectsController$Operation;
    .local v9, "operation":Landroidx/fragment/app/SpecialEffectsController$Operation;
    const/4 v13, 0x0

    move-object/from16 v25, v10

    move-object v10, v14

    .end local v14    # "transitioningViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v10, "transitioningViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v25, "mergedTransition":Ljava/lang/Object;
    const/4 v14, 0x0

    move-object/from16 v26, v11

    .end local v11    # "mergedNonOverlappingTransition":Ljava/lang/Object;
    .local v26, "mergedNonOverlappingTransition":Ljava/lang/Object;
    const/4 v11, 0x0

    move-object/from16 v27, v8

    move-object v8, v12

    .end local v12    # "transition":Ljava/lang/Object;
    .local v8, "transition":Ljava/lang/Object;
    .local v27, "sharedElementLastInViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v12, 0x0

    move-object/from16 v28, v9

    .end local v9    # "operation":Landroidx/fragment/app/SpecialEffectsController$Operation;
    .local v28, "operation":Landroidx/fragment/app/SpecialEffectsController$Operation;
    move-object v9, v8

    move-object/from16 v2, v22

    move-object/from16 v22, v15

    move-object v15, v2

    move-object/from16 v29, v4

    move-object/from16 v3, v23

    move-object/from16 v4, v25

    move-object/from16 v2, v26

    .end local v23    # "firstOutEpicenterView":Landroid/view/View;
    .end local v25    # "mergedTransition":Ljava/lang/Object;
    .end local v26    # "mergedNonOverlappingTransition":Ljava/lang/Object;
    .local v2, "mergedNonOverlappingTransition":Ljava/lang/Object;
    .local v3, "firstOutEpicenterView":Landroid/view/View;
    .local v4, "mergedTransition":Ljava/lang/Object;
    .local v15, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v22, "sharedElementFirstOutViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v29, "nonExistentView":Landroid/view/View;
    invoke-virtual/range {v7 .. v14}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 559
    invoke-virtual/range {v28 .. v28}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v9

    sget-object v11, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-ne v9, v11, :cond_467

    .line 563
    move-object/from16 v13, p2

    move-object/from16 v9, v28

    .end local v28    # "operation":Landroidx/fragment/app/SpecialEffectsController$Operation;
    .restart local v9    # "operation":Landroidx/fragment/app/SpecialEffectsController$Operation;
    invoke-interface {v13, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 566
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 568
    .local v11, "transitioningViewsToHide":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v9}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v12

    iget-object v12, v12, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 569
    nop

    .line 570
    invoke-virtual {v9}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v12

    iget-object v12, v12, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 569
    invoke-virtual {v7, v8, v12, v11}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 577
    invoke-virtual {v1}, Landroidx/fragment/app/DefaultSpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    move-result-object v12

    new-instance v14, Landroidx/fragment/app/DefaultSpecialEffectsController$8;

    invoke-direct {v14, v1, v10}, Landroidx/fragment/app/DefaultSpecialEffectsController$8;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Ljava/util/ArrayList;)V

    invoke-static {v12, v14}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    goto :goto_46b

    .line 559
    .end local v9    # "operation":Landroidx/fragment/app/SpecialEffectsController$Operation;
    .end local v11    # "transitioningViewsToHide":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v28    # "operation":Landroidx/fragment/app/SpecialEffectsController$Operation;
    :cond_467
    move-object/from16 v13, p2

    move-object/from16 v9, v28

    .line 586
    .end local v28    # "operation":Landroidx/fragment/app/SpecialEffectsController$Operation;
    .restart local v9    # "operation":Landroidx/fragment/app/SpecialEffectsController$Operation;
    :goto_46b
    invoke-virtual {v9}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v11

    sget-object v12, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-ne v11, v12, :cond_47c

    .line 587
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 588
    if-eqz v17, :cond_47f

    .line 589
    invoke-virtual {v7, v8, v5}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    goto :goto_47f

    .line 592
    :cond_47c
    invoke-virtual {v7, v8, v3}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    .line 594
    :cond_47f
    :goto_47f
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v6, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    invoke-virtual/range {v18 .. v18}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->isOverlapAllowed()Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_494

    .line 598
    invoke-virtual {v7, v4, v8, v12}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v2

    move-object v10, v4

    goto :goto_49a

    .line 602
    :cond_494
    invoke-virtual {v7, v2, v8, v12}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    move-object v10, v4

    .line 606
    .end local v2    # "mergedNonOverlappingTransition":Ljava/lang/Object;
    .end local v4    # "mergedTransition":Ljava/lang/Object;
    .end local v8    # "transition":Ljava/lang/Object;
    .end local v9    # "operation":Landroidx/fragment/app/SpecialEffectsController$Operation;
    .end local v18    # "transitionInfo":Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;
    .end local v19    # "involvedInSharedElementTransition":Z
    .local v10, "mergedTransition":Ljava/lang/Object;
    .local v11, "mergedNonOverlappingTransition":Ljava/lang/Object;
    :goto_49a
    move-object/from16 v2, p5

    move-object/from16 v23, v3

    move-object v9, v15

    move-object/from16 v15, v22

    move-object/from16 v8, v27

    move-object/from16 v4, v29

    move-object/from16 v3, p4

    goto/16 :goto_37e

    .line 610
    .end local v3    # "firstOutEpicenterView":Landroid/view/View;
    .end local v22    # "sharedElementFirstOutViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v27    # "sharedElementLastInViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v29    # "nonExistentView":Landroid/view/View;
    .local v4, "nonExistentView":Landroid/view/View;
    .local v8, "sharedElementLastInViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v9, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v15, "sharedElementFirstOutViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v23    # "firstOutEpicenterView":Landroid/view/View;
    :cond_4a9
    move-object/from16 v13, p2

    move-object/from16 v29, v4

    move-object/from16 v27, v8

    move-object v4, v10

    move-object v2, v11

    move-object/from16 v22, v15

    move-object/from16 v3, v23

    move-object v15, v9

    .end local v8    # "sharedElementLastInViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v9    # "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v10    # "mergedTransition":Ljava/lang/Object;
    .end local v11    # "mergedNonOverlappingTransition":Ljava/lang/Object;
    .end local v23    # "firstOutEpicenterView":Landroid/view/View;
    .restart local v2    # "mergedNonOverlappingTransition":Ljava/lang/Object;
    .restart local v3    # "firstOutEpicenterView":Landroid/view/View;
    .local v4, "mergedTransition":Ljava/lang/Object;
    .local v15, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v22    # "sharedElementFirstOutViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v27    # "sharedElementLastInViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v29    # "nonExistentView":Landroid/view/View;
    invoke-virtual {v7, v4, v2, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 614
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4be
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_564

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 615
    .local v9, "transitionInfo":Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;
    invoke-virtual {v9}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->isVisibilityUnchanged()Z

    move-result v10

    if-eqz v10, :cond_4d1

    .line 617
    goto :goto_4be

    .line 619
    :cond_4d1
    invoke-virtual {v9}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getTransition()Ljava/lang/Object;

    move-result-object v10

    .line 620
    .local v10, "transition":Ljava/lang/Object;
    invoke-virtual {v9}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v11

    .line 621
    .local v11, "operation":Landroidx/fragment/app/SpecialEffectsController$Operation;
    if-eqz v0, :cond_4e9

    move-object/from16 v14, p4

    if-eq v11, v14, :cond_4e4

    move-object/from16 v12, p5

    if-ne v11, v12, :cond_4ed

    goto :goto_4e6

    :cond_4e4
    move-object/from16 v12, p5

    :goto_4e6
    move/from16 v16, v20

    goto :goto_4ef

    :cond_4e9
    move-object/from16 v14, p4

    move-object/from16 v12, p5

    :cond_4ed
    const/16 v16, 0x0

    .line 623
    .local v16, "involvedInSharedElementTransition":Z
    :goto_4ef
    if-nez v10, :cond_4fb

    if-eqz v16, :cond_4f4

    goto :goto_4fb

    :cond_4f4
    move-object/from16 v26, v2

    move-object/from16 v23, v3

    move-object/from16 v18, v5

    goto :goto_55c

    .line 626
    :cond_4fb
    :goto_4fb
    invoke-virtual {v1}, Landroidx/fragment/app/DefaultSpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v18

    if-nez v18, :cond_542

    .line 627
    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v18

    if-eqz v18, :cond_538

    .line 628
    move-object/from16 v26, v2

    .end local v2    # "mergedNonOverlappingTransition":Ljava/lang/Object;
    .restart local v26    # "mergedNonOverlappingTransition":Ljava/lang/Object;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v3

    .end local v3    # "firstOutEpicenterView":Landroid/view/View;
    .restart local v23    # "firstOutEpicenterView":Landroid/view/View;
    const-string v3, "SpecialEffectsController: Container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 629
    invoke-virtual {v1}, Landroidx/fragment/app/DefaultSpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has not been laid out. Completing operation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 628
    const-string v3, "FragmentManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53c

    .line 627
    .end local v23    # "firstOutEpicenterView":Landroid/view/View;
    .end local v26    # "mergedNonOverlappingTransition":Ljava/lang/Object;
    .restart local v2    # "mergedNonOverlappingTransition":Ljava/lang/Object;
    .restart local v3    # "firstOutEpicenterView":Landroid/view/View;
    :cond_538
    move-object/from16 v26, v2

    move-object/from16 v23, v3

    .line 633
    .end local v2    # "mergedNonOverlappingTransition":Ljava/lang/Object;
    .end local v3    # "firstOutEpicenterView":Landroid/view/View;
    .restart local v23    # "firstOutEpicenterView":Landroid/view/View;
    .restart local v26    # "mergedNonOverlappingTransition":Ljava/lang/Object;
    :goto_53c
    invoke-virtual {v9}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->completeSpecialEffect()V

    move-object/from16 v18, v5

    goto :goto_55c

    .line 635
    .end local v23    # "firstOutEpicenterView":Landroid/view/View;
    .end local v26    # "mergedNonOverlappingTransition":Ljava/lang/Object;
    .restart local v2    # "mergedNonOverlappingTransition":Ljava/lang/Object;
    .restart local v3    # "firstOutEpicenterView":Landroid/view/View;
    :cond_542
    move-object/from16 v26, v2

    move-object/from16 v23, v3

    .line 636
    .end local v2    # "mergedNonOverlappingTransition":Ljava/lang/Object;
    .end local v3    # "firstOutEpicenterView":Landroid/view/View;
    .restart local v23    # "firstOutEpicenterView":Landroid/view/View;
    .restart local v26    # "mergedNonOverlappingTransition":Ljava/lang/Object;
    invoke-virtual {v9}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 638
    invoke-virtual {v9}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getSignal()Landroidx/core/os/CancellationSignal;

    move-result-object v3

    move-object/from16 v18, v5

    .end local v5    # "lastInEpicenterRect":Landroid/graphics/Rect;
    .local v18, "lastInEpicenterRect":Landroid/graphics/Rect;
    new-instance v5, Landroidx/fragment/app/DefaultSpecialEffectsController$9;

    invoke-direct {v5, v1, v9}, Landroidx/fragment/app/DefaultSpecialEffectsController$9;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;)V

    .line 635
    invoke-virtual {v7, v2, v4, v3, v5}, Landroidx/fragment/app/FragmentTransitionImpl;->setListenerForTransitionEnd(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Landroidx/core/os/CancellationSignal;Ljava/lang/Runnable;)V

    .line 647
    .end local v9    # "transitionInfo":Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;
    .end local v10    # "transition":Ljava/lang/Object;
    .end local v11    # "operation":Landroidx/fragment/app/SpecialEffectsController$Operation;
    .end local v16    # "involvedInSharedElementTransition":Z
    :goto_55c
    move-object/from16 v5, v18

    move-object/from16 v3, v23

    move-object/from16 v2, v26

    goto/16 :goto_4be

    .line 650
    .end local v18    # "lastInEpicenterRect":Landroid/graphics/Rect;
    .end local v23    # "firstOutEpicenterView":Landroid/view/View;
    .end local v26    # "mergedNonOverlappingTransition":Ljava/lang/Object;
    .restart local v2    # "mergedNonOverlappingTransition":Ljava/lang/Object;
    .restart local v3    # "firstOutEpicenterView":Landroid/view/View;
    .restart local v5    # "lastInEpicenterRect":Landroid/graphics/Rect;
    :cond_564
    move-object/from16 v14, p4

    move-object/from16 v12, p5

    move-object/from16 v26, v2

    move-object/from16 v23, v3

    move-object/from16 v18, v5

    .end local v2    # "mergedNonOverlappingTransition":Ljava/lang/Object;
    .end local v3    # "firstOutEpicenterView":Landroid/view/View;
    .end local v5    # "lastInEpicenterRect":Landroid/graphics/Rect;
    .restart local v18    # "lastInEpicenterRect":Landroid/graphics/Rect;
    .restart local v23    # "firstOutEpicenterView":Landroid/view/View;
    .restart local v26    # "mergedNonOverlappingTransition":Ljava/lang/Object;
    invoke-virtual {v1}, Landroidx/fragment/app/DefaultSpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_579

    .line 651
    return-object v6

    .line 655
    :cond_579
    const/4 v2, 0x4

    invoke-static {v15, v2}, Landroidx/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 656
    nop

    .line 657
    move-object/from16 v10, v27

    .end local v27    # "sharedElementLastInViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v10, "sharedElementLastInViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v7, v10}, Landroidx/fragment/app/FragmentTransitionImpl;->prepareSetNameOverridesReordered(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v11

    .line 659
    .local v11, "inNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroidx/fragment/app/DefaultSpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v7, v2, v4}, Landroidx/fragment/app/FragmentTransitionImpl;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 660
    invoke-virtual {v1}, Landroidx/fragment/app/DefaultSpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    move-result-object v8

    move-object/from16 v9, v22

    move-object/from16 v12, v24

    .end local v22    # "sharedElementFirstOutViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v24    # "sharedElementNameMapping":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v9, "sharedElementFirstOutViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v12, "sharedElementNameMapping":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {v7 .. v12}, Landroidx/fragment/app/FragmentTransitionImpl;->setNameOverridesReordered(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 664
    .end local v12    # "sharedElementNameMapping":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v24    # "sharedElementNameMapping":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    invoke-static {v15, v2}, Landroidx/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 665
    invoke-virtual {v7, v0, v9, v10}, Landroidx/fragment/app/FragmentTransitionImpl;->swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 667
    return-object v6
.end method


# virtual methods
.method applyContainerChanges(Landroidx/fragment/app/SpecialEffectsController$Operation;)V
    .registers 4
    .param p1, "operation"    # Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 742
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 743
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->applyState(Landroid/view/View;)V

    .line 744
    return-void
.end method

.method captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V
    .registers 8
    .param p2, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 697
    .local p1, "transitioningViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2f

    .line 698
    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    .line 699
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    invoke-static {v0}, Landroidx/core/view/ViewGroupCompat;->isTransitionGroup(Landroid/view/ViewGroup;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 700
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 701
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 704
    :cond_17
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 705
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1c
    if-ge v2, v1, :cond_2e

    .line 706
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 707
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2b

    .line 708
    invoke-virtual {p0, p1, v3}, Landroidx/fragment/app/DefaultSpecialEffectsController;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 705
    .end local v3    # "child":Landroid/view/View;
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 712
    .end local v0    # "viewGroup":Landroid/view/ViewGroup;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_2e
    :goto_2e
    goto :goto_38

    .line 713
    :cond_2f
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 714
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    :cond_38
    :goto_38
    return-void
.end method

.method executeOperations(Ljava/util/List;Z)V
    .registers 15
    .param p2, "isPop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            ">;Z)V"
        }
    .end annotation

    .line 59
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Landroidx/fragment/app/SpecialEffectsController$Operation;>;"
    const/4 v0, 0x0

    .line 60
    .local v0, "firstOut":Landroidx/fragment/app/SpecialEffectsController$Operation;
    const/4 v1, 0x0

    .line 61
    .local v1, "lastIn":Landroidx/fragment/app/SpecialEffectsController$Operation;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v7, v0

    move-object v8, v1

    .end local v0    # "firstOut":Landroidx/fragment/app/SpecialEffectsController$Operation;
    .end local v1    # "lastIn":Landroidx/fragment/app/SpecialEffectsController$Operation;
    .local v7, "firstOut":Landroidx/fragment/app/SpecialEffectsController$Operation;
    .local v8, "lastIn":Landroidx/fragment/app/SpecialEffectsController$Operation;
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 62
    .local v0, "operation":Landroidx/fragment/app/SpecialEffectsController$Operation;
    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->from(Landroid/view/View;)Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v1

    .line 63
    .local v1, "currentState":Landroidx/fragment/app/SpecialEffectsController$Operation$State;
    sget-object v3, Landroidx/fragment/app/DefaultSpecialEffectsController$10;->$SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State:[I

    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_ba

    goto :goto_3d

    .line 73
    :pswitch_2e
    sget-object v3, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-eq v1, v3, :cond_3d

    .line 75
    move-object v3, v0

    move-object v8, v3

    .end local v8    # "lastIn":Landroidx/fragment/app/SpecialEffectsController$Operation;
    .local v3, "lastIn":Landroidx/fragment/app/SpecialEffectsController$Operation;
    goto :goto_3d

    .line 67
    .end local v3    # "lastIn":Landroidx/fragment/app/SpecialEffectsController$Operation;
    .restart local v8    # "lastIn":Landroidx/fragment/app/SpecialEffectsController$Operation;
    :pswitch_35
    sget-object v3, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-ne v1, v3, :cond_3d

    if-nez v7, :cond_3d

    .line 69
    move-object v3, v0

    move-object v7, v3

    .line 79
    .end local v0    # "operation":Landroidx/fragment/app/SpecialEffectsController$Operation;
    .end local v1    # "currentState":Landroidx/fragment/app/SpecialEffectsController$Operation$State;
    :cond_3d
    :goto_3d
    goto :goto_8

    .line 83
    :cond_3e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v0, "animations":Ljava/util/List;, "Ljava/util/List<Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v4, "transitions":Ljava/util/List;, "Ljava/util/List<Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 87
    .local v5, "awaitingContainerChanges":Ljava/util/List;, "Ljava/util/List<Landroidx/fragment/app/SpecialEffectsController$Operation;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_51
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v9, 0x1

    if-eqz v2, :cond_91

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 89
    .local v2, "operation":Landroidx/fragment/app/SpecialEffectsController$Operation;
    new-instance v3, Landroidx/core/os/CancellationSignal;

    invoke-direct {v3}, Landroidx/core/os/CancellationSignal;-><init>()V

    .line 90
    .local v3, "animCancellationSignal":Landroidx/core/os/CancellationSignal;
    invoke-virtual {v2, v3}, Landroidx/fragment/app/SpecialEffectsController$Operation;->markStartedSpecialEffect(Landroidx/core/os/CancellationSignal;)V

    .line 92
    new-instance v6, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    invoke-direct {v6, v2, v3, p2}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;Z)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v6, Landroidx/core/os/CancellationSignal;

    invoke-direct {v6}, Landroidx/core/os/CancellationSignal;-><init>()V

    .line 96
    .local v6, "transitionCancellationSignal":Landroidx/core/os/CancellationSignal;
    invoke-virtual {v2, v6}, Landroidx/fragment/app/SpecialEffectsController$Operation;->markStartedSpecialEffect(Landroidx/core/os/CancellationSignal;)V

    .line 98
    new-instance v10, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 99
    const/4 v11, 0x0

    if-eqz p2, :cond_7e

    if-ne v2, v7, :cond_81

    goto :goto_80

    :cond_7e
    if-ne v2, v8, :cond_81

    :goto_80
    goto :goto_82

    :cond_81
    move v9, v11

    :goto_82
    invoke-direct {v10, v2, v6, p2, v9}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;ZZ)V

    .line 98
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v9, Landroidx/fragment/app/DefaultSpecialEffectsController$1;

    invoke-direct {v9, p0, v5, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController$1;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Ljava/util/List;Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    invoke-virtual {v2, v9}, Landroidx/fragment/app/SpecialEffectsController$Operation;->addCompletionListener(Ljava/lang/Runnable;)V

    .line 112
    .end local v2    # "operation":Landroidx/fragment/app/SpecialEffectsController$Operation;
    .end local v3    # "animCancellationSignal":Landroidx/core/os/CancellationSignal;
    .end local v6    # "transitionCancellationSignal":Landroidx/core/os/CancellationSignal;
    goto :goto_51

    .line 115
    :cond_91
    move-object v3, p0

    move v6, p2

    .end local p2    # "isPop":Z
    .local v6, "isPop":Z
    invoke-direct/range {v3 .. v8}, Landroidx/fragment/app/DefaultSpecialEffectsController;->startTransitions(Ljava/util/List;Ljava/util/List;ZLandroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/SpecialEffectsController$Operation;)Ljava/util/Map;

    move-result-object p2

    .line 117
    .local p2, "startedTransitions":Ljava/util/Map;, "Ljava/util/Map<Landroidx/fragment/app/SpecialEffectsController$Operation;Ljava/lang/Boolean;>;"
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    .line 120
    .local v1, "startedAnyTransition":Z
    invoke-direct {p0, v0, v5, v1, p2}, Landroidx/fragment/app/DefaultSpecialEffectsController;->startAnimations(Ljava/util/List;Ljava/util/List;ZLjava/util/Map;)V

    .line 123
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 124
    .local v3, "operation":Landroidx/fragment/app/SpecialEffectsController$Operation;
    invoke-virtual {p0, v3}, Landroidx/fragment/app/DefaultSpecialEffectsController;->applyContainerChanges(Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    .line 125
    .end local v3    # "operation":Landroidx/fragment/app/SpecialEffectsController$Operation;
    goto :goto_a6

    .line 126
    :cond_b6
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 127
    return-void

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_2e
    .end packed-switch
.end method

.method findNamedViews(Ljava/util/Map;Landroid/view/View;)V
    .registers 9
    .param p2, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 724
    .local p1, "namedViews":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 725
    .local v0, "transitionName":Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 726
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    :cond_9
    instance-of v1, p2, Landroid/view/ViewGroup;

    if-eqz v1, :cond_27

    .line 729
    move-object v1, p2

    check-cast v1, Landroid/view/ViewGroup;

    .line 730
    .local v1, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 731
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, v2, :cond_27

    .line 732
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 733
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_24

    .line 734
    invoke-virtual {p0, p1, v4}, Landroidx/fragment/app/DefaultSpecialEffectsController;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 731
    .end local v4    # "child":Landroid/view/View;
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 738
    .end local v1    # "viewGroup":Landroid/view/ViewGroup;
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_27
    return-void
.end method

.method retainMatchingViews(Landroidx/collection/ArrayMap;Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 679
    .local p1, "sharedElementViews":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .local p2, "transitionNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 680
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/view/View;>;>;"
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 681
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 682
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/view/View;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 683
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 685
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/view/View;>;"
    :cond_27
    goto :goto_8

    .line 686
    :cond_28
    return-void
.end method

###### Class androidx.fragment.app.DefaultSpecialEffectsController.AnonymousClass1 (androidx.fragment.app.DefaultSpecialEffectsController$1)
.class Landroidx/fragment/app/DefaultSpecialEffectsController$1;
.super Ljava/lang/Object;
.source "DefaultSpecialEffectsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/DefaultSpecialEffectsController;->executeOperations(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/fragment/app/DefaultSpecialEffectsController;

.field final synthetic val$awaitingContainerChanges:Ljava/util/List;

.field final synthetic val$operation:Landroidx/fragment/app/SpecialEffectsController$Operation;


# direct methods
.method constructor <init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Ljava/util/List;Landroidx/fragment/app/SpecialEffectsController$Operation;)V
    .registers 4
    .param p1, "this$0"    # Landroidx/fragment/app/DefaultSpecialEffectsController;

    .line 103
    iput-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$1;->this$0:Landroidx/fragment/app/DefaultSpecialEffectsController;

    iput-object p2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$1;->val$awaitingContainerChanges:Ljava/util/List;

    iput-object p3, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$1;->val$operation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 106
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$1;->val$awaitingContainerChanges:Ljava/util/List;

    iget-object v1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$1;->val$operation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 107
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$1;->val$awaitingContainerChanges:Ljava/util/List;

    iget-object v1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$1;->val$operation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$1;->this$0:Landroidx/fragment/app/DefaultSpecialEffectsController;

    iget-object v1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$1;->val$operation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/DefaultSpecialEffectsController;->applyContainerChanges(Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    .line 110
    :cond_18
    return-void
.end method

###### Class androidx.fragment.app.DefaultSpecialEffectsController.AnonymousClass10 (androidx.fragment.app.DefaultSpecialEffectsController$10)
.class synthetic Landroidx/fragment/app/DefaultSpecialEffectsController$10;
.super Ljava/lang/Object;
.source "DefaultSpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/DefaultSpecialEffectsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 63
    invoke-static {}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->values()[Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroidx/fragment/app/DefaultSpecialEffectsController$10;->$SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State:[I

    :try_start_9
    sget-object v0, Landroidx/fragment/app/DefaultSpecialEffectsController$10;->$SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State:[I

    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v0

    :goto_16
    :try_start_16
    sget-object v0, Landroidx/fragment/app/DefaultSpecialEffectsController$10;->$SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State:[I

    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->INVISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v0

    :goto_23
    :try_start_23
    sget-object v0, Landroidx/fragment/app/DefaultSpecialEffectsController$10;->$SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State:[I

    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->REMOVED:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v0

    :goto_30
    :try_start_30
    sget-object v0, Landroidx/fragment/app/DefaultSpecialEffectsController$10;->$SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State:[I

    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_3b} :catch_3c

    goto :goto_3d

    :catch_3c
    move-exception v0

    :goto_3d
    return-void
.end method

###### Class androidx.fragment.app.DefaultSpecialEffectsController.AnonymousClass2 (androidx.fragment.app.DefaultSpecialEffectsController$2)
.class Landroidx/fragment/app/DefaultSpecialEffectsController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DefaultSpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/DefaultSpecialEffectsController;->startAnimations(Ljava/util/List;Ljava/util/List;ZLjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/fragment/app/DefaultSpecialEffectsController;

.field final synthetic val$animationInfo:Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

.field final synthetic val$container:Landroid/view/ViewGroup;

.field final synthetic val$isHideOperation:Z

.field final synthetic val$operation:Landroidx/fragment/app/SpecialEffectsController$Operation;

.field final synthetic val$viewToAnimate:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/view/ViewGroup;Landroid/view/View;ZLandroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;)V
    .registers 7
    .param p1, "this$0"    # Landroidx/fragment/app/DefaultSpecialEffectsController;

    .line 181
    iput-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$2;->this$0:Landroidx/fragment/app/DefaultSpecialEffectsController;

    iput-object p2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$2;->val$container:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$2;->val$viewToAnimate:Landroid/view/View;

    iput-boolean p4, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$2;->val$isHideOperation:Z

    iput-object p5, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$2;->val$operation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    iput-object p6, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$2;->val$animationInfo:Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "anim"    # Landroid/animation/Animator;

    .line 184
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$2;->val$container:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$2;->val$viewToAnimate:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 185
    iget-boolean v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$2;->val$isHideOperation:Z

    if-eqz v0, :cond_16

    .line 188
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$2;->val$operation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$2;->val$viewToAnimate:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->applyState(Landroid/view/View;)V

    .line 190
    :cond_16
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$2;->val$animationInfo:Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    invoke-virtual {v0}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->completeSpecialEffect()V

    .line 191
    return-void
.end method

###### Class androidx.fragment.app.DefaultSpecialEffectsController.AnonymousClass3 (androidx.fragment.app.DefaultSpecialEffectsController$3)
.class Landroidx/fragment/app/DefaultSpecialEffectsController$3;
.super Ljava/lang/Object;
.source "DefaultSpecialEffectsController.java"

# interfaces
.implements Landroidx/core/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/DefaultSpecialEffectsController;->startAnimations(Ljava/util/List;Ljava/util/List;ZLjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/fragment/app/DefaultSpecialEffectsController;

.field final synthetic val$animator:Landroid/animation/Animator;


# direct methods
.method constructor <init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/animation/Animator;)V
    .registers 3
    .param p1, "this$0"    # Landroidx/fragment/app/DefaultSpecialEffectsController;

    .line 197
    iput-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->this$0:Landroidx/fragment/app/DefaultSpecialEffectsController;

    iput-object p2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->val$animator:Landroid/animation/Animator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 2

    .line 200
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->val$animator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 201
    return-void
.end method

###### Class androidx.fragment.app.DefaultSpecialEffectsController.AnonymousClass4 (androidx.fragment.app.DefaultSpecialEffectsController$4)
.class Landroidx/fragment/app/DefaultSpecialEffectsController$4;
.super Ljava/lang/Object;
.source "DefaultSpecialEffectsController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/DefaultSpecialEffectsController;->startAnimations(Ljava/util/List;Ljava/util/List;ZLjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/fragment/app/DefaultSpecialEffectsController;

.field final synthetic val$animationInfo:Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

.field final synthetic val$container:Landroid/view/ViewGroup;

.field final synthetic val$viewToAnimate:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;)V
    .registers 5
    .param p1, "this$0"    # Landroidx/fragment/app/DefaultSpecialEffectsController;

    .line 245
    iput-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$4;->this$0:Landroidx/fragment/app/DefaultSpecialEffectsController;

    iput-object p2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$4;->val$container:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$4;->val$viewToAnimate:Landroid/view/View;

    iput-object p4, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$4;->val$animationInfo:Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 255
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$4;->val$container:Landroid/view/ViewGroup;

    new-instance v1, Landroidx/fragment/app/DefaultSpecialEffectsController$4$1;

    invoke-direct {v1, p0}, Landroidx/fragment/app/DefaultSpecialEffectsController$4$1;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController$4;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 262
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 266
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 248
    return-void
.end method

###### Class androidx.fragment.app.DefaultSpecialEffectsController.AnonymousClass4.AnonymousClass1 (androidx.fragment.app.DefaultSpecialEffectsController$4$1)
.class Landroidx/fragment/app/DefaultSpecialEffectsController$4$1;
.super Ljava/lang/Object;
.source "DefaultSpecialEffectsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/DefaultSpecialEffectsController$4;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/fragment/app/DefaultSpecialEffectsController$4;


# direct methods
.method constructor <init>(Landroidx/fragment/app/DefaultSpecialEffectsController$4;)V
    .registers 2
    .param p1, "this$1"    # Landroidx/fragment/app/DefaultSpecialEffectsController$4;

    .line 255
    iput-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$4$1;->this$1:Landroidx/fragment/app/DefaultSpecialEffectsController$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 258
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$4$1;->this$1:Landroidx/fragment/app/DefaultSpecialEffectsController$4;

    iget-object v0, v0, Landroidx/fragment/app/DefaultSpecialEffectsController$4;->val$container:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$4$1;->this$1:Landroidx/fragment/app/DefaultSpecialEffectsController$4;

    iget-object v1, v1, Landroidx/fragment/app/DefaultSpecialEffectsController$4;->val$viewToAnimate:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 259
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$4$1;->this$1:Landroidx/fragment/app/DefaultSpecialEffectsController$4;

    iget-object v0, v0, Landroidx/fragment/app/DefaultSpecialEffectsController$4;->val$animationInfo:Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    invoke-virtual {v0}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->completeSpecialEffect()V

    .line 260
    return-void
.end method

###### Class androidx.fragment.app.DefaultSpecialEffectsController.AnonymousClass5 (androidx.fragment.app.DefaultSpecialEffectsController$5)
.class Landroidx/fragment/app/DefaultSpecialEffectsController$5;
.super Ljava/lang/Object;
.source "DefaultSpecialEffectsController.java"

# interfaces
.implements Landroidx/core/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/DefaultSpecialEffectsController;->startAnimations(Ljava/util/List;Ljava/util/List;ZLjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/fragment/app/DefaultSpecialEffectsController;

.field final synthetic val$animationInfo:Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

.field final synthetic val$container:Landroid/view/ViewGroup;

.field final synthetic val$viewToAnimate:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/view/View;Landroid/view/ViewGroup;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;)V
    .registers 5
    .param p1, "this$0"    # Landroidx/fragment/app/DefaultSpecialEffectsController;

    .line 272
    iput-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$5;->this$0:Landroidx/fragment/app/DefaultSpecialEffectsController;

    iput-object p2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$5;->val$viewToAnimate:Landroid/view/View;

    iput-object p3, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$5;->val$container:Landroid/view/ViewGroup;

    iput-object p4, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$5;->val$animationInfo:Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 3

    .line 275
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$5;->val$viewToAnimate:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 276
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$5;->val$container:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$5;->val$viewToAnimate:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 277
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$5;->val$animationInfo:Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    invoke-virtual {v0}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->completeSpecialEffect()V

    .line 278
    return-void
.end method

###### Class androidx.fragment.app.DefaultSpecialEffectsController.AnonymousClass6 (androidx.fragment.app.DefaultSpecialEffectsController$6)
.class Landroidx/fragment/app/DefaultSpecialEffectsController$6;
.super Ljava/lang/Object;
.source "DefaultSpecialEffectsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/DefaultSpecialEffectsController;->startTransitions(Ljava/util/List;Ljava/util/List;ZLandroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/SpecialEffectsController$Operation;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/fragment/app/DefaultSpecialEffectsController;

.field final synthetic val$firstOut:Landroidx/fragment/app/SpecialEffectsController$Operation;

.field final synthetic val$isPop:Z

.field final synthetic val$lastIn:Landroidx/fragment/app/SpecialEffectsController$Operation;

.field final synthetic val$lastInViews:Landroidx/collection/ArrayMap;


# direct methods
.method constructor <init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/SpecialEffectsController$Operation;ZLandroidx/collection/ArrayMap;)V
    .registers 6
    .param p1, "this$0"    # Landroidx/fragment/app/DefaultSpecialEffectsController;

    .line 454
    iput-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$6;->this$0:Landroidx/fragment/app/DefaultSpecialEffectsController;

    iput-object p2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$6;->val$lastIn:Landroidx/fragment/app/SpecialEffectsController$Operation;

    iput-object p3, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$6;->val$firstOut:Landroidx/fragment/app/SpecialEffectsController$Operation;

    iput-boolean p4, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$6;->val$isPop:Z

    iput-object p5, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$6;->val$lastInViews:Landroidx/collection/ArrayMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 457
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$6;->val$lastIn:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 458
    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$6;->val$firstOut:Landroidx/fragment/app/SpecialEffectsController$Operation;

    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$6;->val$isPop:Z

    iget-object v3, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$6;->val$lastInViews:Landroidx/collection/ArrayMap;

    .line 457
    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentTransition;->callSharedElementStartEnd(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V

    .line 460
    return-void
.end method

###### Class androidx.fragment.app.DefaultSpecialEffectsController.AnonymousClass7 (androidx.fragment.app.DefaultSpecialEffectsController$7)
.class Landroidx/fragment/app/DefaultSpecialEffectsController$7;
.super Ljava/lang/Object;
.source "DefaultSpecialEffectsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/DefaultSpecialEffectsController;->startTransitions(Ljava/util/List;Ljava/util/List;ZLandroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/SpecialEffectsController$Operation;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/fragment/app/DefaultSpecialEffectsController;

.field final synthetic val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

.field final synthetic val$lastInEpicenterRect:Landroid/graphics/Rect;

.field final synthetic val$lastInEpicenterView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "this$0"    # Landroidx/fragment/app/DefaultSpecialEffectsController;

    .line 485
    iput-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$7;->this$0:Landroidx/fragment/app/DefaultSpecialEffectsController;

    iput-object p2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$7;->val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

    iput-object p3, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$7;->val$lastInEpicenterView:Landroid/view/View;

    iput-object p4, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$7;->val$lastInEpicenterRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 488
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$7;->val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

    iget-object v1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$7;->val$lastInEpicenterView:Landroid/view/View;

    iget-object v2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$7;->val$lastInEpicenterRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransitionImpl;->getBoundsOnScreen(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 490
    return-void
.end method

###### Class androidx.fragment.app.DefaultSpecialEffectsController.AnonymousClass8 (androidx.fragment.app.DefaultSpecialEffectsController$8)
.class Landroidx/fragment/app/DefaultSpecialEffectsController$8;
.super Ljava/lang/Object;
.source "DefaultSpecialEffectsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/DefaultSpecialEffectsController;->startTransitions(Ljava/util/List;Ljava/util/List;ZLandroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/SpecialEffectsController$Operation;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/fragment/app/DefaultSpecialEffectsController;

.field final synthetic val$transitioningViews:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "this$0"    # Landroidx/fragment/app/DefaultSpecialEffectsController;

    .line 577
    iput-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$8;->this$0:Landroidx/fragment/app/DefaultSpecialEffectsController;

    iput-object p2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$8;->val$transitioningViews:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 580
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$8;->val$transitioningViews:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroidx/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 582
    return-void
.end method

###### Class androidx.fragment.app.DefaultSpecialEffectsController.AnonymousClass9 (androidx.fragment.app.DefaultSpecialEffectsController$9)
.class Landroidx/fragment/app/DefaultSpecialEffectsController$9;
.super Ljava/lang/Object;
.source "DefaultSpecialEffectsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/DefaultSpecialEffectsController;->startTransitions(Ljava/util/List;Ljava/util/List;ZLandroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/SpecialEffectsController$Operation;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/fragment/app/DefaultSpecialEffectsController;

.field final synthetic val$transitionInfo:Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;


# direct methods
.method constructor <init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;)V
    .registers 3
    .param p1, "this$0"    # Landroidx/fragment/app/DefaultSpecialEffectsController;

    .line 639
    iput-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$9;->this$0:Landroidx/fragment/app/DefaultSpecialEffectsController;

    iput-object p2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$9;->val$transitionInfo:Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 642
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$9;->val$transitionInfo:Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    invoke-virtual {v0}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->completeSpecialEffect()V

    .line 643
    return-void
.end method

###### Class androidx.fragment.app.DefaultSpecialEffectsController.AnimationInfo (androidx.fragment.app.DefaultSpecialEffectsController$AnimationInfo)
.class Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;
.super Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;
.source "DefaultSpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/DefaultSpecialEffectsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationInfo"
.end annotation


# instance fields
.field private mAnimation:Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

.field private mIsPop:Z

.field private mLoadedAnim:Z


# direct methods
.method constructor <init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;Z)V
    .registers 5
    .param p1, "operation"    # Landroidx/fragment/app/SpecialEffectsController$Operation;
    .param p2, "signal"    # Landroidx/core/os/CancellationSignal;
    .param p3, "isPop"    # Z

    .line 789
    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;)V

    .line 783
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->mLoadedAnim:Z

    .line 790
    iput-boolean p3, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->mIsPop:Z

    .line 791
    return-void
.end method


# virtual methods
.method getAnimation(Landroid/content/Context;)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 795
    iget-boolean v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->mLoadedAnim:Z

    if-eqz v0, :cond_7

    .line 796
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->mAnimation:Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    return-object v0

    .line 798
    :cond_7
    nop

    .line 799
    invoke-virtual {p0}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 800
    invoke-virtual {p0}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v1

    sget-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1f

    move v1, v3

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    iget-boolean v2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->mIsPop:Z

    .line 798
    invoke-static {p1, v0, v1, v2}, Landroidx/fragment/app/FragmentAnim;->loadAnimation(Landroid/content/Context;Landroidx/fragment/app/Fragment;ZZ)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->mAnimation:Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    .line 802
    iput-boolean v3, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->mLoadedAnim:Z

    .line 803
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->mAnimation:Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    return-object v0
.end method

###### Class androidx.fragment.app.DefaultSpecialEffectsController.SpecialEffectsInfo (androidx.fragment.app.DefaultSpecialEffectsController$SpecialEffectsInfo)
.class Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;
.super Ljava/lang/Object;
.source "DefaultSpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/DefaultSpecialEffectsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpecialEffectsInfo"
.end annotation


# instance fields
.field private final mOperation:Landroidx/fragment/app/SpecialEffectsController$Operation;

.field private final mSignal:Landroidx/core/os/CancellationSignal;


# direct methods
.method constructor <init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;)V
    .registers 3
    .param p1, "operation"    # Landroidx/fragment/app/SpecialEffectsController$Operation;
    .param p2, "signal"    # Landroidx/core/os/CancellationSignal;

    .line 752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 753
    iput-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->mOperation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 754
    iput-object p2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->mSignal:Landroidx/core/os/CancellationSignal;

    .line 755
    return-void
.end method


# virtual methods
.method completeSpecialEffect()V
    .registers 3

    .line 776
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->mOperation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    iget-object v1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->mSignal:Landroidx/core/os/CancellationSignal;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->completeSpecialEffect(Landroidx/core/os/CancellationSignal;)V

    .line 777
    return-void
.end method

.method getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;
    .registers 2

    .line 759
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->mOperation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    return-object v0
.end method

.method getSignal()Landroidx/core/os/CancellationSignal;
    .registers 2

    .line 764
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->mSignal:Landroidx/core/os/CancellationSignal;

    return-object v0
.end method

.method isVisibilityUnchanged()Z
    .registers 4

    .line 768
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->mOperation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 769
    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 768
    invoke-static {v0}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->from(Landroid/view/View;)Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v0

    .line 770
    .local v0, "currentState":Landroidx/fragment/app/SpecialEffectsController$Operation$State;
    iget-object v1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->mOperation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v1

    .line 771
    .local v1, "finalState":Landroidx/fragment/app/SpecialEffectsController$Operation$State;
    if-eq v0, v1, :cond_1f

    sget-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-eq v0, v2, :cond_1d

    sget-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-eq v1, v2, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v2, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v2, 0x1

    :goto_20
    return v2
.end method

###### Class androidx.fragment.app.DefaultSpecialEffectsController.TransitionInfo (androidx.fragment.app.DefaultSpecialEffectsController$TransitionInfo)
.class Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;
.super Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;
.source "DefaultSpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/DefaultSpecialEffectsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransitionInfo"
.end annotation


# instance fields
.field private final mOverlapAllowed:Z

.field private final mSharedElementTransition:Ljava/lang/Object;

.field private final mTransition:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;ZZ)V
    .registers 7
    .param p1, "operation"    # Landroidx/fragment/app/SpecialEffectsController$Operation;
    .param p2, "signal"    # Landroidx/core/os/CancellationSignal;
    .param p3, "isPop"    # Z
    .param p4, "providesSharedElementTransition"    # Z

    .line 817
    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;)V

    .line 818
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v0

    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-ne v0, v1, :cond_36

    .line 819
    if-eqz p3, :cond_16

    .line 820
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1e

    .line 821
    :cond_16
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v0

    :goto_1e
    iput-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mTransition:Ljava/lang/Object;

    .line 824
    if-eqz p3, :cond_2b

    .line 825
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result v0

    goto :goto_33

    .line 826
    :cond_2b
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result v0

    :goto_33
    iput-boolean v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mOverlapAllowed:Z

    goto :goto_4e

    .line 828
    :cond_36
    if-eqz p3, :cond_41

    .line 829
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_49

    .line 830
    :cond_41
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v0

    :goto_49
    iput-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mTransition:Ljava/lang/Object;

    .line 832
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mOverlapAllowed:Z

    .line 834
    :goto_4e
    if-eqz p4, :cond_6a

    .line 835
    if-eqz p3, :cond_5e

    .line 836
    nop

    .line 837
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mSharedElementTransition:Ljava/lang/Object;

    goto :goto_6d

    .line 839
    :cond_5e
    nop

    .line 840
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mSharedElementTransition:Ljava/lang/Object;

    goto :goto_6d

    .line 843
    :cond_6a
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mSharedElementTransition:Ljava/lang/Object;

    .line 845
    :goto_6d
    return-void
.end method

.method private getHandlingImpl(Ljava/lang/Object;)Landroidx/fragment/app/FragmentTransitionImpl;
    .registers 5
    .param p1, "transition"    # Ljava/lang/Object;

    .line 884
    if-nez p1, :cond_4

    .line 885
    const/4 v0, 0x0

    return-object v0

    .line 887
    :cond_4
    sget-object v0, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-eqz v0, :cond_13

    sget-object v0, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    .line 888
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransitionImpl;->canHandle(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 889
    sget-object v0, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    return-object v0

    .line 891
    :cond_13
    sget-object v0, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-eqz v0, :cond_22

    sget-object v0, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    .line 892
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransitionImpl;->canHandle(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 893
    sget-object v0, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    return-object v0

    .line 895
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 896
    invoke-virtual {p0}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid framework Transition or AndroidX Transition"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method getHandlingImpl()Landroidx/fragment/app/FragmentTransitionImpl;
    .registers 6

    .line 867
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mTransition:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getHandlingImpl(Ljava/lang/Object;)Landroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v0

    .line 868
    .local v0, "transitionImpl":Landroidx/fragment/app/FragmentTransitionImpl;
    iget-object v1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mSharedElementTransition:Ljava/lang/Object;

    .line 869
    invoke-direct {p0, v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getHandlingImpl(Ljava/lang/Object;)Landroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v1

    .line 870
    .local v1, "sharedElementTransitionImpl":Landroidx/fragment/app/FragmentTransitionImpl;
    if-eqz v0, :cond_4c

    if-eqz v1, :cond_4c

    if-ne v0, v1, :cond_13

    goto :goto_4c

    .line 872
    :cond_13
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 874
    invoke-virtual {p0}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " returned Transition "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mTransition:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " which uses a different Transition  type than its shared element transition "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mSharedElementTransition:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 879
    :cond_4c
    :goto_4c
    if-eqz v0, :cond_50

    move-object v2, v0

    goto :goto_51

    :cond_50
    move-object v2, v1

    :goto_51
    return-object v2
.end method

.method public getSharedElementTransition()Ljava/lang/Object;
    .registers 2

    .line 862
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mSharedElementTransition:Ljava/lang/Object;

    return-object v0
.end method

.method getTransition()Ljava/lang/Object;
    .registers 2

    .line 849
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mTransition:Ljava/lang/Object;

    return-object v0
.end method

.method public hasSharedElementTransition()Z
    .registers 2

    .line 857
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mSharedElementTransition:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isOverlapAllowed()Z
    .registers 2

    .line 853
    iget-boolean v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mOverlapAllowed:Z

    return v0
.end method
