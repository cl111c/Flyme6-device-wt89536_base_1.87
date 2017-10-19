.class public Lorg/htmlparser/Parser;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/htmlparser/b/b;


# static fields
.field public static final c:Lorg/htmlparser/util/k;

.field public static final d:Lorg/htmlparser/util/k;


# instance fields
.field protected a:Lorg/htmlparser/util/k;

.field protected b:Lorg/htmlparser/lexer/Lexer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/htmlparser/util/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/htmlparser/util/d;-><init>(I)V

    sput-object v0, Lorg/htmlparser/Parser;->c:Lorg/htmlparser/util/k;

    new-instance v0, Lorg/htmlparser/util/d;

    invoke-direct {v0}, Lorg/htmlparser/util/d;-><init>()V

    sput-object v0, Lorg/htmlparser/Parser;->d:Lorg/htmlparser/util/k;

    invoke-static {}, Lorg/htmlparser/lexer/c;->a()Lorg/htmlparser/b/a;

    invoke-static {}, Lorg/htmlparser/b/a;->a()Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "User-Agent"

    const-string v2, "HTMLParser/2.0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    new-instance v0, Lorg/htmlparser/lexer/Lexer;

    new-instance v1, Lorg/htmlparser/lexer/c;

    const-string v2, ""

    invoke-direct {v1, v2}, Lorg/htmlparser/lexer/c;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/htmlparser/lexer/Lexer;-><init>(Lorg/htmlparser/lexer/c;)V

    sget-object v1, Lorg/htmlparser/Parser;->c:Lorg/htmlparser/util/k;

    invoke-direct {p0, v0, v1}, Lorg/htmlparser/Parser;-><init>(Lorg/htmlparser/lexer/Lexer;Lorg/htmlparser/util/k;)V

    return-void
.end method

.method private constructor <init>(Lorg/htmlparser/lexer/Lexer;)V
    .locals 1

    sget-object v0, Lorg/htmlparser/Parser;->d:Lorg/htmlparser/util/k;

    invoke-direct {p0, p1, v0}, Lorg/htmlparser/Parser;-><init>(Lorg/htmlparser/lexer/Lexer;Lorg/htmlparser/util/k;)V

    return-void
.end method

.method private constructor <init>(Lorg/htmlparser/lexer/Lexer;Lorg/htmlparser/util/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p2}, Lorg/htmlparser/Parser;->a(Lorg/htmlparser/util/k;)V

    invoke-direct {p0, p1}, Lorg/htmlparser/Parser;->a(Lorg/htmlparser/lexer/Lexer;)V

    new-instance v0, Lorg/htmlparser/e;

    invoke-direct {v0}, Lorg/htmlparser/e;-><init>()V

    invoke-direct {p0, v0}, Lorg/htmlparser/Parser;->a(Lorg/htmlparser/c;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lorg/htmlparser/Parser;
    .locals 3

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "html cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/htmlparser/Parser;

    new-instance v1, Lorg/htmlparser/lexer/Lexer;

    new-instance v2, Lorg/htmlparser/lexer/c;

    invoke-direct {v2, p0, p1}, Lorg/htmlparser/lexer/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/htmlparser/lexer/Lexer;-><init>(Lorg/htmlparser/lexer/c;)V

    invoke-direct {v0, v1}, Lorg/htmlparser/Parser;-><init>(Lorg/htmlparser/lexer/Lexer;)V

    return-object v0
.end method

.method private a(Lorg/htmlparser/c;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "node factory cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/htmlparser/Parser;->b:Lorg/htmlparser/lexer/Lexer;

    invoke-virtual {v0, p1}, Lorg/htmlparser/lexer/Lexer;->a(Lorg/htmlparser/c;)V

    return-void
.end method

.method private a(Lorg/htmlparser/lexer/Lexer;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "lexer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/htmlparser/Parser;->b:Lorg/htmlparser/lexer/Lexer;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/htmlparser/Parser;->b:Lorg/htmlparser/lexer/Lexer;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/Lexer;->c()Lorg/htmlparser/c;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Lorg/htmlparser/lexer/Lexer;->a(Lorg/htmlparser/c;)V

    :cond_2
    iput-object p1, p0, Lorg/htmlparser/Parser;->b:Lorg/htmlparser/lexer/Lexer;

    iget-object v0, p0, Lorg/htmlparser/Parser;->b:Lorg/htmlparser/lexer/Lexer;

    invoke-virtual {v0}, Lorg/htmlparser/lexer/Lexer;->a()Lorg/htmlparser/lexer/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/htmlparser/lexer/c;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/htmlparser/Parser;->a:Lorg/htmlparser/util/k;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "URL "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/htmlparser/Parser;->b:Lorg/htmlparser/lexer/Lexer;

    invoke-virtual {v2}, Lorg/htmlparser/lexer/Lexer;->a()Lorg/htmlparser/lexer/c;

    move-result-object v2

    invoke-virtual {v2}, Lorg/htmlparser/lexer/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " does not contain text"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/htmlparser/util/k;->b(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private a(Lorg/htmlparser/util/k;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object v0, Lorg/htmlparser/Parser;->c:Lorg/htmlparser/util/k;

    iput-object v0, p0, Lorg/htmlparser/Parser;->a:Lorg/htmlparser/util/k;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lorg/htmlparser/Parser;->a:Lorg/htmlparser/util/k;

    goto :goto_0
.end method

.method private d()Lorg/htmlparser/util/g;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/j;
        }
    .end annotation

    new-instance v0, Lorg/htmlparser/util/f;

    iget-object v1, p0, Lorg/htmlparser/Parser;->b:Lorg/htmlparser/lexer/Lexer;

    iget-object v2, p0, Lorg/htmlparser/Parser;->a:Lorg/htmlparser/util/k;

    invoke-direct {v0, v1, v2}, Lorg/htmlparser/util/f;-><init>(Lorg/htmlparser/lexer/Lexer;Lorg/htmlparser/util/k;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/htmlparser/d;)Lorg/htmlparser/util/h;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/j;
        }
    .end annotation

    new-instance v0, Lorg/htmlparser/util/h;

    invoke-direct {v0}, Lorg/htmlparser/util/h;-><init>()V

    invoke-direct {p0}, Lorg/htmlparser/Parser;->d()Lorg/htmlparser/util/g;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Lorg/htmlparser/util/g;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lorg/htmlparser/util/g;->b()Lorg/htmlparser/b;

    move-result-object v2

    if-eqz p1, :cond_0

    invoke-interface {v2, v0, p1}, Lorg/htmlparser/b;->a(Lorg/htmlparser/util/h;Lorg/htmlparser/d;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Lorg/htmlparser/util/h;->a(Lorg/htmlparser/b;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final b(Lorg/htmlparser/d;)Lorg/htmlparser/util/h;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/j;
        }
    .end annotation

    new-instance v0, Lorg/htmlparser/util/h;

    invoke-direct {v0}, Lorg/htmlparser/util/h;-><init>()V

    invoke-direct {p0}, Lorg/htmlparser/Parser;->d()Lorg/htmlparser/util/g;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Lorg/htmlparser/util/g;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lorg/htmlparser/util/g;->b()Lorg/htmlparser/b;

    move-result-object v2

    invoke-interface {v2, v0, p1}, Lorg/htmlparser/b;->a(Lorg/htmlparser/util/h;Lorg/htmlparser/d;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method
