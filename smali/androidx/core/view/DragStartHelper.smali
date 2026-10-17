###### Class androidx.core.view.DragStartHelper (androidx.core.view.DragStartHelper)
.class public Landroidx/core/view/DragStartHelper;
.super Ljava/lang/Object;
.source "DragStartHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/DragStartHelper$OnDragStartListener;
    }
.end annotation


# instance fields
.field private mDragging:Z

.field private mLastTouchX:I

.field private mLastTouchY:I

.field private final mListener:Landroidx/core/view/DragStartHelper$OnDragStartListener;

.field private final mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mTouchListener:Landroid/view/View$OnTouchListener;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroidx/core/view/DragStartHelper$OnDragStartListener;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "listener"    # Landroidx/core/view/DragStartHelper$OnDragStartListener;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v0, Landroidx/core/view/DragStartHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/core/view/DragStartHelper$$ExternalSyntheticLambda0;-><init>(Landroidx/core/view/DragStartHelper;)V

    iput-object v0, p0, Landroidx/core/view/DragStartHelper;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 186
    new-instance v0, Landroidx/core/view/DragStartHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroidx/core/view/DragStartHelper$$ExternalSyntheticLambda1;-><init>(Landroidx/core/view/DragStartHelper;)V

    iput-object v0, p0, Landroidx/core/view/DragStartHelper;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 99
    iput-object p1, p0, Landroidx/core/view/DragStartHelper;->mView:Landroid/view/View;

    .line 100
    iput-object p2, p0, Landroidx/core/view/DragStartHelper;->mListener:Landroidx/core/view/DragStartHelper$OnDragStartListener;

    .line 101
    return-void
.end method


# virtual methods
.method public attach()V
    .registers 3

    .line 109
    iget-object v0, p0, Landroidx/core/view/DragStartHelper;->mView:Landroid/view/View;

    iget-object v1, p0, Landroidx/core/view/DragStartHelper;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 110
    iget-object v0, p0, Landroidx/core/view/DragStartHelper;->mView:Landroid/view/View;

    iget-object v1, p0, Landroidx/core/view/DragStartHelper;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 111
    return-void
.end method

.method public detach()V
    .registers 3

    .line 119
    iget-object v0, p0, Landroidx/core/view/DragStartHelper;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 120
    iget-object v0, p0, Landroidx/core/view/DragStartHelper;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 121
    return-void
.end method

.method public getTouchPosition(Landroid/graphics/Point;)V
    .registers 4
    .param p1, "point"    # Landroid/graphics/Point;

    .line 180
    iget v0, p0, Landroidx/core/view/DragStartHelper;->mLastTouchX:I

    iget v1, p0, Landroidx/core/view/DragStartHelper;->mLastTouchY:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 181
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 172
    iget-object v0, p0, Landroidx/core/view/DragStartHelper;->mListener:Landroidx/core/view/DragStartHelper$OnDragStartListener;

    invoke-interface {v0, p1, p0}, Landroidx/core/view/DragStartHelper$OnDragStartListener;->onDragStart(Landroid/view/View;Landroidx/core/view/DragStartHelper;)Z

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 131
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 132
    .local v0, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 133
    .local v1, "y":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_4a

    goto :goto_49

    .line 140
    :pswitch_13
    const/16 v2, 0x2002

    invoke-static {p2, v2}, Landroidx/core/view/MotionEventCompat;->isFromSource(Landroid/view/MotionEvent;I)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 141
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_24

    .line 143
    goto :goto_49

    .line 145
    :cond_24
    iget-boolean v2, p0, Landroidx/core/view/DragStartHelper;->mDragging:Z

    if-eqz v2, :cond_29

    .line 147
    goto :goto_49

    .line 149
    :cond_29
    iget v2, p0, Landroidx/core/view/DragStartHelper;->mLastTouchX:I

    if-ne v2, v0, :cond_32

    iget v2, p0, Landroidx/core/view/DragStartHelper;->mLastTouchY:I

    if-ne v2, v1, :cond_32

    .line 151
    goto :goto_49

    .line 153
    :cond_32
    iput v0, p0, Landroidx/core/view/DragStartHelper;->mLastTouchX:I

    .line 154
    iput v1, p0, Landroidx/core/view/DragStartHelper;->mLastTouchY:I

    .line 155
    iget-object v2, p0, Landroidx/core/view/DragStartHelper;->mListener:Landroidx/core/view/DragStartHelper$OnDragStartListener;

    invoke-interface {v2, p1, p0}, Landroidx/core/view/DragStartHelper$OnDragStartListener;->onDragStart(Landroid/view/View;Landroidx/core/view/DragStartHelper;)Z

    move-result v2

    iput-boolean v2, p0, Landroidx/core/view/DragStartHelper;->mDragging:Z

    .line 156
    iget-boolean v2, p0, Landroidx/core/view/DragStartHelper;->mDragging:Z

    return v2

    .line 160
    :pswitch_41
    iput-boolean v3, p0, Landroidx/core/view/DragStartHelper;->mDragging:Z

    goto :goto_49

    .line 135
    :pswitch_44
    iput v0, p0, Landroidx/core/view/DragStartHelper;->mLastTouchX:I

    .line 136
    iput v1, p0, Landroidx/core/view/DragStartHelper;->mLastTouchY:I

    .line 137
    nop

    .line 163
    :cond_49
    :goto_49
    return v3

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_44
        :pswitch_41
        :pswitch_13
        :pswitch_41
    .end packed-switch
.end method

###### Class androidx.core.view.DragStartHelper.OnDragStartListener (androidx.core.view.DragStartHelper$OnDragStartListener)
.class public interface abstract Landroidx/core/view/DragStartHelper$OnDragStartListener;
.super Ljava/lang/Object;
.source "DragStartHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/DragStartHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDragStartListener"
.end annotation


# virtual methods
.method public abstract onDragStart(Landroid/view/View;Landroidx/core/view/DragStartHelper;)Z
.end method

###### Class androidx.core.view.DragStartHelper$$ExternalSyntheticLambda0 (androidx.core.view.DragStartHelper$$ExternalSyntheticLambda0)
.class public final synthetic Landroidx/core/view/DragStartHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/core/view/DragStartHelper;"
    method = "onLongClick"
    proto = "(Landroid/view/View;)Z"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x1c
    versionHash = "3b119036505a817327d30bbe4a430e8676906c2ab0a3363856806bcd3b289007"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/core/view/DragStartHelper;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/view/DragStartHelper;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/DragStartHelper$$ExternalSyntheticLambda0;->f$0:Landroidx/core/view/DragStartHelper;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Landroidx/core/view/DragStartHelper$$ExternalSyntheticLambda0;->f$0:Landroidx/core/view/DragStartHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/DragStartHelper;->onLongClick(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

###### Class androidx.core.view.DragStartHelper$$ExternalSyntheticLambda1 (androidx.core.view.DragStartHelper$$ExternalSyntheticLambda1)
.class public final synthetic Landroidx/core/view/DragStartHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/core/view/DragStartHelper;"
    method = "onTouch"
    proto = "(Landroid/view/View;Landroid/view/MotionEvent;)Z"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x1c
    versionHash = "3b119036505a817327d30bbe4a430e8676906c2ab0a3363856806bcd3b289007"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/core/view/DragStartHelper;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/view/DragStartHelper;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/DragStartHelper$$ExternalSyntheticLambda1;->f$0:Landroidx/core/view/DragStartHelper;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 0
    iget-object v0, p0, Landroidx/core/view/DragStartHelper$$ExternalSyntheticLambda1;->f$0:Landroidx/core/view/DragStartHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/DragStartHelper;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
