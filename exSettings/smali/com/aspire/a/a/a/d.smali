.class public final Lcom/aspire/a/a/a/d;
.super Lcom/aspire/a/a/a/a;


# instance fields
.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/aspire/a/a/a/a;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lorg/a/a/b;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    :try_start_0
    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "&"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    :goto_0
    if-lt v0, v3, :cond_0

    new-instance v0, Lorg/a/a/a/a/a;

    invoke-direct {v0}, Lorg/a/a/a/a/a;-><init>()V

    :goto_1
    return-object v0

    :cond_0
    new-instance v4, Lorg/a/a/e/b;

    invoke-direct {v4}, Lorg/a/a/e/b;-><init>()V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/a/a/c/b;

    invoke-direct {v0}, Lorg/a/a/c/b;-><init>()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/aspire/a/a/a/d;->b:Lcom/aspire/a/c/a;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/aspire/a/c/a;->a(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :cond_2
    :try_start_1
    new-instance v0, Lorg/a/a/c/b;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/a/a/c/b;-><init>(B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;Lcom/aspire/a/b/a;)I
    .locals 8

    const/4 v0, 0x0

    iget v1, p0, Lcom/aspire/a/a/a/d;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/aspire/a/a/a/d;->d:I

    new-instance v2, Lorg/a/a/d/a/b;

    invoke-direct {v2}, Lorg/a/a/d/a/b;-><init>()V

    iget-wide v4, p0, Lcom/aspire/a/a/a/d;->f:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    new-instance v3, Lorg/a/a/f/b;

    invoke-direct {v3}, Lorg/a/a/f/b;-><init>()V

    iget-wide v4, p0, Lcom/aspire/a/a/a/d;->f:J

    invoke-interface {v3}, Lorg/a/a/f/c;->a()Lorg/a/a/f/c;

    iget-wide v4, p0, Lcom/aspire/a/a/a/d;->f:J

    invoke-interface {v3}, Lorg/a/a/f/c;->a()Lorg/a/a/f/c;

    invoke-virtual {v2}, Lorg/a/a/d/a/b;->c()V

    :cond_0
    :try_start_0
    const-string v3, "https"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljavax/net/ssl/TrustManager;

    const/4 v6, 0x0

    new-instance v7, Lcom/aspire/a/a/a/b;

    invoke-direct {v7}, Lcom/aspire/a/a/a/b;-><init>()V

    aput-object v7, v5, v6

    new-instance v6, Ljava/security/SecureRandom;

    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v4, v5, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-static {v3}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v3

    new-instance v4, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;

    invoke-direct {v4}, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;-><init>()V

    invoke-virtual {v3, v4}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    new-instance v3, Lorg/a/a/b/a/a;

    invoke-direct {v3}, Lorg/a/a/b/a/a;-><init>()V

    invoke-virtual {v2}, Lorg/a/a/d/a/b;->a()Lorg/a/a/b/a;

    move-result-object v3

    invoke-interface {v3}, Lorg/a/a/b/a;->a()Lorg/a/a/b/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lorg/a/a/b/a/b;->a()Lorg/a/a/b/a/a;

    :cond_1
    new-instance v3, Lorg/a/a/a/b/b;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/a/a/a/b/b;-><init>(B)V

    iget-object v4, p0, Lcom/aspire/a/a/a/d;->c:Ljava/util/Map;

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/aspire/a/a/a/d;->c:Ljava/util/Map;

    const-string v4, "Content-Type"

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/aspire/a/a/a/d;->c:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    :cond_2
    if-eqz p2, :cond_3

    const-string v0, "Content-Type"

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_6

    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    invoke-direct {p0, p3, v0}, Lcom/aspire/a/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/a/a/b;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lorg/a/a/a/b/b;->b()V

    :cond_4
    new-instance v0, Lcom/aspire/a/a/a/c;

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/aspire/a/a/a/c;-><init>(ILorg/a/a/a/b;Lorg/a/a/a/b/d;Ljava/lang/String;Lcom/aspire/a/b/a;)V

    invoke-virtual {p0, v0}, Lcom/aspire/a/a/a/d;->a(Lcom/aspire/a/a/a/e;)V

    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :goto_2
    return v1

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v6, p0, Lcom/aspire/a/a/a/d;->c:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/a/a/a/b/b;->c()V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/aspire/a/a/a/d;->b:Lcom/aspire/a/c/a;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/aspire/a/c/a;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/a/a/a/b/b;->c()V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v2, p0, Lcom/aspire/a/a/a/d;->b:Lcom/aspire/a/c/a;

    invoke-virtual {v0}, Ljava/security/KeyManagementException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/aspire/a/c/a;->a(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final a()V
    .locals 2

    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Lcom/aspire/a/a/a/d;->f:J

    return-void
.end method
