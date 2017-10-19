.class public final Lcom/aspire/g3wlan/client/sdk/biz/e;
.super Lcom/aspire/g3wlan/client/sdk/biz/a;


# instance fields
.field private c:Ljava/util/List;

.field private d:Lcom/aspire/g3wlan/client/sdk/biz/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/aspire/g3wlan/client/sdk/biz/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aspire/g3wlan/client/sdk/biz/e;->c:Ljava/util/List;

    new-instance v0, Lcom/aspire/g3wlan/client/sdk/biz/d;

    invoke-direct {v0}, Lcom/aspire/g3wlan/client/sdk/biz/d;-><init>()V

    iput-object v0, p0, Lcom/aspire/g3wlan/client/sdk/biz/e;->d:Lcom/aspire/g3wlan/client/sdk/biz/d;

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/biz/e;->c:Ljava/util/List;

    return-object v0
.end method

.method public final endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/aspire/g3wlan/client/sdk/biz/a;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/biz/e;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/biz/e;->d:Lcom/aspire/g3wlan/client/sdk/biz/d;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "name"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/biz/e;->d:Lcom/aspire/g3wlan/client/sdk/biz/d;

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/biz/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aspire/g3wlan/client/sdk/biz/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "value"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/biz/e;->d:Lcom/aspire/g3wlan/client/sdk/biz/d;

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/biz/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aspire/g3wlan/client/sdk/biz/d;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "updateTime"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/biz/e;->d:Lcom/aspire/g3wlan/client/sdk/biz/d;

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/biz/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aspire/g3wlan/client/sdk/biz/d;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lcom/aspire/g3wlan/client/sdk/biz/a;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    const-string v0, "config"

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/biz/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/aspire/g3wlan/client/sdk/biz/d;

    invoke-direct {v0}, Lcom/aspire/g3wlan/client/sdk/biz/d;-><init>()V

    iput-object v0, p0, Lcom/aspire/g3wlan/client/sdk/biz/e;->d:Lcom/aspire/g3wlan/client/sdk/biz/d;

    :cond_0
    return-void
.end method
