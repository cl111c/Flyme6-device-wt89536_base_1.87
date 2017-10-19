.class public Lcom/aspire/g3wlan/client/sdk/biz/a;
.super Lorg/xml/sax/helpers/DefaultHandler;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field private c:Lcom/aspire/g3wlan/client/sdk/biz/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/aspire/g3wlan/client/sdk/biz/k;
    .locals 1

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/biz/a;->c:Lcom/aspire/g3wlan/client/sdk/biz/k;

    return-object v0
.end method

.method public characters([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-eqz p3, :cond_0

    new-array v0, p3, [C

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/biz/a;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aspire/g3wlan/client/sdk/biz/a;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "returnCode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/biz/a;->c:Lcom/aspire/g3wlan/client/sdk/biz/k;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/biz/a;->c:Lcom/aspire/g3wlan/client/sdk/biz/k;

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/biz/a;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aspire/g3wlan/client/sdk/biz/k;->a(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/biz/a;->c:Lcom/aspire/g3wlan/client/sdk/biz/k;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/aspire/g3wlan/client/sdk/biz/k;->a(I)V

    goto :goto_0

    :cond_1
    const-string v0, "errorMessage"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/biz/a;->c:Lcom/aspire/g3wlan/client/sdk/biz/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/biz/a;->c:Lcom/aspire/g3wlan/client/sdk/biz/k;

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/biz/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aspire/g3wlan/client/sdk/biz/k;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "timestamp"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/biz/a;->c:Lcom/aspire/g3wlan/client/sdk/biz/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/biz/a;->c:Lcom/aspire/g3wlan/client/sdk/biz/k;

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/biz/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aspire/g3wlan/client/sdk/biz/k;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iput-object p2, p0, Lcom/aspire/g3wlan/client/sdk/biz/a;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/aspire/g3wlan/client/sdk/biz/a;->b:Ljava/lang/String;

    const-string v0, "responseHeader"

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/biz/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/aspire/g3wlan/client/sdk/biz/k;

    invoke-direct {v0}, Lcom/aspire/g3wlan/client/sdk/biz/k;-><init>()V

    iput-object v0, p0, Lcom/aspire/g3wlan/client/sdk/biz/a;->c:Lcom/aspire/g3wlan/client/sdk/biz/k;

    :cond_0
    return-void
.end method
