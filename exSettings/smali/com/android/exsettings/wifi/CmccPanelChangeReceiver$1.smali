.class Lcom/android/exsettings/wifi/CmccPanelChangeReceiver$1;
.super Ljava/lang/Object;
.source "CmccPanelChangeReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver$1;->this$0:Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 119
    invoke-static {}, Lcom/android/exsettings/wifi/WifiSettings;->isCaptivePortal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    const-string v0, "CmccPanelChangeReceiver"

    const-string v3, "This is a Portal Host"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v6, Landroid/content/Intent;

    const-string v0, "com.android.settings.wifi.CmccLoginDialog"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v6, "intentCaptive":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver$1;->this$0:Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;

    # getter for: Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->access$000(Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;)Landroid/content/Context;

    move-result-object v0

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {v0, v1, v6, v1, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 123
    .local v7, "pendingCaptive":Landroid/app/PendingIntent;
    sget-object v0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mNotification:Landroid/app/Notification;

    iget-object v3, p0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver$1;->this$0:Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;

    # getter for: Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->access$000(Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0c2b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 124
    sget-object v0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mNotification:Landroid/app/Notification;

    iget-object v3, p0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver$1;->this$0:Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;

    # invokes: Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->generateRemoteNotificationView(ZZ)Landroid/widget/RemoteViews;
    invoke-static {v3, v1, v1}, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->access$100(Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;ZZ)Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 125
    sget-object v0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mNotification:Landroid/app/Notification;

    iput-object v7, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 145
    .end local v6    # "intentCaptive":Landroid/content/Intent;
    .end local v7    # "pendingCaptive":Landroid/app/PendingIntent;
    :goto_0
    iget-object v0, p0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver$1;->this$0:Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;

    # getter for: Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mConnectivity:Landroid/net/ConnectivityManager;
    invoke-static {v0}, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->access$400(Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver$1;->this$0:Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;

    # getter for: Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v0}, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->access$500(Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exsettingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CMCC-WEB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    sget-object v0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x6d

    sget-object v3, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 148
    sput-boolean v9, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->isNotificationshown:Z

    .line 149
    sget-object v0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 151
    :cond_0
    return-void

    .line 128
    :cond_1
    const-string v0, "CmccPanelChangeReceiver"

    const-string v3, "This is a normal Host"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver$1;->this$0:Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;

    # invokes: Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->getCmccLoginStatus()I
    invoke-static {v0}, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->access$200(Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;)I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    .line 131
    iget-object v0, p0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver$1;->this$0:Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;

    const/4 v3, 0x4

    # invokes: Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->recordCmccLoginStatus(I)V
    invoke-static {v0, v3}, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->access$300(Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;I)V

    .line 134
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 135
    .local v2, "intentNormal":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver$1;->this$0:Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;

    # getter for: Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->access$000(Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "com.android.settings.wifi.AccessPointInfo"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string v0, "IS_CONNECTED_LINK"

    invoke-virtual {v2, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 137
    iget-object v0, p0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver$1;->this$0:Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;

    # getter for: Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->access$000(Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;)Landroid/content/Context;

    move-result-object v0

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 139
    .local v8, "pendingNormal":Landroid/app/PendingIntent;
    sget-object v0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mNotification:Landroid/app/Notification;

    iget-object v3, p0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver$1;->this$0:Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;

    # getter for: Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->access$000(Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0c2d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 140
    sget-object v0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mNotification:Landroid/app/Notification;

    iget-object v3, p0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver$1;->this$0:Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;

    # invokes: Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->generateRemoteNotificationView(ZZ)Landroid/widget/RemoteViews;
    invoke-static {v3, v1, v9}, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->access$100(Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;ZZ)Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 141
    sget-object v0, Lcom/android/exsettings/wifi/CmccPanelChangeReceiver;->mNotification:Landroid/app/Notification;

    iput-object v8, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_0
.end method
