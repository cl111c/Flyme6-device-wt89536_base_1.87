.class public final Lcom/aspire/g3wlan/client/sdk/a;
.super Ljava/lang/Object;


# instance fields
.field private A:I

.field private a:Ljava/util/Map;

.field private b:Lcom/aspire/g3wlan/client/sdk/i;

.field private c:I

.field private d:Lcom/aspire/g3wlan/client/sdk/f;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private final q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private final z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->a:Ljava/util/Map;

    const/4 v0, 0x2

    iput v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->c:I

    sget-object v0, Lcom/aspire/g3wlan/client/sdk/f;->b:Lcom/aspire/g3wlan/client/sdk/f;

    iput-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->d:Lcom/aspire/g3wlan/client/sdk/f;

    const-string v0, "cmcccs"

    iput-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->e:Ljava/lang/String;

    const-string v0, "login_req"

    iput-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->f:Ljava/lang/String;

    const-string v0, "login_res"

    iput-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->g:Ljava/lang/String;

    const-string v0, "offline_res"

    iput-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->h:Ljava/lang/String;

    const-string v0, "|"

    iput-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->i:Ljava/lang/String;

    const-string v0, "applypwd_res"

    iput-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->j:Ljava/lang/String;

    const-string v0, "https"

    iput-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->k:Ljava/lang/String;

    const-string v0, "http://www.baidu.com"

    iput-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->l:Ljava/lang/String;

    const-string v0, "www.baidu.com"

    iput-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->m:Ljava/lang/String;

    const-string v0, "https://221.176.1.140/wlan/index.php"

    iput-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->n:Ljava/lang/String;

    const-string v0, "https://221.176.1.140/wlan/index.php"

    iput-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->o:Ljava/lang/String;

    const-string v0, "https://221.176.1.140/wlan/index.php"

    iput-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->p:Ljava/lang/String;

    const-string v0, "portalurl"

    iput-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->q:Ljava/lang/String;

    const-string v0, "wlanacname"

    iput-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->r:Ljava/lang/String;

    const-string v0, "wlanuserip"

    iput-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->s:Ljava/lang/String;

    const-string v0, "wlanacip"

    iput-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->t:Ljava/lang/String;

    const-string v0, "ssid"

    iput-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->u:Ljava/lang/String;

    const-string v0, "USER"

    iput-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->v:Ljava/lang/String;

    const-string v0, "PWD"

    iput-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->w:Ljava/lang/String;

    const-string v0, "clienttype"

    iput-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->x:Ljava/lang/String;

    const-string v0, "actiontype"

    iput-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->y:Ljava/lang/String;

    const-string v0, "loginform"

    iput-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->z:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->A:I

    new-instance v0, Lcom/aspire/g3wlan/client/sdk/i;

    invoke-direct {v0}, Lcom/aspire/g3wlan/client/sdk/i;-><init>()V

    iput-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->b:Lcom/aspire/g3wlan/client/sdk/i;

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "www.baidu.com"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://news.baidu.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const-string v0, "AnthenPortal"

    const-string v1, "Already loginned!~"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Already loginned!~"

    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 11

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v10, -0x1

    :goto_0
    const-string v0, "AuthenPortal"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "guide response:\r\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "guide response:\r\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    const-string v0, "cmcccs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "|login_req"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v10, :cond_0

    const-string v0, "loginform"

    invoke-direct {p0, p1, v0}, Lcom/aspire/g3wlan/client/sdk/a;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_1
    return v0

    :cond_0
    if-eqz p1, :cond_5

    invoke-static {p1}, Lcom/aspire/g3wlan/client/sdk/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/aspire/g3wlan/client/sdk/a;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "portalurl"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/a;->r:Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/aspire/g3wlan/client/sdk/a;->s:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v8, p0, Lcom/aspire/g3wlan/client/sdk/a;->u:Ljava/lang/String;

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v0, "?"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->r:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v9, "="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->s:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/a;->u:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_4

    :cond_2
    :goto_3
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b

    invoke-direct {p0}, Lcom/aspire/g3wlan/client/sdk/a;->k()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v0, "cancelled before send redirect request in processRedirectData."

    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    move v0, v4

    goto/16 :goto_1

    :cond_3
    move-object v0, v5

    goto :goto_2

    :cond_4
    const-string v0, "window.location.href"

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v10, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v10, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_7

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    const-string v0, "\""

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "\""

    invoke-virtual {v2, v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    move v1, v0

    move v0, v6

    :goto_4
    if-le v1, v0, :cond_7

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_5
    if-nez v0, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<nexturl>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "</nexturl>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v10, :cond_8

    if-eq v1, v10, :cond_8

    add-int/lit8 v0, v0, 0x9

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_6
    if-nez v0, :cond_2

    :cond_5
    move-object v0, v5

    goto/16 :goto_3

    :cond_6
    const-string v0, ";"

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    move v1, v0

    move v0, v4

    goto :goto_4

    :cond_7
    move-object v0, v5

    goto :goto_5

    :cond_8
    move-object v0, v5

    goto :goto_6

    :cond_9
    const-string v1, "AuthenPortal"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "redirect url is:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AuthenPortal  redirect url is:\r\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/a;->b:Lcom/aspire/g3wlan/client/sdk/i;

    invoke-virtual {v1, v0}, Lcom/aspire/g3wlan/client/sdk/i;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->b:Lcom/aspire/g3wlan/client/sdk/i;

    invoke-virtual {v0}, Lcom/aspire/g3wlan/client/sdk/i;->b()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_a
    sget v0, Lcom/aspire/g3wlan/client/sdk/g;->a:I

    iput v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->A:I

    move v0, v4

    goto/16 :goto_1

    :cond_b
    move v0, v4

    goto/16 :goto_1
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/aspire/g3wlan/client/sdk/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "gb2312"

    invoke-static {v0, v3}, Lorg/htmlparser/Parser;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/htmlparser/Parser;

    move-result-object v0

    new-instance v3, Lcom/aspire/g3wlan/client/sdk/b;

    invoke-direct {v3, p0, p2}, Lcom/aspire/g3wlan/client/sdk/b;-><init>(Lcom/aspire/g3wlan/client/sdk/a;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0, v3}, Lorg/htmlparser/Parser;->a(Lorg/htmlparser/d;)Lorg/htmlparser/util/h;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/htmlparser/util/h;->a()I

    move-result v3

    if-lez v3, :cond_5

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/htmlparser/util/h;->a(I)Lorg/htmlparser/b;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/e/k;

    iget-object v3, p0, Lcom/aspire/g3wlan/client/sdk/a;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    invoke-virtual {v0}, Lorg/htmlparser/e/k;->t()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    move v4, v1

    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    move v3, v1

    :goto_1
    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/aspire/g3wlan/client/sdk/a;->a:Ljava/util/Map;

    const-string v4, "action"

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Lorg/htmlparser/e/k;->s()Lorg/htmlparser/util/h;

    move-result-object v4

    move v3, v2

    :goto_2
    invoke-virtual {v4}, Lorg/htmlparser/util/h;->a()I

    move-result v0

    if-lt v3, v0, :cond_3

    move v0, v1

    :goto_3
    return v0

    :cond_1
    move v4, v2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v3}, Lorg/htmlparser/util/h;->a(I)Lorg/htmlparser/b;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/e/r;

    const-string v5, "name"

    invoke-virtual {v0, v5}, Lorg/htmlparser/e/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "value"

    invoke-virtual {v0, v6}, Lorg/htmlparser/e/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v5, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/aspire/g3wlan/client/sdk/a;->x:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/aspire/g3wlan/client/sdk/a;->a:Ljava/util/Map;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/htmlparser/util/j; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/htmlparser/util/j;->printStackTrace()V

    move v0, v2

    goto :goto_3
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const/4 v0, -0x1

    const-string v1, "|"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v0, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v2

    const-string v2, "AuthenPortal"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid response code: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid response code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "<!--"

    const-string v1, "-->"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    array-length v4, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    aget-object v5, v2, v0

    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private static e(Ljava/lang/String;)Ljava/util/Map;
    .locals 6

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gb2312"

    invoke-static {v0, v1}, Lorg/htmlparser/Parser;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/htmlparser/Parser;

    move-result-object v0

    new-instance v1, Lorg/htmlparser/a/a;

    const-class v3, Lorg/htmlparser/e/r;

    invoke-direct {v1, v3}, Lorg/htmlparser/a/a;-><init>(Ljava/lang/Class;)V

    :try_start_0
    invoke-virtual {v0, v1}, Lorg/htmlparser/Parser;->b(Lorg/htmlparser/d;)Lorg/htmlparser/util/h;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Lorg/htmlparser/util/h;->a()I

    move-result v0

    if-lt v1, v0, :cond_0

    :goto_1
    return-object v2

    :cond_0
    invoke-virtual {v3, v1}, Lorg/htmlparser/util/h;->a(I)Lorg/htmlparser/b;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/e/r;

    const-string v4, "name"

    invoke-virtual {v0, v4}, Lorg/htmlparser/e/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "value"

    invoke-virtual {v0, v5}, Lorg/htmlparser/e/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/htmlparser/util/j; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/htmlparser/util/j;->printStackTrace()V

    goto :goto_1
.end method

.method private k()Z
    .locals 3

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/a;->d:Lcom/aspire/g3wlan/client/sdk/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/aspire/g3wlan/client/sdk/f;->a:Lcom/aspire/g3wlan/client/sdk/f;

    iget-object v2, p0, Lcom/aspire/g3wlan/client/sdk/a;->d:Lcom/aspire/g3wlan/client/sdk/f;

    if-ne v0, v2, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 10

    invoke-direct {p0}, Lcom/aspire/g3wlan/client/sdk/a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AuthenPortal"

    const-string v1, "cancelled before requestGuidePage."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "cancelled before requestGuidePage."

    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v1, "http://www.baidu.com"

    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lcom/aspire/g3wlan/client/sdk/a;->c:I

    if-lt v0, v2, :cond_1

    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_5

    const-string v0, "AuthenPortal"

    const-string v1, "Fail to get Guide Page html!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Fail to get Guide Page html!"

    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/aspire/g3wlan/client/sdk/a;->k()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "cancelled in requestGuidePage."

    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/aspire/g3wlan/client/sdk/a;->b:Lcom/aspire/g3wlan/client/sdk/i;

    invoke-virtual {v2, v1}, Lcom/aspire/g3wlan/client/sdk/i;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    iget v2, p0, Lcom/aspire/g3wlan/client/sdk/a;->c:I

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_4

    sget v0, Lcom/aspire/g3wlan/client/sdk/g;->a:I

    iput v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->A:I

    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/aspire/g3wlan/client/sdk/a;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "AuthenPortal"

    const-string v1, "cancelled before processGuideData."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "cancelled before processGuideData."

    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->b:Lcom/aspire/g3wlan/client/sdk/i;

    invoke-virtual {v0}, Lcom/aspire/g3wlan/client/sdk/i;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/a;->b:Lcom/aspire/g3wlan/client/sdk/i;

    invoke-virtual {v1}, Lcom/aspire/g3wlan/client/sdk/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aspire/g3wlan/client/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "AnthenPortal"

    const-string v1, "Already loginned!~"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Already loginned!~"

    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    const/4 v0, 0x2

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->b:Lcom/aspire/g3wlan/client/sdk/i;

    invoke-virtual {v0}, Lcom/aspire/g3wlan/client/sdk/i;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aspire/g3wlan/client/sdk/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "AnthenPortal"

    const-string v1, "Fail to get Guide Parameters from Guide page!~"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Fail to get Guide Parameters from Guide page!~"

    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    const/4 v0, -0x1

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/aspire/g3wlan/client/sdk/a;->k()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "AuthenPortal"

    const-string v1, "cancelled before requestAuth."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "cancelled before requestAuth."

    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_9
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->a:Ljava/util/Map;

    const-string v1, "action"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->o:Ljava/lang/String;

    :cond_a
    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->o:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/aspire/g3wlan/client/sdk/a;->v:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aspire/g3wlan/client/sdk/a;->w:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/aspire/g3wlan/client/sdk/a;->v:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aspire/g3wlan/client/sdk/a;->w:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=******"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/aspire/g3wlan/client/sdk/a;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v0

    move v3, v1

    :cond_b
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "&pwdtype="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "&pwdtype="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez v2, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/a;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=LOGIN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/a;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=LOGIN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/a;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=UE,Android,1.0.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/a;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=UE,Android,1.0.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez v3, :cond_d

    const-string v0, "&forceflag=1"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&forceflag=1"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_d
    const-string v0, "AuthenPortal"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "login request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aspire/g3wlan/client/sdk/a;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "login request: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/a;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_4
    iget v1, p0, Lcom/aspire/g3wlan/client/sdk/a;->c:I

    if-lt v0, v1, :cond_16

    const/4 v0, 0x0

    :goto_5
    if-nez v0, :cond_1a

    const-string v0, "AuthenPortal"

    const-string v1, "Fail to request Portal authentication!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Fail to request Portal authentication!"

    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    const/4 v0, -0x1

    goto/16 :goto_0

    :cond_e
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/a;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v8, p0, Lcom/aspire/g3wlan/client/sdk/a;->v:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    :cond_f
    if-eqz v0, :cond_10

    iget-object v8, p0, Lcom/aspire/g3wlan/client/sdk/a;->w:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    :cond_10
    if-eqz v0, :cond_11

    iget-object v8, p0, Lcom/aspire/g3wlan/client/sdk/a;->y:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    if-eqz v1, :cond_11

    const/4 v2, 0x1

    :cond_11
    if-eqz v0, :cond_12

    const-string v8, "pwdtype"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    :cond_12
    if-eqz v0, :cond_14

    iget-object v8, p0, Lcom/aspire/g3wlan/client/sdk/a;->y:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    if-eqz v1, :cond_13

    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    :cond_13
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aspire/g3wlan/client/sdk/a;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=LOGIN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aspire/g3wlan/client/sdk/a;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=LOGIN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v0

    goto/16 :goto_3

    :cond_14
    if-eqz v0, :cond_15

    const-string v8, "forceflag"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    const/4 v1, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "&"

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "=1"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "&"

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "=1"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v3, v1

    goto/16 :goto_3

    :cond_15
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "&"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "&"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    :cond_16
    invoke-direct {p0}, Lcom/aspire/g3wlan/client/sdk/a;->k()Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v0, "cancelled before send login request in requestAuth."

    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto/16 :goto_5

    :cond_17
    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/a;->b:Lcom/aspire/g3wlan/client/sdk/i;

    iget-object v2, p0, Lcom/aspire/g3wlan/client/sdk/a;->o:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v6, v2, v3}, Lcom/aspire/g3wlan/client/sdk/i;->a(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v0, 0x1

    goto/16 :goto_5

    :cond_18
    iget v1, p0, Lcom/aspire/g3wlan/client/sdk/a;->c:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_19

    sget v0, Lcom/aspire/g3wlan/client/sdk/g;->a:I

    iput v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->A:I

    const/4 v0, 0x0

    goto/16 :goto_5

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    :cond_1a
    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->b:Lcom/aspire/g3wlan/client/sdk/i;

    invoke-virtual {v0}, Lcom/aspire/g3wlan/client/sdk/i;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthenPortal"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "login response:\r\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "login response:\r\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    const-string v1, "cmcccs"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "|login_res"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1d

    invoke-static {v1, v0}, Lcom/aspire/g3wlan/client/sdk/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Login failed! error code: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    iput v1, p0, Lcom/aspire/g3wlan/client/sdk/a;->A:I

    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_1e

    const-string v0, "AuthenPortal"

    const-string v1, "Invalid Login Response!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Invalid Login Response!"

    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    const/4 v0, -0x1

    goto/16 :goto_0

    :cond_1b
    const-string v1, "loginform"

    invoke-direct {p0, v0, v1}, Lcom/aspire/g3wlan/client/sdk/a;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "AuthenPortal"

    const-string v1, "extract logout params failed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "extract logout params failed."

    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    :cond_1c
    const/4 v0, 0x1

    goto :goto_6

    :cond_1d
    const-string v0, "AuthenPortal"

    const-string v1, "Invalid Login response."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Invalid Login response."

    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_6

    :cond_1e
    invoke-direct {p0}, Lcom/aspire/g3wlan/client/sdk/a;->k()Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "AuthenPortal"

    const-string v1, "cancelled after login success, ignore!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "cancelled after login success, ignore!"

    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    :cond_1f
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/a;->r:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/a;->r:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->b:Lcom/aspire/g3wlan/client/sdk/i;

    invoke-virtual {v0}, Lcom/aspire/g3wlan/client/sdk/i;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->b:Lcom/aspire/g3wlan/client/sdk/i;

    invoke-virtual {v0}, Lcom/aspire/g3wlan/client/sdk/i;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->b:Lcom/aspire/g3wlan/client/sdk/i;

    invoke-virtual {v0, p1}, Lcom/aspire/g3wlan/client/sdk/i;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/aspire/g3wlan/client/sdk/a;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/aspire/g3wlan/client/sdk/a;->p:Ljava/lang/String;

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "AuthenPortal"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "logout request: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/aspire/g3wlan/client/sdk/a;->p:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "logout request: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/aspire/g3wlan/client/sdk/a;->p:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    iget v3, p0, Lcom/aspire/g3wlan/client/sdk/a;->c:I

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/aspire/g3wlan/client/sdk/a;->b:Lcom/aspire/g3wlan/client/sdk/i;

    iget-object v4, p0, Lcom/aspire/g3wlan/client/sdk/a;->p:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/aspire/g3wlan/client/sdk/i;->a(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    :goto_0
    if-nez v2, :cond_3

    const-string v1, "AuthenPortal"

    const-string v2, "Fail to logout request!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Fail to logout request!"

    invoke-static {v1}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return v0

    :cond_1
    sget v2, Lcom/aspire/g3wlan/client/sdk/g;->a:I

    iput v2, p0, Lcom/aspire/g3wlan/client/sdk/a;->A:I

    :cond_2
    move v2, v0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/aspire/g3wlan/client/sdk/a;->b:Lcom/aspire/g3wlan/client/sdk/i;

    invoke-virtual {v2}, Lcom/aspire/g3wlan/client/sdk/i;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AuthenPortal"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "logout response:\r\n"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "logout response:\r\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    const-string v3, "cmcccs"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "|offline_res"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    invoke-static {v3, v2}, Lcom/aspire/g3wlan/client/sdk/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Logout failed! error code: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    iput v2, p0, Lcom/aspire/g3wlan/client/sdk/a;->A:I

    move v2, v0

    :goto_2
    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_2

    :cond_5
    const-string v2, "AuthenPortal"

    const-string v3, "Invalid Login response."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Invalid Login response."

    invoke-static {v2}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    move v2, v0

    goto :goto_2
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/a;->s:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/a;->s:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/a;->t:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/a;->t:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final e()V
    .locals 2

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/a;->d:Lcom/aspire/g3wlan/client/sdk/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/aspire/g3wlan/client/sdk/f;->b:Lcom/aspire/g3wlan/client/sdk/f;

    iput-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->d:Lcom/aspire/g3wlan/client/sdk/f;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final f()Z
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/aspire/g3wlan/client/sdk/a;->c:I

    if-lt v0, v2, :cond_1

    :cond_0
    :goto_1
    return v1

    :cond_1
    iget-object v2, p0, Lcom/aspire/g3wlan/client/sdk/a;->b:Lcom/aspire/g3wlan/client/sdk/i;

    const-string v3, "http://www.baidu.com"

    invoke-virtual {v2, v3}, Lcom/aspire/g3wlan/client/sdk/i;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->b:Lcom/aspire/g3wlan/client/sdk/i;

    invoke-virtual {v0}, Lcom/aspire/g3wlan/client/sdk/i;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/aspire/g3wlan/client/sdk/a;->b:Lcom/aspire/g3wlan/client/sdk/i;

    invoke-virtual {v2}, Lcom/aspire/g3wlan/client/sdk/i;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    invoke-static {v2, v0}, Lcom/aspire/g3wlan/client/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->b:Lcom/aspire/g3wlan/client/sdk/i;

    invoke-virtual {v0}, Lcom/aspire/g3wlan/client/sdk/i;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->a:Ljava/util/Map;

    const-string v1, "action"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->p:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 7

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v2, 0x0

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/a;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/a;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=LOGOUT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v0, "AuthenPortal"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "logout request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aspire/g3wlan/client/sdk/a;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "logout request: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/a;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/a;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "WLANDIG"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    :goto_1
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/a;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    move v1, v2

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "&"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v1

    goto/16 :goto_0

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    move-object v3, v1

    goto :goto_1
.end method

.method public final j()I
    .locals 2

    iget v0, p0, Lcom/aspire/g3wlan/client/sdk/a;->A:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/aspire/g3wlan/client/sdk/a;->A:I

    return v0
.end method
