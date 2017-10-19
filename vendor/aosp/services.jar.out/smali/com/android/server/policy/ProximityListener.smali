.class public Lcom/android/server/policy/ProximityListener;
.super Ljava/lang/Object;
.source "ProximityListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ProximityListener"


# instance fields
.field private final TIME_IGNORE_AFTER_SCREENON:I

.field bIsEnable:Z

.field canIgnore:Z

.field private mDialogShown:Z

.field private final mHandler:Landroid/os/Handler;

.field private mLastValue:F

.field private final mLock:Ljava/lang/Object;

.field private mMaxRange:F

.field mMisTouchActions:Lcom/android/server/policy/MisTouchActions;

.field private mPsensor:Landroid/hardware/Sensor;

.field private mPsensorReg:Z

.field private mScreenOnTime:J

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensors:Landroid/hardware/SensorManager;

.field private mTriggerRequested:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ProximityListener;->mLock:Ljava/lang/Object;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/ProximityListener;->mSensors:Landroid/hardware/SensorManager;

    .line 52
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/policy/ProximityListener;->TIME_IGNORE_AFTER_SCREENON:I

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/policy/ProximityListener;->mScreenOnTime:J

    .line 56
    iput-boolean v2, p0, Lcom/android/server/policy/ProximityListener;->mPsensorReg:Z

    .line 59
    iput-boolean v2, p0, Lcom/android/server/policy/ProximityListener;->mDialogShown:Z

    .line 60
    iput-boolean v2, p0, Lcom/android/server/policy/ProximityListener;->canIgnore:Z

    .line 63
    iput-boolean v2, p0, Lcom/android/server/policy/ProximityListener;->bIsEnable:Z

    .line 105
    new-instance v0, Lcom/android/server/policy/ProximityListener$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/ProximityListener$1;-><init>(Lcom/android/server/policy/ProximityListener;)V

    iput-object v0, p0, Lcom/android/server/policy/ProximityListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 66
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/policy/ProximityListener;->mSensors:Landroid/hardware/SensorManager;

    .line 67
    iput-object p2, p0, Lcom/android/server/policy/ProximityListener;->mHandler:Landroid/os/Handler;

    .line 68
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/android/server/policy/ProximityListener;->mLastValue:F

    .line 69
    iget-object v0, p0, Lcom/android/server/policy/ProximityListener;->mSensors:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/ProximityListener;->mPsensor:Landroid/hardware/Sensor;

    .line 70
    iget-object v0, p0, Lcom/android/server/policy/ProximityListener;->mMisTouchActions:Lcom/android/server/policy/MisTouchActions;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/android/server/policy/MisTouchActions;

    invoke-direct {v0, p1}, Lcom/android/server/policy/MisTouchActions;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/ProximityListener;->mMisTouchActions:Lcom/android/server/policy/MisTouchActions;

    .line 73
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/ProximityListener;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/ProximityListener;

    .prologue
    .line 42
    iget v0, p0, Lcom/android/server/policy/ProximityListener;->mMaxRange:F

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/policy/ProximityListener;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/policy/ProximityListener;

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/android/server/policy/ProximityListener;->mScreenOnTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/server/policy/ProximityListener;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/ProximityListener;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/server/policy/ProximityListener;->mDialogShown:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/policy/ProximityListener;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/ProximityListener;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/server/policy/ProximityListener;->mDialogShown:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/policy/ProximityListener;)Landroid/hardware/SensorEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/ProximityListener;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/server/policy/ProximityListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/policy/ProximityListener;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/ProximityListener;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/server/policy/ProximityListener;->mSensors:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/policy/ProximityListener;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/ProximityListener;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/server/policy/ProximityListener;->mPsensorReg:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/policy/ProximityListener;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/ProximityListener;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/server/policy/ProximityListener;->mPsensorReg:Z

    return p1
.end method


# virtual methods
.method public onScreenTurnedOff()V
    .locals 3

    .prologue
    .line 76
    iget-object v1, p0, Lcom/android/server/policy/ProximityListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/ProximityListener;->mPsensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/ProximityListener;->mPsensorReg:Z

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/server/policy/ProximityListener;->mSensors:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/policy/ProximityListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/ProximityListener;->mPsensorReg:Z

    .line 81
    :cond_0
    monitor-exit v1

    .line 82
    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onScreenTurnedOn()V
    .locals 7

    .prologue
    .line 85
    iget-object v6, p0, Lcom/android/server/policy/ProximityListener;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 87
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/policy/ProximityListener;->mPsensorReg:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/ProximityListener;->bIsEnable:Z

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/server/policy/ProximityListener;->mPsensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    iput v0, p0, Lcom/android/server/policy/ProximityListener;->mMaxRange:F

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/ProximityListener;->mDialogShown:Z

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/ProximityListener;->canIgnore:Z

    .line 93
    iget-object v0, p0, Lcom/android/server/policy/ProximityListener;->mSensors:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/policy/ProximityListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/policy/ProximityListener;->mPsensor:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/policy/ProximityListener;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/ProximityListener;->mPsensorReg:Z

    .line 95
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/policy/ProximityListener;->mScreenOnTime:J

    .line 97
    :cond_0
    monitor-exit v6

    .line 98
    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMisTouchEnable(Z)V
    .locals 0
    .param p1, "isEnable"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/server/policy/ProximityListener;->bIsEnable:Z

    .line 102
    return-void
.end method
