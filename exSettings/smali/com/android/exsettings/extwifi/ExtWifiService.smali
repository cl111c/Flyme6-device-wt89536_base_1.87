.class public Lcom/android/exsettings/extwifi/ExtWifiService;
.super Landroid/app/Service;
.source "ExtWifiService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/extwifi/ExtWifiService$AutoConnectTypeObserver;
    }
.end annotation


# instance fields
.field private mAutoConnectTypeObserver:Lcom/android/exsettings/extwifi/ExtWifiService$AutoConnectTypeObserver;

.field mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 116
    new-instance v0, Lcom/android/exsettings/extwifi/ExtWifiService$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/extwifi/ExtWifiService$1;-><init>(Lcom/android/exsettings/extwifi/ExtWifiService;)V

    iput-object v0, p0, Lcom/android/exsettings/extwifi/ExtWifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 131
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 86
    const-string v1, "zj712 ExtWifiService created. -000"

    invoke-static {v1}, Lcom/android/exsettings/extwifi/Utils;->log(Ljava/lang/String;)V

    .line 87
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 88
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/android/exsettings/extwifi/ExtWifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/exsettings/extwifi/ExtWifiService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    new-instance v1, Lcom/android/exsettings/extwifi/ExtWifiService$AutoConnectTypeObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/exsettings/extwifi/ExtWifiService$AutoConnectTypeObserver;-><init>(Lcom/android/exsettings/extwifi/ExtWifiService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/exsettings/extwifi/ExtWifiService;->mAutoConnectTypeObserver:Lcom/android/exsettings/extwifi/ExtWifiService$AutoConnectTypeObserver;

    .line 91
    return-void
.end method
