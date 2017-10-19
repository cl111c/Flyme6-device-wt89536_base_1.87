.class Lcom/android/server/PowerGuruService$AlarmInfo;
.super Ljava/lang/Object;
.source "PowerGuruService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerGuruService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmInfo"
.end annotation


# instance fields
.field public action:Ljava/lang/String;

.field public componentName:Ljava/lang/String;

.field public firstSetTime:J

.field public isAvailable:Z

.field public isFromGms:Z

.field public isRepeat:Z

.field public maxWhen:J

.field public operation:Landroid/app/PendingIntent;

.field public packageName:Ljava/lang/String;

.field public repeatInterval:J

.field public setCount:I

.field final synthetic this$0:Lcom/android/server/PowerGuruService;

.field public type:I

.field public when:J

.field public whenElapsed:J

.field public windowLength:J


# direct methods
.method public constructor <init>(Lcom/android/server/PowerGuruService;IJJJJJLandroid/app/PendingIntent;)V
    .locals 9
    .param p2, "_type"    # I
    .param p3, "_when"    # J
    .param p5, "_whenElapsed"    # J
    .param p7, "_windowLength"    # J
    .param p9, "_maxWhen"    # J
    .param p11, "_interval"    # J
    .param p13, "_op"    # Landroid/app/PendingIntent;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/server/PowerGuruService$AlarmInfo;->this$0:Lcom/android/server/PowerGuruService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput p2, p0, Lcom/android/server/PowerGuruService$AlarmInfo;->type:I

    .line 289
    iput-wide p3, p0, Lcom/android/server/PowerGuruService$AlarmInfo;->when:J

    .line 290
    iput-wide p5, p0, Lcom/android/server/PowerGuruService$AlarmInfo;->whenElapsed:J

    .line 291
    move-wide/from16 v0, p7

    iput-wide v0, p0, Lcom/android/server/PowerGuruService$AlarmInfo;->windowLength:J

    .line 292
    move-wide/from16 v0, p9

    iput-wide v0, p0, Lcom/android/server/PowerGuruService$AlarmInfo;->maxWhen:J

    .line 293
    move-wide/from16 v0, p11

    iput-wide v0, p0, Lcom/android/server/PowerGuruService$AlarmInfo;->repeatInterval:J

    .line 294
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/android/server/PowerGuruService$AlarmInfo;->operation:Landroid/app/PendingIntent;

    .line 296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/PowerGuruService$AlarmInfo;->firstSetTime:J

    .line 297
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/server/PowerGuruService$AlarmInfo;->setCount:I

    .line 299
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/PowerGuruService$AlarmInfo;->isRepeat:Z

    .line 300
    iget-wide v4, p0, Lcom/android/server/PowerGuruService$AlarmInfo;->repeatInterval:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/PowerGuruService$AlarmInfo;->isRepeat:Z

    .line 302
    :cond_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/PowerGuruService$AlarmInfo;->isFromGms:Z

    .line 303
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/PowerGuruService$AlarmInfo;->isAvailable:Z

    .line 305
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/PowerGuruService$AlarmInfo;->action:Ljava/lang/String;

    .line 306
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/PowerGuruService$AlarmInfo;->componentName:Ljava/lang/String;

    .line 307
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/PowerGuruService$AlarmInfo;->packageName:Ljava/lang/String;

    .line 309
    const/4 v2, 0x0

    .line 310
    .local v2, "cn":Landroid/content/ComponentName;
    const/4 v3, 0x0

    .line 312
    .local v3, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/PowerGuruService$AlarmInfo;->operation:Landroid/app/PendingIntent;

    if-eqz v4, :cond_1

    .line 313
    iget-object v4, p0, Lcom/android/server/PowerGuruService$AlarmInfo;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 314
    iget-object v4, p0, Lcom/android/server/PowerGuruService$AlarmInfo;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/PowerGuruService$AlarmInfo;->packageName:Ljava/lang/String;

    .line 316
    :cond_1
    if-eqz v3, :cond_2

    .line 317
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/PowerGuruService$AlarmInfo;->action:Ljava/lang/String;

    .line 318
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 319
    if-eqz v2, :cond_2

    .line 320
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/PowerGuruService$AlarmInfo;->componentName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :cond_2
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/PowerGuruService$AlarmInfo;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/PowerGuruService$AlarmInfo;->when:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/PowerGuruService$AlarmInfo;->whenElapsed:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/PowerGuruService$AlarmInfo;->windowLength:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/PowerGuruService$AlarmInfo;->maxWhen:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/PowerGuruService$AlarmInfo;->repeatInterval:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/PowerGuruService$AlarmInfo;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/PowerGuruService$AlarmInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerGuruService$AlarmInfo;->setCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
