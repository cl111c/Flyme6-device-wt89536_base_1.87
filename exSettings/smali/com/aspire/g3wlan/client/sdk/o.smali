.class final Lcom/aspire/g3wlan/client/sdk/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aspire/g3wlan/client/sdk/biz/f;


# instance fields
.field final synthetic a:Lcom/aspire/g3wlan/client/sdk/n;


# direct methods
.method constructor <init>(Lcom/aspire/g3wlan/client/sdk/n;)V
    .locals 0

    iput-object p1, p0, Lcom/aspire/g3wlan/client/sdk/o;->a:Lcom/aspire/g3wlan/client/sdk/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/aspire/g3wlan/client/sdk/biz/k;Ljava/lang/Object;)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TerminalInfoManager:Upload TerminalInfo result "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/k;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/k;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    const-string v0, "TerminalInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Upload TerminalInfo result "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/k;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/k;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "TerminalInfoManager:ResponseHeader is null!"

    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    const-string v0, "TerminalInfoManager"

    const-string v1, "ResponseHeader is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
