.class Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener$1;
.super Ljava/lang/Object;
.source "GuideWlanAccountSettings.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener$1;->this$1:Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 12
    .param p1, "paramAnimation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v11, 0x0

    .line 210
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 213
    .local v4, "localIntent":Landroid/content/Intent;
    :try_start_0
    const-string v8, "com.android.settings"

    const-string v9, "com.android.settings.wifi.GuideWlanSettings"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    iget-object v8, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener$1;->this$1:Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;

    iget-object v8, v8, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    invoke-virtual {v8, v4}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->startActivity(Landroid/content/Intent;)V

    .line 215
    const-string v8, "guide"

    const-string v9, "startActivity succeed!"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v8, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener$1;->this$1:Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;

    iget-object v8, v8, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    iget-object v8, v8, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/StatusBarManager;->disable(I)V

    .line 217
    iget-object v8, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener$1;->this$1:Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;

    iget-object v8, v8, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v8}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->access$600(Lcom/android/exsettings/wifi/GuideWlanAccountSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    .line 218
    .local v7, "localWifiInfo3":Landroid/net/wifi/WifiInfo;
    if-eqz v7, :cond_0

    .line 220
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    .line 221
    .local v2, "k":I
    iget-object v8, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener$1;->this$1:Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;

    iget-object v8, v8, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v8}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->access$600(Lcom/android/exsettings/wifi/GuideWlanAccountSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v2, v9}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 222
    const-string v8, "GuideWlanAccountSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GuideWlanAccountSettings: WifiManager: removeNetwork--"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .end local v2    # "k":I
    :cond_0
    iget-object v8, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener$1;->this$1:Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;

    iget-object v8, v8, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    invoke-virtual {v8}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    iget-object v8, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener$1;->this$1:Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;

    iget-object v8, v8, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    iget-object v8, v8, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v8, v11}, Landroid/app/StatusBarManager;->disable(I)V

    .line 243
    iget-object v8, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener$1;->this$1:Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;

    iget-object v8, v8, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v8}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->access$600(Lcom/android/exsettings/wifi/GuideWlanAccountSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    .line 244
    .local v5, "localWifiInfo1":Landroid/net/wifi/WifiInfo;
    if-eqz v5, :cond_1

    .line 246
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    .line 247
    .local v0, "i":I
    iget-object v8, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener$1;->this$1:Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;

    iget-object v8, v8, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v8}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->access$600(Lcom/android/exsettings/wifi/GuideWlanAccountSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 248
    const-string v8, "guide"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GuideWlanAccountSettings: WifiManager: removeNetwork--"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v8, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener$1;->this$1:Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;

    iget-object v8, v8, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v8}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->access$600(Lcom/android/exsettings/wifi/GuideWlanAccountSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 250
    iget-object v8, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener$1;->this$1:Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;

    iget-object v8, v8, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v8}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->access$600(Lcom/android/exsettings/wifi/GuideWlanAccountSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 252
    .end local v0    # "i":I
    :cond_1
    iget-object v8, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener$1;->this$1:Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;

    iget-object v8, v8, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v8}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->access$600(Lcom/android/exsettings/wifi/GuideWlanAccountSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 253
    :cond_2
    iget-object v8, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener$1;->this$1:Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;

    iget-object v8, v8, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    invoke-virtual {v8}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->finish()V

    .line 255
    .end local v7    # "localWifiInfo3":Landroid/net/wifi/WifiInfo;
    :goto_0
    return-void

    .line 225
    .end local v5    # "localWifiInfo1":Landroid/net/wifi/WifiInfo;
    :catch_0
    move-exception v3

    .line 227
    .local v3, "localException":Ljava/lang/Exception;
    :try_start_1
    const-string v8, "GuideWlanAccountSettings"

    const-string v9, "startActivity failed!"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v8, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener$1;->this$1:Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;

    iget-object v8, v8, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    iget-object v8, v8, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/StatusBarManager;->disable(I)V

    .line 229
    iget-object v8, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener$1;->this$1:Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;

    iget-object v8, v8, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v8}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->access$600(Lcom/android/exsettings/wifi/GuideWlanAccountSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    .line 230
    .local v6, "localWifiInfo2":Landroid/net/wifi/WifiInfo;
    if-eqz v6, :cond_3

    .line 232
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    .line 233
    .local v1, "j":I
    iget-object v8, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener$1;->this$1:Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;

    iget-object v8, v8, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v8}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->access$600(Lcom/android/exsettings/wifi/GuideWlanAccountSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 234
    const-string v8, "GuideWlanAccountSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GuideWlanAccountSettings: WifiManager: removeNetwork--"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v8, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener$1;->this$1:Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;

    iget-object v8, v8, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v8}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->access$600(Lcom/android/exsettings/wifi/GuideWlanAccountSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 236
    iget-object v8, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener$1;->this$1:Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;

    iget-object v8, v8, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v8}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->access$600(Lcom/android/exsettings/wifi/GuideWlanAccountSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 238
    .end local v1    # "j":I
    :cond_3
    iget-object v8, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener$1;->this$1:Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;

    iget-object v8, v8, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v8}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->access$600(Lcom/android/exsettings/wifi/GuideWlanAccountSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 239
    :cond_4
    iget-object v8, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener$1;->this$1:Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;

    iget-object v8, v8, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    iget-object v8, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener$1;->this$1:Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;

    iget-object v8, v8, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    iget-object v8, v8, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v8, v11}, Landroid/app/StatusBarManager;->disable(I)V

    .line 243
    iget-object v8, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener$1;->this$1:Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;

    iget-object v8, v8, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v8}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->access$600(Lcom/android/exsettings/wifi/GuideWlanAccountSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    .line 244
    .restart local v5    # "localWifiInfo1":Landroid/net/wifi/WifiInfo;
    if-eqz v5, :cond_5

    .line 246
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    .line 247
    .restart local v0    # "i":I
    iget-object v8, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener$1;->this$1:Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;

    iget-object v8, v8, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v8}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->access$600(Lcom/android/exsettings/wifi/GuideWlanAccountSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 248
    const-string v8, "guide"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GuideWlanAccountSettings: WifiManager: removeNetwork--"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v8, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener$1;->this$1:Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;

    iget-object v8, v8, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v8}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->access$600(Lcom/android/exsettings/wifi/GuideWlanAccountSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 250
    iget-object v8, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener$1;->this$1:Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;

    iget-object v8, v8, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v8}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->access$600(Lcom/android/exsettings/wifi/GuideWlanAccountSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 252
    .end local v0    # "i":I
    :cond_5
    iget-object v8, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener$1;->this$1:Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;

    iget-object v8, v8, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v8}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->access$600(Lcom/android/exsettings/wifi/GuideWlanAccountSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 253
    :cond_6
    iget-object v8, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener$1;->this$1:Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;

    iget-object v8, v8, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    invoke-virtual {v8}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->finish()V

    goto/16 :goto_0

    .line 242
    .end local v3    # "localException":Ljava/lang/Exception;
    .end local v5    # "localWifiInfo1":Landroid/net/wifi/WifiInfo;
    .end local v6    # "localWifiInfo2":Landroid/net/wifi/WifiInfo;
    :catchall_0
    move-exception v8

    iget-object v9, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener$1;->this$1:Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;

    iget-object v9, v9, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    iget-object v9, v9, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v9, v11}, Landroid/app/StatusBarManager;->disable(I)V

    .line 243
    iget-object v9, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener$1;->this$1:Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;

    iget-object v9, v9, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v9}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->access$600(Lcom/android/exsettings/wifi/GuideWlanAccountSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    .line 244
    .restart local v5    # "localWifiInfo1":Landroid/net/wifi/WifiInfo;
    if-eqz v5, :cond_7

    .line 246
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    .line 247
    .restart local v0    # "i":I
    iget-object v9, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener$1;->this$1:Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;

    iget-object v9, v9, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v9}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->access$600(Lcom/android/exsettings/wifi/GuideWlanAccountSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 248
    const-string v9, "guide"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "GuideWlanAccountSettings: WifiManager: removeNetwork--"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v9, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener$1;->this$1:Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;

    iget-object v9, v9, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v9}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->access$600(Lcom/android/exsettings/wifi/GuideWlanAccountSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 250
    iget-object v9, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener$1;->this$1:Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;

    iget-object v9, v9, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v9}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->access$600(Lcom/android/exsettings/wifi/GuideWlanAccountSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 252
    .end local v0    # "i":I
    :cond_7
    iget-object v9, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener$1;->this$1:Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;

    iget-object v9, v9, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v9}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->access$600(Lcom/android/exsettings/wifi/GuideWlanAccountSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 253
    :cond_8
    iget-object v9, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener$1;->this$1:Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;

    iget-object v9, v9, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;->this$0:Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    invoke-virtual {v9}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->finish()V

    .line 254
    throw v8
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "paramAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 259
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "paramAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 263
    return-void
.end method
