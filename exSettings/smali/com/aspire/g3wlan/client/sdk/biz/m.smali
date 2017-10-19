.class public final Lcom/aspire/g3wlan/client/sdk/biz/m;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/aspire/g3wlan/client/sdk/biz/f;

.field private c:Lcom/aspire/a/a/a/d;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UploadTerminalInfoHelper"

    iput-object v0, p0, Lcom/aspire/g3wlan/client/sdk/biz/m;->a:Ljava/lang/String;

    const-string v0, "upload_terminal_info"

    iput-object v0, p0, Lcom/aspire/g3wlan/client/sdk/biz/m;->d:Ljava/lang/String;

    const-string v0, "http://admin.g3quay.net/interface/uploadClientInfo.service"

    iput-object v0, p0, Lcom/aspire/g3wlan/client/sdk/biz/m;->e:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/aspire/g3wlan/client/sdk/biz/m;->f:I

    new-instance v0, Lcom/aspire/a/a/a/d;

    invoke-direct {v0}, Lcom/aspire/a/a/a/d;-><init>()V

    iput-object v0, p0, Lcom/aspire/g3wlan/client/sdk/biz/m;->c:Lcom/aspire/a/a/a/d;

    return-void
.end method

.method static synthetic a(Lcom/aspire/g3wlan/client/sdk/biz/m;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/biz/m;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/aspire/g3wlan/client/sdk/biz/m;)Lcom/aspire/g3wlan/client/sdk/biz/f;
    .locals 1

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/biz/m;->b:Lcom/aspire/g3wlan/client/sdk/biz/f;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/aspire/g3wlan/client/sdk/biz/f;)V
    .locals 0

    iput-object p1, p0, Lcom/aspire/g3wlan/client/sdk/biz/m;->b:Lcom/aspire/g3wlan/client/sdk/biz/f;

    return-void
.end method

.method public final a(Lcom/aspire/g3wlan/client/sdk/biz/j;Lcom/aspire/g3wlan/client/sdk/biz/l;)V
    .locals 5

    :try_start_0
    invoke-static {p1, p2}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lcom/aspire/g3wlan/client/sdk/biz/j;Lcom/aspire/g3wlan/client/sdk/biz/l;)Lorg/w3c/dom/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/biz/p;->a(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/aspire/g3wlan/client/sdk/biz/m;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":uploadInfo data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/biz/m;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "uploadInfo data="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/aspire/g3wlan/client/sdk/biz/n;

    const-string v2, "upload_terminal_info"

    invoke-direct {v1, p0, v2}, Lcom/aspire/g3wlan/client/sdk/biz/n;-><init>(Lcom/aspire/g3wlan/client/sdk/biz/m;Ljava/lang/String;)V

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    const-string v3, "Content-Type"

    const-string v4, "UTF-8"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/aspire/g3wlan/client/sdk/biz/m;->c:Lcom/aspire/a/a/a/d;

    invoke-virtual {v3}, Lcom/aspire/a/a/a/d;->a()V

    iget-object v3, p0, Lcom/aspire/g3wlan/client/sdk/biz/m;->c:Lcom/aspire/a/a/a/d;

    const-string v4, "http://admin.g3quay.net/interface/uploadClientInfo.service"

    invoke-virtual {v3, v4, v2, v0, v1}, Lcom/aspire/a/a/a/d;->a(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;Lcom/aspire/a/b/a;)I

    move-result v0

    iput v0, p0, Lcom/aspire/g3wlan/client/sdk/biz/m;->f:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
