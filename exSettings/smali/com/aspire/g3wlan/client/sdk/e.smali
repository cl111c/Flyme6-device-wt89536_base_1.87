.class final Lcom/aspire/g3wlan/client/sdk/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aspire/g3wlan/client/sdk/biz/f;


# instance fields
.field final synthetic a:Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;


# direct methods
.method constructor <init>(Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;)V
    .locals 0

    iput-object p1, p0, Lcom/aspire/g3wlan/client/sdk/e;->a:Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/aspire/g3wlan/client/sdk/biz/k;Ljava/lang/Object;)V
    .locals 4

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/k;->a()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    check-cast p2, Lcom/aspire/g3wlan/client/sdk/biz/e;

    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/e;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aspire/g3wlan/client/sdk/biz/d;

    const-string v2, "CMCCWIFIAndroidSDK_DisableChannel"

    invoke-virtual {v0}, Lcom/aspire/g3wlan/client/sdk/biz/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/aspire/g3wlan/client/sdk/biz/d;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aspire/g3wlan/client/sdk/e;->a:Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

    # getter for: Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->access$10(Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "updatetime_DisableChannel"

    invoke-static {v2, v3, v1}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/e;->a:Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

    # getter for: Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->access$10(Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "CMCCWIFIAndroidSDK_DisableChannel"

    invoke-virtual {v0}, Lcom/aspire/g3wlan/client/sdk/biz/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
