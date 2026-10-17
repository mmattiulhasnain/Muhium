###### Class androidx.fragment.app.FragmentTransition (androidx.fragment.app.FragmentTransition)
.class Landroidx/fragment/app/FragmentTransition;
.super Ljava/lang/Object;
.source "FragmentTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;,
        Landroidx/fragment/app/FragmentTransition$Callback;
    }
.end annotation


# static fields
.field private static final INVERSE_OPS:[I

.field static final PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

.field static final SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_18

    sput-object v0, Landroidx/fragment/app/FragmentTransition;->INVERSE_OPS:[I

    .line 77
    nop

    .line 78
    new-instance v0, Landroidx/fragment/app/FragmentTransitionCompat21;

    invoke-direct {v0}, Landroidx/fragment/app/FragmentTransitionCompat21;-><init>()V

    .line 79
    sput-object v0, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    .line 81
    invoke-static {}, Landroidx/fragment/app/FragmentTransition;->resolveSupportImpl()Landroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v0

    sput-object v0, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    return-void

    :array_18
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
        0x9
        0x8
        0xa
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 1314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1315
    return-void
.end method

.method private static addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroidx/collection/ArrayMap;Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 695
    .local p0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p1, "sharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .local p2, "nameOverridesSet":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_1e

    .line 696
    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 697
    .local v1, "view":Landroid/view/View;
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 698
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    .end local v1    # "view":Landroid/view/View;
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 701
    .end local v0    # "i":I
    :cond_1e
    return-void
.end method

.method private static addToFirstInLastOut(Landroidx/fragment/app/BackStackRecord;Landroidx/fragment/app/FragmentTransaction$Op;Landroid/util/SparseArray;ZZ)V
    .registers 21
    .param p0, "transaction"    # Landroidx/fragment/app/BackStackRecord;
    .param p1, "op"    # Landroidx/fragment/app/FragmentTransaction$Op;
    .param p3, "isPop"    # Z
    .param p4, "isReorderedTransaction"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/BackStackRecord;",
            "Landroidx/fragment/app/FragmentTransaction$Op;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1173
    .local p2, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    .line 1174
    .local v4, "fragment":Landroidx/fragment/app/Fragment;
    if-nez v4, :cond_d

    .line 1175
    return-void

    .line 1177
    :cond_d
    iget v5, v4, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 1178
    .local v5, "containerId":I
    if-nez v5, :cond_12

    .line 1179
    return-void

    .line 1181
    :cond_12
    if-eqz v3, :cond_1b

    sget-object v6, Landroidx/fragment/app/FragmentTransition;->INVERSE_OPS:[I

    iget v7, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    aget v6, v6, v7

    goto :goto_1d

    :cond_1b
    iget v6, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    .line 1182
    .local v6, "command":I
    :goto_1d
    const/4 v7, 0x0

    .line 1183
    .local v7, "setLastIn":Z
    const/4 v8, 0x0

    .line 1184
    .local v8, "wasRemoved":Z
    const/4 v9, 0x0

    .line 1185
    .local v9, "setFirstOut":Z
    const/4 v10, 0x0

    .line 1186
    .local v10, "wasAdded":Z
    const/4 v11, 0x1

    const/4 v12, 0x0

    packed-switch v6, :pswitch_data_f0

    :pswitch_26
    goto/16 :goto_9a

    .line 1188
    :pswitch_28
    if-eqz p4, :cond_3a

    .line 1189
    iget-boolean v13, v4, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v13, :cond_37

    iget-boolean v13, v4, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v13, :cond_37

    iget-boolean v13, v4, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v13, :cond_37

    goto :goto_38

    :cond_37
    move v11, v12

    :goto_38
    move v7, v11

    .end local v7    # "setLastIn":Z
    .local v11, "setLastIn":Z
    goto :goto_3c

    .line 1191
    .end local v11    # "setLastIn":Z
    .restart local v7    # "setLastIn":Z
    :cond_3a
    iget-boolean v7, v4, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 1193
    :goto_3c
    const/4 v10, 0x1

    .line 1194
    goto/16 :goto_9a

    .line 1205
    :pswitch_3f
    if-eqz p4, :cond_51

    .line 1206
    iget-boolean v13, v4, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v13, :cond_4e

    iget-boolean v13, v4, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v13, :cond_4e

    iget-boolean v13, v4, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v13, :cond_4e

    goto :goto_4f

    :cond_4e
    move v11, v12

    :goto_4f
    move v9, v11

    .end local v9    # "setFirstOut":Z
    .local v11, "setFirstOut":Z
    goto :goto_5c

    .line 1208
    .end local v11    # "setFirstOut":Z
    .restart local v9    # "setFirstOut":Z
    :cond_51
    iget-boolean v13, v4, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v13, :cond_5a

    iget-boolean v13, v4, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v13, :cond_5a

    goto :goto_5b

    :cond_5a
    move v11, v12

    :goto_5b
    move v9, v11

    .line 1210
    :goto_5c
    const/4 v8, 0x1

    .line 1211
    goto :goto_9a

    .line 1214
    :pswitch_5e
    if-eqz p4, :cond_7b

    .line 1215
    iget-boolean v13, v4, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v13, :cond_78

    iget-object v13, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v13, :cond_78

    iget-object v13, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1216
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-nez v13, :cond_78

    iget v13, v4, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-ltz v13, :cond_78

    goto :goto_79

    :cond_78
    move v11, v12

    :goto_79
    move v9, v11

    .end local v9    # "setFirstOut":Z
    .restart local v11    # "setFirstOut":Z
    goto :goto_86

    .line 1219
    .end local v11    # "setFirstOut":Z
    .restart local v9    # "setFirstOut":Z
    :cond_7b
    iget-boolean v13, v4, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v13, :cond_84

    iget-boolean v13, v4, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v13, :cond_84

    goto :goto_85

    :cond_84
    move v11, v12

    :goto_85
    move v9, v11

    .line 1221
    :goto_86
    const/4 v8, 0x1

    goto :goto_9a

    .line 1197
    :pswitch_88
    if-eqz p4, :cond_8d

    .line 1198
    iget-boolean v7, v4, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    goto :goto_98

    .line 1200
    :cond_8d
    iget-boolean v13, v4, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v13, :cond_96

    iget-boolean v13, v4, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v13, :cond_96

    goto :goto_97

    :cond_96
    move v11, v12

    :goto_97
    move v7, v11

    .line 1202
    :goto_98
    const/4 v10, 0x1

    .line 1203
    nop

    .line 1224
    :goto_9a
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    .line 1225
    .local v11, "containerTransition":Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    if-eqz v7, :cond_ad

    .line 1226
    nop

    .line 1227
    invoke-static {v11, v2, v5}, Landroidx/fragment/app/FragmentTransition;->ensureContainer(Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    move-result-object v11

    .line 1228
    iput-object v4, v11, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    .line 1229
    iput-boolean v3, v11, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 1230
    iput-object v0, v11, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 1232
    :cond_ad
    const/4 v12, 0x0

    if-nez p4, :cond_cf

    if-eqz v10, :cond_cf

    .line 1233
    if-eqz v11, :cond_ba

    iget-object v13, v11, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    if-ne v13, v4, :cond_ba

    .line 1234
    iput-object v12, v11, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    .line 1237
    :cond_ba
    iget-boolean v13, v0, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v13, :cond_cf

    .line 1242
    iget-object v13, v0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    .line 1243
    .local v13, "manager":Landroidx/fragment/app/FragmentManager;
    nop

    .line 1244
    invoke-virtual {v13, v4}, Landroidx/fragment/app/FragmentManager;->createOrGetFragmentStateManager(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;

    move-result-object v14

    .line 1245
    .local v14, "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    invoke-virtual {v13}, Landroidx/fragment/app/FragmentManager;->getFragmentStore()Landroidx/fragment/app/FragmentStore;

    move-result-object v15

    invoke-virtual {v15, v14}, Landroidx/fragment/app/FragmentStore;->makeActive(Landroidx/fragment/app/FragmentStateManager;)V

    .line 1246
    invoke-virtual {v13, v4}, Landroidx/fragment/app/FragmentManager;->moveToState(Landroidx/fragment/app/Fragment;)V

    .line 1249
    .end local v13    # "manager":Landroidx/fragment/app/FragmentManager;
    .end local v14    # "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    :cond_cf
    if-eqz v9, :cond_e2

    if-eqz v11, :cond_d7

    iget-object v13, v11, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    if-nez v13, :cond_e2

    .line 1250
    :cond_d7
    nop

    .line 1251
    invoke-static {v11, v2, v5}, Landroidx/fragment/app/FragmentTransition;->ensureContainer(Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    move-result-object v11

    .line 1252
    iput-object v4, v11, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    .line 1253
    iput-boolean v3, v11, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 1254
    iput-object v0, v11, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 1257
    :cond_e2
    if-nez p4, :cond_ee

    if-eqz v8, :cond_ee

    if-eqz v11, :cond_ee

    iget-object v13, v11, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    if-ne v13, v4, :cond_ee

    .line 1259
    iput-object v12, v11, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    .line 1261
    :cond_ee
    return-void

    nop

    :pswitch_data_f0
    .packed-switch 0x1
        :pswitch_88
        :pswitch_26
        :pswitch_5e
        :pswitch_3f
        :pswitch_28
        :pswitch_5e
        :pswitch_88
    .end packed-switch
.end method

.method public static calculateFragments(Landroidx/fragment/app/BackStackRecord;Landroid/util/SparseArray;Z)V
    .registers 7
    .param p0, "transaction"    # Landroidx/fragment/app/BackStackRecord;
    .param p2, "isReordered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/BackStackRecord;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ">;Z)V"
        }
    .end annotation

    .line 1125
    .local p1, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;>;"
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1126
    .local v0, "numOps":I
    const/4 v1, 0x0

    .local v1, "opNum":I
    :goto_7
    if-ge v1, v0, :cond_18

    .line 1127
    iget-object v2, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 1128
    .local v2, "op":Landroidx/fragment/app/FragmentTransaction$Op;
    const/4 v3, 0x0

    invoke-static {p0, v2, p1, v3, p2}, Landroidx/fragment/app/FragmentTransition;->addToFirstInLastOut(Landroidx/fragment/app/BackStackRecord;Landroidx/fragment/app/FragmentTransaction$Op;Landroid/util/SparseArray;ZZ)V

    .line 1126
    .end local v2    # "op":Landroidx/fragment/app/FragmentTransaction$Op;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1130
    .end local v1    # "opNum":I
    :cond_18
    return-void
.end method

.method private static calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroidx/collection/ArrayMap;
    .registers 16
    .param p0, "containerId"    # I
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 187
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 188
    .local v0, "nameOverrides":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v1, p4, -0x1

    .local v1, "recordNum":I
    :goto_7
    if-lt v1, p3, :cond_59

    .line 189
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/BackStackRecord;

    .line 190
    .local v2, "record":Landroidx/fragment/app/BackStackRecord;
    invoke-virtual {v2, p0}, Landroidx/fragment/app/BackStackRecord;->interactsWith(I)Z

    move-result v3

    if-nez v3, :cond_16

    .line 191
    goto :goto_56

    .line 193
    :cond_16
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 194
    .local v3, "isPop":Z
    iget-object v4, v2, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v4, :cond_56

    .line 195
    iget-object v4, v2, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 198
    .local v4, "numSharedElements":I
    if-eqz v3, :cond_31

    .line 199
    iget-object v5, v2, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 200
    .local v5, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, v2, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .local v6, "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_35

    .line 202
    .end local v5    # "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_31
    iget-object v6, v2, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 203
    .restart local v6    # "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, v2, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 205
    .restart local v5    # "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_35
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_36
    if-ge v7, v4, :cond_56

    .line 206
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 207
    .local v8, "sourceName":Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 208
    .local v9, "targetName":Ljava/lang/String;
    invoke-virtual {v0, v9}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 209
    .local v10, "previousTarget":Ljava/lang/String;
    if-eqz v10, :cond_50

    .line 210
    invoke-virtual {v0, v8, v10}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_53

    .line 212
    :cond_50
    invoke-virtual {v0, v8, v9}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .end local v8    # "sourceName":Ljava/lang/String;
    .end local v9    # "targetName":Ljava/lang/String;
    .end local v10    # "previousTarget":Ljava/lang/String;
    :goto_53
    add-int/lit8 v7, v7, 0x1

    goto :goto_36

    .line 188
    .end local v2    # "record":Landroidx/fragment/app/BackStackRecord;
    .end local v3    # "isPop":Z
    .end local v4    # "numSharedElements":I
    .end local v5    # "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "i":I
    :cond_56
    :goto_56
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 217
    .end local v1    # "recordNum":I
    :cond_59
    return-object v0
.end method

.method public static calculatePopFragments(Landroidx/fragment/app/BackStackRecord;Landroid/util/SparseArray;Z)V
    .registers 7
    .param p0, "transaction"    # Landroidx/fragment/app/BackStackRecord;
    .param p2, "isReordered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/BackStackRecord;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ">;Z)V"
        }
    .end annotation

    .line 1142
    .local p1, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;>;"
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getContainer()Landroidx/fragment/app/FragmentContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentContainer;->onHasView()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1143
    return-void

    .line 1145
    :cond_d
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1146
    .local v0, "numOps":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "opNum":I
    :goto_15
    if-ltz v1, :cond_26

    .line 1147
    iget-object v2, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 1148
    .local v2, "op":Landroidx/fragment/app/FragmentTransaction$Op;
    const/4 v3, 0x1

    invoke-static {p0, v2, p1, v3, p2}, Landroidx/fragment/app/FragmentTransition;->addToFirstInLastOut(Landroidx/fragment/app/BackStackRecord;Landroidx/fragment/app/FragmentTransaction$Op;Landroid/util/SparseArray;ZZ)V

    .line 1146
    .end local v2    # "op":Landroidx/fragment/app/FragmentTransaction$Op;
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    .line 1150
    .end local v1    # "opNum":I
    :cond_26
    return-void
.end method

.method static callSharedElementStartEnd(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V
    .registers 11
    .param p0, "inFragment"    # Landroidx/fragment/app/Fragment;
    .param p1, "outFragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "isPop"    # Z
    .param p4, "isStart"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Landroidx/fragment/app/Fragment;",
            "Z",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .line 1029
    .local p3, "sharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    if-eqz p2, :cond_7

    .line 1030
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object v0

    goto :goto_b

    .line 1031
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object v0

    :goto_b
    nop

    .line 1032
    .local v0, "sharedElementCallback":Landroidx/core/app/SharedElementCallback;
    if-eqz v0, :cond_3e

    .line 1033
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1034
    .local v1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1035
    .local v2, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p3, :cond_1c

    const/4 v3, 0x0

    goto :goto_20

    :cond_1c
    invoke-virtual {p3}, Landroidx/collection/ArrayMap;->size()I

    move-result v3

    .line 1036
    .local v3, "count":I
    :goto_20
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_21
    if-ge v4, v3, :cond_34

    .line 1037
    invoke-virtual {p3, v4}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1038
    invoke-virtual {p3, v4}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1036
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 1040
    .end local v4    # "i":I
    :cond_34
    const/4 v4, 0x0

    if-eqz p4, :cond_3b

    .line 1041
    invoke-virtual {v0, v2, v1, v4}, Landroidx/core/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_3e

    .line 1043
    :cond_3b
    invoke-virtual {v0, v2, v1, v4}, Landroidx/core/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1046
    .end local v1    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v2    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "count":I
    :cond_3e
    :goto_3e
    return-void
.end method

.method private static canHandleAll(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/util/List;)Z
    .registers 5
    .param p0, "impl"    # Landroidx/fragment/app/FragmentTransitionImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 518
    .local p1, "transitions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_5
    if-ge v0, v1, :cond_16

    .line 519
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/fragment/app/FragmentTransitionImpl;->canHandle(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 520
    const/4 v2, 0x0

    return v2

    .line 518
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 523
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_16
    const/4 v0, 0x1

    return v0
.end method

.method static captureInSharedElements(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Landroidx/collection/ArrayMap;
    .registers 15
    .param p0, "impl"    # Landroidx/fragment/app/FragmentTransitionImpl;
    .param p2, "sharedElementTransition"    # Ljava/lang/Object;
    .param p3, "fragments"    # Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ")",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 889
    .local p1, "nameOverrides":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p3, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    .line 890
    .local v0, "inFragment":Landroidx/fragment/app/Fragment;
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 891
    .local v1, "fragmentView":Landroid/view/View;
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7f

    if-eqz p2, :cond_7f

    if-nez v1, :cond_12

    goto/16 :goto_7f

    .line 895
    :cond_12
    new-instance v2, Landroidx/collection/ArrayMap;

    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    .line 896
    .local v2, "inSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 900
    iget-object v3, p3, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 901
    .local v3, "inTransaction":Landroidx/fragment/app/BackStackRecord;
    iget-boolean v4, p3, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    if-eqz v4, :cond_27

    .line 902
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object v4

    .line 903
    .local v4, "sharedElementCallback":Landroidx/core/app/SharedElementCallback;
    iget-object v5, v3, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .local v5, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_2d

    .line 905
    .end local v4    # "sharedElementCallback":Landroidx/core/app/SharedElementCallback;
    .end local v5    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_27
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object v4

    .line 906
    .restart local v4    # "sharedElementCallback":Landroidx/core/app/SharedElementCallback;
    iget-object v5, v3, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 909
    .restart local v5    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2d
    if-eqz v5, :cond_39

    .line 910
    invoke-virtual {v2, v5}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 911
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 913
    :cond_39
    if-eqz v4, :cond_7b

    .line 914
    invoke-virtual {v4, v5, v2}, Landroidx/core/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 915
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_44
    if-ltz v6, :cond_7a

    .line 916
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 917
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {v2, v7}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 918
    .local v8, "view":Landroid/view/View;
    if-nez v8, :cond_5e

    .line 919
    invoke-static {p1, v7}, Landroidx/fragment/app/FragmentTransition;->findKeyForValue(Landroidx/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 920
    .local v9, "key":Ljava/lang/String;
    if-eqz v9, :cond_76

    .line 921
    invoke-virtual {p1, v9}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_76

    .line 923
    .end local v9    # "key":Ljava/lang/String;
    :cond_5e
    invoke-static {v8}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_76

    .line 924
    invoke-static {p1, v7}, Landroidx/fragment/app/FragmentTransition;->findKeyForValue(Landroidx/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 925
    .restart local v9    # "key":Ljava/lang/String;
    if-eqz v9, :cond_77

    .line 926
    invoke-static {v8}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v9, v10}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_77

    .line 923
    .end local v9    # "key":Ljava/lang/String;
    :cond_76
    :goto_76
    nop

    .line 915
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "view":Landroid/view/View;
    :cond_77
    :goto_77
    add-int/lit8 v6, v6, -0x1

    goto :goto_44

    .end local v6    # "i":I
    :cond_7a
    goto :goto_7e

    .line 931
    :cond_7b
    invoke-static {p1, v2}, Landroidx/fragment/app/FragmentTransition;->retainValues(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    .line 933
    :goto_7e
    return-object v2

    .line 892
    .end local v2    # "inSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v3    # "inTransaction":Landroidx/fragment/app/BackStackRecord;
    .end local v4    # "sharedElementCallback":Landroidx/core/app/SharedElementCallback;
    .end local v5    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7f
    :goto_7f
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->clear()V

    .line 893
    const/4 v2, 0x0

    return-object v2
.end method

.method private static captureOutSharedElements(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Landroidx/collection/ArrayMap;
    .registers 14
    .param p0, "impl"    # Landroidx/fragment/app/FragmentTransitionImpl;
    .param p2, "sharedElementTransition"    # Ljava/lang/Object;
    .param p3, "fragments"    # Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ")",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 831
    .local p1, "nameOverrides":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_71

    if-nez p2, :cond_9

    goto :goto_71

    .line 835
    :cond_9
    iget-object v0, p3, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    .line 836
    .local v0, "outFragment":Landroidx/fragment/app/Fragment;
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    .line 837
    .local v1, "outSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/FragmentTransitionImpl;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 841
    iget-object v2, p3, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 842
    .local v2, "outTransaction":Landroidx/fragment/app/BackStackRecord;
    iget-boolean v3, p3, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    if-eqz v3, :cond_24

    .line 843
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object v3

    .line 844
    .local v3, "sharedElementCallback":Landroidx/core/app/SharedElementCallback;
    iget-object v4, v2, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .local v4, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_2a

    .line 846
    .end local v3    # "sharedElementCallback":Landroidx/core/app/SharedElementCallback;
    .end local v4    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_24
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object v3

    .line 847
    .restart local v3    # "sharedElementCallback":Landroidx/core/app/SharedElementCallback;
    iget-object v4, v2, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 850
    .restart local v4    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2a
    if-eqz v4, :cond_2f

    .line 851
    invoke-virtual {v1, v4}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 853
    :cond_2f
    if-eqz v3, :cond_69

    .line 854
    invoke-virtual {v3, v4, v1}, Landroidx/core/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 855
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_3a
    if-ltz v5, :cond_68

    .line 856
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 857
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v1, v6}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 858
    .local v7, "view":Landroid/view/View;
    if-nez v7, :cond_4e

    .line 859
    invoke-virtual {p1, v6}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_65

    .line 860
    :cond_4e
    invoke-static {v7}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_65

    .line 861
    invoke-virtual {p1, v6}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 862
    .local v8, "targetValue":Ljava/lang/String;
    invoke-static {v7}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9, v8}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "view":Landroid/view/View;
    .end local v8    # "targetValue":Ljava/lang/String;
    :cond_65
    :goto_65
    add-int/lit8 v5, v5, -0x1

    goto :goto_3a

    .end local v5    # "i":I
    :cond_68
    goto :goto_70

    .line 866
    :cond_69
    invoke-virtual {v1}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 868
    :goto_70
    return-object v1

    .line 832
    .end local v0    # "outFragment":Landroidx/fragment/app/Fragment;
    .end local v1    # "outSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v2    # "outTransaction":Landroidx/fragment/app/BackStackRecord;
    .end local v3    # "sharedElementCallback":Landroidx/core/app/SharedElementCallback;
    .end local v4    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_71
    :goto_71
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->clear()V

    .line 833
    const/4 v0, 0x0

    return-object v0
.end method

.method private static chooseImpl(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransitionImpl;
    .registers 6
    .param p0, "outFragment"    # Landroidx/fragment/app/Fragment;
    .param p1, "inFragment"    # Landroidx/fragment/app/Fragment;

    .line 472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 473
    .local v0, "transitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-eqz p0, :cond_22

    .line 474
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v1

    .line 475
    .local v1, "exitTransition":Ljava/lang/Object;
    if-eqz v1, :cond_10

    .line 476
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    :cond_10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v2

    .line 479
    .local v2, "returnTransition":Ljava/lang/Object;
    if-eqz v2, :cond_19

    .line 480
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    :cond_19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object v3

    .line 483
    .local v3, "sharedReturnTransition":Ljava/lang/Object;
    if-eqz v3, :cond_22

    .line 484
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    .end local v1    # "exitTransition":Ljava/lang/Object;
    .end local v2    # "returnTransition":Ljava/lang/Object;
    .end local v3    # "sharedReturnTransition":Ljava/lang/Object;
    :cond_22
    if-eqz p1, :cond_3f

    .line 488
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v1

    .line 489
    .local v1, "enterTransition":Ljava/lang/Object;
    if-eqz v1, :cond_2d

    .line 490
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    :cond_2d
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object v2

    .line 493
    .local v2, "reenterTransition":Ljava/lang/Object;
    if-eqz v2, :cond_36

    .line 494
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    :cond_36
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v3

    .line 497
    .local v3, "sharedEnterTransition":Ljava/lang/Object;
    if-eqz v3, :cond_3f

    .line 498
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    .end local v1    # "enterTransition":Ljava/lang/Object;
    .end local v2    # "reenterTransition":Ljava/lang/Object;
    .end local v3    # "sharedEnterTransition":Ljava/lang/Object;
    :cond_3f
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_47

    .line 502
    return-object v2

    .line 505
    :cond_47
    sget-object v1, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-eqz v1, :cond_56

    sget-object v1, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    invoke-static {v1, v0}, Landroidx/fragment/app/FragmentTransition;->canHandleAll(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 506
    sget-object v1, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    return-object v1

    .line 508
    :cond_56
    sget-object v1, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-eqz v1, :cond_65

    sget-object v1, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    invoke-static {v1, v0}, Landroidx/fragment/app/FragmentTransition;->canHandleAll(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 509
    sget-object v1, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    return-object v1

    .line 511
    :cond_65
    sget-object v1, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-nez v1, :cond_6e

    sget-object v1, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-nez v1, :cond_6e

    .line 514
    return-object v2

    .line 512
    :cond_6e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid Transition types"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static configureEnteringExitingViews(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .registers 8
    .param p0, "impl"    # Landroidx/fragment/app/FragmentTransitionImpl;
    .param p1, "transition"    # Ljava/lang/Object;
    .param p2, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p4, "nonExistentView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1052
    .local p3, "sharedElements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 1053
    .local v0, "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p1, :cond_23

    .line 1054
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 1055
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 1056
    .local v1, "root":Landroid/view/View;
    if-eqz v1, :cond_12

    .line 1057
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 1059
    :cond_12
    if-eqz p3, :cond_17

    .line 1060
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1062
    :cond_17
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    .line 1063
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1064
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 1067
    .end local v1    # "root":Landroid/view/View;
    :cond_23
    return-object v0
.end method

.method private static configureSharedElementsOrdered(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 26
    .param p0, "impl"    # Landroidx/fragment/app/FragmentTransitionImpl;
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "nonExistentView"    # Landroid/view/View;
    .param p4, "fragments"    # Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    .param p7, "enterTransition"    # Ljava/lang/Object;
    .param p8, "exitTransition"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 738
    .local p3, "nameOverrides":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p6, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, p0

    move-object/from16 v6, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    iget-object v7, v6, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    .line 739
    .local v7, "inFragment":Landroidx/fragment/app/Fragment;
    iget-object v8, v6, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    .line 741
    .local v8, "outFragment":Landroidx/fragment/app/Fragment;
    const/4 v1, 0x0

    if-eqz v7, :cond_80

    if-nez v8, :cond_15

    move-object/from16 v0, p1

    goto/16 :goto_82

    .line 745
    :cond_15
    iget-boolean v9, v6, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 746
    .local v9, "inIsPop":Z
    invoke-virtual/range {p3 .. p3}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1f

    move-object v2, v1

    goto :goto_23

    .line 747
    :cond_1f
    invoke-static {v0, v7, v8, v9}, Landroidx/fragment/app/FragmentTransition;->getSharedElementTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v2

    :goto_23
    nop

    .line 749
    .local v2, "sharedElementTransition":Ljava/lang/Object;
    move-object/from16 v12, p3

    invoke-static {v0, v12, v2, v6}, Landroidx/fragment/app/FragmentTransition;->captureOutSharedElements(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Landroidx/collection/ArrayMap;

    move-result-object v3

    .line 752
    .local v3, "outSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {v12}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 753
    const/4 v2, 0x0

    goto :goto_39

    .line 755
    :cond_32
    invoke-virtual {v3}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 758
    :goto_39
    if-nez v11, :cond_40

    if-nez p8, :cond_40

    if-nez v2, :cond_40

    .line 760
    return-object v1

    .line 763
    :cond_40
    const/4 v1, 0x1

    invoke-static {v7, v8, v9, v3, v1}, Landroidx/fragment/app/FragmentTransition;->callSharedElementStartEnd(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V

    .line 766
    if-eqz v2, :cond_64

    .line 767
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    move-object v13, v1

    .line 768
    .local v13, "inEpicenter":Landroid/graphics/Rect;
    move-object/from16 v14, p2

    invoke-virtual {v0, v2, v14, v10}, Landroidx/fragment/app/FragmentTransitionImpl;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 770
    iget-boolean v4, v6, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 771
    .local v4, "outIsPop":Z
    iget-object v5, v6, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 772
    .local v5, "outTransaction":Landroidx/fragment/app/BackStackRecord;
    move-object v1, v2

    move-object/from16 v2, p8

    .end local v2    # "sharedElementTransition":Ljava/lang/Object;
    .local v1, "sharedElementTransition":Ljava/lang/Object;
    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/FragmentTransition;->setOutEpicenter(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Landroidx/collection/ArrayMap;ZLandroidx/fragment/app/BackStackRecord;)V

    .line 774
    move-object/from16 v16, v1

    move-object v15, v3

    .end local v1    # "sharedElementTransition":Ljava/lang/Object;
    .end local v3    # "outSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .local v15, "outSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .local v16, "sharedElementTransition":Ljava/lang/Object;
    if-eqz v11, :cond_63

    .line 775
    invoke-virtual {v0, v11, v13}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 777
    .end local v4    # "outIsPop":Z
    .end local v5    # "outTransaction":Landroidx/fragment/app/BackStackRecord;
    :cond_63
    goto :goto_6a

    .line 778
    .end local v13    # "inEpicenter":Landroid/graphics/Rect;
    .end local v15    # "outSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v16    # "sharedElementTransition":Ljava/lang/Object;
    .restart local v2    # "sharedElementTransition":Ljava/lang/Object;
    .restart local v3    # "outSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    :cond_64
    move-object/from16 v14, p2

    move-object/from16 v16, v2

    move-object v15, v3

    .end local v2    # "sharedElementTransition":Ljava/lang/Object;
    .end local v3    # "outSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .restart local v15    # "outSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .restart local v16    # "sharedElementTransition":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 782
    .restart local v13    # "inEpicenter":Landroid/graphics/Rect;
    :goto_6a
    move-object/from16 v3, v16

    .line 783
    .local v3, "finalSharedElementTransition":Ljava/lang/Object;
    new-instance v0, Landroidx/fragment/app/FragmentTransition$6;

    move-object/from16 v1, p0

    move-object/from16 v5, p6

    move-object v4, v6

    move-object v2, v12

    move-object v12, v13

    move-object v6, v14

    .end local v13    # "inEpicenter":Landroid/graphics/Rect;
    .local v12, "inEpicenter":Landroid/graphics/Rect;
    invoke-direct/range {v0 .. v12}, Landroidx/fragment/app/FragmentTransition$6;-><init>(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V

    move-object v1, v0

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    .line 811
    return-object v16

    .line 741
    .end local v3    # "finalSharedElementTransition":Ljava/lang/Object;
    .end local v9    # "inIsPop":Z
    .end local v12    # "inEpicenter":Landroid/graphics/Rect;
    .end local v15    # "outSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v16    # "sharedElementTransition":Ljava/lang/Object;
    :cond_80
    move-object/from16 v0, p1

    .line 742
    :goto_82
    return-object v1
.end method

.method private static configureSharedElementsReordered(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 27
    .param p0, "impl"    # Landroidx/fragment/app/FragmentTransitionImpl;
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "nonExistentView"    # Landroid/view/View;
    .param p4, "fragments"    # Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    .param p7, "enterTransition"    # Ljava/lang/Object;
    .param p8, "exitTransition"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 609
    .local p3, "nameOverrides":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p6, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    iget-object v6, v10, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    .line 610
    .local v6, "inFragment":Landroidx/fragment/app/Fragment;
    iget-object v7, v10, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    .line 611
    .local v7, "outFragment":Landroidx/fragment/app/Fragment;
    if-eqz v6, :cond_1c

    .line 612
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 614
    :cond_1c
    const/4 v1, 0x0

    if-eqz v6, :cond_b0

    if-nez v7, :cond_27

    move-object/from16 v0, p1

    move-object v2, v6

    move-object v3, v7

    goto/16 :goto_b4

    .line 618
    :cond_27
    iget-boolean v14, v10, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 619
    .local v14, "inIsPop":Z
    invoke-virtual {v9}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_31

    move-object v2, v1

    goto :goto_35

    .line 620
    :cond_31
    invoke-static {v0, v6, v7, v14}, Landroidx/fragment/app/FragmentTransition;->getSharedElementTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v2

    :goto_35
    nop

    .line 622
    .local v2, "sharedElementTransition":Ljava/lang/Object;
    invoke-static {v0, v9, v2, v10}, Landroidx/fragment/app/FragmentTransition;->captureOutSharedElements(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Landroidx/collection/ArrayMap;

    move-result-object v3

    .line 625
    .local v3, "outSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-static {v0, v9, v2, v10}, Landroidx/fragment/app/FragmentTransition;->captureInSharedElements(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Landroidx/collection/ArrayMap;

    move-result-object v15

    .line 628
    .local v15, "inSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {v9}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_50

    .line 629
    const/4 v2, 0x0

    .line 630
    if-eqz v3, :cond_4a

    .line 631
    invoke-virtual {v3}, Landroidx/collection/ArrayMap;->clear()V

    .line 633
    :cond_4a
    if-eqz v15, :cond_60

    .line 634
    invoke-virtual {v15}, Landroidx/collection/ArrayMap;->clear()V

    goto :goto_60

    .line 637
    :cond_50
    nop

    .line 638
    invoke-virtual {v9}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 637
    invoke-static {v11, v3, v4}, Landroidx/fragment/app/FragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroidx/collection/ArrayMap;Ljava/util/Collection;)V

    .line 639
    nop

    .line 640
    invoke-virtual {v9}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    .line 639
    invoke-static {v12, v15, v4}, Landroidx/fragment/app/FragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroidx/collection/ArrayMap;Ljava/util/Collection;)V

    .line 643
    :cond_60
    :goto_60
    if-nez v13, :cond_67

    if-nez p8, :cond_67

    if-nez v2, :cond_67

    .line 645
    return-object v1

    .line 648
    :cond_67
    const/4 v1, 0x1

    invoke-static {v6, v7, v14, v3, v1}, Landroidx/fragment/app/FragmentTransition;->callSharedElementStartEnd(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V

    .line 652
    if-eqz v2, :cond_91

    .line 653
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    invoke-virtual {v0, v2, v8, v11}, Landroidx/fragment/app/FragmentTransitionImpl;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 656
    iget-boolean v4, v10, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 657
    .local v4, "outIsPop":Z
    iget-object v5, v10, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 658
    .local v5, "outTransaction":Landroidx/fragment/app/BackStackRecord;
    move-object v1, v2

    move-object/from16 v2, p8

    .end local v2    # "sharedElementTransition":Ljava/lang/Object;
    .local v1, "sharedElementTransition":Ljava/lang/Object;
    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/FragmentTransition;->setOutEpicenter(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Landroidx/collection/ArrayMap;ZLandroidx/fragment/app/BackStackRecord;)V

    .line 660
    move-object/from16 v17, v1

    move-object/from16 v16, v3

    .end local v1    # "sharedElementTransition":Ljava/lang/Object;
    .end local v3    # "outSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .local v16, "outSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .local v17, "sharedElementTransition":Ljava/lang/Object;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 661
    .local v1, "epicenter":Landroid/graphics/Rect;
    invoke-static {v15, v10, v13, v14}, Landroidx/fragment/app/FragmentTransition;->getInEpicenterView(Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v2

    .line 663
    .local v2, "epicenterView":Landroid/view/View;
    if-eqz v2, :cond_8f

    .line 664
    invoke-virtual {v0, v13, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 666
    .end local v4    # "outIsPop":Z
    .end local v5    # "outTransaction":Landroidx/fragment/app/BackStackRecord;
    :cond_8f
    move-object v5, v2

    goto :goto_98

    .line 667
    .end local v1    # "epicenter":Landroid/graphics/Rect;
    .end local v16    # "outSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v17    # "sharedElementTransition":Ljava/lang/Object;
    .local v2, "sharedElementTransition":Ljava/lang/Object;
    .restart local v3    # "outSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    :cond_91
    move-object/from16 v17, v2

    move-object/from16 v16, v3

    .end local v2    # "sharedElementTransition":Ljava/lang/Object;
    .end local v3    # "outSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .restart local v16    # "outSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .restart local v17    # "sharedElementTransition":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 668
    .restart local v1    # "epicenter":Landroid/graphics/Rect;
    const/4 v2, 0x0

    move-object v5, v2

    .line 671
    .local v5, "epicenterView":Landroid/view/View;
    :goto_98
    new-instance v0, Landroidx/fragment/app/FragmentTransition$5;

    move-object v2, v7

    move v3, v14

    move-object v4, v15

    move-object v7, v1

    move-object v1, v6

    move-object/from16 v6, p0

    .end local v6    # "inFragment":Landroidx/fragment/app/Fragment;
    .end local v14    # "inIsPop":Z
    .end local v15    # "inSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .local v1, "inFragment":Landroidx/fragment/app/Fragment;
    .local v2, "outFragment":Landroidx/fragment/app/Fragment;
    .local v3, "inIsPop":Z
    .local v4, "inSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .local v7, "epicenter":Landroid/graphics/Rect;
    invoke-direct/range {v0 .. v7}, Landroidx/fragment/app/FragmentTransition$5;-><init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Landroid/view/View;Landroidx/fragment/app/FragmentTransitionImpl;Landroid/graphics/Rect;)V

    move-object v6, v2

    move-object v2, v1

    move v1, v3

    move-object v3, v6

    move-object v6, v5

    move-object v5, v0

    move-object/from16 v0, p1

    .end local v5    # "epicenterView":Landroid/view/View;
    .local v1, "inIsPop":Z
    .local v2, "inFragment":Landroidx/fragment/app/Fragment;
    .local v3, "outFragment":Landroidx/fragment/app/Fragment;
    .local v6, "epicenterView":Landroid/view/View;
    invoke-static {v0, v5}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    .line 681
    return-object v17

    .line 614
    .end local v1    # "inIsPop":Z
    .end local v2    # "inFragment":Landroidx/fragment/app/Fragment;
    .end local v3    # "outFragment":Landroidx/fragment/app/Fragment;
    .end local v4    # "inSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v16    # "outSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v17    # "sharedElementTransition":Ljava/lang/Object;
    .local v6, "inFragment":Landroidx/fragment/app/Fragment;
    .local v7, "outFragment":Landroidx/fragment/app/Fragment;
    :cond_b0
    move-object/from16 v0, p1

    move-object v2, v6

    move-object v3, v7

    .line 615
    .end local v6    # "inFragment":Landroidx/fragment/app/Fragment;
    .end local v7    # "outFragment":Landroidx/fragment/app/Fragment;
    .restart local v2    # "inFragment":Landroidx/fragment/app/Fragment;
    .restart local v3    # "outFragment":Landroidx/fragment/app/Fragment;
    :goto_b4
    return-object v1
.end method

.method private static configureTransitionsOrdered(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$Callback;)V
    .registers 23
    .param p0, "container"    # Landroid/view/ViewGroup;
    .param p1, "fragments"    # Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    .param p2, "nonExistentView"    # Landroid/view/View;
    .param p4, "callback"    # Landroidx/fragment/app/FragmentTransition$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/view/View;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/fragment/app/FragmentTransition$Callback;",
            ")V"
        }
    .end annotation

    .line 354
    .local p3, "nameOverrides":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v4, p1

    move-object/from16 v9, p4

    iget-object v10, v4, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    .line 355
    .local v10, "inFragment":Landroidx/fragment/app/Fragment;
    iget-object v11, v4, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    .line 356
    .local v11, "outFragment":Landroidx/fragment/app/Fragment;
    invoke-static {v11, v10}, Landroidx/fragment/app/FragmentTransition;->chooseImpl(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v0

    .line 357
    .local v0, "impl":Landroidx/fragment/app/FragmentTransitionImpl;
    if-nez v0, :cond_f

    .line 358
    return-void

    .line 360
    :cond_f
    iget-boolean v12, v4, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 361
    .local v12, "inIsPop":Z
    iget-boolean v13, v4, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 363
    .local v13, "outIsPop":Z
    invoke-static {v0, v10, v12}, Landroidx/fragment/app/FragmentTransition;->getEnterTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v1

    .line 364
    .local v1, "enterTransition":Ljava/lang/Object;
    invoke-static {v0, v11, v13}, Landroidx/fragment/app/FragmentTransition;->getExitTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v8

    .line 366
    .local v8, "exitTransition":Ljava/lang/Object;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .local v5, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .local v6, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v7, v1

    move-object/from16 v1, p0

    .end local v1    # "enterTransition":Ljava/lang/Object;
    .local v7, "enterTransition":Ljava/lang/Object;
    invoke-static/range {v0 .. v8}, Landroidx/fragment/app/FragmentTransition;->configureSharedElementsOrdered(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 373
    move-object v15, v4

    move-object/from16 v16, v6

    move-object v1, v7

    move-object v6, v2

    move-object v7, v5

    .end local v5    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v6    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v1    # "enterTransition":Ljava/lang/Object;
    .local v7, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v14, "sharedElementTransition":Ljava/lang/Object;
    .local v16, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v1, :cond_3d

    if-nez v14, :cond_3d

    if-nez v8, :cond_3d

    .line 375
    return-void

    .line 378
    :cond_3d
    invoke-static {v0, v8, v11, v7, v6}, Landroidx/fragment/app/FragmentTransition;->configureEnteringExitingViews(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v17

    .line 381
    .local v17, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v17, :cond_4c

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4a

    goto :goto_4c

    :cond_4a
    move-object v2, v8

    goto :goto_4e

    .line 382
    :cond_4c
    :goto_4c
    const/4 v8, 0x0

    move-object v2, v8

    .line 387
    .end local v8    # "exitTransition":Ljava/lang/Object;
    .local v2, "exitTransition":Ljava/lang/Object;
    :goto_4e
    invoke-virtual {v0, v1, v6}, Landroidx/fragment/app/FragmentTransitionImpl;->addTarget(Ljava/lang/Object;Landroid/view/View;)V

    .line 389
    iget-boolean v5, v15, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    move-object v4, v10

    move-object v3, v14

    .end local v10    # "inFragment":Landroidx/fragment/app/Fragment;
    .end local v14    # "sharedElementTransition":Ljava/lang/Object;
    .local v3, "sharedElementTransition":Ljava/lang/Object;
    .local v4, "inFragment":Landroidx/fragment/app/Fragment;
    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/FragmentTransition;->mergeTransitions(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v5

    .line 392
    move-object v8, v4

    .end local v4    # "inFragment":Landroidx/fragment/app/Fragment;
    .local v5, "transition":Ljava/lang/Object;
    .local v8, "inFragment":Landroidx/fragment/app/Fragment;
    if-eqz v11, :cond_7a

    if-eqz v17, :cond_7a

    .line 393
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_6a

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7a

    .line 394
    :cond_6a
    new-instance v4, Landroidx/core/os/CancellationSignal;

    invoke-direct {v4}, Landroidx/core/os/CancellationSignal;-><init>()V

    .line 395
    .local v4, "signal":Landroidx/core/os/CancellationSignal;
    invoke-interface {v9, v11, v4}, Landroidx/fragment/app/FragmentTransition$Callback;->onStart(Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V

    .line 396
    new-instance v10, Landroidx/fragment/app/FragmentTransition$3;

    invoke-direct {v10, v9, v11, v4}, Landroidx/fragment/app/FragmentTransition$3;-><init>(Landroidx/fragment/app/FragmentTransition$Callback;Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V

    invoke-virtual {v0, v11, v5, v4, v10}, Landroidx/fragment/app/FragmentTransitionImpl;->setListenerForTransitionEnd(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Landroidx/core/os/CancellationSignal;Ljava/lang/Runnable;)V

    .line 404
    .end local v4    # "signal":Landroidx/core/os/CancellationSignal;
    :cond_7a
    if-eqz v5, :cond_ae

    .line 405
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 406
    .local v4, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v10, p3

    move-object v6, v3

    move-object v3, v4

    move-object v14, v7

    move-object/from16 v7, v16

    move-object v4, v2

    move-object v2, v1

    move-object v1, v5

    move-object/from16 v5, v17

    .end local v16    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v17    # "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v1, "transition":Ljava/lang/Object;
    .local v2, "enterTransition":Ljava/lang/Object;
    .local v3, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v4, "exitTransition":Ljava/lang/Object;
    .local v5, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v6, "sharedElementTransition":Ljava/lang/Object;
    .local v7, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v14, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual/range {v0 .. v7}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 409
    move-object/from16 v17, v6

    move-object v6, v3

    move-object v3, v1

    move-object v1, v2

    move-object v2, v4

    .end local v4    # "exitTransition":Ljava/lang/Object;
    .end local v7    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v1, "enterTransition":Ljava/lang/Object;
    .local v2, "exitTransition":Ljava/lang/Object;
    .local v3, "transition":Ljava/lang/Object;
    .local v6, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v16    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v17, "sharedElementTransition":Ljava/lang/Object;
    move-object v7, v2

    move-object v9, v3

    move-object v2, v8

    move-object/from16 v4, v16

    move-object/from16 v3, p2

    move-object v8, v5

    move-object v5, v1

    move-object/from16 v1, p0

    .end local v1    # "enterTransition":Ljava/lang/Object;
    .end local v3    # "transition":Ljava/lang/Object;
    .end local v16    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v2, "inFragment":Landroidx/fragment/app/Fragment;
    .local v4, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v5, "enterTransition":Ljava/lang/Object;
    .local v7, "exitTransition":Ljava/lang/Object;
    .local v8, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v9, "transition":Ljava/lang/Object;
    invoke-static/range {v0 .. v8}, Landroidx/fragment/app/FragmentTransition;->scheduleTargetChange(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 411
    invoke-virtual {v0, v1, v4, v10}, Landroidx/fragment/app/FragmentTransitionImpl;->setNameOverridesOrdered(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 413
    invoke-virtual {v0, v1, v9}, Landroidx/fragment/app/FragmentTransitionImpl;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 414
    invoke-virtual {v0, v1, v4, v10}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleNameReset(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/Map;)V

    goto :goto_bd

    .line 404
    .end local v4    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v6    # "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v9    # "transition":Ljava/lang/Object;
    .end local v14    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v1    # "enterTransition":Ljava/lang/Object;
    .local v2, "exitTransition":Ljava/lang/Object;
    .local v3, "sharedElementTransition":Ljava/lang/Object;
    .local v5, "transition":Ljava/lang/Object;
    .local v7, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v8, "inFragment":Landroidx/fragment/app/Fragment;
    .restart local v16    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v17, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_ae
    move-object/from16 v10, p3

    move-object v9, v5

    move-object v14, v7

    move-object/from16 v4, v16

    move-object v5, v1

    move-object v7, v2

    move-object v2, v8

    move-object/from16 v8, v17

    move-object/from16 v1, p0

    move-object/from16 v17, v3

    .line 416
    .end local v1    # "enterTransition":Ljava/lang/Object;
    .end local v3    # "sharedElementTransition":Ljava/lang/Object;
    .end local v16    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v2, "inFragment":Landroidx/fragment/app/Fragment;
    .restart local v4    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v5, "enterTransition":Ljava/lang/Object;
    .local v7, "exitTransition":Ljava/lang/Object;
    .local v8, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v9    # "transition":Ljava/lang/Object;
    .restart local v14    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v17, "sharedElementTransition":Ljava/lang/Object;
    :goto_bd
    return-void
.end method

.method private static configureTransitionsReordered(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$Callback;)V
    .registers 24
    .param p0, "container"    # Landroid/view/ViewGroup;
    .param p1, "fragments"    # Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    .param p2, "nonExistentView"    # Landroid/view/View;
    .param p4, "callback"    # Landroidx/fragment/app/FragmentTransition$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/view/View;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/fragment/app/FragmentTransition$Callback;",
            ")V"
        }
    .end annotation

    .line 237
    .local p3, "nameOverrides":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v4, p1

    move-object/from16 v9, p4

    iget-object v10, v4, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    .line 238
    .local v10, "inFragment":Landroidx/fragment/app/Fragment;
    iget-object v11, v4, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    .line 239
    .local v11, "outFragment":Landroidx/fragment/app/Fragment;
    invoke-static {v11, v10}, Landroidx/fragment/app/FragmentTransition;->chooseImpl(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v0

    .line 240
    .local v0, "impl":Landroidx/fragment/app/FragmentTransitionImpl;
    if-nez v0, :cond_f

    .line 241
    return-void

    .line 243
    :cond_f
    iget-boolean v12, v4, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 244
    .local v12, "inIsPop":Z
    iget-boolean v13, v4, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 246
    .local v13, "outIsPop":Z
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v3, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .local v2, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {v0, v10, v12}, Landroidx/fragment/app/FragmentTransition;->getEnterTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v1

    .line 249
    .local v1, "enterTransition":Ljava/lang/Object;
    invoke-static {v0, v11, v13}, Landroidx/fragment/app/FragmentTransition;->getExitTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v8

    .line 251
    .local v8, "exitTransition":Ljava/lang/Object;
    move-object v7, v1

    move-object v5, v2

    move-object v6, v3

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .end local v1    # "enterTransition":Ljava/lang/Object;
    .end local v2    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v5, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v6, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v7, "enterTransition":Ljava/lang/Object;
    invoke-static/range {v0 .. v8}, Landroidx/fragment/app/FragmentTransition;->configureSharedElementsReordered(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 255
    move-object v1, v8

    move-object v8, v2

    move-object v2, v1

    move-object v15, v5

    move-object v1, v7

    .end local v5    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "enterTransition":Ljava/lang/Object;
    .end local v8    # "exitTransition":Ljava/lang/Object;
    .restart local v1    # "enterTransition":Ljava/lang/Object;
    .local v2, "exitTransition":Ljava/lang/Object;
    .local v14, "sharedElementTransition":Ljava/lang/Object;
    .local v15, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v1, :cond_3e

    if-nez v14, :cond_3e

    if-nez v2, :cond_3e

    .line 257
    return-void

    .line 260
    :cond_3e
    invoke-static {v0, v2, v11, v15, v8}, Landroidx/fragment/app/FragmentTransition;->configureEnteringExitingViews(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v7

    .line 263
    .local v7, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {v0, v1, v10, v6, v8}, Landroidx/fragment/app/FragmentTransition;->configureEnteringExitingViews(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v3

    .line 266
    .local v3, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v4, 0x4

    invoke-static {v3, v4}, Landroidx/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 268
    move-object v4, v10

    move v5, v12

    move-object v10, v3

    move-object v3, v14

    .end local v12    # "inIsPop":Z
    .end local v14    # "sharedElementTransition":Ljava/lang/Object;
    .local v3, "sharedElementTransition":Ljava/lang/Object;
    .local v4, "inFragment":Landroidx/fragment/app/Fragment;
    .local v5, "inIsPop":Z
    .local v10, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/FragmentTransition;->mergeTransitions(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v12

    .line 271
    move-object v14, v4

    move/from16 v16, v5

    .end local v4    # "inFragment":Landroidx/fragment/app/Fragment;
    .end local v5    # "inIsPop":Z
    .local v12, "transition":Ljava/lang/Object;
    .local v14, "inFragment":Landroidx/fragment/app/Fragment;
    .local v16, "inIsPop":Z
    if-eqz v11, :cond_75

    if-eqz v7, :cond_75

    .line 272
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_65

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_75

    .line 273
    :cond_65
    new-instance v4, Landroidx/core/os/CancellationSignal;

    invoke-direct {v4}, Landroidx/core/os/CancellationSignal;-><init>()V

    .line 274
    .local v4, "signal":Landroidx/core/os/CancellationSignal;
    invoke-interface {v9, v11, v4}, Landroidx/fragment/app/FragmentTransition$Callback;->onStart(Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V

    .line 275
    new-instance v5, Landroidx/fragment/app/FragmentTransition$1;

    invoke-direct {v5, v9, v11, v4}, Landroidx/fragment/app/FragmentTransition$1;-><init>(Landroidx/fragment/app/FragmentTransition$Callback;Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V

    invoke-virtual {v0, v11, v12, v4, v5}, Landroidx/fragment/app/FragmentTransitionImpl;->setListenerForTransitionEnd(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Landroidx/core/os/CancellationSignal;Ljava/lang/Runnable;)V

    .line 283
    .end local v4    # "signal":Landroidx/core/os/CancellationSignal;
    :cond_75
    if-eqz v12, :cond_aa

    .line 284
    invoke-static {v0, v2, v11, v7}, Landroidx/fragment/app/FragmentTransition;->replaceHide(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;)V

    .line 285
    nop

    .line 286
    invoke-virtual {v0, v6}, Landroidx/fragment/app/FragmentTransitionImpl;->prepareSetNameOverridesReordered(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v17

    .line 287
    .local v17, "inNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v4, v2

    move-object v5, v7

    move-object v2, v1

    move-object v7, v6

    move-object v1, v12

    move-object v6, v3

    move-object v3, v10

    .end local v10    # "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v12    # "transition":Ljava/lang/Object;
    .local v1, "transition":Ljava/lang/Object;
    .local v2, "enterTransition":Ljava/lang/Object;
    .local v3, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v4, "exitTransition":Ljava/lang/Object;
    .local v5, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v6, "sharedElementTransition":Ljava/lang/Object;
    .local v7, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual/range {v0 .. v7}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 290
    move-object v10, v4

    move-object/from16 v18, v5

    move-object v12, v6

    move-object v6, v7

    move-object v7, v2

    .end local v2    # "enterTransition":Ljava/lang/Object;
    .end local v4    # "exitTransition":Ljava/lang/Object;
    .end local v5    # "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v6, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v7, "enterTransition":Ljava/lang/Object;
    .local v10, "exitTransition":Ljava/lang/Object;
    .local v12, "sharedElementTransition":Ljava/lang/Object;
    .local v18, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v2, p0

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 291
    move-object v4, v15

    move-object v15, v1

    move-object v1, v2

    move-object v2, v4

    move-object v4, v6

    move-object v6, v3

    move-object v3, v4

    move-object/from16 v5, p3

    move-object/from16 v4, v17

    .end local v1    # "transition":Ljava/lang/Object;
    .end local v17    # "inNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v2, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v3, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v4, "inNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v6, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v15, "transition":Ljava/lang/Object;
    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/FragmentTransitionImpl;->setNameOverridesReordered(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 293
    const/4 v1, 0x0

    invoke-static {v6, v1}, Landroidx/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 294
    invoke-virtual {v0, v12, v2, v3}, Landroidx/fragment/app/FragmentTransitionImpl;->swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_b6

    .line 283
    .end local v4    # "inNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18    # "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v1, "enterTransition":Ljava/lang/Object;
    .local v2, "exitTransition":Ljava/lang/Object;
    .local v3, "sharedElementTransition":Ljava/lang/Object;
    .local v6, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v7, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v10, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v12, "transition":Ljava/lang/Object;
    .local v15, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_aa
    move-object/from16 v18, v10

    move-object v10, v2

    move-object v2, v15

    move-object v15, v12

    move-object v12, v3

    move-object v3, v6

    move-object/from16 v6, v18

    move-object/from16 v18, v7

    move-object v7, v1

    .line 297
    .end local v1    # "enterTransition":Ljava/lang/Object;
    .local v2, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v3, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v6, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v7, "enterTransition":Ljava/lang/Object;
    .local v10, "exitTransition":Ljava/lang/Object;
    .local v12, "sharedElementTransition":Ljava/lang/Object;
    .local v15, "transition":Ljava/lang/Object;
    .restart local v18    # "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :goto_b6
    return-void
.end method

.method private static ensureContainer(Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    .registers 4
    .param p0, "containerTransition"    # Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ">;I)",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;"
        }
    .end annotation

    .line 1271
    .local p1, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;>;"
    if-nez p0, :cond_b

    .line 1272
    new-instance v0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    invoke-direct {v0}, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;-><init>()V

    move-object p0, v0

    .line 1273
    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1275
    :cond_b
    return-object p0
.end method

.method static findKeyForValue(Landroidx/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 940
    .local p0, "map":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroidx/collection/ArrayMap;->size()I

    move-result v0

    .line 941
    .local v0, "numElements":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_1b

    .line 942
    invoke-virtual {p0, v1}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 943
    invoke-virtual {p0, v1}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 941
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 946
    .end local v1    # "i":I
    :cond_1b
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getEnterTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .registers 4
    .param p0, "impl"    # Landroidx/fragment/app/FragmentTransitionImpl;
    .param p1, "inFragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "isPop"    # Z

    .line 554
    if-nez p1, :cond_4

    .line 555
    const/4 v0, 0x0

    return-object v0

    .line 557
    :cond_4
    if-eqz p2, :cond_b

    .line 558
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_f

    .line 559
    :cond_b
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v0

    .line 557
    :goto_f
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getExitTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .registers 4
    .param p0, "impl"    # Landroidx/fragment/app/FragmentTransitionImpl;
    .param p1, "outFragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "isPop"    # Z

    .line 567
    if-nez p1, :cond_4

    .line 568
    const/4 v0, 0x0

    return-object v0

    .line 570
    :cond_4
    if-eqz p2, :cond_b

    .line 571
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_f

    .line 572
    :cond_b
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v0

    .line 570
    :goto_f
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static getInEpicenterView(Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;
    .registers 7
    .param p1, "fragments"    # Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    .param p2, "enterTransition"    # Ljava/lang/Object;
    .param p3, "inIsPop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/lang/Object;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 962
    .local p0, "inSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v0, p1, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 963
    .local v0, "inTransaction":Landroidx/fragment/app/BackStackRecord;
    if-eqz p2, :cond_2e

    if-eqz p0, :cond_2e

    iget-object v1, v0, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_2e

    iget-object v1, v0, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 965
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 966
    const/4 v1, 0x0

    if-eqz p3, :cond_1e

    .line 967
    iget-object v2, v0, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_26

    .line 968
    :cond_1e
    iget-object v2, v0, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_26
    nop

    .line 969
    .local v1, "targetName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    return-object v2

    .line 971
    .end local v1    # "targetName":Ljava/lang/String;
    :cond_2e
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getSharedElementTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .registers 6
    .param p0, "impl"    # Landroidx/fragment/app/FragmentTransitionImpl;
    .param p1, "inFragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "outFragment"    # Landroidx/fragment/app/Fragment;
    .param p3, "isPop"    # Z

    .line 540
    if-eqz p1, :cond_19

    if-nez p2, :cond_5

    goto :goto_19

    .line 543
    :cond_5
    if-eqz p3, :cond_c

    .line 544
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_10

    .line 545
    :cond_c
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v0

    .line 543
    :goto_10
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 546
    .local v0, "transition":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 541
    .end local v0    # "transition":Ljava/lang/Object;
    :cond_19
    :goto_19
    const/4 v0, 0x0

    return-object v0
.end method

.method private static mergeTransitions(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .registers 8
    .param p0, "impl"    # Landroidx/fragment/app/FragmentTransitionImpl;
    .param p1, "enterTransition"    # Ljava/lang/Object;
    .param p2, "exitTransition"    # Ljava/lang/Object;
    .param p3, "sharedElementTransition"    # Ljava/lang/Object;
    .param p4, "inFragment"    # Landroidx/fragment/app/Fragment;
    .param p5, "isPop"    # Z

    .line 1090
    const/4 v0, 0x1

    .line 1091
    .local v0, "overlap":Z
    if-eqz p1, :cond_13

    if-eqz p2, :cond_13

    if-eqz p4, :cond_13

    .line 1092
    if-eqz p5, :cond_e

    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result v1

    goto :goto_12

    .line 1093
    :cond_e
    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result v1

    :goto_12
    move v0, v1

    .line 1101
    :cond_13
    if-eqz v0, :cond_1a

    .line 1103
    invoke-virtual {p0, p2, p1, p3}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "transition":Ljava/lang/Object;
    goto :goto_1e

    .line 1108
    .end local v1    # "transition":Ljava/lang/Object;
    :cond_1a
    invoke-virtual {p0, p2, p1, p3}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1111
    .restart local v1    # "transition":Ljava/lang/Object;
    :goto_1e
    return-object v1
.end method

.method private static replaceHide(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;)V
    .registers 6
    .param p0, "impl"    # Landroidx/fragment/app/FragmentTransitionImpl;
    .param p1, "exitTransition"    # Ljava/lang/Object;
    .param p2, "exitingFragment"    # Landroidx/fragment/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 307
    .local p3, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p2, :cond_26

    if-eqz p1, :cond_26

    iget-boolean v0, p2, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_26

    iget-boolean v0, p2, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_26

    iget-boolean v0, p2, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v0, :cond_26

    .line 309
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->setHideReplaced(Z)V

    .line 310
    nop

    .line 311
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 310
    invoke-virtual {p0, p1, v0, p3}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 327
    iget-object v0, p2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 328
    .local v0, "container":Landroid/view/ViewGroup;
    new-instance v1, Landroidx/fragment/app/FragmentTransition$2;

    invoke-direct {v1, p3}, Landroidx/fragment/app/FragmentTransition$2;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    .line 335
    .end local v0    # "container":Landroid/view/ViewGroup;
    :cond_26
    return-void
.end method

.method private static resolveSupportImpl()Landroidx/fragment/app/FragmentTransitionImpl;
    .registers 3

    .line 86
    :try_start_0
    const-string v0, "androidx.transition.FragmentTransitionSupport"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 88
    .local v0, "impl":Ljava/lang/Class;, "Ljava/lang/Class<Landroidx/fragment/app/FragmentTransitionImpl;>;"
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentTransitionImpl;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return-object v1

    .line 89
    .end local v0    # "impl":Ljava/lang/Class;, "Ljava/lang/Class<Landroidx/fragment/app/FragmentTransitionImpl;>;"
    :catch_16
    move-exception v0

    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method static retainValues(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1007
    .local p0, "nameOverrides":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p1, "namedViews":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p0}, Landroidx/collection/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_1a

    .line 1008
    invoke-virtual {p0, v0}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1009
    .local v1, "targetName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 1010
    invoke-virtual {p0, v0}, Landroidx/collection/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1007
    .end local v1    # "targetName":Ljava/lang/String;
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1013
    .end local v0    # "i":I
    :cond_1a
    return-void
.end method

.method private static scheduleTargetChange(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .registers 18
    .param p0, "impl"    # Landroidx/fragment/app/FragmentTransitionImpl;
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "inFragment"    # Landroidx/fragment/app/Fragment;
    .param p3, "nonExistentView"    # Landroid/view/View;
    .param p5, "enterTransition"    # Ljava/lang/Object;
    .param p7, "exitTransition"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Landroid/view/ViewGroup;",
            "Landroidx/fragment/app/Fragment;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 441
    .local p4, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p6, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p8, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v0, Landroidx/fragment/app/FragmentTransition$4;

    move-object v2, p0

    move-object v4, p2

    move-object v3, p3

    move-object v5, p4

    move-object v1, p5

    move-object v6, p6

    move-object/from16 v8, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v8}, Landroidx/fragment/app/FragmentTransition$4;-><init>(Ljava/lang/Object;Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/View;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    invoke-static {p1, v0}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    .line 464
    return-void
.end method

.method private static setOutEpicenter(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Landroidx/collection/ArrayMap;ZLandroidx/fragment/app/BackStackRecord;)V
    .registers 8
    .param p0, "impl"    # Landroidx/fragment/app/FragmentTransitionImpl;
    .param p1, "sharedElementTransition"    # Ljava/lang/Object;
    .param p2, "exitTransition"    # Ljava/lang/Object;
    .param p4, "outIsPop"    # Z
    .param p5, "outTransaction"    # Landroidx/fragment/app/BackStackRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z",
            "Landroidx/fragment/app/BackStackRecord;",
            ")V"
        }
    .end annotation

    .line 986
    .local p3, "outSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v0, p5, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_2f

    iget-object v0, p5, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 987
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 988
    const/4 v0, 0x0

    if-eqz p4, :cond_18

    .line 989
    iget-object v1, p5, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_20

    .line 990
    :cond_18
    iget-object v1, p5, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_20
    nop

    .line 991
    .local v0, "sourceName":Ljava/lang/String;
    invoke-virtual {p3, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 992
    .local v1, "outEpicenterView":Landroid/view/View;
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    .line 994
    if-eqz p2, :cond_2f

    .line 995
    invoke-virtual {p0, p2, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    .line 998
    .end local v0    # "sourceName":Ljava/lang/String;
    .end local v1    # "outEpicenterView":Landroid/view/View;
    :cond_2f
    return-void
.end method

.method static setViewVisibility(Ljava/util/ArrayList;I)V
    .registers 4
    .param p1, "visibility"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1074
    .local p0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez p0, :cond_3

    .line 1075
    return-void

    .line 1077
    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_17

    .line 1078
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1079
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1077
    .end local v1    # "view":Landroid/view/View;
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 1081
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method static startTransitions(Landroid/content/Context;Landroidx/fragment/app/FragmentContainer;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLandroidx/fragment/app/FragmentTransition$Callback;)V
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragmentContainer"    # Landroidx/fragment/app/FragmentContainer;
    .param p4, "startIndex"    # I
    .param p5, "endIndex"    # I
    .param p6, "isReordered"    # Z
    .param p7, "callback"    # Landroidx/fragment/app/FragmentTransition$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/fragment/app/FragmentContainer;",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;IIZ",
            "Landroidx/fragment/app/FragmentTransition$Callback;",
            ")V"
        }
    .end annotation

    .line 127
    .local p2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/BackStackRecord;>;"
    .local p3, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 129
    .local v0, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;>;"
    move v1, p4

    .local v1, "i":I
    :goto_6
    if-ge v1, p5, :cond_24

    .line 130
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/BackStackRecord;

    .line 131
    .local v2, "record":Landroidx/fragment/app/BackStackRecord;
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 132
    .local v3, "isPop":Z
    if-eqz v3, :cond_1e

    .line 133
    invoke-static {v2, v0, p6}, Landroidx/fragment/app/FragmentTransition;->calculatePopFragments(Landroidx/fragment/app/BackStackRecord;Landroid/util/SparseArray;Z)V

    goto :goto_21

    .line 135
    :cond_1e
    invoke-static {v2, v0, p6}, Landroidx/fragment/app/FragmentTransition;->calculateFragments(Landroidx/fragment/app/BackStackRecord;Landroid/util/SparseArray;Z)V

    .line 129
    .end local v2    # "record":Landroidx/fragment/app/BackStackRecord;
    .end local v3    # "isPop":Z
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 139
    .end local v1    # "i":I
    :cond_24
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_60

    .line 140
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 141
    .local v1, "nonExistentView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 142
    .local v2, "numContainers":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_34
    if-ge v3, v2, :cond_60

    .line 143
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 144
    .local v4, "containerId":I
    invoke-static {v4, p2, p3, p4, p5}, Landroidx/fragment/app/FragmentTransition;->calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroidx/collection/ArrayMap;

    move-result-object v5

    .line 147
    .local v5, "nameOverrides":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    .line 148
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    .line 150
    .local v6, "containerTransition":Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentContainer;->onHasView()Z

    move-result v7

    if-eqz v7, :cond_5d

    .line 151
    invoke-virtual {p1, v4}, Landroidx/fragment/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 153
    .local v7, "container":Landroid/view/ViewGroup;
    if-nez v7, :cond_54

    .line 155
    goto :goto_5d

    .line 157
    :cond_54
    if-eqz p6, :cond_5a

    .line 158
    invoke-static {v7, v6, v1, v5, p7}, Landroidx/fragment/app/FragmentTransition;->configureTransitionsReordered(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$Callback;)V

    goto :goto_5d

    .line 161
    :cond_5a
    invoke-static {v7, v6, v1, v5, p7}, Landroidx/fragment/app/FragmentTransition;->configureTransitionsOrdered(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$Callback;)V

    .line 142
    .end local v4    # "containerId":I
    .end local v5    # "nameOverrides":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "containerTransition":Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    .end local v7    # "container":Landroid/view/ViewGroup;
    :cond_5d
    :goto_5d
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 167
    .end local v1    # "nonExistentView":Landroid/view/View;
    .end local v2    # "numContainers":I
    .end local v3    # "i":I
    :cond_60
    return-void
.end method

.method static supportsTransition()Z
    .registers 1

    .line 1153
    sget-object v0, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-nez v0, :cond_b

    sget-object v0, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

###### Class androidx.fragment.app.FragmentTransition.AnonymousClass1 (androidx.fragment.app.FragmentTransition$1)
.class Landroidx/fragment/app/FragmentTransition$1;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentTransition;->configureTransitionsReordered(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroidx/fragment/app/FragmentTransition$Callback;

.field final synthetic val$outFragment:Landroidx/fragment/app/Fragment;

.field final synthetic val$signal:Landroidx/core/os/CancellationSignal;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentTransition$Callback;Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V
    .registers 4

    .line 275
    iput-object p1, p0, Landroidx/fragment/app/FragmentTransition$1;->val$callback:Landroidx/fragment/app/FragmentTransition$Callback;

    iput-object p2, p0, Landroidx/fragment/app/FragmentTransition$1;->val$outFragment:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Landroidx/fragment/app/FragmentTransition$1;->val$signal:Landroidx/core/os/CancellationSignal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 278
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransition$1;->val$callback:Landroidx/fragment/app/FragmentTransition$Callback;

    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$1;->val$outFragment:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Landroidx/fragment/app/FragmentTransition$1;->val$signal:Landroidx/core/os/CancellationSignal;

    invoke-interface {v0, v1, v2}, Landroidx/fragment/app/FragmentTransition$Callback;->onComplete(Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V

    .line 279
    return-void
.end method

###### Class androidx.fragment.app.FragmentTransition.AnonymousClass2 (androidx.fragment.app.FragmentTransition$2)
.class Landroidx/fragment/app/FragmentTransition$2;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentTransition;->replaceHide(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$exitingViews:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .registers 2

    .line 328
    iput-object p1, p0, Landroidx/fragment/app/FragmentTransition$2;->val$exitingViews:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 331
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransition$2;->val$exitingViews:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroidx/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 332
    return-void
.end method

###### Class androidx.fragment.app.FragmentTransition.AnonymousClass3 (androidx.fragment.app.FragmentTransition$3)
.class Landroidx/fragment/app/FragmentTransition$3;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentTransition;->configureTransitionsOrdered(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroidx/fragment/app/FragmentTransition$Callback;

.field final synthetic val$outFragment:Landroidx/fragment/app/Fragment;

.field final synthetic val$signal:Landroidx/core/os/CancellationSignal;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentTransition$Callback;Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V
    .registers 4

    .line 396
    iput-object p1, p0, Landroidx/fragment/app/FragmentTransition$3;->val$callback:Landroidx/fragment/app/FragmentTransition$Callback;

    iput-object p2, p0, Landroidx/fragment/app/FragmentTransition$3;->val$outFragment:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Landroidx/fragment/app/FragmentTransition$3;->val$signal:Landroidx/core/os/CancellationSignal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 399
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransition$3;->val$callback:Landroidx/fragment/app/FragmentTransition$Callback;

    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$3;->val$outFragment:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Landroidx/fragment/app/FragmentTransition$3;->val$signal:Landroidx/core/os/CancellationSignal;

    invoke-interface {v0, v1, v2}, Landroidx/fragment/app/FragmentTransition$Callback;->onComplete(Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V

    .line 400
    return-void
.end method

###### Class androidx.fragment.app.FragmentTransition.AnonymousClass4 (androidx.fragment.app.FragmentTransition$4)
.class Landroidx/fragment/app/FragmentTransition$4;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentTransition;->scheduleTargetChange(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$enterTransition:Ljava/lang/Object;

.field final synthetic val$enteringViews:Ljava/util/ArrayList;

.field final synthetic val$exitTransition:Ljava/lang/Object;

.field final synthetic val$exitingViews:Ljava/util/ArrayList;

.field final synthetic val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

.field final synthetic val$inFragment:Landroidx/fragment/app/Fragment;

.field final synthetic val$nonExistentView:Landroid/view/View;

.field final synthetic val$sharedElementsIn:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/lang/Object;Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/View;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V
    .registers 9

    .line 441
    iput-object p1, p0, Landroidx/fragment/app/FragmentTransition$4;->val$enterTransition:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/fragment/app/FragmentTransition$4;->val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

    iput-object p3, p0, Landroidx/fragment/app/FragmentTransition$4;->val$nonExistentView:Landroid/view/View;

    iput-object p4, p0, Landroidx/fragment/app/FragmentTransition$4;->val$inFragment:Landroidx/fragment/app/Fragment;

    iput-object p5, p0, Landroidx/fragment/app/FragmentTransition$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    iput-object p6, p0, Landroidx/fragment/app/FragmentTransition$4;->val$enteringViews:Ljava/util/ArrayList;

    iput-object p7, p0, Landroidx/fragment/app/FragmentTransition$4;->val$exitingViews:Ljava/util/ArrayList;

    iput-object p8, p0, Landroidx/fragment/app/FragmentTransition$4;->val$exitTransition:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 444
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransition$4;->val$enterTransition:Ljava/lang/Object;

    if-eqz v0, :cond_20

    .line 445
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransition$4;->val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$4;->val$enterTransition:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/fragment/app/FragmentTransition$4;->val$nonExistentView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransitionImpl;->removeTarget(Ljava/lang/Object;Landroid/view/View;)V

    .line 447
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransition$4;->val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$4;->val$enterTransition:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/fragment/app/FragmentTransition$4;->val$inFragment:Landroidx/fragment/app/Fragment;

    iget-object v3, p0, Landroidx/fragment/app/FragmentTransition$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/fragment/app/FragmentTransition$4;->val$nonExistentView:Landroid/view/View;

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentTransition;->configureEnteringExitingViews(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    .line 449
    .local v0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$4;->val$enteringViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 452
    .end local v0    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_20
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransition$4;->val$exitingViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_47

    .line 453
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransition$4;->val$exitTransition:Ljava/lang/Object;

    if-eqz v0, :cond_3b

    .line 454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .local v0, "tempExiting":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$4;->val$nonExistentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$4;->val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

    iget-object v2, p0, Landroidx/fragment/app/FragmentTransition$4;->val$exitTransition:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/fragment/app/FragmentTransition$4;->val$exitingViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 459
    .end local v0    # "tempExiting":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_3b
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransition$4;->val$exitingViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 460
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransition$4;->val$exitingViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$4;->val$nonExistentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    :cond_47
    return-void
.end method

###### Class androidx.fragment.app.FragmentTransition.AnonymousClass5 (androidx.fragment.app.FragmentTransition$5)
.class Landroidx/fragment/app/FragmentTransition$5;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentTransition;->configureSharedElementsReordered(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$epicenter:Landroid/graphics/Rect;

.field final synthetic val$epicenterView:Landroid/view/View;

.field final synthetic val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

.field final synthetic val$inFragment:Landroidx/fragment/app/Fragment;

.field final synthetic val$inIsPop:Z

.field final synthetic val$inSharedElements:Landroidx/collection/ArrayMap;

.field final synthetic val$outFragment:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Landroid/view/View;Landroidx/fragment/app/FragmentTransitionImpl;Landroid/graphics/Rect;)V
    .registers 8

    .line 671
    iput-object p1, p0, Landroidx/fragment/app/FragmentTransition$5;->val$inFragment:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Landroidx/fragment/app/FragmentTransition$5;->val$outFragment:Landroidx/fragment/app/Fragment;

    iput-boolean p3, p0, Landroidx/fragment/app/FragmentTransition$5;->val$inIsPop:Z

    iput-object p4, p0, Landroidx/fragment/app/FragmentTransition$5;->val$inSharedElements:Landroidx/collection/ArrayMap;

    iput-object p5, p0, Landroidx/fragment/app/FragmentTransition$5;->val$epicenterView:Landroid/view/View;

    iput-object p6, p0, Landroidx/fragment/app/FragmentTransition$5;->val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

    iput-object p7, p0, Landroidx/fragment/app/FragmentTransition$5;->val$epicenter:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 674
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransition$5;->val$inFragment:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$5;->val$outFragment:Landroidx/fragment/app/Fragment;

    iget-boolean v2, p0, Landroidx/fragment/app/FragmentTransition$5;->val$inIsPop:Z

    iget-object v3, p0, Landroidx/fragment/app/FragmentTransition$5;->val$inSharedElements:Landroidx/collection/ArrayMap;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentTransition;->callSharedElementStartEnd(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V

    .line 676
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransition$5;->val$epicenterView:Landroid/view/View;

    if-eqz v0, :cond_19

    .line 677
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransition$5;->val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$5;->val$epicenterView:Landroid/view/View;

    iget-object v2, p0, Landroidx/fragment/app/FragmentTransition$5;->val$epicenter:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransitionImpl;->getBoundsOnScreen(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 679
    :cond_19
    return-void
.end method

###### Class androidx.fragment.app.FragmentTransition.AnonymousClass6 (androidx.fragment.app.FragmentTransition$6)
.class Landroidx/fragment/app/FragmentTransition$6;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentTransition;->configureSharedElementsOrdered(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$enterTransition:Ljava/lang/Object;

.field final synthetic val$finalSharedElementTransition:Ljava/lang/Object;

.field final synthetic val$fragments:Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

.field final synthetic val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

.field final synthetic val$inEpicenter:Landroid/graphics/Rect;

.field final synthetic val$inFragment:Landroidx/fragment/app/Fragment;

.field final synthetic val$inIsPop:Z

.field final synthetic val$nameOverrides:Landroidx/collection/ArrayMap;

.field final synthetic val$nonExistentView:Landroid/view/View;

.field final synthetic val$outFragment:Landroidx/fragment/app/Fragment;

.field final synthetic val$sharedElementsIn:Ljava/util/ArrayList;

.field final synthetic val$sharedElementsOut:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 13

    .line 783
    iput-object p1, p0, Landroidx/fragment/app/FragmentTransition$6;->val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

    iput-object p2, p0, Landroidx/fragment/app/FragmentTransition$6;->val$nameOverrides:Landroidx/collection/ArrayMap;

    iput-object p3, p0, Landroidx/fragment/app/FragmentTransition$6;->val$finalSharedElementTransition:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/fragment/app/FragmentTransition$6;->val$fragments:Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    iput-object p5, p0, Landroidx/fragment/app/FragmentTransition$6;->val$sharedElementsIn:Ljava/util/ArrayList;

    iput-object p6, p0, Landroidx/fragment/app/FragmentTransition$6;->val$nonExistentView:Landroid/view/View;

    iput-object p7, p0, Landroidx/fragment/app/FragmentTransition$6;->val$inFragment:Landroidx/fragment/app/Fragment;

    iput-object p8, p0, Landroidx/fragment/app/FragmentTransition$6;->val$outFragment:Landroidx/fragment/app/Fragment;

    iput-boolean p9, p0, Landroidx/fragment/app/FragmentTransition$6;->val$inIsPop:Z

    iput-object p10, p0, Landroidx/fragment/app/FragmentTransition$6;->val$sharedElementsOut:Ljava/util/ArrayList;

    iput-object p11, p0, Landroidx/fragment/app/FragmentTransition$6;->val$enterTransition:Ljava/lang/Object;

    iput-object p12, p0, Landroidx/fragment/app/FragmentTransition$6;->val$inEpicenter:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 786
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransition$6;->val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$6;->val$nameOverrides:Landroidx/collection/ArrayMap;

    iget-object v2, p0, Landroidx/fragment/app/FragmentTransition$6;->val$finalSharedElementTransition:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/fragment/app/FragmentTransition$6;->val$fragments:Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    invoke-static {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentTransition;->captureInSharedElements(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Landroidx/collection/ArrayMap;

    move-result-object v0

    .line 789
    .local v0, "inSharedElements":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    if-eqz v0, :cond_1e

    .line 790
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$6;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 791
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$6;->val$sharedElementsIn:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/FragmentTransition$6;->val$nonExistentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 794
    :cond_1e
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$6;->val$inFragment:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Landroidx/fragment/app/FragmentTransition$6;->val$outFragment:Landroidx/fragment/app/Fragment;

    iget-boolean v3, p0, Landroidx/fragment/app/FragmentTransition$6;->val$inIsPop:Z

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Landroidx/fragment/app/FragmentTransition;->callSharedElementStartEnd(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V

    .line 796
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$6;->val$finalSharedElementTransition:Ljava/lang/Object;

    if-eqz v1, :cond_4a

    .line 797
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$6;->val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

    iget-object v2, p0, Landroidx/fragment/app/FragmentTransition$6;->val$finalSharedElementTransition:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/fragment/app/FragmentTransition$6;->val$sharedElementsOut:Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/fragment/app/FragmentTransition$6;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3, v4}, Landroidx/fragment/app/FragmentTransitionImpl;->swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 801
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$6;->val$fragments:Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    iget-object v2, p0, Landroidx/fragment/app/FragmentTransition$6;->val$enterTransition:Ljava/lang/Object;

    iget-boolean v3, p0, Landroidx/fragment/app/FragmentTransition$6;->val$inIsPop:Z

    invoke-static {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentTransition;->getInEpicenterView(Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v1

    .line 803
    .local v1, "inEpicenterView":Landroid/view/View;
    if-eqz v1, :cond_4a

    .line 804
    iget-object v2, p0, Landroidx/fragment/app/FragmentTransition$6;->val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

    iget-object v3, p0, Landroidx/fragment/app/FragmentTransition$6;->val$inEpicenter:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v3}, Landroidx/fragment/app/FragmentTransitionImpl;->getBoundsOnScreen(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 808
    .end local v1    # "inEpicenterView":Landroid/view/View;
    :cond_4a
    return-void
.end method

###### Class androidx.fragment.app.FragmentTransition.Callback (androidx.fragment.app.FragmentTransition$Callback)
.class interface abstract Landroidx/fragment/app/FragmentTransition$Callback;
.super Ljava/lang/Object;
.source "FragmentTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onComplete(Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V
.end method

.method public abstract onStart(Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V
.end method

###### Class androidx.fragment.app.FragmentTransition.FragmentContainerTransition (androidx.fragment.app.FragmentTransition$FragmentContainerTransition)
.class Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
.super Ljava/lang/Object;
.source "FragmentTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FragmentContainerTransition"
.end annotation


# instance fields
.field public firstOut:Landroidx/fragment/app/Fragment;

.field public firstOutIsPop:Z

.field public firstOutTransaction:Landroidx/fragment/app/BackStackRecord;

.field public lastIn:Landroidx/fragment/app/Fragment;

.field public lastInIsPop:Z

.field public lastInTransaction:Landroidx/fragment/app/BackStackRecord;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
