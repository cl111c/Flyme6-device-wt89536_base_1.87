.class final Lcom/android/server/AlarmAlignHelper;
.super Ljava/lang/Object;
.source "AlarmAlignHelper.java"


# static fields
.field private static final ALIGN_ENABLE:Ljava/lang/String; = "persist.sys.align_enable"

.field private static final ALIGN_LENGTH:Ljava/lang/String; = "persist.sys.align_length"

.field private static final DEFAULT_LENTH:I = 0x8

.field private static final MAX_LENGTH:I = 0x14

.field private static final MIN_LENGTH:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AlarmManagerHelper"


# instance fields
.field private mAlignEnable:Z

.field private mBeatlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/PowerGuruAlarmInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerGuruService:Landroid/app/PowerGuru;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "powerguru"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PowerGuru;

    iput-object v0, p0, Lcom/android/server/AlarmAlignHelper;->mPowerGuruService:Landroid/app/PowerGuru;

    .line 36
    invoke-virtual {p0}, Lcom/android/server/AlarmAlignHelper;->updateBeatlist()V

    .line 37
    return-void
.end method

.method private getAlignLength()I
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 77
    const-string v2, "persist.sys.align_length"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 78
    .local v0, "temp":I
    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    const/16 v2, 0x14

    if-le v0, v2, :cond_1

    :cond_0
    move v0, v1

    .line 81
    .end local v0    # "temp":I
    :cond_1
    return v0
.end method


# virtual methods
.method protected adjustTriggerTime(JIZ)J
    .locals 17
    .param p1, "triggerTime"    # J
    .param p3, "type"    # I
    .param p4, "isFromGms"    # Z

    .prologue
    .line 89
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AlarmAlignHelper;->getAlignLength()I

    move-result v5

    .line 90
    .local v5, "alignLength":I
    if-eqz p4, :cond_0

    .line 94
    :cond_0
    const/4 v11, 0x2

    move/from16 v0, p3

    if-eq v0, v11, :cond_1

    const/4 v11, 0x3

    move/from16 v0, p3

    if-ne v0, v11, :cond_2

    .line 96
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long/2addr v12, v14

    add-long p1, p1, v12

    .line 98
    :cond_2
    const-string v11, "yyyy-MM-dd HH:mm:ss"

    move-wide/from16 v0, p1

    invoke-static {v11, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v9

    .line 99
    .local v9, "orgiTrigger":Ljava/lang/CharSequence;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 100
    .local v7, "calendar":Ljava/util/Calendar;
    move-wide/from16 v0, p1

    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 101
    const/16 v11, 0xc

    invoke-virtual {v7, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 102
    .local v8, "minute":I
    div-int v10, v8, v5

    .line 103
    .local v10, "residue":I
    if-nez v10, :cond_5

    .line 104
    if-eqz v8, :cond_4

    .line 105
    const/16 v11, 0xc

    invoke-virtual {v7, v11, v5}, Ljava/util/Calendar;->set(II)V

    .line 106
    const/16 v11, 0xd

    const/4 v12, 0x0

    invoke-virtual {v7, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 123
    :cond_3
    :goto_0
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    const/4 v11, 0x0

    invoke-static {v12, v13, v11}, Lcom/android/server/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v2

    .line 124
    .local v2, "adjuestedMillis":J
    const-string v11, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v11, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 126
    .local v4, "adjuestedTrigger":Ljava/lang/CharSequence;
    return-wide v2

    .line 108
    .end local v2    # "adjuestedMillis":J
    .end local v4    # "adjuestedTrigger":Ljava/lang/CharSequence;
    :cond_4
    const/16 v11, 0xd

    const/4 v12, 0x0

    invoke-virtual {v7, v11, v12}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 111
    :cond_5
    rem-int v11, v8, v5

    if-eqz v11, :cond_3

    .line 112
    add-int/lit8 v11, v10, 0x1

    mul-int v6, v11, v5

    .line 113
    .local v6, "alignMinute":I
    const/16 v11, 0x3c

    if-lt v6, v11, :cond_6

    .line 114
    const/16 v11, 0xb

    const/4 v12, 0x1

    invoke-virtual {v7, v11, v12}, Ljava/util/Calendar;->add(II)V

    .line 115
    const/16 v11, 0xc

    const/4 v12, 0x0

    invoke-virtual {v7, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 116
    const/16 v11, 0xd

    const/4 v12, 0x0

    invoke-virtual {v7, v11, v12}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 118
    :cond_6
    const/16 v11, 0xc

    invoke-virtual {v7, v11, v6}, Ljava/util/Calendar;->set(II)V

    .line 119
    const/16 v11, 0xd

    const/4 v12, 0x0

    invoke-virtual {v7, v11, v12}, Ljava/util/Calendar;->set(II)V

    goto :goto_0
.end method

.method protected checkAlignEnable(ILandroid/app/PowerGuruAlarmInfo;)Z
    .locals 4
    .param p1, "type"    # I
    .param p2, "palarm"    # Landroid/app/PowerGuruAlarmInfo;

    .prologue
    .line 61
    const/4 v0, 0x1

    .line 62
    .local v0, "isWakeup":Z
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v1, p0, Lcom/android/server/AlarmAlignHelper;->mAlignEnable:Z

    if-eqz v1, :cond_0

    .line 63
    const-string v1, "AlarmManagerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAlignEnable() return true. palarm = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v1, 0x1

    .line 66
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getAlignEnable()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/server/AlarmAlignHelper;->mAlignEnable:Z

    return v0
.end method

.method protected getEnable()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 56
    const-string v2, "persist.sys.align_enable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 57
    .local v0, "temp":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isUnavailableGMS(Landroid/app/PowerGuruAlarmInfo;)Z
    .locals 2
    .param p1, "guruAlarm"    # Landroid/app/PowerGuruAlarmInfo;

    .prologue
    .line 69
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Landroid/app/PowerGuruAlarmInfo;->isFromGMS:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroid/app/PowerGuruAlarmInfo;->isAvailable:Z

    if-nez v0, :cond_0

    .line 70
    const-string v0, "AlarmManagerHelper"

    const-string v1, "setImplLocked() return, this alarm is from GMS and is not available!!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v0, 0x1

    .line 73
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected matchBeatListPackage(Landroid/app/PendingIntent;)Landroid/app/PowerGuruAlarmInfo;
    .locals 7
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 130
    iget-object v6, p0, Lcom/android/server/AlarmAlignHelper;->mBeatlist:Ljava/util/List;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/server/AlarmAlignHelper;->mBeatlist:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 131
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v5

    .line 132
    .local v5, "pn":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 133
    .local v3, "in":Landroid/content/Intent;
    const/4 v0, 0x0

    .line 134
    .local v0, "action":Ljava/lang/String;
    const/4 v1, 0x0

    .line 135
    .local v1, "component":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 136
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 138
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 141
    :cond_0
    iget-object v6, p0, Lcom/android/server/AlarmAlignHelper;->mBeatlist:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PowerGuruAlarmInfo;

    .line 142
    .local v4, "palarm":Landroid/app/PowerGuruAlarmInfo;
    iget-object v6, v4, Landroid/app/PowerGuruAlarmInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v0, :cond_2

    iget-object v6, v4, Landroid/app/PowerGuruAlarmInfo;->actionName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    if-nez v0, :cond_1

    iget-object v6, v4, Landroid/app/PowerGuruAlarmInfo;->actionName:Ljava/lang/String;

    if-nez v6, :cond_1

    :cond_3
    if-eqz v1, :cond_4

    iget-object v6, v4, Landroid/app/PowerGuruAlarmInfo;->componentName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    if-nez v1, :cond_1

    iget-object v6, v4, Landroid/app/PowerGuruAlarmInfo;->componentName:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 152
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "component":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "in":Landroid/content/Intent;
    .end local v4    # "palarm":Landroid/app/PowerGuruAlarmInfo;
    .end local v5    # "pn":Ljava/lang/String;
    :cond_5
    :goto_0
    return-object v4

    :cond_6
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected notifyPowerGuru(IJJJJJLandroid/app/PendingIntent;)Z
    .locals 14
    .param p1, "type"    # I
    .param p2, "when"    # J
    .param p4, "whenElapsed"    # J
    .param p6, "windowLength"    # J
    .param p8, "maxWhen"    # J
    .param p10, "interval"    # J
    .param p12, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/server/AlarmAlignHelper;->mPowerGuruService:Landroid/app/PowerGuru;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/server/AlarmAlignHelper;->mPowerGuruService:Landroid/app/PowerGuru;

    move v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-object/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Landroid/app/PowerGuru;->notifyPowerguruAlarm(IJJJJJLandroid/app/PendingIntent;)Z

    .line 163
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 160
    :cond_0
    const-string v0, "AlarmManagerHelper"

    const-string v1, "notifyPowerGuru() -> PowerGuruService is not running ???"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setAlignEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/server/AlarmAlignHelper;->mAlignEnable:Z

    .line 53
    return-void
.end method

.method protected updateBeatlist()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/AlarmAlignHelper;->mPowerGuruService:Landroid/app/PowerGuru;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/android/server/AlarmAlignHelper;->mPowerGuruService:Landroid/app/PowerGuru;

    invoke-virtual {v0}, Landroid/app/PowerGuru;->getBeatList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AlarmAlignHelper;->mBeatlist:Ljava/util/List;

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    const-string v0, "AlarmManagerHelper"

    const-string v1, "updateBeatlist() -> PowerGuruService is not running ???"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
