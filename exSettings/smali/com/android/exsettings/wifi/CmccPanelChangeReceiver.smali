.class public Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CmccPanelChangeReceiver.java"


# static fields
.field static isNotificationshown:Z

.field private static mCmccLoginDialog:Lcom/android/exsettings/wifi/CmccLoginDialog;

.field public static mNotification:Landroid/app/Notification;

.field public static mNotificationManager:Landroid/app/NotificationManager;


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mCmccInfo:Landroid/content/SharedPreferences;

.field private mConnectivity:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->isNotificationshown:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;ZZ)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->generateRemoteNotificationView(ZZ)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->getCmccLoginStatus()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->recordCmccLoginStatus(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mConnectivity:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;)Landroid/net/wifi/WifiInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method private generateRemoteNotificationView(ZZ)Landroid/widget/RemoteViews;
    .locals 8
    .param p1, "isChecking"    # Z
    .param p2, "isLogin"    # Z

    .prologue
    const v7, 0x7f1202c0

    const/16 v6, 0x8

    const v3, 0x7f120033

    const v5, 0x7f120157

    const/4 v4, 0x0

    .line 172
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040141

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 173
    .local v0, "rv":Landroid/widget/RemoteViews;
    if-eqz p1, :cond_1

    .line 174
    const v1, 0x7f1202c1

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 175
    invoke-virtual {v0, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 176
    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 177
    iget-object v1, p0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0c29

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 178
    invoke-virtual {v0, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 179
    iget-object v1, p0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0c2a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 205
    :cond_0
    :goto_0
    return-object v0

    .line 181
    :cond_1
    const v1, 0x7f1202c1

    invoke-virtual {v0, v1, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 182
    invoke-virtual {v0, v7, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 183
    const v1, 0x7f020191

    invoke-virtual {v0, v7, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 184
    if-eqz p2, :cond_3

    .line 185
    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 186
    iget-object v1, p0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0c2d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 188
    iget-object v1, p0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mAccount:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 189
    invoke-virtual {v0, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 194
    :goto_1
    invoke-direct {p0}, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->getCmccLoginStatus()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 195
    invoke-virtual {v0, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 196
    iget-object v1, p0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0c2f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 191
    :cond_2
    invoke-virtual {v0, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0c2e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mAccount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 199
    :cond_3
    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 200
    iget-object v1, p0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0c2b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 201
    invoke-virtual {v0, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 202
    iget-object v1, p0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0c2c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private getCmccLoginStatus()I
    .locals 3

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mCmccInfo:Landroid/content/SharedPreferences;

    const-string v1, "cmcc_login_status_recode"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private recordCmccLoginStatus(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 209
    iget-object v1, p0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mCmccInfo:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 210
    .local v0, "editor_cmcc":Landroid/content/SharedPreferences$Editor;
    const-string v1, "cmcc_login_status_recode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 211
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 212
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x6d

    const/16 v8, 0x6c

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 61
    iput-object p1, p0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mContext:Landroid/content/Context;

    .line 62
    iget-object v3, p0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mContext:Landroid/content/Context;

    const v4, 0x10302d8

    invoke-virtual {v3, v4}, Landroid/content/Context;->setTheme(I)V

    .line 64
    const-string v3, "com.android.settings.wifi.CmccLoginDialog_closeAction"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    sget-object v3, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mCmccLoginDialog:Lcom/android/exsettings/wifi/CmccLoginDialog;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mCmccLoginDialog:Lcom/android/exsettings/wifi/CmccLoginDialog;

    invoke-virtual {v3}, Lcom/android/exsettings/wifi/CmccLoginDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    sget-object v3, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mCmccLoginDialog:Lcom/android/exsettings/wifi/CmccLoginDialog;

    invoke-virtual {v3}, Lcom/android/exsettings/wifi/CmccLoginDialog;->dismiss()V

    .line 70
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    iput-object v3, p0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mConnectivity:Landroid/net/ConnectivityManager;

    .line 71
    iget-object v3, p0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mConnectivity:Landroid/net/ConnectivityManager;

    if-eqz v3, :cond_2

    .line 72
    iget-object v3, p0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mConnectivity:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_2

    .line 73
    const-string v3, "CmccPanelChangeReceiver"

    const-string v4, "Wifi not Connected, return"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_1
    :goto_0
    return-void

    .line 79
    :cond_2
    iget-object v3, p0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mContext:Landroid/content/Context;

    const-string v4, "cmcc_info"

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mCmccInfo:Landroid/content/SharedPreferences;

    .line 80
    iget-object v3, p0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mCmccInfo:Landroid/content/SharedPreferences;

    const-string v4, "cmcc_account_number_recode"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mAccount:Ljava/lang/String;

    .line 82
    iget-object v3, p0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    sput-object v3, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    .line 83
    iget-object v3, p0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 84
    iget-object v3, p0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 86
    iget-object v3, p0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v3

    sget-object v4, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v3, v4, :cond_3

    .line 87
    const-string v3, "CMCC-WEB"

    iget-object v4, p0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exsettingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    sput-object v3, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mNotification:Landroid/app/Notification;

    .line 96
    sget-object v3, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mNotification:Landroid/app/Notification;

    const v4, 0x7f020191

    iput v4, v3, Landroid/app/Notification;->icon:I

    .line 97
    sget-object v3, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Landroid/app/Notification;->when:J

    .line 98
    sget-object v3, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mNotification:Landroid/app/Notification;

    const/16 v4, 0x10

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 99
    sget-object v3, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mNotification:Landroid/app/Notification;

    iput v6, v3, Landroid/app/Notification;->defaults:I

    .line 100
    sget-object v3, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mNotification:Landroid/app/Notification;

    iput-object v10, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 101
    sget-object v3, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mNotification:Landroid/app/Notification;

    iput-object v10, v3, Landroid/app/Notification;->vibrate:[J

    .line 102
    sget-object v3, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mNotification:Landroid/app/Notification;

    const/4 v4, -0x1

    iput v4, v3, Landroid/app/Notification;->priority:I

    .line 104
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.settings.wifi.panelOpened"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-boolean v3, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->isNotificationshown:Z

    if-nez v3, :cond_4

    .line 107
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.settings.wifi.CmccLoginDialog"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .local v1, "intentCheck":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {v3, v6, v1, v6, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 110
    .local v2, "pendingCheck":Landroid/app/PendingIntent;
    sget-object v3, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mNotification:Landroid/app/Notification;

    invoke-direct {p0, v7, v6}, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->generateRemoteNotificationView(ZZ)Landroid/widget/RemoteViews;

    move-result-object v4

    iput-object v4, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 112
    sget-object v3, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v4, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mNotification:Landroid/app/Notification;

    invoke-virtual {v3, v8, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 113
    sget-object v3, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v9}, Landroid/app/NotificationManager;->cancel(I)V

    .line 115
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver$1;

    invoke-direct {v4, p0}, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver$1;-><init>(Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 153
    const-string v3, "CmccPanelChangeReceiver"

    const-string v4, "Recevice the event_panel_state_opened successfull"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 91
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "intentCheck":Landroid/content/Intent;
    .end local v2    # "pendingCheck":Landroid/app/PendingIntent;
    :cond_3
    const-string v3, "CmccPanelChangeReceiver"

    const-string v4, "mWifiInfo is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 155
    .restart local v0    # "action":Ljava/lang/String;
    :cond_4
    const-string v3, "android.settings.wifi.panelClosed"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 156
    sget-object v3, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 157
    sget-boolean v3, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->isNotificationshown:Z

    if-eqz v3, :cond_5

    .line 158
    sput-boolean v6, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->isNotificationshown:Z

    .line 159
    sget-object v3, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v9}, Landroid/app/NotificationManager;->cancel(I)V

    .line 161
    :cond_5
    const-string v3, "CmccPanelChangeReceiver"

    const-string v4, "Recevice the event_panel_state_closed successfull"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 162
    :cond_6
    const-string v3, "com.android.settings.wifi.CmccLoginDialog"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    const-string v3, "CmccPanelChangeReceiver"

    const-string v4, "Receive com.android.settings.wifi.CmccLoginDialog"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v3, Lcom/android/exsettings/wifi/CmccLoginDialog;

    iget-object v4, p0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/exsettings/wifi/CmccLoginDialog;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mCmccLoginDialog:Lcom/android/exsettings/wifi/CmccLoginDialog;

    .line 165
    sget-object v3, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mCmccLoginDialog:Lcom/android/exsettings/wifi/CmccLoginDialog;

    invoke-virtual {v3}, Lcom/android/exsettings/wifi/CmccLoginDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d2

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 166
    sget-object v3, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mCmccLoginDialog:Lcom/android/exsettings/wifi/CmccLoginDialog;

    invoke-virtual {v3}, Lcom/android/exsettings/wifi/CmccLoginDialog;->show()V

    goto/16 :goto_0
.end method
