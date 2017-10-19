.class final Lcom/aspire/g3wlan/client/sdk/biz/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aspire/a/b/a;


# instance fields
.field final synthetic a:Lcom/aspire/g3wlan/client/sdk/biz/b;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/aspire/g3wlan/client/sdk/biz/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aspire/g3wlan/client/sdk/biz/c;->a:Lcom/aspire/g3wlan/client/sdk/biz/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/aspire/g3wlan/client/sdk/biz/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "ClientConfigHttpCallback handleRequestError"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "arg0:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    arg1:-1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/biz/c;->a:Lcom/aspire/g3wlan/client/sdk/biz/b;

    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/biz/b;->b(Lcom/aspire/g3wlan/client/sdk/biz/b;)Lcom/aspire/g3wlan/client/sdk/biz/f;

    move-result-object v0

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/biz/c;->b:Ljava/lang/String;

    invoke-interface {v0, v3, v3}, Lcom/aspire/g3wlan/client/sdk/biz/f;->a(Lcom/aspire/g3wlan/client/sdk/biz/k;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(IILjava/util/Hashtable;Ljava/io/InputStream;)V
    .locals 6

    const/4 v5, 0x0

    const-string v0, "ClientConfigHttpCallback  handleRequestComplete"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "id:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    arg1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    arg2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    input:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    arg4:0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    if-eqz p4, :cond_2

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p4, v1}, Lcom/aspire/g3wlan/client/sdk/biz/p;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aspire/g3wlan/client/sdk/biz/c;->a:Lcom/aspire/g3wlan/client/sdk/biz/b;

    invoke-static {v2}, Lcom/aspire/g3wlan/client/sdk/biz/b;->a(Lcom/aspire/g3wlan/client/sdk/biz/b;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ClientConfigHttpCallback response="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ClientConfigHttpCallback response="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aspire/g3wlan/client/sdk/biz/o;->a(Ljava/lang/String;)V

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/biz/c;->b:Ljava/lang/String;

    const-string v3, "ClientConfig"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/aspire/g3wlan/client/sdk/biz/e;

    invoke-direct {v1}, Lcom/aspire/g3wlan/client/sdk/biz/e;-><init>()V

    invoke-virtual {v0, v2, v1}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    invoke-virtual {v1}, Lcom/aspire/g3wlan/client/sdk/biz/a;->a()Lcom/aspire/g3wlan/client/sdk/biz/k;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/aspire/g3wlan/client/sdk/biz/k;->a()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/aspire/g3wlan/client/sdk/biz/c;->a:Lcom/aspire/g3wlan/client/sdk/biz/b;

    invoke-static {v2}, Lcom/aspire/g3wlan/client/sdk/biz/b;->b(Lcom/aspire/g3wlan/client/sdk/biz/b;)Lcom/aspire/g3wlan/client/sdk/biz/f;

    move-result-object v2

    iget-object v3, p0, Lcom/aspire/g3wlan/client/sdk/biz/c;->b:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Lcom/aspire/g3wlan/client/sdk/biz/f;->a(Lcom/aspire/g3wlan/client/sdk/biz/k;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/biz/c;->a:Lcom/aspire/g3wlan/client/sdk/biz/b;

    invoke-static {v1}, Lcom/aspire/g3wlan/client/sdk/biz/b;->b(Lcom/aspire/g3wlan/client/sdk/biz/b;)Lcom/aspire/g3wlan/client/sdk/biz/f;

    move-result-object v1

    iget-object v2, p0, Lcom/aspire/g3wlan/client/sdk/biz/c;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/aspire/g3wlan/client/sdk/biz/f;->a(Lcom/aspire/g3wlan/client/sdk/biz/k;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/aspire/g3wlan/client/sdk/biz/c;->a:Lcom/aspire/g3wlan/client/sdk/biz/b;

    invoke-static {v0}, Lcom/aspire/g3wlan/client/sdk/biz/b;->b(Lcom/aspire/g3wlan/client/sdk/biz/b;)Lcom/aspire/g3wlan/client/sdk/biz/f;

    move-result-object v0

    iget-object v1, p0, Lcom/aspire/g3wlan/client/sdk/biz/c;->b:Ljava/lang/String;

    invoke-interface {v0, v5, v5}, Lcom/aspire/g3wlan/client/sdk/biz/f;->a(Lcom/aspire/g3wlan/client/sdk/biz/k;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method
