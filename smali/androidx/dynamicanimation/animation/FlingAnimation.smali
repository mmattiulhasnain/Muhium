###### Class androidx.dynamicanimation.animation.FlingAnimation (androidx.dynamicanimation.animation.FlingAnimation)
.class public final Landroidx/dynamicanimation/animation/FlingAnimation;
.super Landroidx/dynamicanimation/animation/DynamicAnimation;
.source "FlingAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/DynamicAnimation<",
        "Landroidx/dynamicanimation/animation/FlingAnimation;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFlingForce:Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;


# direct methods
.method public constructor <init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V
    .registers 4
    .param p1, "floatValueHolder"    # Landroidx/dynamicanimation/animation/FloatValueHolder;

    .line 58
    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    .line 43
    new-instance v0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    .line 59
    iget-object v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/FlingAnimation;->getValueThreshold()F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->setValueThreshold(F)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "TK;>;)V"
        }
    .end annotation

    .line 70
    .local p1, "object":Ljava/lang/Object;, "TK;"
    .local p2, "property":Landroidx/dynamicanimation/animation/FloatPropertyCompat;, "Landroidx/dynamicanimation/animation/FloatPropertyCompat<TK;>;"
    invoke-direct {p0, p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 43
    new-instance v0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    .line 71
    iget-object v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/FlingAnimation;->getValueThreshold()F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->setValueThreshold(F)V

    .line 72
    return-void
.end method


# virtual methods
.method getAcceleration(FF)F
    .registers 4
    .param p1, "value"    # F
    .param p2, "velocity"    # F

    .line 179
    iget-object v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-virtual {v0, p1, p2}, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->getAcceleration(FF)F

    move-result v0

    return v0
.end method

.method public getFriction()F
    .registers 2

    .line 98
    iget-object v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->getFrictionScalar()F

    move-result v0

    return v0
.end method

.method isAtEquilibrium(FF)Z
    .registers 4
    .param p1, "value"    # F
    .param p2, "velocity"    # F

    .line 184
    iget v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mMaxValue:F

    cmpl-float v0, p1, v0

    if-gez v0, :cond_17

    iget v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mMinValue:F

    cmpg-float v0, p1, v0

    if-lez v0, :cond_17

    iget-object v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    .line 186
    invoke-virtual {v0, p1, p2}, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->isAtEquilibrium(FF)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method public setFriction(F)Landroidx/dynamicanimation/animation/FlingAnimation;
    .registers 4
    .param p1, "friction"    # F

    .line 84
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_b

    .line 87
    iget-object v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->setFrictionScalar(F)V

    .line 88
    return-object p0

    .line 85
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Friction must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic setMaxValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;
    .registers 2

    .line 41
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/FlingAnimation;->setMaxValue(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setMaxValue(F)Landroidx/dynamicanimation/animation/FlingAnimation;
    .registers 2
    .param p1, "maxValue"    # F

    .line 123
    invoke-super {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMaxValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 124
    return-object p0
.end method

.method public bridge synthetic setMinValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;
    .registers 2

    .line 41
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/FlingAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setMinValue(F)Landroidx/dynamicanimation/animation/FlingAnimation;
    .registers 2
    .param p1, "minValue"    # F

    .line 110
    invoke-super {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 111
    return-object p0
.end method

.method public bridge synthetic setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;
    .registers 2

    .line 41
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/FlingAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setStartVelocity(F)Landroidx/dynamicanimation/animation/FlingAnimation;
    .registers 2
    .param p1, "startVelocity"    # F

    .line 150
    invoke-super {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 151
    return-object p0
.end method

.method setValueThreshold(F)V
    .registers 3
    .param p1, "threshold"    # F

    .line 191
    iget-object v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->setValueThreshold(F)V

    .line 192
    return-void
.end method

.method updateValueAndVelocity(J)Z
    .registers 7
    .param p1, "deltaT"    # J

    .line 157
    iget-object v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    iget v1, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mValue:F

    iget v2, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mVelocity:F

    invoke-virtual {v0, v1, v2, p1, p2}, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->updateValueAndVelocity(FFJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    move-result-object v0

    .line 158
    .local v0, "state":Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;
    iget v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    iput v1, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mValue:F

    .line 159
    iget v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    iput v1, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mVelocity:F

    .line 162
    iget v1, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mValue:F

    iget v2, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mMinValue:F

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    if-gez v1, :cond_20

    .line 163
    iget v1, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mMinValue:F

    iput v1, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mValue:F

    .line 164
    return v2

    .line 166
    :cond_20
    iget v1, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mValue:F

    iget v3, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mMaxValue:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2d

    .line 167
    iget v1, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mMaxValue:F

    iput v1, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mValue:F

    .line 168
    return v2

    .line 171
    :cond_2d
    iget v1, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mValue:F

    iget v3, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mVelocity:F

    invoke-virtual {p0, v1, v3}, Landroidx/dynamicanimation/animation/FlingAnimation;->isAtEquilibrium(FF)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 172
    return v2

    .line 174
    :cond_38
    const/4 v1, 0x0

    return v1
.end method

###### Class androidx.dynamicanimation.animation.FlingAnimation.DragForce (androidx.dynamicanimation.animation.FlingAnimation$DragForce)
.class final Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;
.super Ljava/lang/Object;
.source "FlingAnimation.java"

# interfaces
.implements Landroidx/dynamicanimation/animation/Force;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/dynamicanimation/animation/FlingAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DragForce"
.end annotation


# static fields
.field private static final DEFAULT_FRICTION:F = -4.2f

.field private static final VELOCITY_THRESHOLD_MULTIPLIER:F = 62.5f


# instance fields
.field private mFriction:F

.field private final mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

.field private mVelocityThreshold:F


# direct methods
.method constructor <init>()V
    .registers 2

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    const v0, -0x3f79999a    # -4.2f

    iput v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    .line 206
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    return-void
.end method


# virtual methods
.method public getAcceleration(FF)F
    .registers 4
    .param p1, "position"    # F
    .param p2, "velocity"    # F

    .line 228
    iget v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    mul-float/2addr v0, p2

    return v0
.end method

.method getFrictionScalar()F
    .registers 3

    .line 213
    iget v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    const v1, -0x3f79999a    # -4.2f

    div-float/2addr v0, v1

    return v0
.end method

.method public isAtEquilibrium(FF)Z
    .registers 5
    .param p1, "value"    # F
    .param p2, "velocity"    # F

    .line 233
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mVelocityThreshold:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method setFrictionScalar(F)V
    .registers 3
    .param p1, "frictionScalar"    # F

    .line 209
    const v0, -0x3f79999a    # -4.2f

    mul-float/2addr v0, p1

    iput v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    .line 210
    return-void
.end method

.method setValueThreshold(F)V
    .registers 3
    .param p1, "threshold"    # F

    .line 237
    const/high16 v0, 0x427a0000    # 62.5f

    mul-float/2addr v0, p1

    iput v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mVelocityThreshold:F

    .line 238
    return-void
.end method

.method updateValueAndVelocity(FFJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;
    .registers 13
    .param p1, "value"    # F
    .param p2, "velocity"    # F
    .param p3, "deltaT"    # J

    .line 217
    iget-object v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    float-to-double v1, p2

    long-to-float v3, p3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    iget v5, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    mul-float/2addr v3, v5

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    mul-double/2addr v1, v5

    double-to-float v1, v1

    iput v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    .line 218
    iget-object v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    iget v1, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    div-float v1, p2, v1

    sub-float v1, p1, v1

    float-to-double v1, v1

    iget v3, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    div-float v3, p2, v3

    float-to-double v5, v3

    iget v3, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    long-to-float v7, p3

    mul-float/2addr v3, v7

    div-float/2addr v3, v4

    float-to-double v3, v3

    .line 219
    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    mul-double/2addr v5, v3

    add-double/2addr v1, v5

    double-to-float v1, v1

    iput v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    .line 220
    iget-object v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    iget v0, v0, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    iget-object v1, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    iget v1, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    invoke-virtual {p0, v0, v1}, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->isAtEquilibrium(FF)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 221
    iget-object v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    .line 223
    :cond_43
    iget-object v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    return-object v0
.end method
