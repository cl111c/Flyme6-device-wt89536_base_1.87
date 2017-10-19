.class public Lcom/android/exsettings/keyboard/KeyBoardLightService;
.super Landroid/app/Service;
.source "KeyBoardLightService.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mRefreshListRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 51
    new-instance v0, Lcom/android/exsettings/keyboard/KeyBoardLightService$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/keyboard/KeyBoardLightService$1;-><init>(Lcom/android/exsettings/keyboard/KeyBoardLightService;)V

    iput-object v0, p0, Lcom/android/exsettings/keyboard/KeyBoardLightService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    new-instance v0, Lcom/android/exsettings/keyboard/KeyBoardLightService$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/keyboard/KeyBoardLightService$2;-><init>(Lcom/android/exsettings/keyboard/KeyBoardLightService;)V

    iput-object v0, p0, Lcom/android/exsettings/keyboard/KeyBoardLightService;->mHandler:Landroid/os/Handler;

    .line 83
    new-instance v0, Lcom/android/exsettings/keyboard/KeyBoardLightService$3;

    invoke-direct {v0, p0}, Lcom/android/exsettings/keyboard/KeyBoardLightService$3;-><init>(Lcom/android/exsettings/keyboard/KeyBoardLightService;)V

    iput-object v0, p0, Lcom/android/exsettings/keyboard/KeyBoardLightService;->mRefreshListRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/keyboard/KeyBoardLightService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/keyboard/KeyBoardLightService;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/exsettings/keyboard/KeyBoardLightService;->mRefreshListRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/exsettings/keyboard/KeyBoardLightService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/keyboard/KeyBoardLightService;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/exsettings/keyboard/KeyBoardLightService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/exsettings/keyboard/KeyBoardLightService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/keyboard/KeyBoardLightService;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/exsettings/keyboard/KeyBoardLightService;->checkLightOnOffStatus(Z)V

    return-void
.end method

.method private checkLightOnOffStatus(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    const/4 v1, 0x1

    .line 91
    if-eqz p1, :cond_0

    .line 92
    invoke-static {v1}, Lcom/android/exsettings/keyboard/LedLightFileUtil;->setKeyBoardBrightnessEnabled(Z)V

    .line 93
    iget-object v0, p0, Lcom/android/exsettings/keyboard/KeyBoardLightService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/exsettings/keyboard/LedLightFileUtil;->setKeyBoardBrightnessEnabled(Z)V

    goto :goto_0
.end method

.method private registerVariousIntents(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 45
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/android/exsettings/keyboard/KeyBoardLightService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 49
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 103
    iget-object v0, p0, Lcom/android/exsettings/keyboard/KeyBoardLightService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/keyboard/KeyBoardLightService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/exsettings/keyboard/KeyBoardLightService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exsettings/keyboard/KeyBoardLightService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 106
    :cond_0
    invoke-static {}, Lcom/android/exsettings/keyboard/LedLightFileUtil;->turnOffLight()V

    .line 107
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 33
    const-string v0, "KeyBoardLightService"

    const-string v1, "KeyBoardLightService,onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iput-object p0, p0, Lcom/android/exsettings/keyboard/KeyBoardLightService;->mContext:Landroid/content/Context;

    .line 37
    const-string v0, "KeyBoardLightService"

    const-string v1, "registerReceiver:registerVariousIntents"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v0, p0, Lcom/android/exsettings/keyboard/KeyBoardLightService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/exsettings/keyboard/KeyBoardLightService;->registerVariousIntents(Landroid/content/Context;)V

    .line 39
    invoke-static {}, Lcom/android/exsettings/keyboard/LedLightFileUtil;->disableLedsWhenStarted()V

    .line 40
    const/4 v0, 0x1

    return v0
.end method
