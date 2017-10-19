.class public final Lorg/htmlparser/d/e;
.super Lorg/htmlparser/d/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/htmlparser/d/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/htmlparser/g;Lorg/htmlparser/lexer/Lexer;Lorg/htmlparser/util/h;)Lorg/htmlparser/g;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/j;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p2}, Lorg/htmlparser/lexer/Lexer;->h()Lorg/htmlparser/b;

    move-result-object v2

    invoke-virtual {p2}, Lorg/htmlparser/lexer/Lexer;->d()I

    move-result v3

    invoke-virtual {p2}, Lorg/htmlparser/lexer/Lexer;->g()Lorg/htmlparser/b;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v0, v1, Lorg/htmlparser/g;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lorg/htmlparser/g;

    invoke-interface {v0}, Lorg/htmlparser/g;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lorg/htmlparser/g;

    invoke-interface {v0}, Lorg/htmlparser/g;->g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/htmlparser/g;->l()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p2, v3}, Lorg/htmlparser/lexer/Lexer;->a(I)V

    const/4 v1, 0x0

    :cond_1
    if-nez v1, :cond_2

    new-instance v0, Lorg/htmlparser/a;

    const-string v1, "/style"

    invoke-direct {v0, v1, v5}, Lorg/htmlparser/a;-><init>(Ljava/lang/String;B)V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lorg/htmlparser/lexer/Lexer;->c()Lorg/htmlparser/c;

    move-result-object v0

    invoke-virtual {p2}, Lorg/htmlparser/lexer/Lexer;->a()Lorg/htmlparser/lexer/c;

    move-result-object v4

    invoke-interface {v0, v4, v3, v3, v1}, Lorg/htmlparser/c;->a(Lorg/htmlparser/lexer/c;IILjava/util/Vector;)Lorg/htmlparser/g;

    move-result-object v1

    :cond_2
    move-object v0, v1

    check-cast v0, Lorg/htmlparser/g;

    invoke-interface {p1, v0}, Lorg/htmlparser/g;->a(Lorg/htmlparser/g;)V

    if-eqz v2, :cond_3

    new-instance v0, Lorg/htmlparser/util/h;

    invoke-direct {v0, v2}, Lorg/htmlparser/util/h;-><init>(Lorg/htmlparser/b;)V

    invoke-interface {p1, v0}, Lorg/htmlparser/b;->a(Lorg/htmlparser/util/h;)V

    invoke-interface {v2, p1}, Lorg/htmlparser/b;->a(Lorg/htmlparser/b;)V

    :cond_3
    invoke-interface {v1, p1}, Lorg/htmlparser/b;->a(Lorg/htmlparser/b;)V

    invoke-interface {p1}, Lorg/htmlparser/b;->f()V

    return-object p1
.end method
