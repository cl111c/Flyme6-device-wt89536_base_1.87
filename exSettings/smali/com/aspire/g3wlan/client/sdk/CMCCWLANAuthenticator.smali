.class public Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;
.super Ljava/lang/Object;


# static fields
.field public static MODE_RANDOM_PWD:I

.field public static MODE_STATIC_PWD:I

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;


# instance fields
.field private am:Landroid/app/ActivityManager;

.field private authen:Lcom/aspire/g3wlan/client/sdk/a;

.field private checkCMCCAUTOConnection:I

.field private easyWlanServiceConn:Landroid/content/ServiceConnection;

.field private initFlag:I

.field private mCM:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mEasyService:Lcom/aspire/g3wlan/client/a/a;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private packageName:Ljava/lang/String;

.field private terminalInfoManager:Lcom/aspire/g3wlan/client/sdk/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    sput v0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->MODE_STATIC_PWD:I

    const/4 v0, 0x2

    sput v0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->MODE_RANDOM_PWD:I

    const/4 v0, 0x0

    sput-object v0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->instance:Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->initFlag:I

    iput-object v2, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->authen:Lcom/aspire/g3wlan/client/sdk/a;

    new-instance v0, Lcom/aspire/g3wlan/client/sdk/c;

    invoke-direct {v0, p0}, Lcom/aspire/g3wlan/client/sdk/c;-><init>(Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;)V

    iput-object v0, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->easyWlanServiceConn:Landroid/content/ServiceConnection;

    iput-object v2, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->packageName:Ljava/lang/String;

    iput v1, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->checkCMCCAUTOConnection:I

    new-instance v0, Lcom/aspire/g3wlan/client/sdk/a;

    invoke-direct {v0}, Lcom/aspire/g3wlan/client/sdk/a;-><init>()V

    iput-object v0, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->authen:Lcom/aspire/g3wlan/client/sdk/a;

    iput-object p1, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->am:Landroid/app/ActivityManager;

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mCM:Landroid/net/ConnectivityManager;

    new-instance v0, Lcom/aspire/g3wlan/client/sdk/n;

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/aspire/g3wlan/client/sdk/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->terminalInfoManager:Lcom/aspire/g3wlan/client/sdk/n;

    invoke-direct {p0}, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->isServiceInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->isServiceRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.aspire.g3wlan.smart.service"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->easyWlanServiceConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;Lcom/aspire/g3wlan/client/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mEasyService:Lcom/aspire/g3wlan/client/a/a;

    return-void
.end method

.method static synthetic access$1(Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;)Lcom/aspire/g3wlan/client/a/a;
    .locals 1

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mEasyService:Lcom/aspire/g3wlan/client/a/a;

    return-object v0
.end method

.method static synthetic access$3(Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->packageName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;)Landroid/net/ConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mCM:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$5(Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$6(Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->uploadTerminalInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->updateConfigInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8(Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;)I
    .locals 1

    iget v0, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->checkCMCCAUTOConnection:I

    return v0
.end method

.method static synthetic access$9(Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;I)V
    .locals 0

    iput p1, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->checkCMCCAUTOConnection:I

    return-void
.end method

.method private checkAppKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mContext:Landroid/content/Context;

    const-string v3, "checked_pkg_channel_key"

    invoke-static {v2, v3}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "APP\u4fe1\u606f\u672a\u6539\u53d8\uff0c\u68c0\u9a8c\u6210\u529f\uff01"

    invoke-static {v1}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/aspire/g3wlan/client/sdk/biz/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aspire/g3wlan/client/sdk/biz/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mContext:Landroid/content/Context;

    const-string v3, "checked_pkg_channel_key"

    invoke-static {v2, v3, v1}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mContext:Landroid/content/Context;

    const-string v1, "checked_pkg_channel_key"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkIsLoginned()Z
    .locals 1

    const-string v0, "Call checkIsLoginned!"

    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/aspire/g3wlan/client/sdk/a;

    invoke-direct {v0}, Lcom/aspire/g3wlan/client/sdk/a;-><init>()V

    invoke-virtual {v0}, Lcom/aspire/g3wlan/client/sdk/a;->f()Z

    move-result v0

    return v0
.end method

.method private doAPConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v0, p1}, Lcom/aspire/g3wlan/client/sdk/p;->a(Landroid/net/wifi/WifiManager;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v2, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v2, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v2, p1}, Lcom/aspire/g3wlan/client/sdk/p;->b(Landroid/net/wifi/WifiManager;Ljava/lang/String;)I

    move-result v2

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-gt v3, v2, :cond_1

    add-int/lit8 v0, v2, 0x1

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    :goto_0
    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v1, v4}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    goto :goto_0

    :cond_2
    invoke-static {p1, p2, p3}, Lcom/aspire/g3wlan/client/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v1, p1}, Lcom/aspire/g3wlan/client/sdk/p;->b(Landroid/net/wifi/WifiManager;Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    const-string v1, "ApListActivity.mReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "networkId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0, v4}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    goto :goto_1
.end method

.method private doLogin(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mContext:Landroid/content/Context;

    const-string v1, "logoutUrl"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mContext:Landroid/content/Context;

    const-string v1, "logoutReq"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mContext:Landroid/content/Context;

    const-string v1, "cookie"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->authen:Lcom/aspire/g3wlan/client/sdk/a;

    invoke-virtual {v0}, Lcom/aspire/g3wlan/client/sdk/a;->e()V

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->authen:Lcom/aspire/g3wlan/client/sdk/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/aspire/g3wlan/client/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mContext:Landroid/content/Context;

    const-string v2, "logoutUrl"

    iget-object v3, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->authen:Lcom/aspire/g3wlan/client/sdk/a;

    invoke-virtual {v3}, Lcom/aspire/g3wlan/client/sdk/a;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mContext:Landroid/content/Context;

    const-string v2, "logoutReq"

    iget-object v3, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->authen:Lcom/aspire/g3wlan/client/sdk/a;

    invoke-virtual {v3}, Lcom/aspire/g3wlan/client/sdk/a;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mContext:Landroid/content/Context;

    const-string v2, "cookie"

    iget-object v3, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->authen:Lcom/aspire/g3wlan/client/sdk/a;

    invoke-virtual {v3}, Lcom/aspire/g3wlan/client/sdk/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;
    .locals 1

    sget-object v0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->instance:Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

    invoke-direct {v0, p0}, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->instance:Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

    :cond_0
    sget-object v0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->instance:Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

    return-object v0
.end method

.method private isDisabledChannel(Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mContext:Landroid/content/Context;

    const-string v3, "CMCCWIFIAndroidSDK_DisableChannel"

    invoke-static {v2, v3}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    array-length v4, v3

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private isServiceInstalled()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.aspire.g3wlan.client.smart"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isServiceRunning()Z
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->am:Landroid/app/ActivityManager;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    :cond_0
    :goto_1
    return v2

    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    const-string v4, "com.aspire.g3wlan.client.smart"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "com.aspire.g3wlan.client.smart.G3WLANService"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private updateConfigInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    new-instance v6, Lcom/aspire/g3wlan/client/sdk/biz/b;

    invoke-direct {v6}, Lcom/aspire/g3wlan/client/sdk/biz/b;-><init>()V

    new-instance v0, Lcom/aspire/g3wlan/client/sdk/biz/g;

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->authen:Lcom/aspire/g3wlan/client/sdk/a;

    invoke-virtual {v1}, Lcom/aspire/g3wlan/client/sdk/a;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->authen:Lcom/aspire/g3wlan/client/sdk/a;

    invoke-virtual {v1}, Lcom/aspire/g3wlan/client/sdk/a;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->authen:Lcom/aspire/g3wlan/client/sdk/a;

    invoke-virtual {v1}, Lcom/aspire/g3wlan/client/sdk/a;->c()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/aspire/g3wlan/client/sdk/biz/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/aspire/g3wlan/client/sdk/biz/j;->a(Landroid/content/Context;Lcom/aspire/g3wlan/client/sdk/biz/g;)Lcom/aspire/g3wlan/client/sdk/biz/j;

    move-result-object v0

    new-instance v1, Lcom/aspire/g3wlan/client/sdk/e;

    invoke-direct {v1, p0}, Lcom/aspire/g3wlan/client/sdk/e;-><init>(Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;)V

    invoke-virtual {v6, v1}, Lcom/aspire/g3wlan/client/sdk/biz/b;->a(Lcom/aspire/g3wlan/client/sdk/biz/f;)V

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mContext:Landroid/content/Context;

    const-string v2, "updatetime_DisableChannel"

    invoke-static {v1, v2}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/aspire/g3wlan/client/sdk/biz/b;->a(Lcom/aspire/g3wlan/client/sdk/biz/j;Ljava/lang/String;)V

    return-void
.end method

.method private uploadTerminalInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    new-instance v0, Lcom/aspire/g3wlan/client/sdk/biz/g;

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->authen:Lcom/aspire/g3wlan/client/sdk/a;

    invoke-virtual {v1}, Lcom/aspire/g3wlan/client/sdk/a;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->authen:Lcom/aspire/g3wlan/client/sdk/a;

    invoke-virtual {v1}, Lcom/aspire/g3wlan/client/sdk/a;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->authen:Lcom/aspire/g3wlan/client/sdk/a;

    invoke-virtual {v1}, Lcom/aspire/g3wlan/client/sdk/a;->c()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/aspire/g3wlan/client/sdk/biz/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->terminalInfoManager:Lcom/aspire/g3wlan/client/sdk/n;

    invoke-virtual {v1, v0}, Lcom/aspire/g3wlan/client/sdk/n;->a(Lcom/aspire/g3wlan/client/sdk/biz/g;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public init()Z
    .locals 7

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v0, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->initFlag:I

    if-ne v0, v2, :cond_0

    const-string v0, "\u5df2\u6210\u529f\u521d\u59cb\u5316\uff01"

    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    move v0, v2

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v4, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "EWALK_APPKEY"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "EWALK_CHANNELID"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_2
    sget-object v4, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u6e20\u9053\u7f16\u7801\uff1a"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->isDisabledChannel(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "\u6e20\u9053\u5df2\u5931\u6548\uff01 channelCode="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u6e20\u9053\u5df2\u5931\u6548\uff01 channelCode="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    const/4 v0, -0x2

    iput v0, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->initFlag:I

    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->updateConfigInfo(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    invoke-direct {p0, v4, v1, v0}, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->checkAppKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "APPKEY\u68c0\u9a8c\u6210\u529f\uff0cSDK\u521d\u59cb\u5316\u5b8c\u6210\uff01"

    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    iput v2, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->initFlag:I

    move v0, v2

    goto/16 :goto_0

    :cond_2
    const-string v0, "APPKEY\u68c0\u9a8c\u5931\u8d25\uff01"

    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    :goto_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->initFlag:I

    move v0, v3

    goto/16 :goto_0

    :cond_3
    const-string v0, "PackageName\u4e3a\u7a7a\uff0cinitSDK\u5931\u8d25\uff01"

    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const-string v0, "APPKEY\u4e3a\u7a7a\uff0cinitSDK\u5931\u8d25\uff01"

    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string v0, "\u6e20\u9053\u7f16\u7801\u4e3a\u7a7a\uff0cinitSDK\u5931\u8d25\uff01"

    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public loginCMCC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/aspire/g3wlan/client/sdk/ResultObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aspire/g3wlan/client/sdk/CMCCWifiUninitializedException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v0, "Call loginCMCC!"

    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    const-string v0, "debug--->"

    const-string v1, "Call loginCMCC!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->initFlag:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const-string v0, "debug--->"

    const-string v1, "\u6e20\u9053\u5df2\u5931\u6548"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/aspire/g3wlan/client/sdk/CMCCWifiUninitializedException;

    const-string v1, "\u6e20\u9053\u5df2\u5931\u6548"

    invoke-direct {v0, v1}, Lcom/aspire/g3wlan/client/sdk/CMCCWifiUninitializedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->initFlag:I

    if-eq v0, v2, :cond_1

    const-string v0, "debug--->"

    const-string v1, "\u521d\u59cb\u5316\u672a\u901a\u8fc7"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/aspire/g3wlan/client/sdk/CMCCWifiUninitializedException;

    invoke-direct {v0}, Lcom/aspire/g3wlan/client/sdk/CMCCWifiUninitializedException;-><init>()V

    throw v0

    :cond_1
    const-string v0, "CMCC-AUTO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "debug--->"

    const-string v1, "wifi\u672a\u6253\u5f00"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v0, Lcom/aspire/g3wlan/client/sdk/LoginResult;->NOT_READY:Lcom/aspire/g3wlan/client/sdk/LoginResult;

    :goto_0
    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mCM:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v2, "CMCC-AUTO"

    invoke-static {v0, v1, v2}, Lcom/aspire/g3wlan/client/sdk/p;->a(Landroid/net/ConnectivityManager;Landroid/net/wifi/WifiManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/aspire/g3wlan/client/sdk/LoginResult;->CMCCAUTO_CONNECTED:Lcom/aspire/g3wlan/client/sdk/LoginResult;

    invoke-direct {p0, p1, p2}, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->uploadTerminalInfo(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "CMCC-AUTO"

    invoke-direct {p0, v1, p2}, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->updateConfigInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->doAPConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/aspire/g3wlan/client/sdk/LoginResult;->START_CONNECT_TO_CMCCAUTO:Lcom/aspire/g3wlan/client/sdk/LoginResult;

    new-instance v1, Lcom/aspire/g3wlan/client/sdk/d;

    invoke-direct {v1, p0, p1, p2}, Lcom/aspire/g3wlan/client/sdk/d;-><init>(Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;Ljava/lang/String;Ljava/lang/String;)V

    iput v3, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->checkCMCCAUTOConnection:I

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mCM:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v0, v1, p1}, Lcom/aspire/g3wlan/client/sdk/p;->a(Landroid/net/ConnectivityManager;Landroid/net/wifi/WifiManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->checkIsLoginned()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p1, p2}, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->uploadTerminalInfo(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->updateConfigInfo(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/aspire/g3wlan/client/sdk/LoginResult;->ALREADY_LOGIN:Lcom/aspire/g3wlan/client/sdk/LoginResult;

    goto :goto_0

    :cond_6
    invoke-direct {p0, p2, p3, p4}, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->doLogin(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_7

    const-string v0, "login success...!!!"

    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->uploadTerminalInfo(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->updateConfigInfo(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/aspire/g3wlan/client/sdk/LoginResult;->LOGIN_SUCCESS:Lcom/aspire/g3wlan/client/sdk/LoginResult;

    goto :goto_0

    :cond_7
    if-nez v0, :cond_8

    const-string v0, "cancelLogin success...!!!"

    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/aspire/g3wlan/client/sdk/LoginResult;->LOGIN_CANCELLED:Lcom/aspire/g3wlan/client/sdk/LoginResult;

    goto :goto_0

    :cond_8
    const-string v0, "login failed...!!!"

    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->authen:Lcom/aspire/g3wlan/client/sdk/a;

    invoke-virtual {v0}, Lcom/aspire/g3wlan/client/sdk/a;->j()I

    move-result v1

    new-instance v0, Lcom/aspire/g3wlan/client/sdk/LoginResult;

    invoke-direct {v0}, Lcom/aspire/g3wlan/client/sdk/LoginResult;-><init>()V

    invoke-virtual {v0, v3}, Lcom/aspire/g3wlan/client/sdk/ResultObject;->setSuccess(Z)V

    invoke-virtual {v0, v1}, Lcom/aspire/g3wlan/client/sdk/ResultObject;->setCode(I)V

    invoke-static {v1}, Lcom/aspire/g3wlan/client/sdk/h;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aspire/g3wlan/client/sdk/ResultObject;->setMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public logoutCMCC(Ljava/lang/String;)Lcom/aspire/g3wlan/client/sdk/ResultObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aspire/g3wlan/client/sdk/CMCCWifiUninitializedException;
        }
    .end annotation

    const/4 v3, -0x1

    const-string v0, "Call logoutCMCC!"

    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->initFlag:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/aspire/g3wlan/client/sdk/CMCCWifiUninitializedException;

    invoke-direct {v0}, Lcom/aspire/g3wlan/client/sdk/CMCCWifiUninitializedException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mCM:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v0, v1, p1}, Lcom/aspire/g3wlan/client/sdk/p;->a(Landroid/net/ConnectivityManager;Landroid/net/wifi/WifiManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "CMCC-AUTO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v0, p1}, Lcom/aspire/g3wlan/client/sdk/p;->a(Landroid/net/wifi/WifiManager;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v2, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v2, v3, :cond_1

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    :cond_1
    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v0, p1}, Lcom/aspire/g3wlan/client/sdk/p;->a(Landroid/net/wifi/WifiManager;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-eqz v1, :cond_2

    iget v2, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v2, v3, :cond_2

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    :cond_2
    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->terminalInfoManager:Lcom/aspire/g3wlan/client/sdk/n;

    invoke-virtual {v0, p1}, Lcom/aspire/g3wlan/client/sdk/n;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/aspire/g3wlan/client/sdk/l;->a:Lcom/aspire/g3wlan/client/sdk/l;

    :goto_0
    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mContext:Landroid/content/Context;

    const-string v1, "logoutUrl"

    invoke-static {v0, v1}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mContext:Landroid/content/Context;

    const-string v2, "logoutReq"

    invoke-static {v1, v2}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mContext:Landroid/content/Context;

    const-string v3, "cookie"

    invoke-static {v2, v3}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->authen:Lcom/aspire/g3wlan/client/sdk/a;

    invoke-virtual {v3, v2}, Lcom/aspire/g3wlan/client/sdk/a;->a(Ljava/lang/String;)V

    if-eqz v0, :cond_4

    const-string v2, ""

    if-eq v0, v2, :cond_4

    if-eqz v1, :cond_4

    const-string v2, ""

    if-ne v1, v2, :cond_5

    :cond_4
    const-string v0, "logout failed...!!!"

    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/aspire/g3wlan/client/sdk/l;->c:Lcom/aspire/g3wlan/client/sdk/l;

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->authen:Lcom/aspire/g3wlan/client/sdk/a;

    invoke-virtual {v2, v0, v1}, Lcom/aspire/g3wlan/client/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "logout success...!!!"

    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->terminalInfoManager:Lcom/aspire/g3wlan/client/sdk/n;

    invoke-virtual {v0, p1}, Lcom/aspire/g3wlan/client/sdk/n;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/aspire/g3wlan/client/sdk/l;->a:Lcom/aspire/g3wlan/client/sdk/l;

    goto :goto_0

    :cond_6
    const-string v0, "logout failed...!!!"

    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->authen:Lcom/aspire/g3wlan/client/sdk/a;

    invoke-virtual {v0}, Lcom/aspire/g3wlan/client/sdk/a;->j()I

    move-result v1

    new-instance v0, Lcom/aspire/g3wlan/client/sdk/l;

    invoke-direct {v0}, Lcom/aspire/g3wlan/client/sdk/l;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/aspire/g3wlan/client/sdk/ResultObject;->setSuccess(Z)V

    invoke-virtual {v0, v1}, Lcom/aspire/g3wlan/client/sdk/ResultObject;->setCode(I)V

    invoke-static {v1}, Lcom/aspire/g3wlan/client/sdk/h;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aspire/g3wlan/client/sdk/ResultObject;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/aspire/g3wlan/client/sdk/l;->b:Lcom/aspire/g3wlan/client/sdk/l;

    goto :goto_0
.end method
