###### Class androidx.core.app.AlarmManagerCompat (androidx.core.app.AlarmManagerCompat)
.class public final Landroidx/core/app/AlarmManagerCompat;
.super Ljava/lang/Object;
.source "AlarmManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/AlarmManagerCompat$Api21Impl;,
        Landroidx/core/app/AlarmManagerCompat$Api23Impl;,
        Landroidx/core/app/AlarmManagerCompat$Api19Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    return-void
.end method

.method public static setAlarmClock(Landroid/app/AlarmManager;JLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 6
    .param p0, "alarmManager"    # Landroid/app/AlarmManager;
    .param p1, "triggerTime"    # J
    .param p3, "showIntent"    # Landroid/app/PendingIntent;
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .line 65
    nop

    .line 66
    nop

    .line 67
    invoke-static {p1, p2, p3}, Landroidx/core/app/AlarmManagerCompat$Api21Impl;->createAlarmClockInfo(JLandroid/app/PendingIntent;)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    .line 66
    invoke-static {p0, v0, p4}, Landroidx/core/app/AlarmManagerCompat$Api21Impl;->setAlarmClock(Landroid/app/AlarmManager;Ljava/lang/Object;Landroid/app/PendingIntent;)V

    .line 71
    return-void
.end method

.method public static setAndAllowWhileIdle(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V
    .registers 5
    .param p0, "alarmManager"    # Landroid/app/AlarmManager;
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .line 122
    nop

    .line 123
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/app/AlarmManagerCompat$Api23Impl;->setAndAllowWhileIdle(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    .line 127
    return-void
.end method

.method public static setExact(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V
    .registers 5
    .param p0, "alarmManager"    # Landroid/app/AlarmManager;
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .line 167
    nop

    .line 168
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/app/AlarmManagerCompat$Api19Impl;->setExact(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    .line 172
    return-void
.end method

.method public static setExactAndAllowWhileIdle(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V
    .registers 5
    .param p0, "alarmManager"    # Landroid/app/AlarmManager;
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .line 227
    nop

    .line 228
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/app/AlarmManagerCompat$Api23Impl;->setExactAndAllowWhileIdle(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    .line 232
    return-void
.end method

###### Class androidx.core.app.AlarmManagerCompat.Api19Impl (androidx.core.app.AlarmManagerCompat$Api19Impl)
.class Landroidx/core/app/AlarmManagerCompat$Api19Impl;
.super Ljava/lang/Object;
.source "AlarmManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/AlarmManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api19Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    return-void
.end method

.method static setExact(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V
    .registers 5
    .param p0, "alarmManager"    # Landroid/app/AlarmManager;
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .line 284
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 285
    return-void
.end method

###### Class androidx.core.app.AlarmManagerCompat.Api21Impl (androidx.core.app.AlarmManagerCompat$Api21Impl)
.class Landroidx/core/app/AlarmManagerCompat$Api21Impl;
.super Ljava/lang/Object;
.source "AlarmManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/AlarmManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    return-void
.end method

.method static createAlarmClockInfo(JLandroid/app/PendingIntent;)Landroid/app/AlarmManager$AlarmClockInfo;
    .registers 4
    .param p0, "triggerTime"    # J
    .param p2, "showIntent"    # Landroid/app/PendingIntent;

    .line 252
    new-instance v0, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/AlarmManager$AlarmClockInfo;-><init>(JLandroid/app/PendingIntent;)V

    return-object v0
.end method

.method static setAlarmClock(Landroid/app/AlarmManager;Ljava/lang/Object;Landroid/app/PendingIntent;)V
    .registers 4
    .param p0, "alarmManager"    # Landroid/app/AlarmManager;
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "operation"    # Landroid/app/PendingIntent;

    .line 246
    move-object v0, p1

    check-cast v0, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {p0, v0, p2}, Landroid/app/AlarmManager;->setAlarmClock(Landroid/app/AlarmManager$AlarmClockInfo;Landroid/app/PendingIntent;)V

    .line 247
    return-void
.end method

###### Class androidx.core.app.AlarmManagerCompat.Api23Impl (androidx.core.app.AlarmManagerCompat$Api23Impl)
.class Landroidx/core/app/AlarmManagerCompat$Api23Impl;
.super Ljava/lang/Object;
.source "AlarmManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/AlarmManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api23Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    return-void
.end method

.method static setAndAllowWhileIdle(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V
    .registers 5
    .param p0, "alarmManager"    # Landroid/app/AlarmManager;
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .line 265
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 266
    return-void
.end method

.method static setExactAndAllowWhileIdle(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V
    .registers 5
    .param p0, "alarmManager"    # Landroid/app/AlarmManager;
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .line 271
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 272
    return-void
.end method
