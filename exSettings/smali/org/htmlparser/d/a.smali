.class public Lorg/htmlparser/d/a;
.super Lorg/htmlparser/d/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/htmlparser/d/f;-><init>()V

    return-void
.end method

.method private static a(Lorg/htmlparser/g;Lorg/htmlparser/b;)V
    .locals 1

    invoke-interface {p0}, Lorg/htmlparser/b;->e()Lorg/htmlparser/util/h;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/htmlparser/util/h;

    invoke-direct {v0}, Lorg/htmlparser/util/h;-><init>()V

    invoke-interface {p0, v0}, Lorg/htmlparser/b;->a(Lorg/htmlparser/util/h;)V

    :cond_0
    invoke-interface {p1, p0}, Lorg/htmlparser/b;->a(Lorg/htmlparser/b;)V

    invoke-interface {p0}, Lorg/htmlparser/b;->e()Lorg/htmlparser/util/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/htmlparser/util/h;->a(Lorg/htmlparser/b;)V

    return-void
.end method

.method private static a(Lorg/htmlparser/g;Lorg/htmlparser/lexer/Lexer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/j;
        }
    .end annotation

    invoke-interface {p0}, Lorg/htmlparser/g;->o()Lorg/htmlparser/g;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/htmlparser/lexer/Lexer;->a()Lorg/htmlparser/lexer/c;

    move-result-object v0

    invoke-virtual {p1}, Lorg/htmlparser/lexer/Lexer;->b()Lorg/htmlparser/lexer/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/htmlparser/lexer/a;->a()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/htmlparser/g;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    new-instance v4, Lorg/htmlparser/a;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Lorg/htmlparser/a;-><init>(Ljava/lang/String;B)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/htmlparser/lexer/Lexer;->c()Lorg/htmlparser/c;

    move-result-object v2

    invoke-interface {v2, v0, v1, v1, v3}, Lorg/htmlparser/c;->a(Lorg/htmlparser/lexer/c;IILjava/util/Vector;)Lorg/htmlparser/g;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/htmlparser/g;->a(Lorg/htmlparser/g;)V

    :cond_0
    invoke-interface {p0}, Lorg/htmlparser/g;->o()Lorg/htmlparser/g;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/htmlparser/b;->a(Lorg/htmlparser/b;)V

    invoke-interface {p0}, Lorg/htmlparser/b;->f()V

    return-void
.end method

.method private static a(Lorg/htmlparser/g;Lorg/htmlparser/g;)Z
    .locals 5

    const/4 v2, 0x0

    invoke-interface {p1}, Lorg/htmlparser/g;->g()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/htmlparser/g;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/htmlparser/g;->n()[Ljava/lang/String;

    move-result-object v0

    :goto_0
    move v1, v2

    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_0

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    invoke-interface {p0}, Lorg/htmlparser/g;->m()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public a(Lorg/htmlparser/g;Lorg/htmlparser/lexer/Lexer;Lorg/htmlparser/util/h;)Lorg/htmlparser/g;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/j;
        }
    .end annotation

    const/4 v6, -0x1

    const/4 v5, 0x0

    invoke-interface {p1}, Lorg/htmlparser/g;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p1}, Lorg/htmlparser/g;->a(Lorg/htmlparser/g;)V

    :goto_0
    invoke-static {p1, p2}, Lorg/htmlparser/d/a;->a(Lorg/htmlparser/g;Lorg/htmlparser/lexer/Lexer;)V

    return-object p1

    :cond_0
    invoke-virtual {p2}, Lorg/htmlparser/lexer/Lexer;->g()Lorg/htmlparser/b;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v0, v1, Lorg/htmlparser/g;

    if-eqz v0, :cond_e

    move-object v0, v1

    check-cast v0, Lorg/htmlparser/g;

    invoke-interface {v0}, Lorg/htmlparser/g;->g()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0}, Lorg/htmlparser/g;->j()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Lorg/htmlparser/g;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1, v0}, Lorg/htmlparser/g;->a(Lorg/htmlparser/g;)V

    move-object v1, v5

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    invoke-virtual {p3}, Lorg/htmlparser/util/h;->a()I

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p3, v0}, Lorg/htmlparser/util/h;->a(I)Lorg/htmlparser/b;

    move-result-object v1

    instance-of v0, v1, Lorg/htmlparser/g;

    if-eqz v0, :cond_10

    move-object v0, v1

    check-cast v0, Lorg/htmlparser/g;

    invoke-interface {v0}, Lorg/htmlparser/g;->p()Lorg/htmlparser/d/b;

    move-result-object v3

    if-ne v3, p0, :cond_f

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p3, v2}, Lorg/htmlparser/util/h;->b(I)Lorg/htmlparser/b;

    invoke-static {p1, p2}, Lorg/htmlparser/d/a;->a(Lorg/htmlparser/g;Lorg/htmlparser/lexer/Lexer;)V

    invoke-static {v0, p1}, Lorg/htmlparser/d/a;->a(Lorg/htmlparser/g;Lorg/htmlparser/b;)V

    move-object p1, v0

    :cond_2
    :goto_2
    if-nez v1, :cond_0

    goto :goto_0

    :cond_3
    invoke-static {p1, v0}, Lorg/htmlparser/d/a;->a(Lorg/htmlparser/g;Lorg/htmlparser/g;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Lorg/htmlparser/b;->c()I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/htmlparser/lexer/Lexer;->a(I)V

    move-object v1, v5

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Lorg/htmlparser/g;->j()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-interface {v0}, Lorg/htmlparser/g;->p()Lorg/htmlparser/d/b;

    move-result-object v2

    if-eqz v2, :cond_7

    if-ne v2, p0, :cond_6

    invoke-interface {v0}, Lorg/htmlparser/g;->k()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0, v0}, Lorg/htmlparser/g;->a(Lorg/htmlparser/g;)V

    invoke-static {v0, p2}, Lorg/htmlparser/d/a;->a(Lorg/htmlparser/g;Lorg/htmlparser/lexer/Lexer;)V

    invoke-static {p1, v0}, Lorg/htmlparser/d/a;->a(Lorg/htmlparser/g;Lorg/htmlparser/b;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p3, p1}, Lorg/htmlparser/util/h;->a(Lorg/htmlparser/b;)V

    move-object p1, v0

    goto :goto_1

    :cond_6
    invoke-interface {v2, v0, p2, p3}, Lorg/htmlparser/d/b;->a(Lorg/htmlparser/g;Lorg/htmlparser/lexer/Lexer;Lorg/htmlparser/util/h;)Lorg/htmlparser/g;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/htmlparser/d/a;->a(Lorg/htmlparser/g;Lorg/htmlparser/b;)V

    goto :goto_1

    :cond_7
    invoke-static {p1, v0}, Lorg/htmlparser/d/a;->a(Lorg/htmlparser/g;Lorg/htmlparser/b;)V

    goto :goto_1

    :cond_8
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    new-instance v3, Lorg/htmlparser/a;

    const/4 v4, 0x0

    invoke-direct {v3, v7, v4}, Lorg/htmlparser/a;-><init>(Ljava/lang/String;B)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lorg/htmlparser/lexer/Lexer;->c()Lorg/htmlparser/c;

    move-result-object v3

    invoke-virtual {p2}, Lorg/htmlparser/lexer/Lexer;->a()Lorg/htmlparser/lexer/c;

    move-result-object v4

    invoke-interface {v0}, Lorg/htmlparser/b;->c()I

    move-result v8

    invoke-interface {v0}, Lorg/htmlparser/b;->d()I

    move-result v9

    invoke-interface {v3, v4, v8, v9, v2}, Lorg/htmlparser/c;->a(Lorg/htmlparser/lexer/c;IILjava/util/Vector;)Lorg/htmlparser/g;

    move-result-object v2

    invoke-interface {v2}, Lorg/htmlparser/g;->p()Lorg/htmlparser/d/b;

    move-result-object v2

    if-eqz v2, :cond_d

    if-ne v2, p0, :cond_d

    invoke-virtual {p3}, Lorg/htmlparser/util/h;->a()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    move v4, v6

    :goto_3
    if-ne v6, v4, :cond_a

    if-ltz v3, :cond_a

    invoke-virtual {p3, v3}, Lorg/htmlparser/util/h;->a(I)Lorg/htmlparser/b;

    move-result-object v2

    check-cast v2, Lorg/htmlparser/g;

    invoke-interface {v2}, Lorg/htmlparser/g;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    move v2, v3

    :goto_4
    add-int/lit8 v3, v3, -0x1

    move v4, v2

    goto :goto_3

    :cond_9
    invoke-static {v2, v0}, Lorg/htmlparser/d/a;->a(Lorg/htmlparser/g;Lorg/htmlparser/g;)Z

    move-result v2

    if-eqz v2, :cond_11

    move v2, v3

    goto :goto_4

    :cond_a
    if-eq v6, v4, :cond_c

    invoke-static {p1, p2}, Lorg/htmlparser/d/a;->a(Lorg/htmlparser/g;Lorg/htmlparser/lexer/Lexer;)V

    invoke-virtual {p3}, Lorg/htmlparser/util/h;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p3, v0}, Lorg/htmlparser/util/h;->a(I)Lorg/htmlparser/b;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/g;

    invoke-static {v0, p1}, Lorg/htmlparser/d/a;->a(Lorg/htmlparser/g;Lorg/htmlparser/b;)V

    invoke-virtual {p3}, Lorg/htmlparser/util/h;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_5
    if-le v2, v4, :cond_b

    invoke-virtual {p3, v2}, Lorg/htmlparser/util/h;->b(I)Lorg/htmlparser/b;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/g;

    invoke-static {v0, p2}, Lorg/htmlparser/d/a;->a(Lorg/htmlparser/g;Lorg/htmlparser/lexer/Lexer;)V

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {p3, v1}, Lorg/htmlparser/util/h;->a(I)Lorg/htmlparser/b;

    move-result-object v1

    check-cast v1, Lorg/htmlparser/g;

    invoke-static {v1, v0}, Lorg/htmlparser/d/a;->a(Lorg/htmlparser/g;Lorg/htmlparser/b;)V

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_5

    :cond_b
    invoke-virtual {p3, v4}, Lorg/htmlparser/util/h;->b(I)Lorg/htmlparser/b;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/g;

    move-object p1, v0

    move-object v1, v5

    goto/16 :goto_1

    :cond_c
    invoke-static {p1, v0}, Lorg/htmlparser/d/a;->a(Lorg/htmlparser/g;Lorg/htmlparser/b;)V

    goto/16 :goto_1

    :cond_d
    invoke-static {p1, v0}, Lorg/htmlparser/d/a;->a(Lorg/htmlparser/g;Lorg/htmlparser/b;)V

    goto/16 :goto_1

    :cond_e
    invoke-static {p1, v1}, Lorg/htmlparser/d/a;->a(Lorg/htmlparser/g;Lorg/htmlparser/b;)V

    invoke-interface {v1}, Lorg/htmlparser/b;->f()V

    goto/16 :goto_1

    :cond_f
    move-object v1, v5

    goto/16 :goto_2

    :cond_10
    move-object v1, v5

    goto/16 :goto_2

    :cond_11
    move v2, v4

    goto :goto_4
.end method
