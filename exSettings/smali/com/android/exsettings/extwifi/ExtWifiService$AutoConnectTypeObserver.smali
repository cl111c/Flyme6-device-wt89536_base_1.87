.class Lcom/android/exsettings/extwifi/ExtWifiService$AutoConnectTypeObserver;
.super Landroid/database/ContentObserver;
.source "ExtWifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/extwifi/ExtWifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoConnectTypeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/extwifi/ExtWifiService;


# direct methods
.method public constructor <init>(Lcom/android/exsettings/extwifi/ExtWifiService;Landroid/os/Handler;)V
    .locals 3
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x0

    .line 98
    iput-object p1, p0, Lcom/android/exsettings/extwifi/ExtWifiService$AutoConnectTypeObserver;->this$0:Lcom/android/exsettings/extwifi/ExtWifiService;

    .line 99
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 100
    invoke-virtual {p1}, Lcom/android/exsettings/extwifi/ExtWifiService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 101
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "wifi_auto_connect_type"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 103
    const-string v1, "cellular_to_wlan_type"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 105
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 112
    invoke-static {}, Lcom/android/exsettings/extwifi/ExtWifiReceiver;->resetCellularToWlanDialogControlParas()V

    .line 113
    return-void
.end method
