###### Class androidx.constraintlayout.solver.PriorityGoalRow (androidx.constraintlayout.solver.PriorityGoalRow)
.class public Landroidx/constraintlayout/solver/PriorityGoalRow;
.super Landroidx/constraintlayout/solver/ArrayRow;
.source "PriorityGoalRow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final NOT_FOUND:I = -0x1

.field private static final epsilon:F = 1.0E-4f


# instance fields
.field private TABLE_SIZE:I

.field accessor:Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;

.field private arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

.field mCache:Landroidx/constraintlayout/solver/Cache;

.field private numGoals:I

.field private sortArray:[Landroidx/constraintlayout/solver/SolverVariable;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/Cache;)V
    .registers 3
    .param p1, "cache"    # Landroidx/constraintlayout/solver/Cache;

    .line 160
    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/ArrayRow;-><init>(Landroidx/constraintlayout/solver/Cache;)V

    .line 29
    const/16 v0, 0x80

    iput v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->TABLE_SIZE:I

    .line 30
    iget v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->TABLE_SIZE:I

    new-array v0, v0, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 31
    iget v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->TABLE_SIZE:I

    new-array v0, v0, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->sortArray:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->numGoals:I

    .line 33
    new-instance v0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;

    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;-><init>(Landroidx/constraintlayout/solver/PriorityGoalRow;Landroidx/constraintlayout/solver/PriorityGoalRow;)V

    iput-object v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;

    .line 161
    iput-object p1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->mCache:Landroidx/constraintlayout/solver/Cache;

    .line 162
    return-void
.end method

.method static synthetic access$000(Landroidx/constraintlayout/solver/PriorityGoalRow;Landroidx/constraintlayout/solver/SolverVariable;)V
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/solver/PriorityGoalRow;
    .param p1, "x1"    # Landroidx/constraintlayout/solver/SolverVariable;

    .line 25
    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/PriorityGoalRow;->removeGoal(Landroidx/constraintlayout/solver/SolverVariable;)V

    return-void
.end method

.method private final addToGoal(Landroidx/constraintlayout/solver/SolverVariable;)V
    .registers 7
    .param p1, "variable"    # Landroidx/constraintlayout/solver/SolverVariable;

    .line 198
    iget v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->numGoals:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    array-length v2, v2

    if-le v0, v2, :cond_27

    .line 199
    iget-object v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 200
    iget-object v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->sortArray:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 202
    :cond_27
    iget-object v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->numGoals:I

    aput-object p1, v0, v2

    .line 203
    iget v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->numGoals:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->numGoals:I

    .line 205
    iget v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->numGoals:I

    if-le v0, v1, :cond_6e

    iget-object v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->numGoals:I

    sub-int/2addr v2, v1

    aget-object v0, v0, v2

    iget v0, v0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    iget v2, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-le v0, v2, :cond_6e

    .line 206
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_44
    iget v2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->numGoals:I

    .line 209
    iget-object v3, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->sortArray:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 206
    if-ge v0, v2, :cond_53

    .line 207
    iget-object v2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v2, v2, v0

    aput-object v2, v3, v0

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 209
    .end local v0    # "i":I
    :cond_53
    iget v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->numGoals:I

    new-instance v2, Landroidx/constraintlayout/solver/PriorityGoalRow$1;

    invoke-direct {v2, p0}, Landroidx/constraintlayout/solver/PriorityGoalRow$1;-><init>(Landroidx/constraintlayout/solver/PriorityGoalRow;)V

    const/4 v4, 0x0

    invoke-static {v3, v4, v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 215
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5f
    iget v2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->numGoals:I

    if-ge v0, v2, :cond_6e

    .line 216
    iget-object v2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->sortArray:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_5f

    .line 220
    .end local v0    # "i":I
    :cond_6e
    iput-boolean v1, p1, Landroidx/constraintlayout/solver/SolverVariable;->inGoal:Z

    .line 221
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/solver/SolverVariable;->addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 222
    return-void
.end method

.method private final removeGoal(Landroidx/constraintlayout/solver/SolverVariable;)V
    .registers 7
    .param p1, "variable"    # Landroidx/constraintlayout/solver/SolverVariable;

    .line 225
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->numGoals:I

    if-ge v0, v1, :cond_2c

    .line 226
    iget-object v1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_29

    .line 227
    move v1, v0

    .local v1, "j":I
    :goto_c
    iget v2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->numGoals:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1f

    .line 228
    iget-object v2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    aput-object v3, v2, v1

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 230
    .end local v1    # "j":I
    :cond_1f
    iget v1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->numGoals:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->numGoals:I

    .line 231
    const/4 v1, 0x0

    iput-boolean v1, p1, Landroidx/constraintlayout/solver/SolverVariable;->inGoal:Z

    .line 232
    return-void

    .line 225
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 235
    .end local v0    # "i":I
    :cond_2c
    return-void
.end method


# virtual methods
.method public addError(Landroidx/constraintlayout/solver/SolverVariable;)V
    .registers 5
    .param p1, "error"    # Landroidx/constraintlayout/solver/SolverVariable;

    .line 191
    iget-object v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->init(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 192
    iget-object v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->reset()V

    .line 193
    iget-object v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    iget v1, p1, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 194
    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/PriorityGoalRow;->addToGoal(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 195
    return-void
.end method

.method public clear()V
    .registers 2

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->numGoals:I

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->constantValue:F

    .line 155
    return-void
.end method

.method public getPivotCandidate(Landroidx/constraintlayout/solver/LinearSystem;[Z)Landroidx/constraintlayout/solver/SolverVariable;
    .registers 8
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;
    .param p2, "avoid"    # [Z

    .line 168
    const/4 v0, -0x1

    .line 169
    .local v0, "pivot":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->numGoals:I

    const/4 v3, -0x1

    if-ge v1, v2, :cond_32

    .line 170
    iget-object v2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v2, v2, v1

    .line 171
    .local v2, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    iget v4, v2, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aget-boolean v4, p2, v4

    if-eqz v4, :cond_12

    .line 172
    goto :goto_2f

    .line 174
    :cond_12
    iget-object v4, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v4, v2}, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->init(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 175
    nop

    .line 179
    iget-object v4, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;

    .line 175
    if-ne v0, v3, :cond_24

    .line 176
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->isNegative()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 177
    move v0, v1

    goto :goto_2f

    .line 179
    :cond_24
    iget-object v3, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v3, v3, v0

    invoke-virtual {v4, v3}, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->isSmallerThan(Landroidx/constraintlayout/solver/SolverVariable;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 180
    move v0, v1

    .line 169
    .end local v2    # "variable":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_2f
    :goto_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 183
    .end local v1    # "i":I
    :cond_32
    if-ne v0, v3, :cond_36

    .line 184
    const/4 v1, 0x0

    return-object v1

    .line 186
    :cond_36
    iget-object v1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 260
    const-string v0, ""

    .line 261
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " goal -> ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->constantValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_22
    iget v2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->numGoals:I

    if-ge v1, v2, :cond_4b

    .line 263
    iget-object v2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v2, v2, v1

    .line 264
    .local v2, "v":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v3, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->init(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 265
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    .end local v2    # "v":Landroidx/constraintlayout/solver/SolverVariable;
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 267
    .end local v1    # "i":I
    :cond_4b
    return-object v0
.end method

.method public updateFromRow(Landroidx/constraintlayout/solver/ArrayRow;Z)V
    .registers 11
    .param p1, "definition"    # Landroidx/constraintlayout/solver/ArrayRow;
    .param p2, "removeFromDefinition"    # Z

    .line 239
    iget-object v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 240
    .local v0, "goalVariable":Landroidx/constraintlayout/solver/SolverVariable;
    if-nez v0, :cond_5

    .line 241
    return-void

    .line 244
    :cond_5
    iget-object v1, p1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 245
    .local v1, "rowVariables":Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;
    invoke-interface {v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v2

    .line 246
    .local v2, "currentSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, v2, :cond_31

    .line 247
    invoke-interface {v1, v3}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->getVariable(I)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    .line 248
    .local v4, "solverVariable":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-interface {v1, v3}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->getVariableValue(I)F

    move-result v5

    .line 249
    .local v5, "value":F
    iget-object v6, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v6, v4}, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->init(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 250
    iget-object v6, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v6, v0, v5}, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->addToGoal(Landroidx/constraintlayout/solver/SolverVariable;F)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 251
    invoke-direct {p0, v4}, Landroidx/constraintlayout/solver/PriorityGoalRow;->addToGoal(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 253
    :cond_26
    iget v6, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->constantValue:F

    iget v7, p1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    iput v6, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->constantValue:F

    .line 246
    .end local v4    # "solverVariable":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v5    # "value":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 255
    .end local v3    # "i":I
    :cond_31
    invoke-direct {p0, v0}, Landroidx/constraintlayout/solver/PriorityGoalRow;->removeGoal(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 256
    return-void
.end method

###### Class androidx.constraintlayout.solver.PriorityGoalRow.AnonymousClass1 (androidx.constraintlayout.solver.PriorityGoalRow$1)
.class Landroidx/constraintlayout/solver/PriorityGoalRow$1;
.super Ljava/lang/Object;
.source "PriorityGoalRow.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/constraintlayout/solver/PriorityGoalRow;->addToGoal(Landroidx/constraintlayout/solver/SolverVariable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/constraintlayout/solver/SolverVariable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/constraintlayout/solver/PriorityGoalRow;


# direct methods
.method constructor <init>(Landroidx/constraintlayout/solver/PriorityGoalRow;)V
    .registers 2
    .param p1, "this$0"    # Landroidx/constraintlayout/solver/PriorityGoalRow;

    .line 209
    iput-object p1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$1;->this$0:Landroidx/constraintlayout/solver/PriorityGoalRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;)I
    .registers 5
    .param p1, "variable1"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "variable2"    # Landroidx/constraintlayout/solver/SolverVariable;

    .line 212
    iget v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    iget v1, p2, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 209
    check-cast p1, Landroidx/constraintlayout/solver/SolverVariable;

    check-cast p2, Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/solver/PriorityGoalRow$1;->compare(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;)I

    move-result p1

    return p1
.end method

###### Class androidx.constraintlayout.solver.PriorityGoalRow.GoalVariableAccessor (androidx.constraintlayout.solver.PriorityGoalRow$GoalVariableAccessor)
.class Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;
.super Ljava/lang/Object;
.source "PriorityGoalRow.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/PriorityGoalRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GoalVariableAccessor"
.end annotation


# instance fields
.field row:Landroidx/constraintlayout/solver/PriorityGoalRow;

.field final synthetic this$0:Landroidx/constraintlayout/solver/PriorityGoalRow;

.field variable:Landroidx/constraintlayout/solver/SolverVariable;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/PriorityGoalRow;Landroidx/constraintlayout/solver/PriorityGoalRow;)V
    .registers 3
    .param p1, "this$0"    # Landroidx/constraintlayout/solver/PriorityGoalRow;
    .param p2, "row"    # Landroidx/constraintlayout/solver/PriorityGoalRow;

    .line 39
    iput-object p1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->this$0:Landroidx/constraintlayout/solver/PriorityGoalRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->row:Landroidx/constraintlayout/solver/PriorityGoalRow;

    .line 41
    return-void
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/solver/SolverVariable;)V
    .registers 6
    .param p1, "other"    # Landroidx/constraintlayout/solver/SolverVariable;

    .line 81
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x9

    if-ge v0, v1, :cond_2d

    .line 82
    iget-object v1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v1, v1, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aget v2, v1, v0

    iget-object v3, p1, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 83
    iget-object v1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v1, v1, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aget v1, v1, v0

    .line 84
    .local v1, "value":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x38d1b717    # 1.0E-4f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2a

    .line 85
    iget-object v2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v2, v2, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 81
    .end local v1    # "value":F
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 88
    .end local v0    # "i":I
    :cond_2d
    return-void
.end method

.method public addToGoal(Landroidx/constraintlayout/solver/SolverVariable;F)Z
    .registers 11
    .param p1, "other"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "value"    # F

    .line 48
    iget-object v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/SolverVariable;->inGoal:Z

    const v1, 0x38d1b717    # 1.0E-4f

    const/16 v2, 0x9

    const/4 v3, 0x0

    if-eqz v0, :cond_43

    .line 49
    const/4 v0, 0x1

    .line 50
    .local v0, "empty":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_e
    if-ge v4, v2, :cond_37

    .line 51
    iget-object v5, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v5, v5, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aget v6, v5, v4

    iget-object v7, p1, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aget v7, v7, v4

    mul-float/2addr v7, p2

    add-float/2addr v6, v7

    aput v6, v5, v4

    .line 52
    iget-object v5, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v5, v5, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aget v5, v5, v4

    .line 53
    .local v5, "v":F
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v1

    if-gez v6, :cond_33

    .line 54
    iget-object v6, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v6, v6, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aput v3, v6, v4

    goto :goto_34

    .line 56
    :cond_33
    const/4 v0, 0x0

    .line 50
    .end local v5    # "v":F
    :goto_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 59
    .end local v4    # "i":I
    :cond_37
    if-eqz v0, :cond_40

    .line 60
    iget-object v1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->this$0:Landroidx/constraintlayout/solver/PriorityGoalRow;

    iget-object v2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-static {v1, v2}, Landroidx/constraintlayout/solver/PriorityGoalRow;->access$000(Landroidx/constraintlayout/solver/PriorityGoalRow;Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 62
    .end local v0    # "empty":Z
    :cond_40
    nop

    .line 77
    const/4 v0, 0x0

    return v0

    .line 63
    :cond_43
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_44
    if-ge v0, v2, :cond_69

    .line 64
    iget-object v4, p1, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aget v4, v4, v0

    .line 65
    .local v4, "strength":F
    cmpl-float v5, v4, v3

    if-eqz v5, :cond_60

    .line 66
    mul-float v5, p2, v4

    .line 67
    .restart local v5    # "v":F
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v1

    if-gez v6, :cond_59

    .line 68
    const/4 v5, 0x0

    .line 70
    :cond_59
    iget-object v6, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v6, v6, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aput v5, v6, v0

    .line 71
    .end local v5    # "v":F
    goto :goto_66

    .line 72
    :cond_60
    iget-object v5, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v5, v5, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aput v3, v5, v0

    .line 63
    .end local v4    # "strength":F
    :goto_66
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 75
    .end local v0    # "i":I
    :cond_69
    const/4 v0, 0x1

    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 130
    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/solver/SolverVariable;

    .line 131
    .local v0, "v":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v1, v1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    iget v2, v0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public init(Landroidx/constraintlayout/solver/SolverVariable;)V
    .registers 2
    .param p1, "variable"    # Landroidx/constraintlayout/solver/SolverVariable;

    .line 44
    iput-object p1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 45
    return-void
.end method

.method public final isNegative()Z
    .registers 6

    .line 91
    const/16 v0, 0x8

    .local v0, "i":I
    :goto_2
    const/4 v1, 0x0

    if-ltz v0, :cond_1a

    .line 92
    iget-object v2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v2, v2, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aget v2, v2, v0

    .line 93
    .local v2, "value":F
    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_11

    .line 94
    return v1

    .line 96
    :cond_11
    cmpg-float v1, v2, v3

    if-gez v1, :cond_17

    .line 97
    const/4 v1, 0x1

    return v1

    .line 91
    .end local v2    # "value":F
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 100
    .end local v0    # "i":I
    :cond_1a
    return v1
.end method

.method public final isNull()Z
    .registers 4

    .line 120
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x9

    if-ge v0, v1, :cond_15

    .line 121
    iget-object v1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v1, v1, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aget v1, v1, v0

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_12

    .line 122
    const/4 v1, 0x0

    return v1

    .line 120
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 125
    .end local v0    # "i":I
    :cond_15
    const/4 v0, 0x1

    return v0
.end method

.method public final isSmallerThan(Landroidx/constraintlayout/solver/SolverVariable;)Z
    .registers 7
    .param p1, "other"    # Landroidx/constraintlayout/solver/SolverVariable;

    .line 104
    const/16 v0, 0x8

    .local v0, "i":I
    :goto_2
    const/4 v1, 0x0

    if-ltz v0, :cond_1e

    .line 105
    iget-object v2, p1, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aget v2, v2, v0

    .line 106
    .local v2, "comparedValue":F
    iget-object v3, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, v3, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aget v3, v3, v0

    .line 107
    .local v3, "value":F
    cmpl-float v4, v3, v2

    if-nez v4, :cond_17

    .line 108
    nop

    .line 104
    .end local v2    # "comparedValue":F
    .end local v3    # "value":F
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 110
    .restart local v2    # "comparedValue":F
    .restart local v3    # "value":F
    :cond_17
    cmpg-float v4, v3, v2

    if-gez v4, :cond_1d

    .line 111
    const/4 v1, 0x1

    return v1

    .line 113
    :cond_1d
    return v1

    .line 116
    .end local v0    # "i":I
    .end local v2    # "comparedValue":F
    .end local v3    # "value":F
    :cond_1e
    return v1
.end method

.method public reset()V
    .registers 3

    .line 135
    iget-object v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v0, v0, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 136
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 139
    const-string v0, "[ "

    .line 140
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    if-eqz v1, :cond_2b

    .line 141
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    const/16 v2, 0x9

    if-ge v1, v2, :cond_2b

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, v3, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 145
    .end local v1    # "i":I
    :cond_2b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    return-object v0
.end method
