.class Lcom/android/server/policy/ProximityListener$1;
.super Ljava/lang/Object;
.source "ProximityListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/ProximityListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/ProximityListener;


# direct methods
.method constructor <init>(Lcom/android/server/policy/ProximityListener;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/server/policy/ProximityListener$1;->this$0:Lcom/android/server/policy/ProximityListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 148
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 107
    const-string v5, "ProximityListener"

    const-string v6, "onSensorChanged()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v5, v5

    if-nez v5, :cond_1

    .line 109
    const-string v3, "ProximityListener"

    const-string v4, "Event has no values!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    const-string v5, "ProximityListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Event: value="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " max="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/policy/ProximityListener$1;->this$0:Lcom/android/server/policy/ProximityListener;

    # getter for: Lcom/android/server/policy/ProximityListener;->mMaxRange:F
    invoke-static {v7}, Lcom/android/server/policy/ProximityListener;->access$000(Lcom/android/server/policy/ProximityListener;)F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v4

    iget-object v6, p0, Lcom/android/server/policy/ProximityListener$1;->this$0:Lcom/android/server/policy/ProximityListener;

    # getter for: Lcom/android/server/policy/ProximityListener;->mMaxRange:F
    invoke-static {v6}, Lcom/android/server/policy/ProximityListener;->access$000(Lcom/android/server/policy/ProximityListener;)F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_4

    move v2, v3

    .line 115
    .local v2, "isNear":Z
    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 119
    .local v0, "currentTime":J
    iget-object v5, p0, Lcom/android/server/policy/ProximityListener$1;->this$0:Lcom/android/server/policy/ProximityListener;

    # getter for: Lcom/android/server/policy/ProximityListener;->mScreenOnTime:J
    invoke-static {v5}, Lcom/android/server/policy/ProximityListener;->access$100(Lcom/android/server/policy/ProximityListener;)J

    move-result-wide v6

    sub-long v6, v0, v6

    const-wide/16 v8, 0x3e8

    cmp-long v5, v6, v8

    if-lez v5, :cond_2

    .line 120
    iget-object v5, p0, Lcom/android/server/policy/ProximityListener$1;->this$0:Lcom/android/server/policy/ProximityListener;

    iput-boolean v3, v5, Lcom/android/server/policy/ProximityListener;->canIgnore:Z

    .line 123
    :cond_2
    if-eqz v2, :cond_5

    iget-object v5, p0, Lcom/android/server/policy/ProximityListener$1;->this$0:Lcom/android/server/policy/ProximityListener;

    iget-boolean v5, v5, Lcom/android/server/policy/ProximityListener;->canIgnore:Z

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/server/policy/ProximityListener$1;->this$0:Lcom/android/server/policy/ProximityListener;

    # getter for: Lcom/android/server/policy/ProximityListener;->mDialogShown:Z
    invoke-static {v5}, Lcom/android/server/policy/ProximityListener;->access$200(Lcom/android/server/policy/ProximityListener;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 124
    iget-object v5, p0, Lcom/android/server/policy/ProximityListener$1;->this$0:Lcom/android/server/policy/ProximityListener;

    iget-object v5, v5, Lcom/android/server/policy/ProximityListener;->mMisTouchActions:Lcom/android/server/policy/MisTouchActions;

    if-eqz v5, :cond_3

    .line 125
    iget-object v5, p0, Lcom/android/server/policy/ProximityListener$1;->this$0:Lcom/android/server/policy/ProximityListener;

    iget-object v5, v5, Lcom/android/server/policy/ProximityListener;->mMisTouchActions:Lcom/android/server/policy/MisTouchActions;

    invoke-virtual {v5}, Lcom/android/server/policy/MisTouchActions;->showDialog()V

    .line 126
    iget-object v5, p0, Lcom/android/server/policy/ProximityListener$1;->this$0:Lcom/android/server/policy/ProximityListener;

    # setter for: Lcom/android/server/policy/ProximityListener;->mDialogShown:Z
    invoke-static {v5, v3}, Lcom/android/server/policy/ProximityListener;->access$202(Lcom/android/server/policy/ProximityListener;Z)Z

    .line 138
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/server/policy/ProximityListener$1;->this$0:Lcom/android/server/policy/ProximityListener;

    # getter for: Lcom/android/server/policy/ProximityListener;->mPsensorReg:Z
    invoke-static {v3}, Lcom/android/server/policy/ProximityListener;->access$500(Lcom/android/server/policy/ProximityListener;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/policy/ProximityListener$1;->this$0:Lcom/android/server/policy/ProximityListener;

    # getter for: Lcom/android/server/policy/ProximityListener;->mDialogShown:Z
    invoke-static {v3}, Lcom/android/server/policy/ProximityListener;->access$200(Lcom/android/server/policy/ProximityListener;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/policy/ProximityListener$1;->this$0:Lcom/android/server/policy/ProximityListener;

    iget-boolean v3, v3, Lcom/android/server/policy/ProximityListener;->canIgnore:Z

    if-eqz v3, :cond_0

    .line 139
    iget-object v3, p0, Lcom/android/server/policy/ProximityListener$1;->this$0:Lcom/android/server/policy/ProximityListener;

    # getter for: Lcom/android/server/policy/ProximityListener;->mSensors:Landroid/hardware/SensorManager;
    invoke-static {v3}, Lcom/android/server/policy/ProximityListener;->access$400(Lcom/android/server/policy/ProximityListener;)Landroid/hardware/SensorManager;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/policy/ProximityListener$1;->this$0:Lcom/android/server/policy/ProximityListener;

    # getter for: Lcom/android/server/policy/ProximityListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;
    invoke-static {v5}, Lcom/android/server/policy/ProximityListener;->access$300(Lcom/android/server/policy/ProximityListener;)Landroid/hardware/SensorEventListener;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 140
    iget-object v3, p0, Lcom/android/server/policy/ProximityListener$1;->this$0:Lcom/android/server/policy/ProximityListener;

    # setter for: Lcom/android/server/policy/ProximityListener;->mPsensorReg:Z
    invoke-static {v3, v4}, Lcom/android/server/policy/ProximityListener;->access$502(Lcom/android/server/policy/ProximityListener;Z)Z

    goto/16 :goto_0

    .end local v0    # "currentTime":J
    .end local v2    # "isNear":Z
    :cond_4
    move v2, v4

    .line 114
    goto :goto_1

    .line 129
    .restart local v0    # "currentTime":J
    .restart local v2    # "isNear":Z
    :cond_5
    if-nez v2, :cond_3

    .line 130
    iget-object v3, p0, Lcom/android/server/policy/ProximityListener$1;->this$0:Lcom/android/server/policy/ProximityListener;

    iget-object v3, v3, Lcom/android/server/policy/ProximityListener;->mMisTouchActions:Lcom/android/server/policy/MisTouchActions;

    if-eqz v3, :cond_3

    .line 131
    iget-object v3, p0, Lcom/android/server/policy/ProximityListener$1;->this$0:Lcom/android/server/policy/ProximityListener;

    iget-object v3, v3, Lcom/android/server/policy/ProximityListener;->mMisTouchActions:Lcom/android/server/policy/MisTouchActions;

    invoke-virtual {v3}, Lcom/android/server/policy/MisTouchActions;->dismissDialog()V

    .line 132
    iget-object v3, p0, Lcom/android/server/policy/ProximityListener$1;->this$0:Lcom/android/server/policy/ProximityListener;

    # setter for: Lcom/android/server/policy/ProximityListener;->mDialogShown:Z
    invoke-static {v3, v4}, Lcom/android/server/policy/ProximityListener;->access$202(Lcom/android/server/policy/ProximityListener;Z)Z

    .line 133
    iget-object v3, p0, Lcom/android/server/policy/ProximityListener$1;->this$0:Lcom/android/server/policy/ProximityListener;

    # getter for: Lcom/android/server/policy/ProximityListener;->mSensors:Landroid/hardware/SensorManager;
    invoke-static {v3}, Lcom/android/server/policy/ProximityListener;->access$400(Lcom/android/server/policy/ProximityListener;)Landroid/hardware/SensorManager;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/policy/ProximityListener$1;->this$0:Lcom/android/server/policy/ProximityListener;

    # getter for: Lcom/android/server/policy/ProximityListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;
    invoke-static {v5}, Lcom/android/server/policy/ProximityListener;->access$300(Lcom/android/server/policy/ProximityListener;)Landroid/hardware/SensorEventListener;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 134
    iget-object v3, p0, Lcom/android/server/policy/ProximityListener$1;->this$0:Lcom/android/server/policy/ProximityListener;

    # setter for: Lcom/android/server/policy/ProximityListener;->mPsensorReg:Z
    invoke-static {v3, v4}, Lcom/android/server/policy/ProximityListener;->access$502(Lcom/android/server/policy/ProximityListener;Z)Z

    goto :goto_2
.end method
