.class public final Lorg/htmlparser/util/f;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/htmlparser/util/g;


# instance fields
.field a:Lorg/htmlparser/lexer/Lexer;

.field b:Lorg/htmlparser/util/k;

.field c:Lorg/htmlparser/lexer/a;


# direct methods
.method public constructor <init>(Lorg/htmlparser/lexer/Lexer;Lorg/htmlparser/util/k;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/htmlparser/util/f;->a:Lorg/htmlparser/lexer/Lexer;

    iput-object p2, p0, Lorg/htmlparser/util/f;->b:Lorg/htmlparser/util/k;

    new-instance v0, Lorg/htmlparser/lexer/a;

    iget-object v1, p0, Lorg/htmlparser/util/f;->a:Lorg/htmlparser/lexer/Lexer;

    invoke-virtual {v1}, Lorg/htmlparser/lexer/Lexer;->a()Lorg/htmlparser/lexer/c;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/htmlparser/lexer/a;-><init>(Lorg/htmlparser/lexer/c;I)V

    iput-object v0, p0, Lorg/htmlparser/util/f;->c:Lorg/htmlparser/lexer/a;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/j;
        }
    .end annotation

    iget-object v0, p0, Lorg/htmlparser/util/f;->c:Lorg/htmlparser/lexer/a;

    iget-object v1, p0, Lorg/htmlparser/util/f;->a:Lorg/htmlparser/lexer/Lexer;

    invoke-virtual {v1}, Lorg/htmlparser/lexer/Lexer;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/htmlparser/lexer/a;->a(I)V

    const v0, 0xffff

    iget-object v1, p0, Lorg/htmlparser/util/f;->a:Lorg/htmlparser/lexer/Lexer;

    invoke-virtual {v1}, Lorg/htmlparser/lexer/Lexer;->a()Lorg/htmlparser/lexer/c;

    move-result-object v1

    iget-object v2, p0, Lorg/htmlparser/util/f;->c:Lorg/htmlparser/lexer/a;

    invoke-virtual {v1, v2}, Lorg/htmlparser/lexer/c;->a(Lorg/htmlparser/lexer/a;)C

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lorg/htmlparser/b;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/j;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lorg/htmlparser/util/f;->a:Lorg/htmlparser/lexer/Lexer;

    invoke-virtual {v1}, Lorg/htmlparser/lexer/Lexer;->f()Lorg/htmlparser/b;

    move-result-object v2

    if-eqz v2, :cond_0

    instance-of v1, v2, Lorg/htmlparser/g;

    if-eqz v1, :cond_0

    move-object v0, v2

    check-cast v0, Lorg/htmlparser/g;

    move-object v1, v0

    invoke-interface {v1}, Lorg/htmlparser/g;->j()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1}, Lorg/htmlparser/g;->p()Lorg/htmlparser/d/b;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v2, Lorg/htmlparser/util/h;

    invoke-direct {v2}, Lorg/htmlparser/util/h;-><init>()V

    iget-object v4, p0, Lorg/htmlparser/util/f;->a:Lorg/htmlparser/lexer/Lexer;

    invoke-interface {v3, v1, v4, v2}, Lorg/htmlparser/d/b;->a(Lorg/htmlparser/g;Lorg/htmlparser/lexer/Lexer;Lorg/htmlparser/util/h;)Lorg/htmlparser/g;
    :try_end_0
    .catch Lorg/htmlparser/util/j; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :cond_0
    return-object v2

    :catch_0
    move-exception v1

    throw v1

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unexpected Exception occurred while reading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/htmlparser/util/f;->a:Lorg/htmlparser/lexer/Lexer;

    invoke-virtual {v3}, Lorg/htmlparser/lexer/Lexer;->a()Lorg/htmlparser/lexer/c;

    move-result-object v3

    invoke-virtual {v3}, Lorg/htmlparser/lexer/c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ", in nextNode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Lorg/htmlparser/util/j;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/htmlparser/util/j;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lorg/htmlparser/util/f;->b:Lorg/htmlparser/util/k;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Lorg/htmlparser/util/k;->a(Ljava/lang/String;Lorg/htmlparser/util/j;)V

    throw v3
.end method
