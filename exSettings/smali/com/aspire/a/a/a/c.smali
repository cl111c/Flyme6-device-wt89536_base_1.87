.class public final Lcom/aspire/a/a/a/c;
.super Lcom/aspire/a/a/a/e;


# instance fields
.field private g:Lorg/a/a/a/b;

.field private h:Lorg/a/a/a/b/d;


# direct methods
.method public constructor <init>(ILorg/a/a/a/b;Lorg/a/a/a/b/d;Ljava/lang/String;Lcom/aspire/a/b/a;)V
    .locals 0

    invoke-direct {p0, p1, p4, p5}, Lcom/aspire/a/a/a/e;-><init>(ILjava/lang/String;Lcom/aspire/a/b/a;)V

    iput-object p2, p0, Lcom/aspire/a/a/a/c;->g:Lorg/a/a/a/b;

    iput-object p3, p0, Lcom/aspire/a/a/a/c;->h:Lorg/a/a/a/b/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/aspire/a/a/a/c;->g:Lorg/a/a/a/b;

    iget-object v2, p0, Lcom/aspire/a/a/a/c;->h:Lorg/a/a/a/b/d;

    invoke-interface {v1}, Lorg/a/a/a/b;->b()Lorg/a/a/f;

    move-result-object v3

    invoke-interface {v3}, Lorg/a/a/f;->b()Lorg/a/a/g;

    move-result-object v1

    invoke-interface {v1}, Lorg/a/a/g;->a()I

    move-result v4

    const/16 v1, 0xc8

    if-ne v4, v1, :cond_4

    invoke-interface {v3}, Lorg/a/a/f;->c()Lorg/a/a/b;

    move-result-object v1

    invoke-interface {v1}, Lorg/a/a/b;->a()Ljava/io/InputStream;

    move-result-object v1

    move-object v2, v1

    :goto_0
    iget-boolean v1, p0, Lcom/aspire/a/a/a/c;->f:Z

    if-nez v1, :cond_1

    iget-object v5, p0, Lcom/aspire/a/a/a/c;->d:Lcom/aspire/a/b/a;

    iget v6, p0, Lcom/aspire/a/a/a/c;->b:I

    invoke-interface {v3}, Lorg/a/a/f;->a()[Lorg/a/a/a;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    array-length v1, v3

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    array-length v7, v3

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v7, :cond_2

    :cond_0
    invoke-interface {v5, v6, v4, v0, v2}, Lcom/aspire/a/b/a;->a(IILjava/util/Hashtable;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/aspire/a/a/a/c;->g:Lorg/a/a/a/b;

    invoke-interface {v0}, Lorg/a/a/a/b;->a()Lorg/a/a/b/a;

    :goto_2
    return-void

    :cond_2
    :try_start_1
    aget-object v8, v3, v1

    invoke-interface {v8}, Lorg/a/a/a;->a()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8}, Lorg/a/a/a;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/aspire/a/a/a/c;->a:Lcom/aspire/a/c/a;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/aspire/a/c/a;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/aspire/a/a/a/c;->f:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/aspire/a/a/a/c;->d:Lcom/aspire/a/b/a;

    iget v1, p0, Lcom/aspire/a/a/a/c;->b:I

    invoke-interface {v0, v1}, Lcom/aspire/a/b/a;->a(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    iget-object v0, p0, Lcom/aspire/a/a/a/c;->g:Lorg/a/a/a/b;

    invoke-interface {v0}, Lorg/a/a/a/b;->a()Lorg/a/a/b/a;

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aspire/a/a/a/c;->g:Lorg/a/a/a/b;

    invoke-interface {v1}, Lorg/a/a/a/b;->a()Lorg/a/a/b/a;

    throw v0

    :cond_4
    move-object v2, v0

    goto :goto_0
.end method
