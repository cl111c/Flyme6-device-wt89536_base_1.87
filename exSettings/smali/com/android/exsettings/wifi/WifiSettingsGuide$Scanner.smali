.class Lcom/android/exsettings/wifi/WifiSettingsGuide$Scanner;
.super Landroid/os/Handler;
.source "WifiSettingsGuide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/wifi/WifiSettingsGuide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Scanner"
.end annotation


# instance fields
.field private mRetry:I

.field private mWifiSettings:Lcom/android/exsettings/wifi/WifiSettingsGuide;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wifi/WifiSettingsGuide;)V
    .locals 1
    .param p1, "wifiSettings"    # Lcom/android/exsettings/wifi/WifiSettingsGuide;

    .prologue
    .line 265
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 262
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide$Scanner;->mRetry:I

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide$Scanner;->mWifiSettings:Lcom/android/exsettings/wifi/WifiSettingsGuide;

    .line 266
    iput-object p1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide$Scanner;->mWifiSettings:Lcom/android/exsettings/wifi/WifiSettingsGuide;

    .line 267
    return-void
.end method


# virtual methods
.method forceScan()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 276
    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiSettingsGuide$Scanner;->removeMessages(I)V

    .line 277
    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiSettingsGuide$Scanner;->sendEmptyMessage(I)Z

    .line 278
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 287
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide$Scanner;->mWifiSettings:Lcom/android/exsettings/wifi/WifiSettingsGuide;

    iget-object v1, v1, Lcom/android/exsettings/wifi/WifiSettingsGuide;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 288
    iput v4, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide$Scanner;->mRetry:I

    .line 297
    :cond_0
    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/exsettings/wifi/WifiSettingsGuide$Scanner;->sendEmptyMessageDelayed(IJ)Z

    .line 298
    :cond_1
    :goto_0
    return-void

    .line 289
    :cond_2
    iget v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide$Scanner;->mRetry:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide$Scanner;->mRetry:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 290
    iput v4, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide$Scanner;->mRetry:I

    .line 291
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide$Scanner;->mWifiSettings:Lcom/android/exsettings/wifi/WifiSettingsGuide;

    invoke-virtual {v1}, Lcom/android/exsettings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 292
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 293
    const/high16 v1, 0x7f0c0000

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method pause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 281
    iput v0, p0, Lcom/android/exsettings/wifi/WifiSettingsGuide$Scanner;->mRetry:I

    .line 282
    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiSettingsGuide$Scanner;->removeMessages(I)V

    .line 283
    return-void
.end method

.method resume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 270
    invoke-virtual {p0, v1}, Lcom/android/exsettings/wifi/WifiSettingsGuide$Scanner;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    invoke-virtual {p0, v1}, Lcom/android/exsettings/wifi/WifiSettingsGuide$Scanner;->sendEmptyMessage(I)Z

    .line 273
    :cond_0
    return-void
.end method
