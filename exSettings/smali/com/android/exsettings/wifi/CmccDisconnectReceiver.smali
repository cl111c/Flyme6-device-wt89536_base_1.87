.class public Lcom/android/exsettings/wifi/CmccDisconnectReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CmccDisconnectReceiver.java"


# static fields
.field private static LastConnectAP:Ljava/lang/String;

.field private static isCMCCAUTOConnected:Z

.field private static isCMCCLogin:Z

.field private static isShowingNotification:Z

.field private static mNotificationManager:Landroid/app/NotificationManager;


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mCmccInfo:Landroid/content/SharedPreferences;

.field private mContext:Landroid/content/Context;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    sput-boolean v0, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->isCMCCLogin:Z

    .line 41
    sput-boolean v0, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->isCMCCAUTOConnected:Z

    .line 42
    sput-boolean v0, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->isShowingNotification:Z

    .line 45
    const-string v0, "NONE"

    sput-object v0, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->LastConnectAP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/wifi/CmccDisconnectReceiver;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/wifi/CmccDisconnectReceiver;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->recordCMCCLoginStatus(I)V

    return-void
.end method

.method private checkCaptivePortThread()V
    .locals 2

    .prologue
    .line 182
    sget-boolean v0, Lcom/android/exsettings/wifi/WifiSettings;->isCaptiveCheckRunning:Z

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/exsettings/wifi/CmccDisconnectReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/exsettings/wifi/CmccDisconnectReceiver$1;-><init>(Lcom/android/exsettings/wifi/CmccDisconnectReceiver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 200
    :cond_0
    return-void
.end method

.method private getCMCCLoginStatus()I
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->mCmccInfo:Landroid/content/SharedPreferences;

    const-string v1, "cmcc_login_status_recode"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private isCMCC()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 126
    iget-object v5, p0, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 127
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v5, p0, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 128
    .local v3, "mWifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/exsettingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "CMCC-WEB"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 129
    if-eqz v1, :cond_1

    .line 130
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 131
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 132
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 133
    const/4 v4, 0x1

    .line 140
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return v4
.end method

.method private isCMCCAUTO()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 108
    iget-object v5, p0, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 109
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v5, p0, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 110
    .local v3, "mWifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/exsettingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "CMCC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 111
    if-eqz v1, :cond_2

    .line 112
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 113
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 114
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 115
    :cond_1
    const/4 v4, 0x1

    .line 122
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    return v4
.end method

.method private recordCMCCLoginStatus(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 203
    iget-object v1, p0, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->mCmccInfo:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 204
    .local v0, "editor_cmcc":Landroid/content/SharedPreferences$Editor;
    const-string v1, "cmcc_login_status_recode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 205
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 206
    return-void
.end method

.method private showNotification(ZZ)V
    .locals 13
    .param p1, "isCMCCLogin"    # Z
    .param p2, "isCMCCAUTOConnected"    # Z

    .prologue
    const v12, 0x7f1202c2

    const v9, 0x7f0c0c40

    const v11, 0x7f020191

    const/4 v10, 0x0

    .line 145
    const-string v6, ""

    .line 146
    .local v6, "title":Ljava/lang/String;
    const-string v3, ""

    .line 147
    .local v3, "notify_title":Ljava/lang/String;
    const-string v1, ""

    .line 149
    .local v1, "details":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 150
    iget-object v7, p0, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->mContext:Landroid/content/Context;

    const v8, 0x7f0c0c3e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 151
    iget-object v7, p0, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->mContext:Landroid/content/Context;

    const v8, 0x7f0c0c3f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 152
    invoke-direct {p0}, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->getCMCCLoginStatus()I

    move-result v7

    const/4 v8, 0x3

    if-lt v7, v8, :cond_1

    .line 153
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->mAccount:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 163
    :cond_0
    :goto_0
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 164
    .local v2, "notification":Landroid/app/Notification;
    const-wide/16 v8, 0x0

    iput-wide v8, v2, Landroid/app/Notification;->when:J

    .line 165
    iput v11, v2, Landroid/app/Notification;->icon:I

    .line 166
    const/16 v7, 0x10

    iput v7, v2, Landroid/app/Notification;->flags:I

    .line 167
    iput-object v3, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 168
    new-instance v5, Landroid/widget/RemoteViews;

    iget-object v7, p0, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f040142

    invoke-direct {v5, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 169
    .local v5, "rv":Landroid/widget/RemoteViews;
    const v7, 0x7f120033

    invoke-virtual {v5, v7, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 170
    const v7, 0x7f120157

    invoke-virtual {v5, v7, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 171
    const v7, 0x7f1202c0

    invoke-virtual {v5, v7, v11}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 172
    const v7, 0x7f020237

    invoke-virtual {v5, v12, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 173
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.settings.wifi.CloseCmccNotification"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, "closeIntent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->mContext:Landroid/content/Context;

    invoke-static {v7, v10, v0, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 175
    .local v4, "pendingClose":Landroid/app/PendingIntent;
    invoke-virtual {v5, v12, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 176
    iput-object v5, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 177
    sget-object v7, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v8, 0x6b

    invoke-virtual {v7, v8, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 178
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->isShowingNotification:Z

    .line 179
    return-void

    .line 155
    .end local v0    # "closeIntent":Landroid/content/Intent;
    .end local v2    # "notification":Landroid/app/Notification;
    .end local v4    # "pendingClose":Landroid/app/PendingIntent;
    .end local v5    # "rv":Landroid/widget/RemoteViews;
    :cond_1
    iget-object v7, p0, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 157
    :cond_2
    if-eqz p2, :cond_0

    .line 158
    iget-object v7, p0, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->mContext:Landroid/content/Context;

    const v8, 0x7f0c0c41

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 159
    move-object v3, v6

    .line 160
    iget-object v7, p0, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->mContext:Landroid/content/Context;

    const v8, 0x7f0c0c42

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x3

    const/16 v7, 0x6b

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 51
    iput-object p1, p0, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->mContext:Landroid/content/Context;

    .line 52
    iget-object v2, p0, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 53
    iget-object v2, p0, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    sput-object v2, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    .line 55
    iget-object v2, p0, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->mContext:Landroid/content/Context;

    const-string v3, "cmcc_info"

    invoke-virtual {v2, v3, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->mCmccInfo:Landroid/content/SharedPreferences;

    .line 56
    iget-object v2, p0, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->mCmccInfo:Landroid/content/SharedPreferences;

    const-string v3, "cmcc_account_number_recode"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->mAccount:Ljava/lang/String;

    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.settings.wifi.CmccLoginStatusChange"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 60
    invoke-direct {p0}, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->getCMCCLoginStatus()I

    move-result v2

    if-lt v2, v8, :cond_1

    .line 61
    sput-boolean v6, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->isCMCCLogin:Z

    .line 65
    :goto_0
    sput-boolean v5, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->isShowingNotification:Z

    .line 66
    const-string v2, "CMCC-WEB"

    sput-object v2, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->LastConnectAP:Ljava/lang/String;

    .line 67
    sget-object v2, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v7}, Landroid/app/NotificationManager;->cancel(I)V

    .line 105
    :cond_0
    :goto_1
    return-void

    .line 63
    :cond_1
    sput-boolean v5, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->isCMCCLogin:Z

    goto :goto_0

    .line 68
    :cond_2
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 69
    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 70
    .local v1, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_6

    .line 71
    const-string v2, "NONE"

    sput-object v2, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->LastConnectAP:Ljava/lang/String;

    .line 72
    sget-boolean v2, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->isCMCCLogin:Z

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->isCMCCAUTOConnected:Z

    if-eqz v2, :cond_4

    .line 73
    :cond_3
    sget-boolean v2, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->isCMCCLogin:Z

    if-eqz v2, :cond_5

    .line 74
    invoke-direct {p0, v6}, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->recordCMCCLoginStatus(I)V

    .line 75
    sget-boolean v2, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->isCMCCLogin:Z

    sget-boolean v3, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->isCMCCAUTOConnected:Z

    invoke-direct {p0, v2, v3}, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->showNotification(ZZ)V

    .line 76
    sput-boolean v5, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->isCMCCLogin:Z

    .line 82
    :cond_4
    :goto_2
    sget-object v2, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v3, 0x6d

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 83
    sget-object v2, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v3, 0x6c

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1

    .line 78
    :cond_5
    sget-boolean v2, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->isCMCCLogin:Z

    sget-boolean v3, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->isCMCCAUTOConnected:Z

    invoke-direct {p0, v2, v3}, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->showNotification(ZZ)V

    .line 79
    sput-boolean v5, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->isCMCCAUTOConnected:Z

    goto :goto_2

    .line 84
    :cond_6
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    sget-boolean v2, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->isShowingNotification:Z

    if-eqz v2, :cond_7

    .line 86
    sput-boolean v5, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->isShowingNotification:Z

    .line 87
    sget-object v2, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v7}, Landroid/app/NotificationManager;->cancel(I)V

    .line 90
    :cond_7
    invoke-direct {p0}, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->isCMCCAUTO()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 91
    sput-boolean v6, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->isCMCCAUTOConnected:Z

    .line 92
    const-string v2, "CMCC"

    sput-object v2, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->LastConnectAP:Ljava/lang/String;

    .line 99
    :goto_3
    const-string v2, "CmccDisconnectReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LastConnectAP = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->LastConnectAP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 93
    :cond_8
    invoke-direct {p0}, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->isCMCC()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 94
    const-string v2, "CMCC-WEB"

    sput-object v2, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->LastConnectAP:Ljava/lang/String;

    .line 95
    invoke-direct {p0}, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->checkCaptivePortThread()V

    goto :goto_3

    .line 97
    :cond_9
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exsettingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->LastConnectAP:Ljava/lang/String;

    goto :goto_3

    .line 101
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_a
    const-string v2, "android.settings.wifi.CloseCmccNotification"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    sput-boolean v5, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->isShowingNotification:Z

    .line 103
    sget-object v2, Lcom/android/exsettings/wifi/CmccDisconnectReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v7}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_1
.end method
