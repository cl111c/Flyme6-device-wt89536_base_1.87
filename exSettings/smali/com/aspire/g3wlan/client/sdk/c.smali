.class final Lcom/aspire/g3wlan/client/sdk/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;


# direct methods
.method constructor <init>(Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;)V
    .locals 0

    iput-object p1, p0, Lcom/aspire/g3wlan/client/sdk/c;->a:Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/c;->a:Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

    invoke-static {p2}, Lcom/aspire/g3wlan/client/a/b;->a(Landroid/os/IBinder;)Lcom/aspire/g3wlan/client/a/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->access$0(Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;Lcom/aspire/g3wlan/client/a/a;)V

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/c;->a:Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

    # getter for: Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->packageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->access$1(Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/c;->a:Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

    # getter for: Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mEasyService:Lcom/aspire/g3wlan/client/a/a;
    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->access$2(Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;)Lcom/aspire/g3wlan/client/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/c;->a:Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

    # getter for: Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->packageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->access$1(Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aspire/g3wlan/client/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/c;->a:Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->access$3(Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/c;->a:Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->access$0(Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;Lcom/aspire/g3wlan/client/a/a;)V

    return-void
.end method
