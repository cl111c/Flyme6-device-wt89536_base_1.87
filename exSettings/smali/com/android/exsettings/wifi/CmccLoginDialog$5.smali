.class Lcom/android/exsettings/wifi/CmccLoginDialog$5;
.super Ljava/lang/Thread;
.source "CmccLoginDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/wifi/CmccLoginDialog;->doLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wifi/CmccLoginDialog;

.field final synthetic val$phone:Ljava/lang/String;

.field final synthetic val$pwd:Ljava/lang/String;

.field final synthetic val$ramdonPwd:Z

.field final synthetic val$ssid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wifi/CmccLoginDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/exsettings/wifi/CmccLoginDialog$5;->this$0:Lcom/android/exsettings/wifi/CmccLoginDialog;

    iput-object p2, p0, Lcom/android/exsettings/wifi/CmccLoginDialog$5;->val$ssid:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/exsettings/wifi/CmccLoginDialog$5;->val$phone:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/exsettings/wifi/CmccLoginDialog$5;->val$pwd:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/exsettings/wifi/CmccLoginDialog$5;->val$ramdonPwd:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 201
    :try_start_0
    const-string v2, "CmccLoginDialog"

    const-string v3, "Here is to call loginCMCC function"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/aspire/g3wlan/client/sdk/CMCCWifiUninitializedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 203
    :try_start_1
    iget-object v2, p0, Lcom/android/exsettings/wifi/CmccLoginDialog$5;->this$0:Lcom/android/exsettings/wifi/CmccLoginDialog;

    # getter for: Lcom/android/exsettings/wifi/CmccLoginDialog;->mAuthenticator:Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;
    invoke-static {v2}, Lcom/android/exsettings/wifi/CmccLoginDialog;->access$700(Lcom/android/exsettings/wifi/CmccLoginDialog;)Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exsettings/wifi/CmccLoginDialog$5;->val$ssid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/exsettings/wifi/CmccLoginDialog$5;->val$phone:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v2, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/android/exsettings/wifi/CmccLoginDialog$5;->val$pwd:Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v2, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-boolean v2, p0, Lcom/android/exsettings/wifi/CmccLoginDialog$5;->val$ramdonPwd:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->loginCMCC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/aspire/g3wlan/client/sdk/ResultObject;

    move-result-object v1

    .line 208
    .local v1, "loginResult":Lcom/aspire/g3wlan/client/sdk/ResultObject;
    invoke-virtual {v1}, Lcom/aspire/g3wlan/client/sdk/ResultObject;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    const-string v2, "CmccLoginDialog"

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

    .line 211
    iget-object v2, p0, Lcom/android/exsettings/wifi/CmccLoginDialog$5;->this$0:Lcom/android/exsettings/wifi/CmccLoginDialog;

    # getter for: Lcom/android/exsettings/wifi/CmccLoginDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/exsettings/wifi/CmccLoginDialog;->access$800(Lcom/android/exsettings/wifi/CmccLoginDialog;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 224
    :goto_1
    iget-object v2, p0, Lcom/android/exsettings/wifi/CmccLoginDialog$5;->this$0:Lcom/android/exsettings/wifi/CmccLoginDialog;

    # invokes: Lcom/android/exsettings/wifi/CmccLoginDialog;->recordCMCCLoginInfo()V
    invoke-static {v2}, Lcom/android/exsettings/wifi/CmccLoginDialog;->access$900(Lcom/android/exsettings/wifi/CmccLoginDialog;)V

    .line 233
    .end local v1    # "loginResult":Lcom/aspire/g3wlan/client/sdk/ResultObject;
    :goto_2
    return-void

    .line 203
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 215
    .restart local v1    # "loginResult":Lcom/aspire/g3wlan/client/sdk/ResultObject;
    :cond_1
    invoke-virtual {v1}, Lcom/aspire/g3wlan/client/sdk/ResultObject;->getCode()I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_2

    .line 216
    iget-object v2, p0, Lcom/android/exsettings/wifi/CmccLoginDialog$5;->this$0:Lcom/android/exsettings/wifi/CmccLoginDialog;

    # getter for: Lcom/android/exsettings/wifi/CmccLoginDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/exsettings/wifi/CmccLoginDialog;->access$800(Lcom/android/exsettings/wifi/CmccLoginDialog;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 217
    const-string v2, "CmccLoginDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Already logged in : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/aspire/g3wlan/client/sdk/ResultObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/aspire/g3wlan/client/sdk/CMCCWifiUninitializedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 225
    .end local v1    # "loginResult":Lcom/aspire/g3wlan/client/sdk/ResultObject;
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_2
    const-string v2, "CmccLoginDialog"

    const-string v3, "UnsupportedEncodingException occur"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/aspire/g3wlan/client/sdk/CMCCWifiUninitializedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 229
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 231
    .local v0, "e":Lcom/aspire/g3wlan/client/sdk/CMCCWifiUninitializedException;
    const-string v2, "CmccLoginDialog"

    const-string v3, "CMCCWifiUninitializedException occur"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 219
    .end local v0    # "e":Lcom/aspire/g3wlan/client/sdk/CMCCWifiUninitializedException;
    .restart local v1    # "loginResult":Lcom/aspire/g3wlan/client/sdk/ResultObject;
    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/android/exsettings/wifi/CmccLoginDialog$5;->this$0:Lcom/android/exsettings/wifi/CmccLoginDialog;

    # getter for: Lcom/android/exsettings/wifi/CmccLoginDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/exsettings/wifi/CmccLoginDialog;->access$800(Lcom/android/exsettings/wifi/CmccLoginDialog;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 220
    const-string v2, "CmccLoginDialog"

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
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/aspire/g3wlan/client/sdk/CMCCWifiUninitializedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method
