.class public final Lcom/aspire/g3wlan/client/sdk/biz/i;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/aspire/g3wlan/client/sdk/biz/j;Lcom/aspire/g3wlan/client/sdk/biz/l;)Lorg/w3c/dom/Document;
    .locals 5

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    const-string v1, "root"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-static {v0, v1, p0}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lcom/aspire/g3wlan/client/sdk/biz/j;)Lorg/w3c/dom/Node;

    const-string v2, "terminalInfo"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, "terminalType"

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_0
    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, "imei"

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1
    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, "ua"

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_2
    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->d()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    const-string v3, "screen"

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_3
    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->e()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    const-string v3, "osPlatform"

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_4
    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->f()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    const-string v3, "osVersion"

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_5
    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->g()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    const-string v3, "appVersion"

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_6
    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->h()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    const-string v3, "appName"

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_7
    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->i()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    const-string v3, "provinceId"

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->i()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_8
    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->j()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_9

    const-string v3, "channelCode"

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_9
    const-string v2, "wlanInfo"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->k()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_a

    const-string v3, "wlanSsid"

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_a
    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->l()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_b

    const-string v3, "wlanRssi"

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->l()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_b
    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->m()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_c

    const-string v3, "wlanAcName"

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->m()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_c
    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->n()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_d

    const-string v3, "wlanUserIp"

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->n()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_d
    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->o()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_e

    const-string v3, "wlanAcIp"

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->o()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_e
    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->p()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_f

    const-string v3, "wlanNasid"

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->p()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_f
    const-string v2, "loginInfo"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->q()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_10

    const-string v3, "mobileNo"

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->q()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_10
    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->r()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_11

    const-string v3, "imsi"

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->r()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_11
    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->s()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_12

    const-string v3, "iccid"

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->s()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_12
    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->t()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_13

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_13

    const-string v3, "loginTime"

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->t()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_13
    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->u()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_14

    const-string v3, "logoutTime"

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->u()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_14
    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->v()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->v()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_15

    const-string v3, "resUsage"

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->v()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_15
    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->w()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_16

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_16

    const-string v3, "totalFlow"

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->w()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_16
    const-string v2, "locationInfo"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->x()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_17

    const-string v1, "longitude"

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->x()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_17
    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->y()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_18

    const-string v1, "latitude"

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->y()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_18
    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->z()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_19

    const-string v1, "cid"

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->z()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_19
    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->A()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1a

    const-string v1, "lac"

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->A()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1a
    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->B()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1b

    const-string v1, "lfc"

    invoke-virtual {p1}, Lcom/aspire/g3wlan/client/sdk/biz/l;->B()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1b
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/aspire/g3wlan/client/sdk/biz/j;Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 3

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    const-string v1, "root"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-static {v0, v1, p0}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lcom/aspire/g3wlan/client/sdk/biz/j;)Lorg/w3c/dom/Node;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "lastTime"

    invoke-static {v0, v2, p1}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;
    .locals 2

    invoke-interface {p0, p1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_0
    return-object v0
.end method

.method private static a(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lcom/aspire/g3wlan/client/sdk/biz/j;)Lorg/w3c/dom/Node;
    .locals 3

    const-string v0, "requestHeader"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    const-string v1, "sequence"

    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v1, "version"

    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v1, "timestamp"

    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v1, "terminalType"

    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "mobileNo"

    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_0
    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "iccid"

    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1
    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "imsi"

    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_2
    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, "imei"

    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_3
    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    const-string v1, "ua"

    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_4
    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    const-string v1, "screen"

    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_5
    const-string v1, "osPlatform"

    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v1, "osVersion"

    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v1, "appVersion"

    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v1, "appName"

    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->o()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    const-string v1, "wlanSsid"

    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->o()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_6
    const-string v1, "provinceId"

    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->q()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    const-string v1, "wlanRssi"

    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->q()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_7
    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->r()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    const-string v1, "wlanAcName"

    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->r()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_8
    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->s()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    const-string v1, "wlanUserIp"

    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_9
    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->t()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_a

    const-string v1, "wlanAcIp"

    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->t()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_a
    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->u()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b

    const-string v1, "wlanNasid"

    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->u()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_b
    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->v()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_c

    const-string v1, "lac"

    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->v()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_c
    const-string v1, "channelCode"

    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->w()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v1, "ak"

    invoke-virtual {p2}, Lcom/aspire/g3wlan/client/sdk/biz/j;->x()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/aspire/g3wlan/client/sdk/biz/i;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object v0
.end method
