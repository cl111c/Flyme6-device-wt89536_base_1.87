.class Lcom/android/exsettings/wifi/GuideWlanCheckSettings$2;
.super Ljava/lang/Thread;
.source "GuideWlanCheckSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->doLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wifi/GuideWlanCheckSettings;

.field final synthetic val$phone:Ljava/lang/String;

.field final synthetic val$pwd:Ljava/lang/String;

.field final synthetic val$ramdonPwd:Z

.field final synthetic val$ssid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wifi/GuideWlanCheckSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$2;->this$0:Lcom/android/exsettings/wifi/GuideWlanCheckSettings;

    iput-object p2, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$2;->val$ssid:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$2;->val$phone:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$2;->val$pwd:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$2;->val$ramdonPwd:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 325
    :try_start_0
    const-string v3, "GuideWlanCheckSettings"

    const-string v4, "Here is to call loginCMCC function"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/aspire/g3wlan/client/sdk/CMCCWifiUninitializedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 328
    :try_start_1
    iget-object v3, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$2;->this$0:Lcom/android/exsettings/wifi/GuideWlanCheckSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->authen:Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;
    invoke-static {v3}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->access$1100(Lcom/android/exsettings/wifi/GuideWlanCheckSettings;)Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$2;->val$ssid:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$2;->val$phone:Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$2;->val$pwd:Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$2;->val$ramdonPwd:Z

    if-eqz v7, :cond_0

    :goto_0
    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->loginCMCC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/aspire/g3wlan/client/sdk/ResultObject;

    move-result-object v1

    .line 333
    .local v1, "loginResult":Lcom/aspire/g3wlan/client/sdk/ResultObject;
    invoke-virtual {v1}, Lcom/aspire/g3wlan/client/sdk/ResultObject;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 335
    const-string v2, "GuideWlanCheckSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Success : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/aspire/g3wlan/client/sdk/ResultObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v2, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$2;->this$0:Lcom/android/exsettings/wifi/GuideWlanCheckSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->access$1200(Lcom/android/exsettings/wifi/GuideWlanCheckSettings;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 351
    .end local v1    # "loginResult":Lcom/aspire/g3wlan/client/sdk/ResultObject;
    :goto_1
    return-void

    .line 328
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 339
    .restart local v1    # "loginResult":Lcom/aspire/g3wlan/client/sdk/ResultObject;
    :cond_1
    const-string v2, "GuideWlanCheckSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/aspire/g3wlan/client/sdk/ResultObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v2, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$2;->this$0:Lcom/android/exsettings/wifi/GuideWlanCheckSettings;

    # getter for: Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->access$1200(Lcom/android/exsettings/wifi/GuideWlanCheckSettings;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/aspire/g3wlan/client/sdk/CMCCWifiUninitializedException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 342
    .end local v1    # "loginResult":Lcom/aspire/g3wlan/client/sdk/ResultObject;
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_2
    const-string v2, "GuideWlanCheckSettings"

    const-string v3, "UnsupportedEncodingException occur"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/aspire/g3wlan/client/sdk/CMCCWifiUninitializedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 345
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "GuideWlanCheckSettings"

    const-string v3, "InterruptedException occur"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 347
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .line 349
    .local v0, "e":Lcom/aspire/g3wlan/client/sdk/CMCCWifiUninitializedException;
    const-string v2, "GuideWlanCheckSettings"

    const-string v3, "CMCCWifiUninitializedException occur"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
