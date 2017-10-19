.class final Lcom/aspire/g3wlan/client/sdk/d;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aspire/g3wlan/client/sdk/d;->a:Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

    iput-object p2, p0, Lcom/aspire/g3wlan/client/sdk/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/aspire/g3wlan/client/sdk/d;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :cond_0
    const-wide/16 v0, 0x2710

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/d;->a:Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

    # getter for: Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mCM:Landroid/net/ConnectivityManager;
    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->access$4(Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/d;->a:Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

    # getter for: Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->access$5(Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aspire/g3wlan/client/sdk/p;->a(Landroid/net/ConnectivityManager;Landroid/net/wifi/WifiManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CMCC-AUTO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/d;->a:Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/d;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/aspire/g3wlan/client/sdk/d;->c:Ljava/lang/String;

    # invokes: Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->uploadTerminalInfo(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->access$6(Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/d;->a:Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/d;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/aspire/g3wlan/client/sdk/d;->c:Ljava/lang/String;

    # invokes: Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->updateConfigInfo(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->access$7(Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_2
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/d;->a:Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

    # getter for: Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->checkCMCCAUTOConnection:I
    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->access$8(Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->access$9(Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;I)V

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/d;->a:Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

    # getter for: Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->checkCMCCAUTOConnection:I
    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->access$8(Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    goto :goto_1
.end method
