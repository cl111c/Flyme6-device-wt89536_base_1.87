.class public final Lorg/htmlparser/d/d;
.super Lorg/htmlparser/d/a;


# static fields
.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lorg/htmlparser/d/d;->a:Z

    return-void
.end method

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

    const/4 v2, 0x0

    instance-of v0, p1, Lorg/htmlparser/e/aa;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/htmlparser/e/aa;

    invoke-virtual {v0}, Lorg/htmlparser/e/aa;->s()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "JScript.Encode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VBScript.Encode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Lorg/htmlparser/lexer/Lexer;->a()Lorg/htmlparser/lexer/c;

    move-result-object v0

    invoke-virtual {p2}, Lorg/htmlparser/lexer/Lexer;->b()Lorg/htmlparser/lexer/a;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/htmlparser/d/c;->a(Lorg/htmlparser/lexer/c;Lorg/htmlparser/lexer/a;)Ljava/lang/String;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lorg/htmlparser/e/aa;

    invoke-virtual {v0, v1}, Lorg/htmlparser/e/aa;->b(Ljava/lang/String;)V

    :cond_1
    sget-boolean v0, Lorg/htmlparser/d/d;->a:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p2, v0}, Lorg/htmlparser/lexer/Lexer;->a(Z)Lorg/htmlparser/b;

    move-result-object v3

    invoke-virtual {p2}, Lorg/htmlparser/lexer/Lexer;->d()I

    move-result v4

    invoke-virtual {p2}, Lorg/htmlparser/lexer/Lexer;->g()Lorg/htmlparser/b;

    move-result-object v1

    if-eqz v1, :cond_3

    instance-of v0, v1, Lorg/htmlparser/g;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Lorg/htmlparser/g;

    invoke-interface {v0}, Lorg/htmlparser/g;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Lorg/htmlparser/g;

    invoke-interface {v0}, Lorg/htmlparser/g;->g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/htmlparser/g;->l()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p2, v4}, Lorg/htmlparser/lexer/Lexer;->a(I)V

    const/4 v1, 0x0

    :cond_3
    if-nez v1, :cond_4

    new-instance v0, Lorg/htmlparser/a;

    const-string v1, "/script"

    invoke-direct {v0, v1, v2}, Lorg/htmlparser/a;-><init>(Ljava/lang/String;B)V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lorg/htmlparser/lexer/Lexer;->c()Lorg/htmlparser/c;

    move-result-object v0

    invoke-virtual {p2}, Lorg/htmlparser/lexer/Lexer;->a()Lorg/htmlparser/lexer/c;

    move-result-object v2

    invoke-interface {v0, v2, v4, v4, v1}, Lorg/htmlparser/c;->a(Lorg/htmlparser/lexer/c;IILjava/util/Vector;)Lorg/htmlparser/g;

    move-result-object v1

    :cond_4
    move-object v0, v1

    check-cast v0, Lorg/htmlparser/g;

    invoke-interface {p1, v0}, Lorg/htmlparser/g;->a(Lorg/htmlparser/g;)V

    if-eqz v3, :cond_5

    new-instance v0, Lorg/htmlparser/util/h;

    invoke-direct {v0, v3}, Lorg/htmlparser/util/h;-><init>(Lorg/htmlparser/b;)V

    invoke-interface {p1, v0}, Lorg/htmlparser/b;->a(Lorg/htmlparser/util/h;)V

    invoke-interface {v3, p1}, Lorg/htmlparser/b;->a(Lorg/htmlparser/b;)V

    :cond_5
    invoke-interface {v1, p1}, Lorg/htmlparser/b;->a(Lorg/htmlparser/b;)V

    invoke-interface {p1}, Lorg/htmlparser/b;->f()V

    return-object p1

    :cond_6
    move v0, v2

    goto :goto_0
.end method
