.class public Lorg/htmlparser/e/u;
.super Lorg/htmlparser/e/f;


# static fields
.field private static final l:[Ljava/lang/String;

.field private static final m:[Ljava/lang/String;

.field private static final n:[Ljava/lang/String;


# instance fields
.field protected k:Ljava/lang/String;

.field private o:Z

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "A"

    aput-object v1, v0, v3

    sput-object v0, Lorg/htmlparser/e/u;->l:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "A"

    aput-object v1, v0, v3

    const-string v1, "P"

    aput-object v1, v0, v4

    const-string v1, "DIV"

    aput-object v1, v0, v5

    const-string v1, "TD"

    aput-object v1, v0, v6

    const-string v1, "TR"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "FORM"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "LI"

    aput-object v2, v0, v1

    sput-object v0, Lorg/htmlparser/e/u;->m:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "P"

    aput-object v1, v0, v3

    const-string v1, "DIV"

    aput-object v1, v0, v4

    const-string v1, "TD"

    aput-object v1, v0, v5

    const-string v1, "TR"

    aput-object v1, v0, v6

    const-string v1, "FORM"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "LI"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "BODY"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "HTML"

    aput-object v2, v0, v1

    sput-object v0, Lorg/htmlparser/e/u;->n:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/htmlparser/e/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final l()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/htmlparser/e/u;->l:[Ljava/lang/String;

    return-object v0
.end method

.method public final m()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/htmlparser/e/u;->m:[Ljava/lang/String;

    return-object v0
.end method

.method public final n()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/htmlparser/e/u;->n:[Ljava/lang/String;

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/htmlparser/e/u;->k:Ljava/lang/String;

    if-nez v0, :cond_3

    iput-boolean v1, p0, Lorg/htmlparser/e/u;->o:Z

    iput-boolean v1, p0, Lorg/htmlparser/e/u;->p:Z

    const-string v0, "HREF"

    invoke-virtual {p0, v0}, Lorg/htmlparser/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lorg/htmlparser/util/l;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    invoke-static {v0, v1}, Lorg/htmlparser/util/l;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/htmlparser/c/a;->q()Lorg/htmlparser/lexer/c;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/htmlparser/c/a;->q()Lorg/htmlparser/lexer/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/htmlparser/lexer/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lorg/htmlparser/e/u;->k:Ljava/lang/String;

    iget-object v0, p0, Lorg/htmlparser/e/u;->k:Ljava/lang/String;

    const-string v1, "mailto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/htmlparser/e/u;->k:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lorg/htmlparser/e/u;->k:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlparser/e/u;->k:Ljava/lang/String;

    iput-boolean v2, p0, Lorg/htmlparser/e/u;->o:Z

    :cond_2
    iget-object v0, p0, Lorg/htmlparser/e/u;->k:Ljava/lang/String;

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/htmlparser/e/u;->k:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlparser/e/u;->k:Ljava/lang/String;

    iput-boolean v2, p0, Lorg/htmlparser/e/u;->p:Z

    :cond_3
    iget-object v0, p0, Lorg/htmlparser/e/u;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Link to : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/htmlparser/e/u;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "; titled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/htmlparser/c/a;->e()Lorg/htmlparser/util/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/htmlparser/c/a;->e()Lorg/htmlparser/util/h;

    move-result-object v0

    invoke-virtual {v0}, Lorg/htmlparser/util/h;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "; begins at : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/htmlparser/c/a;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "; ends at : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/htmlparser/c/a;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", AccessKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "ACCESSKEY"

    invoke-virtual {p0, v0}, Lorg/htmlparser/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "null\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {p0}, Lorg/htmlparser/c/a;->e()Lorg/htmlparser/util/h;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/htmlparser/e/f;->r()Lorg/htmlparser/util/m;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Lorg/htmlparser/util/m;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Lorg/htmlparser/util/m;->b()Lorg/htmlparser/b;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v1, "   "

    invoke-direct {v5, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    goto :goto_2

    :cond_0
    const-string v0, ""

    goto/16 :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "ACCESSKEY"

    invoke-virtual {p0, v1}, Lorg/htmlparser/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
